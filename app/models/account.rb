class Account < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook]

  ATTRS = [:slug, :description, :fb_link, :insta_fb, :image, :rank, :image_cover]

  has_many :posts
  has_one :image
  has_one :image_cover
  has_one_attached :image
  has_one_attached :image_cover
  enum rank: { basic: 1, copper: 2, silver: 3, gold: 4 }
  before_save :to_slug

  def self.create_from_provider_data provider_data
    account = Account.find_or_create_by email: provider_data.info.email,
      provider: provider_data.provider

    params = {
      provider: provider_data.provider,
      uid: provider_data.uid,
      name: provider_data.info.name,
      avatar: provider_data.info.image,
      token: provider_data.credentials.token,
      password: Devise.friendly_token[0, 20],
      expires_at: provider_data.credentials.expires_at
    }
    account.update params
    account
  end

  def to_param
    "#{to_slug}#{id}"
  end

  def to_slug
    if slug.blank?
      self.slug = self.name.to_s.parameterize
    else
      self.slug = self.slug.to_s.parameterize
    end
  end
end
