class Author < ApplicationRecord
	ATTRS = [:name, :description, :image, :slug]

  has_many :posts
  has_one :image
  has_one_attached :image

  validates :name, :description, presence: true
  validates :name, uniqueness: true
  before_save :to_slug

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
