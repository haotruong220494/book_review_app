class Category < ApplicationRecord
  ATTRS = [:title, :slug, :description, :image, :banner_cover, :image_share, :location]

  has_many :posts, dependent: :destroy
  has_one :image
  has_one :banner_cover
  has_one :image_share
  has_one_attached :image
  has_one_attached :banner_cover
  has_one_attached :image_share

  validates :title, :description, presence: true
  before_save :to_slug

  scope :cate_show, ->(type) { where location: type }

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
