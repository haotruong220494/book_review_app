class Category < ApplicationRecord
  has_one :image
  has_one_attached :image

  validates :title, presence: true
  before_save :to_slug

  def to_param
    "#{to_slug}#{id}"
  end

  private
  def to_slug
    if slug.blank?
      self.slug = self.title.to_s.parameterize
    else
      self.slug = self.slug.to_s.parameterize
    end
  end
end
