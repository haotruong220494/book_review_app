class Post < ApplicationRecord
	ATTRS = [:name, :description, :content, :slug, :category_id, :account_id, :image_cover, 
  	:banner_cover, :tags, :author, :buy_link, :release_date]
  	
  has_one :image_cover
  has_one :banner_cover
  has_one_attached :image_cover
  has_one_attached :banner_cover

  belongs_to :category
  belongs_to :account

  validates :name, :description, presence: true
  validates :name, uniqueness: true
  before_save :to_slug

  def to_param
    "#{to_slug}#{id}"
  end

  def to_slug
    if slug.blank?
      self.slug = self.title.to_s.parameterize
    else
      self.slug = self.slug.to_s.parameterize
    end
  end
end