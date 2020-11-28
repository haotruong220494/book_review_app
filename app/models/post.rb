class Post < ApplicationRecord
	ATTRS = [:name, :description, :content, :slug, :category_id, :account_id, :image_cover,
  	:banner_cover, :tag, :author_id, :buy_link, :release_date, :image_cover_cate, 
    :thumb_slider_image, :bg_slider_image, :highlight_image]

  has_one :image_cover
  has_one :banner_cover
  has_one :image_cover_cate
  has_one :thumb_slider_image
  has_one :bg_slider_image
  has_one :highlight_image
  has_one_attached :image_cover
  has_one_attached :banner_cover
  has_one_attached :image_cover_cate
  has_one_attached :thumb_slider_image
  has_one_attached :bg_slider_image
  has_one_attached :highlight_image

  belongs_to :category
  belongs_to :account
  belongs_to :author

  validates :name, :description, presence: true
  validates :name, uniqueness: true
  before_save :to_slug
  after_save :update_rank_account

  scope :show_post_head, -> { order("created_at DESC").limit(4) }
  scope :show_post_body, -> { order("created_at DESC").offset(4) }
  scope :show_post_new_first, -> { order("created_at DESC").limit(1) }
  scope :show_post_news, -> { order("created_at DESC").offset(1).limit(2) }
  scope :show_post_views, -> { order("created_at DESC").limit(9) }

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

  private
  def update_rank_account
    self.account.update(rank: :basic) if self.account.posts.size < 5
    self.account.update(rank: :copper) if self.account.posts.size >= 5 && self.account.posts.size < 20
    self.account.update(rank: :silver) if self.account.posts.size >= 20 && self.account.posts.size < 50
    self.account.update(rank: :gold) if self.account.posts.size > 50
  end
end
