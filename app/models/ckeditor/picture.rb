# frozen_string_literal: true

class Ckeditor::Picture < Ckeditor::Asset
  # for validation, see https://github.com/igorkasyanchuk/active_storage_validations
  include Rails.application.routes.url_helpers

  # def url_content
  #   rails_representation_url(storage_data.variant(resize: '800>').processed, only_path: true)
  # end

  # def url_thumb
  #   rails_representation_url(storage_data.variant(resize: '118x100').processed, only_path: true)
  # end

  has_one_attached :data

  def url_content
    rails_blob_url(blob)
  end

  class << self
    def default_url_options
      Rails.application.config.action_mailer.default_url_options
    end
  end
end
