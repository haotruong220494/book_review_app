Admin.create(:email => "haotv03@gmail.com", :password => "hoanganhq12",
  :password_confirmation => "hoanganhq12")

13.times do |index|
  Post.create(account_id: 1, category_id: 23, author_id: 3, name: "Tuổi trẻ đáng gia bao nhiêu tiền #{index}", description: "Những đứa trẻ",
  	slug: "tuoi-tre-dang-gia-bao-nhieu-tien",
    content: "Không chỉ trận này cựu ngôi sao Lisbon mới chứng minh vai trò của anh. Sự có mặt của tiền vệ sinh năm 1994 đã cứu cho Man Utd một mùa giải 2019-2020 có thể đã trở thành thảm họa. Anh đến Old Trafford hồi đầu tháng 2, nhưng chơi gần như mọi trận đấu có thể và không được nghỉ ngơi trong hành trình vào Top 3. Nhiều thời điểm chân chuyền 26 tuổi hụt hơi thấy rõ, nhưng HLV Solskjaer không dám cho anh ngồi ngoài.
		Tính từ khi cập bến Ngoại hạng Anh, Bruno đã ghi dấu giày vào 36 bàn sau 38 trận của Man Utd trên mọi đấu trường, với 22 bàn và 14 đường kiến tạo. Trong quãng thời gian này, không cầu thủ nào tại Anh đóng góp vào các bàn thắng nhiều hơn Bruno. Sức ảnh hưởng của tiền vệ người Bồ Đào Nha lên Man Utd còn dễ được nhận ra qua việc anh đã năm lần nhận giải cầu thủ hay nhất tháng của đội chủ sân Old Trafford, tức là chỉ có ba lần anh hụt giải này. Nó là minh chứng cho việc ở Man Utd lúc này, không ai hay hơn Bruno.",
		page_view: "150")
end
