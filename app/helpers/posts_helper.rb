module PostsHelper
  def display_related_post obj
    obj.category.posts.select { |post| post.id != obj.id }
  end
end
