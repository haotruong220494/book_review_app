module PostsHelper
  def display_related_post obj
    obj.category.posts.limit(7).select { |post| post.id != obj.id }
  end
end
