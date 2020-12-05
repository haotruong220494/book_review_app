Admin.create(:email => "haotv03@gmail.com", :password => "hoanganhq12",
  :password_confirmation => "hoanganhq12")

10.times do |index|
  Post.create(account_id: 1, category_id: 16, author_id: 1, name: "Những đứa trẻ #{index}", description: "Những đứa trẻ", slug: "nhung-dua-tre",
    content: "Chuyện Con Mèo Dạy Hải", page_view: "120")
end
