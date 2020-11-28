module ClientHelper
	def post_today
		Category.cate_show("today").last.posts[0]
	end

	def cate_header
		Category.cate_show("header")
	end

	def tips_header
		Category.cate_show("tips").last.posts
	end

	def colllection_header
		Category.cate_show("collection").last.posts.limit(6)
	end
end	