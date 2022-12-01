create database Web_BanHang;

Create table Brand (
	Id int primary key,
	Name nvarchar(100),
	Avatar nvarchar(100),
	Slug varchar(100),
	ShowOnHomePage bit,
	DisplayOrder int,
	CreatedOnUtc datetime,
	UpdateOnUtc datetime,
	Deleted bit
)

insert into Brand Values ('Apple','apple.jpg','apple',1,1,NULL,NULL,NULL),
						('Samsung','samsung.jpg','samsung',1,2,NULL,NULL,NULL),
						('Xiaomi','xiaomi.jpg','xiaomi',1,3,NULL,NULL,NULL),
						('DELL','dell.jpg','dell',1,4,NULL,NULL,NULL),
						('ASUS','dell.jpg','dell',1,5,NULL,NULL,NULL),
						('LENOVO','dell.jpg','dell',1,6,NULL,NULL,NULL)

create table Category (
	Id int primary key,
	Name nvarchar(100),
	Avatar nchar(100),
	Slug varchar(100),
	ShowOnHomePage bit,
	DisplayOrder int,
	Deleted bit,
	CreatedOnUtc datetime,
	UpdateOnUtc datetime
)

insert into Category values (N'Điện Thoại','dienthoai.jpg','dien-thoai',1,1,0,NULL,NULL),
							(N'Máy Tính','maytinh.jpg','may-tinh',0,2,0,NULL,NULL),
							(N'Máy Tính Bảng','maytinhbang.jpg ','may-tinh-bang',1,3,0,NULL,NULL),
							(N'Phụ Kiện','phukien.png','phu-kien',1,4,0,NULL,NULL),
							(N'Đồng hồ thông minh','donghothongminh.png','dong-ho-thong-minh',1,5,0,NULL,NULL),
							(N'Đồng hồ thời trang','donghothoitrang.jpg','dong-ho-thoi-trang',1,6,0,NULL,NULL)

create table Orders(
	Id int primary key,
	Name nvarchar(100),
	UserId int ,
	Status int,
	CreatedOnUtc datetime
)

create table OrderDetail(
	Id int primary key,
	OrderId int,
	ProductId int,
	Quantity int
)

create table Product(
	Id int primary key,
	Name nvarchar(100),
	Avatar nchar(100),
	CategoryId int,
	ShortDes nvarchar(MAX),
	FullDescription nvarchar(MAX),
	Price float,
	PriceDiscount float,
	TypeId int,
	Slug nvarchar(MAX),
	BrandId int,
	Deleted bit,
	ShowOnHomePage bit,
	DisplayOrder int,
	CreatedOnUtc datetime,
	UpdatedOnUtc datetime,
)

insert into Product values 
--Điện thoại
(N'iPhone 13 Pro Max','iPhone_13_pro_max.jpg',1,
	N'iPhone 13 Pro Max xứng đáng là một chiếc iPhone lớn nhất, mạnh mẽ nhất và có thời lượng pin dài nhất từ trước đến nay sẽ cho bạn trải nghiệm tuyệt vời, từ những tác vụ bình thường cho đến các ứng dụng chuyên nghiệp.',
	N'Dù là giải trí khi xem phim, chơi game hay kiểm tra email, đọc tài liệu thì màn hình lớn tới 6,7 inch của iPhone 13 Pro Max cũng luôn cho trải nghiệm tuyệt vời nhất. Không chỉ lớn, đây còn là màn hình chất lượng hàng đầu thế giới smartphone với tấm nền OLED tuyệt đẹp, công nghệ Super Retina XDR siêu nét và độ sáng tối đa đạt mức khó tin, lên tới 1200 nits cho nội dung HDR. Trước mắt bạn là một không gian giải trí mãn nhãn, một thiết bị di động lý tưởng để giải quyết nhanh công việc với màn hình thực sự xuất sắc.',
	33990000,6500000,2,'iPhone 13 Pro Max 128G',1,0,1,1,'1/1/2011','1/1/2011'),
(N'Samsung Galaxy Z Flip4','samsung_galaxy_z_flip4.jpg',1,
	N'Nhỏ gọn và tinh tế, Galaxy Z Flip4 là chiếc smartphone sinh ra dành cho các tín đồ thời trang. Cơ chế gập duyên dáng, bộ màu sắc nhẹ nhàng và loạt chức năng quay chụp sẽ làm say lòng những người yêu cái đẹp.',
	N'Sở hữu màn hình lớn 6.7 inch nhưng Galaxy Z Flip4 vẫn đảm bảo yếu tố cơ động khi di chuyển cũng như độ gọn gàng lúc cầm nắm. Nhờ cơ chế gập độc đáo, chủ nhân chiếc điện thoại dễ dàng thu gọn một nửa chiều dài thân máy để bỏ túi và mang theo. Cấu trúc đặc biệt này giúp sản phẩm đem lại trải nghiệm đặc biệt không thể tìm thấy ở dòng điện thoại nào khác.',
	23990000,3000000,1,'Samsung Galaxy Z Flip4 5G 128GB',2,0,1,1,'1/1/2011','1/1/2011'),
('Samsung Galaxy S22 BP','samsung_galaxy_s22_bora_purple.jpg',1,
	N'Bật nét kiêu kỳ, sẵn sàng trendy với phiên bản Samsung Galaxy S22 màu tím (Bora Purple), bạn sẽ trở nên thật thời thượng, ấn tượng và cá tính. Đồng hành đó là những công nghệ tốt nhất của Samsung từ hiệu năng Snapdragon 8 Gen 1, màn hình cao cấp cho đến hệ thống camera chuyên nghiệp.',
	N'Samsung Galaxy S22 màu tím cải tiến video với chống rung tốt hơn 58%, giúp cố định khung hình vững chắc, cho mỗi thước phim mượt mà và chuyên nghiệp. Công nghệ Super HDR cho màu sắc sống động gấp 64%, giữ lại màu trọn vẹn, giàu chi tiết, cho dù cảnh ngược sáng. Giải pháp Siêu chụp đêm còn mang tới khả năng giảm nhiễu cho từng khung hình trong điều kiện thiếu sáng, quay video đêm dễ dàng hơn. Bên cạnh đó, Samsung Galaxy S22 màu tím còn có nhiều hỗ trợ video như Điều chỉnh khung hình giúp chủ thể luôn là tâm điểm; Tầm nhìn đạo diễn tận dụng camera trước và sau để quay nhiều góc cùng một lúc; Auto Framing phát hiện, theo dõi đến 10 người trong khung hình, đảm bảo tất cả đều rõ nét.',
	21990000,8000000,1,'Samsung Galaxy S22 Bora Purple',2,0,1,1,'1/1/2011','1/1/2011'),
(N'Xiaomi Redmi 10','xiaomi_redmi_10.jpg',1,
	N'Dòng điện thoại Redmi yêu thích của bạn đã quay trở lại, Redmi 10 với bộ tứ camera 50MP AI đột phá, màn hình 90Hz siêu mượt và cấu hình “phá đảo” trong tầm giá, chắc chắn sẽ tiếp tục là lựa chọn hàng đầu ở phân khúc smartphone giá rẻ.',
	N'Thiết kế của Redmi 10 đã được nâng lên tầm cao mới, vượt khỏi phạm vi của một chiếc điện thoại giá rẻ với kiểu dáng và chất lượng hoàn thiện cao cấp. Cụm camera nổi bật toát lên sự chuyên nghiệp của sản phẩm, trong khi đó các màu sắc cũng rất hiện đại và hợp thời. Redmi 10 còn gây ấn tượng mạnh khi là chiếc smartphone pin trâu mang trên mình viên pin dung lượng cao 5000mAh trong một thiết kế mỏng nhẹ với độ mỏng chỉ 8,92mm và trọng lượng 181gram.',
	4290000,500000,1,'Xiaomi Redmi 10 4GB-128GB 2021',3,0,1,1,'1/1/2011','1/1/2011'),
(N'Xiaomi Redmi Note 11','Xiaomi_redmi_note_11.jpg',1,
	N'Hãy cùng trải nghiệm Xiaomi Redmi Note 11, phiên bản nâng cấp toàn diện của dòng Redmi Note luôn rất được yêu thích từ trước đến nay. Sức mạnh vượt trội, thời lượng pin siêu dài, sạc siêu nhanh và camera chuyên nghiệp của sản phẩm sẽ mang đến những giờ phút giải trí tuyệt vời nhất.',
	N'Xiaomi Redmi Note 11 sử dụng bộ vi xử lý mới mạnh mẽ với 8 nhân tốc độ cao, mang đến hiệu suất lý tưởng cho mọi hoạt động. Dù là chạy các tác vụ phổ biến hay những tựa game đồ họa cao, Redmi Note 11 đều hoàn thành xuất sắc nhiệm vụ. CPU mạnh hơn 5% và GPU mạnh hơn 10% chắc chắn là tin rất vui cho các game thủ. Thoải mái tận hưởng không gian gaming trong lòng bàn tay một cách mượt mà, không giật lag.',
	4990000,600000,1,'Xiaomi Redmi Note 11 4GB - 128GB',3,0,1,1,'1/1/2011','1/1/2011'),
(N'iPhone 12','iphone_12.jpg',1,
	N'iPhone 12 ra mắt với vai trò mở ra một kỷ nguyên hoàn toàn mới. Tốc độ mạng 5G siêu tốc, bộ vi xử lý A14 Bionic nhanh nhất thế giới smartphone, màn hình OLED tràn cạnh tuyệt đẹp và camera siêu chụp đêm, tất cả đều có mặt trên iPhone 12.',
	N'iPhone 12 đã có sự đột phá về thiết kế với kiểu dáng mới vuông vắn, mạnh mẽ và sang trọng hơn. Không chỉ vậy, iPhone 12 mỏng hơn 11%, nhỏ gọn hơn 15% và nhẹ hơn 16% so với thế hệ trước iPhone 11. Bất ngờ hơn nữa là dù gọn hơn đáng kể nhưng iPhone 12 vẫn có màn hình 6,1 inch như iPhone 11 mà không hề bị cắt giảm. Phần viền màn hình thu hẹp tối đa cùng sự nỗ lực trong thiết kế đã tạo nên điều kỳ diệu ở iPhone 12.',
	19999000,3500000,2,'iPhone 12 64GB',1,0,1,1,'1/1/2011','1/1/2011'),
(N'Samsung Galaxy A23','samsung_galaxy_a23.jpg',1,
	N'Cùng tận hưởng những tác vụ giải trí, kết nối và làm việc theo cách ấn tượng nhất trên không gian hình ảnh V-Cut TFT 6.6 inch mà Samsung Galaxy A23 sở hữu. Sản phẩm đem lại nhiều trải nghiệm đơn giản nhưng hiệu quả, ghi nhận năng lực chụp ảnh xuất sắc qua hệ thống bốn camera được tích hợp chống rung quang học OIS.',
	N'Chọn cho mình ngôn ngữ thiết kế Ambient Edge, Samsung Galaxy A23 khéo léo trình diễn phong cách giản đơn nhưng thanh lịch, phô bày vẻ đẹp tối giản mà tinh tế. Với kích thước tổng thể là 165.4 x 76.9 x 8.4 mm và trọng lượng 195 gram, chiếc điện thoại cho thấy sự gọn gàng, mỏng nhẹ. Cách bố trí module camera sau khéo léo và sử dụng loạt sắc màu như Đen, Xanh và Cam khiến sản phẩm dễ dàng chinh phục người dùng từ cái nhìn đầu tiên.',
	5690000,700000,2,'Samsung Galaxy A23',2,0,1,1,'1/1/2011','1/1/2011'),
(N'Xiaomi 11T','Xiaomi_11T.jpg',1,
	N'Xiaomi 11T sẽ biến mỗi khoảnh khắc thường ngày của bạn thành những thước phim điện ảnh sống động với trải nghiệm camera 108MP đỉnh cao. Hơn nữa, Xiaomi 11T còn là một cỗ máy đầy tốc độ dưới vẻ ngoài của kiệt tác thời trang.',
	N'Xiaomi 11T sở hữu phần cứng camera đáng kinh ngạc với camera chính độ phân giải lên tới 108MP, công nghệ siêu điểm ảnh 9 trong 1 mang tới điểm ảnh cực lớn 2.1um. Nhờ vậy, máy có khả năng thu sáng xuất sắc, hình ảnh rõ nét đến từng chi tiết dù là chụp ngày hay đêm. Chế độ chụp đêm 2.0 được áp dụng cho cả camera góc siêu rộng, mang đến những bức ảnh khung hình rộng tuyệt vời trong điều kiện thiếu sáng. Cuối cùng là camera Telemacro với tiêu điểm tự động 3-7cm sẽ cùng bạn khám phá những kỳ quan ở thế giới vi mô siêu nhỏ đầy thú vị.',
	10990000,2500000,2,'Xiaomi 11T 8GB - 128GB',3,0,1,1,'1/1/2011','1/1/2011'),
(N'OPPO A57','oppo_a57.jpg',1,
	N'Chào đón thế hệ OPPO A mới với diện mạo trẻ trung, năng động – OPPO A57 sẽ đồng hành cùng bạn trong xu hướng thiết kế thời thượng năm 2022. Điện thoại còn tiện lợi với viên pin lớn 5.000mAh và công nghệ sạc nhanh 33W vượt trội trong phân khúc, giúp bạn luôn có kết nối liền mạch.',
	N'Một ngày bận rộn sử dụng điện thoại nhiều cũng không làm cạn nguồn năng lượng khi OPPO A57 có dung lượng pin đến 5.000mAh. Bạn có thể thỏa thích trải nghiệm, học tập, làm việc, kết nối và giữ liên lạc cùng mọi người trong cả ngày dài. Đồng thời, đây còn là người bạn công nghệ tiện lợi với sạc nhanh 33W, chỉ 15 phút sạc có thể xem hơn 4 giờ video, 30 phút sạc có hơn 50% pin, tiết kiệm thời gian tối ưu cho người dùng.',
	4490000,300000,1,'OPPO A57 4GB-64GB',1,0,1,1,'1/1/2011','1/1/2011'), 
(N'iPhone 11','iphone_11.jpg',1,
	N'iPhone 11 với 6 phiên bản màu sắc, camera có khả năng chụp ảnh vượt trội, thời lượng pin cực dài và bộ vi xử lý mạnh nhất từ trước đến nay sẽ mang đến trải nghiệm tuyệt vời dành cho bạn.',
	N'Có tới 6 sự lựa chọn màu sắc cho iPhone 11 64GB, bao gồm Tím, Vàng, Xanh lục, Đen, Trắng và Đỏ, tha hồ để bạn lựa chọn màu phù hợp với sở thích, cá tính riêng của bản thân. Vẻ đẹp của iPhone 11 đến từ thiết kế cao cấp khi được làm từ khung nhôm nguyên khối và mặt lưng liền lạc với một tấm kính duy nhất. Ở mặt trước, bạn sẽ được chiêm ngưỡng màn hình Liquid Retina lớn 6,1 inch, màu sắc vô cùng chân thực. Tất cả tạo nên chiếc điện thoại tràn đầy hứng khởi.',
	14999000,3500000,2,'iPhone 11 64GB',1,0,1,1,'1/1/2011','1/1/2011'),
--Máy Tính
(N'Laptop Dell Vostro V3510','dell_vostro_v3510.jpg',2,
	N'Dell Vostro 3510 là phiên bản laptop doanh nhân 15,6 inch mới nhất từ Dell, với thiết kế gọn gàng thanh thoát và hiện đại, đồng thời hiệu suất được nâng cấp đáng kể nhờ bộ vi xử lý Intel Core i5 thế hệ thứ 11 cùng card đồ họa rời NVIDIA MX350, giúp cho công việc của bạn luôn hoạt động hiệu quả và an toàn.',
	N'Dell Vostro 3510 đã được cải tiến rất nhiều về thiết kế so với thế hệ trước, mang tới một chiếc laptop gọn nhẹ, thanh thoát và hiện đại hơn. Phần viền màn hình được làm mỏng hơn, webcam thiết kế nhỏ hơn, nâng cao tính thẩm mỹ, đồng thời cho trải nghiệm xem tuyệt vời. Đặc biệt, laptop vô cùng mỏng nhẹ với trọng lượng chỉ 1,69kg và độ mỏng 18,9mm, kích thước hiếm thấy trên một chiếc laptop màn hình 15,6 inch. Phần sơn màu đen tuyền mạnh mẽ kết hợp cùng kiểu dáng thanh mảnh hiện đại thể hiện đúng tinh thần doanh nhân của dòng Dell Vostro.',
	22990000,3200000,2,'Laptop Dell Vostro V3510 i5 1135G7/8GB/512GB/15.6FHD/MX350 2GB/Win 11+Office HS21',4,0,1,1,'1/1/2011','1/1/2011'),
(N'Laptop Asus TUF Gaming','asus_tuf_gaming_fa506ihr.jpg',2,
	N'Asus TUF Gaming A15 FA506IHRB-HN019W là chiếc laptop chơi game đỉnh mà học tập và làm việc cũng rất tốt nhờ cấu hình không thể chê trong tầm giá. Một chiếc laptop gaming được bán với mức giá văn phòng chắc chắn sẽ rất hấp dẫn, đặc biệt là trong mắt các bạn học sinh, sinh viên.',
	N'Khí chất game thủ được toát lên ngay khi bạn nhìn vào Asus TUF Gaming A15 FA506IHRB-HN019W. Phiên bản màu Đen Graphite Black cực ngầu với màu sắc chủ đạo là đen tuyền cổ điển nhưng không hề nhàm chán nhờ họa tiết phay xước cùng những hình khối phá cách. Chất lượng hoàn thiện cao và cách bố trí họa tiết thông minh giúp TUF A15 có vẻ đẹp riêng biệt khi đặt cạnh các đối thủ. Đồng thời máy cũng rất di động với kích thước tổng thể gọn gàng và trọng lượng chỉ 2,3kg.',
	18990000,2000000,1,'Laptop Asus TUF Gaming FA506IHRB-HN019W R5 4600H/8GB/512GB/GeForce GTX 1650 4GB/15.6"FHD/Win11',5,0,1,1,'1/1/2011','1/1/2011'),
(N'Laptop Lenovo Yoga Slim7','lenovo_yoga_slim_7_pro_14ihu5.jpg',2,
	N'Hoàn thành công việc nhanh chóng với Lenovo Yoga Slim 7 Pro 14IHU5 O, chiếc laptop doanh nhân đẳng cấp được công nhận chuẩn Intel Evo, hội tụ cả tốc độ nhanh chóng, thời lượng pin dài và hình ảnh tuyệt đẹp. Với màn hình OLED 2.8K đẹp hoàn mỹ và âm thanh nổi Dolby Atmos, Yoga Slim 7 Pro còn là một trung tâm giải trí di động đích thực.',
	N'Hiệu suất tuyệt vời của Lenovo Yoga Slim 7 Pro 14IHU5 O giúp bạn luôn hoàn thành công việc trong thời gian ngắn nhất. Bộ vi xử lý Intel Core i5 11300H cho hiệu năng vượt trội so với các laptop văn phòng thông thường nhờ xung nhịp lên tới 4.40 GHz và TDP tối đa 35W. Nhờ vậy bạn có thể làm những công việc chuyên nghiệp đòi hỏi phần cứng cao, cấu hình mạnh trên mẫu laptop nhỏ gọn này. 16GB RAM LPDDR4X và 512GB SSD M.2 góp phần giúp máy chạy đa nhiệm mượt mà, khởi động nhanh chóng, luôn đảm bảo tốc độ cũng như hiệu suất cao nhất.',
	25990000,5000000,1,'Laptop Lenovo Yoga Slim 7 Pro 14IHU5O i5 11300H/16GB/512GB/14"2.8K OLED/Win 11',6,0,1,1,'1/1/2011','1/1/2011'),
(N'Laptop Asus Vivobook','asus_vivobook_a1503.jpg',2,
	N'Asus Vivobook 15X A1503ZA-L1139W thực sự tỏa sáng với loạt tính năng hiện đại: Từ màn hình OLED HDR chuẩn điện ảnh cho đến bộ vi xử lý Intel thế hệ thứ 12 siêu mạnh và một thiết kế cao cấp, ai cũng phải ngước nhìn. Vivobook 15X OLED sẽ cùng bạn bắt đầu ngày mới đầy hứng khởi.',
	N'Asus Vivobook 15X A1503ZA-L1139W là một trong những chiếc laptop phổ thông có thiết kế đẹp nhất hiện nay. Ngôn ngữ thiết kế tối giản, sang trọng, viền màn hình siêu mỏng và những đường nét cao cấp tạo nên một sản phẩm công nghệ đẹp hiện đại, sắc sảo. Phiên bản màu Bạc lấp lánh “sang chảnh”, rất nổi bật và cuốn hút. Phần bản lề cứng cáp và linh hoạt với khả năng gập mở 180 độ, dễ dàng chia sẻ nội dung với người đối diện. Ngoài ra, ASUS Vivobook 15X OLED còn hết sức mỏng nhẹ với trọng lượng chỉ 1,7kg, dễ dàng đi cùng bạn trên mọi nẻo đường.',
	20490000,1300000,1,'Laptop Asus Vivobook A1503ZA-L1139W i5 12500H/8GB/512GB/15.6"FHD/Win 11',5,0,1,1,'1/1/2011','1/1/2011'),
(N'Laptop Dell Gaming G15','dell_gaming_g15_5515.jpg',2,
	N'Một chiếc laptop gaming đầy khác biệt với thiết kế phối màu trắng – đen độc đáo, sở hữu cấu hình hàng đầu và độ bền chuẩn Dell, Dell G15 5515 Ryzen 5 dành cho những game thủ cá tính, năng động.',
	N'Bộ vi xử lý AMD Ryzen 5 5600H có mặt trên Dell G15 5515 Ryzen 5 là con chip chuyên dụng cho dòng laptop gaming đời mới dựa trên kiến trúc Cezanne. Với 6 lõi 12 luồng kiến trúc Zen 3, tốc độ xung nhịp cơ bản 3,3GHz, Turbo 4,2GHz, tiến trình TSMC 7nm hiện đại, Ryzen 5 5600H cho hiệu năng mạnh hơn đáng kể thế hệ trước, thích hợp cho chơi game hay chạy các ứng dụng công việc nặng. Bạn có thể trải nghiệm những tựa game mình thích và làm các công việc chuyên nghiệp một cách mượt mà.',
	25990000,8000000,1,'Laptop Dell Gaming G15 5515 R5 5600H/8GB/256GB/15.6FHD/NVIDIA GeForce RTX 3050 4GB/Win11/Office HS21',4,0,1,1,'1/1/2011','1/1/2011'),
(N'Laptop Lenovo IdeaPad','lenovo_ideapad_3.jpg',2,
	N'Lenovo IdeaPad Slim 3 15ITL6 i5 là chiếc laptop lý tưởng để bạn học tập và làm việc tại nhà với bộ vi xử lý Intel thế hệ thứ 11 mới nhất, màn hình Full HD 15,6 inch viền mỏng, cho bạn khả năng tập trung hơn trong công việc.',
	N'Bạn có thể chạy mọi ứng dụng cần thiết trên Lenovo IdeaPad 3, tận hưởng tốc độ và sự thông minh của bộ vi xử lý Intel Core i5 1135G7. Đây là con chip thuộc thế hệ thứ 11 mới nhất, 4 nhân 8 luồng, tốc độ tối đa 4.20GHz cực nhanh, đồng thời sản xuất trên tiến trình 10nm SuperFin tiên tiến. Tích hợp bên trong 1135G7 là GPU đồ họa Intel Iris Xe, chạy tốt các ứng dụng đồ họa và cả chơi game. Hơn nữa, IdeaPad Slim 3 15ITL6 còn có sẵn tới 8GB RAM DDR4 3200MHz và 512GB SSD, cho khả năng đa nhiệm tuyệt vời, tốc độ khởi động – vào ứng dụng nhanh chóng.',
	16490000,2900000,2,'Laptop Lenovo IdeaPad Slim 3 15ITL6 i5 1135G7/8GB/512GB/15.6"FHD/Win 11',6,0,1,1,'1/1/2011','1/1/2011'),
(N'Laptop Dell Latitude','laptop_dell_latitude_l3420cto.jpg',2,
	N'Dell Latitude L3420CTO là chiếc laptop bền bỉ, được trang bị con chip Intel Core i3 Tiger Lake thế hệ 11, ổ SSD M2. PCIe 256GB tốc độ cao, cùng Webcam độ phân giải HD rất phù hợp cho công việc văn phòng và học tập trực tuyến.',
	N'Dell Latitude L3420CTO được phủ tông màu đen đơn giản, không cầu kỳ nhưng toát lên vẻ chắc chắn khi nhìn vào. Bàn phím tràn cạnh của máy được nâng cấp với các phím bấm và bàn di chuột lớn hơn 18% giúp bạn đánh máy và điều hướng dễ dàng. Khung máy, nắp lưng và các phím bấm được thiết kế bo tròn tinh tế. Bản lề của máy cho phép mở màn hình đến 180 độ, thuận tiện hơn khi làm việc. Độ mỏng nhẹ của Latitude L3420CTO cũng được đánh giá cao khi chỉ nặng 1.52kg và dày 17.6mm.',
	12990000,2000000,2,'Laptop Dell Latitude L3420CTO i3 1115G4/4GB/256G/14"HD/Win 11',4,0,1,1,'1/1/2011','1/1/2011'),
(N'Laptop Lenovo 100e Gen 2','lenovo_100e_gen_2.jpg',2,
	N'Lenovo 100e Gen 2 là chiếc laptop nhỏ gọn, bền bỉ, mức giá rất rẻ, được xây dựng phù hợp cho hoạt động học tập online của các em học sinh.',
	N'Trẻ em rất hiếu động, chính vì thế một chiếc laptop đặc biệt dành cho học sinh cần có độ bền vượt trội so với các sản phẩm khác. Lenovo 100e Gen 2 đạt độ bền chuẩn quân sự với các miếng đệm cao su ở các góc cạnh; bản lề và cổng kết nối được gia cố chắc chắn; bàn phím được neo cơ học. Thiết kế này sẽ chống lại những va đập, rủi ro thường ngày. Laptop có khả năng chống rơi ở cự ly 75cm, tương đương chiều cao của một chiếc bàn học.',
	7990000,4000000,2,'Laptop Lenovo 100e Gen 2 N4020/4GB/64GB eMMC/Intel UHD Graphics 600/11.6"HD/Win 10 Pro',6,0,1,1,'1/1/2011','1/1/2011'),
(N'Laptop Asus Expertbook','asus_expertbook_b1400.jpg',2,
	N'ASUS ExpertBook B1400CEAE-EB3182W mang tới hiệu suất và độ bền vượt trội trong một thiết kế rất gọn nhẹ. Chiếc laptop thuộc dòng ExpertBook B1 này còn trang bị đầy đủ mọi cổng kết nối cần thiết, hỗ trợ mạng WiFi 6 tốc độ cao và công nghệ khử ồn AI khi đàm thoại.',
	N'ASUS ExpertBook B1400CEAE-EB3182W sở hữu những linh kiện tối ưu để đảm bảo công việc của bạn được hoàn thành nhanh chóng nhất. Từ bộ vi xử lý Intel Core i5 1135G7 thế hệ thứ 11 mạnh mẽ, cho đến 8GB RAM DDR4 và SSD M2 dung lượng cao 512GB, ExpertBook B1400 hướng tới sự mượt mà, trơn tru trong suốt quá trình sử dụng. Con chip Intel Core i5 1135G7 không chỉ mạnh mẽ với 4 nhân 8 luồng, tốc độ tối đa 4.20 GHz mà còn tích hợp GPU đồ họa Intel Iris Xe, chạy tốt những ứng dụng đồ họa, cho bạn tự do sáng tạo.',
	18990000,2000000,1,'Laptop Asus Expertbook B1400CEAE-EB3182W i5 1135G7/8GB/512GB/14.0"FHD/Win 11',5,0,1,1,'1/1/2011','1/1/2011'),
(N'Laptop Dell XPS 13 Plus','dell_xps_13_plus.jpg',2,
	N'Một chiếc laptop vượt xa những gì bạn tưởng tượng về độ hoàn hảo, một chiếc laptop ngỡ như chỉ có ở tương lai, Dell XPS 13 Plus 9320 đích thực là một biểu tượng, là một tuyệt tác về thiết kế máy tính. Tất nhiên siêu phẩm này cũng tập hợp những tinh hoa công nghệ hàng đầu ở cả cấu hình, màn hình lẫn tính năng.',
	N'Dell XPS 13 Plus chắc chắn là chiếc laptop đẹp nhất mà bạn từng thấy. Sự tinh tế, hoàn hảo đến từng chi tiết nhỏ tạo nên một sản phẩm dường như chỉ xuất hiện ở trong tưởng tượng. Màn hình viền mỏng đều cả 4 cạnh, bàn phím thiết kế tràn viền, khu vực phím chức năng cảm ứng tinh tế, bàn di chuột làm bằng kính liền mạch, tất cả tạo nên sự tinh tế, thẩm mỹ đến không ngờ. Tuyệt phẩm đến từ Dell được chế tác bằng nhôm và kính gia công CNC cao cấp, đạt được sự hoàn mỹ về tính cân bằng, tối giản, thời trang. Tất nhiên không thể không nhắc tới tính di động khi Dell XPS 13 Plus 9320 chỉ mỏng 1,5cm và nhẹ 1,23kg.',
	59990000,2000000,2,'Laptop Dell XPS 13 Plus 9320 i7 1260P/16GB/512GB/13.4" 3.5K Touch/Win 11',4,0,1,1,'1/1/2011','1/1/2011'),
--Máy Tính Bảng
(N'iPad Pro 11','ipad_pro_m1_11_inch.jpg',3,
	N'Mạnh mẽ hơn tất cả những gì bạn từng biết trước đây về một thiết bị di động, iPad Pro M1 2021 với bộ vi xử lý Apple M1 hoàn toàn mới cho tốc độ cực nhanh và khả năng đáp ứng công việc hoàn hảo.',
	N'Với bộ vi xử lý M1, iPad Pro 11 inch 2021 chính là chiếc máy tính bảng nhanh nhất từ trước đến nay. Sức mạnh từ 8 nhân CPU và 8 nhân GPU của Apple M1 giúp iPad Pro 11 2021 nhanh hơn tới 50%, đồng thời xử lý đồ họa tốt hơn 40% so với thế hệ trước. Giờ đây bạn có thể dựng các mô hình AR phức tạp, hay chơi game đồ họa cao với tay cầm Xbox hay PlayStation. iPad Pro M1 2021 mạnh mẽ và chuyên nghiệp hơn bao giờ hết với sức mạnh kế thừa từ dòng MacBook Pro.',
	22999000,3000000,2,'iPad Pro 11 2021 M1 Wi-Fi 128GB',1,0,1,1,'1/1/2011','1/1/2011'),
(N'Samsung Galaxy Tab S6','Samsung_Galaxy_Tab_S6.jpg',3,
	N'Gặp gỡ Samsung Galaxy Tab S6 Lite 2022 - phiên bản mới với sự nâng cấp mạnh về hiệu năng Snapdragon 720G, cho mọi tác vụ mượt mà, đa nhiệm hoàn hảo từ học tập, làm việc đến giải trí. Sự hỗ trợ của bút S-Pen còn là người bạn tuyệt vời để thỏa thích sáng tạo, tăng hiệu suất công việc.',
	N'Chế tác với vẻ ngoài mỏng nhẹ nhưng tiềm ẩn bên trong Galaxy Tab S6 Lite 2022 là nội lực mạnh mẽ cùng vi xử lý Snapdragon 720G. Đây là chip 8 nhân nhà Qualcomm, được sản xuất trên tiến trình 8nm, 4 nhân Cortex-A76 và 4 nhân Cortex-A55, mang tới hiệu năng ấn tượng. Nhờ vậy, bạn có thể hoàn thành mọi nhiệm vụ từ học tập đến làm việc một cách nhanh chóng. Sự linh hoạt của Galaxy Tab S6 Lite 2022 được thể hiện qua thiết kế gọn nhẹ. Dù học tập, làm việc từ xa hay mang theo bên mình di chuyển trong cả ngày dài đều không làm khó được Tab S6 Lite 2022. Chỉ cần bỏ tablet vào túi, bạn sẽ không lo bị bỏ lỡ công việc, máy tính bảng sẽ giúp bạn sẵn sàng làm việc ở bất kỳ đâu. Màu sắc của Tab S6 Lite 2022 còn cá tính với hai phiên bản Xám Oxford và Xanh Angora.',
	9990000,3000000,1,'Samsung Galaxy Tab S6 Lite 2022',2,0,1,1,'1/1/2011','1/1/2011'),
(N'Samsung Galaxy Tab A8','samsung_galaxy_tab_a8.jpg',3,
	N'Samsung Galaxy Tab A8 2022 đem đến giải pháp học tập, làm việc và giải trí hiệu quả trên màn hình rộng rãi 10.5 inch. Sản phẩm khoác lên thiết kế thanh lịch tối giản, sở hữu hệ thống âm thanh Dolby Atmos sống động, ghi nhận cấu hình ấn tượng trong tầm giá và đem tới loạt tính năng tiện dụng nâng cao trải nghiệm người dùng.',
	N'Không gian hiển thị hình ảnh của Galaxy Tab A8 2022 được thiết kế với kích thước 10.5 inch và căn chỉnh theo tỉ lệ 16:10, cho phép bạn quan sát nhiều thông tin hơn trong cùng khuôn hình. Cách xây dựng hệ thống viền bao quanh thanh thoát cân xứng đem đến cái nhìn thân thiện hơn, đồng thời giúp bạn dễ dàng tập trung vào nội dung được hiển thị. Hãy thỏa sức tận hưởng các thước phim hoành tráng, những tựa game hấp dẫn và học tập, làm việc online rõ ràng trên màn hình lớn của Galaxy Tab A8. Nhờ đó, bạn sẽ có được góc nhìn rộng lớn hơn khi ngắm thế giới trong chiếc máy tính bảng.',
	8490000,1000000,1,'Samsung Galaxy Tab A8 2022 ',2,0,1,1,'1/1/2011','1/1/2011'),
(N'Xiaomi Pad 5','xiaomi_pad_5.jpg',3,
	N'Xiaomi Pad 5 là chiếc máy tính bảng hoàn hảo mà ai cũng muốn sở hữu. Thiết kế mỏng nhẹ thời trang, cấu hình cao cấp hàng đầu, màn hình lớn 11 inch WQHD+ sắc nét, tần số quét 120Hz siêu mượt đi cùng pin dung lượng lên tới 8720mAh, Xiaomi Pad 5 thật sự toàn diện, không có bất cứ điểm gì để chê.',
	N'Xiaomi Pad 5 sở hữu màn hình chất lượng hàng đầu trong thế giới máy tính bảng hiện nay. Màn hình kích thước lớn 11 inch, độ phân giải siêu cao WQHD+, hỗ trợ DCI-P3 và hơn 1 tỷ màu sắc, mang tới hình ảnh trong trẻo, màu sắc sống động, giúp trải nghiệm khi xem phim hay chơi game trở nên hấp dẫn hơn bao giờ hết. Đặc biệt, tính năng hỗ trợ Dolby Vision giúp chiếc tablet Xiaomi này mở ra thế giới điện ảnh sống động khi mọi thứ đều được tái hiện tuyệt đẹp, chân thực như những gì đang xảy ra trong cuộc sống ngoài đời thực.',
	10490000,0,1,'Xiaomi Pad 5 256GB',3,0,1,1,'1/1/2011','1/1/2011'),
(N'Xiaomi Redmi Pad','Redmi_Pad.jpg',3,
	N'Chiếc Redmi Pad đầu tiên cuối cùng cũng được Xiaomi trình làng giới công nghệ, chiếc tablet này thừa hưởng những gì từng xuất hiện trên Xiaomi Pad kết hợp với một mức giá vô cùng phải chăng. Có Redmi Pad đa năng trong tay, niềm vui của bạn sẽ được nhân đôi, vượt ngoài mong đợi. ',
	N'Với trọng lượng chỉ 445g và độ mỏng 7.05mm, Redmi Pad là một trong những chiếc tablet mỏng, nhẹ hàng đầu. Thiết kế dạng khung viền phẳng nguyên khối hoàn toàn bằng kim loại, cùng viền đối xứng với các đường nét thanh mảnh, tạo cho Redmi Pad dáng vẻ thanh lịch và mang đến những cảm nhận êm ái khi cầm nắm sử dụng. ',
	6290000,0,1,'Xiaomi Redmi Pad 3GB-64GB',3,0,1,1,'1/1/2011','1/1/2011'),
(N'iPad Gen 9','ipad_gen_9.jpg',3,
	N'Mạnh mẽ, dễ dàng sử dụng, màn hình lớn, đặc biệt được bán ở mức giá rẻ, iPad Gen 9 10.2 2021 là chiếc máy tính bảng tuyệt vời cho mọi nhu cầu cơ bản, từ giải trí, sáng tạo, làm việc, kết nối và hơn thế nữa.',
	N'iPad Gen 9 10.2 2021 mang trên mình bộ vi xử lý Apple A13 Bionic cực mạnh, giúp tất cả đều diễn ra một cách mượt mà và nhanh chóng. Từ duyệt web, xem phim cho đến chơi game hay thậm chí là chạy nhiều ứng dụng cùng lúc, iPad đều hoàn thành xuất sắc. GPU mạnh hơn tới 20%, cho hiệu suất đồ họa hoàn hảo, mang tới khả năng chỉnh sửa ảnh, video hay chơi game đỉnh cao. Hãy làm mọi thứ bạn muốn, iPad Gen 9 10.2 2021 đủ hiệu năng để chạy mượt trong nhiều năm nữa.',
	9990000,1200000,1,'iPad Gen 9 2021 10.2 inch WiFi 64GB',2,0,1,1,'1/1/2011','1/1/2011'),
(N'Samsung Galaxy Tab','samsung_galaxy_tab_s8_plus.jpg',3,
	N'Cầm Galaxy Tab S8 Plus trên tay, bạn như nắm giữ cả thế giới giải trí rộng lớn với màn hình Super AMOLED 120Hz siêu mượt mà cùng chip Snapdragon 8 Gen 1 cho sức mạnh hiệu năng tuyệt vời. Viên pin dung lượng lớn 10.090 mAh dễ dàng cung ứng năng lượng hoạt động cho thiết bị trong một thời gian dài.',
	N'Với trọng tâm hướng tới trải nghiệm hình ảnh của người dùng, Samsung Galaxy Tab S8 Plus cho thấy sự xuất sắc khi mang tới màn hình 12.4 inch rộng lớn và ghi nhận độ phân giải đạt ngưỡng 2.800 x 1.752 pixels. Chủ nhân chiếc tablet sẽ thỏa sức tận hưởng những khung hình chuyển động mượt mà nhờ mức tần số quét ghi nhận đạt mức 120Hz. Thế mạnh về tấm nền màn hình Super AMOLED giúp thiết bị dễ dàng tái hiện các màu sắc nịnh mắt, với sắc đen sâu và cực kỳ tiết kiệm năng lượng.',
	25990000,3500000,2,'Samsung Galaxy Tab S8 Plus',2,0,1,1,'1/1/2011','1/1/2011'),
(N'iPad mini 6','ipad_mini_6.jpg',3,
	N'Sức mạnh khủng khiếp trong một thiết kế nhỏ gọn đáng yêu, iPad Mini 6 2021 đánh dấu sự trở lại mạnh mẽ của dòng iPad mini luôn được người dùng yêu thích, nơi bạn được tận hưởng ma thuật bên trong chiếc máy tính bảng tuyệt đẹp, hiệu suất đỉnh cao và hỗ trợ bút cảm ứng Apple Pencil.',
	N'Vẻ đẹp của iPad mini 6 chắc chắn sẽ mê hoặc bạn ngay từ cái nhìn đầu tiên. Chiếc máy tính bảng từ Apple giờ đây được thiết kế tràn cạnh với viền màn hình mỏng, các góc bo tròn thanh lịch và phần khung phẳng sang trọng. Cảm biến vân tay Touch ID đã được tích hợp vào phím nguồn cạnh trên, giúp bạn xác thực nhanh chóng, dễ dàng và an toàn. Trên hết, iPad mini hoàn toàn vừa vặn trong tay, là một sản phẩm thực sự di động, đa năng và mạnh mẽ.',
	14990000,1600000,1,'iPad mini 6 2021 8.3 inch WiFi 64GB',1,0,1,1,'1/1/2011','1/1/2011'), 
(N'iPad Air 5','apple_ipad_air_5_m1.jpg',3,
	N'Sức mạnh hiệu năng của iPad Air 5 đánh dấu bước tiến mạnh mẽ với sự góp mặt của chip xử lý M1 xuất sắc do chính Apple phát triển. Sản phẩm phát huy phong cách thiết kế đầy tính thời trang của iPad Air series và đem đến những trải nghiệm mới mẻ khi video call nhờ camera trước góc siêu rộng.',
	N'Sở hữu một trong những chip xử lý di động mạnh và nổi tiếng nhất thế giới hiện tại, iPad Air 5 đem tới tốc độ xử lý dữ liệu nhanh hơn 60% khi đặt cạnh phiên bản tiền nhiệm. Sự góp mặt của Apple M1 giúp iPad Air 5 có thể chạy mượt các tác vụ đồ họa nặng, phát huy được lợi thế về màn hình, đồng thời chơi tốt mọi tựa game hot nhất trên thị trường.',
	16990000,1000000,2,'iPad Air 5 2022 10.9 inch M1 WiFi 64GB',1,0,1,1,'1/1/2011','1/1/2011'),
--Phụ Kiện
(N'Pin sạc dự phòng Innostyle PowerGo Smart Ai 10000mAh','PowerGo_13.jpg',4,
	N'Với thiết kế nhỏ gọn như một smartphone, hỗ trợ hai cổng nguồn ra USB-A và ghi nhận dung lượng pin lên tới 10.000 mAh, sản phẩm pin sạc dự phòng PowerGo Smart AI Innostyle sẽ hỗ trợ rất nhiều cho bạn trong quá trình sử dụng điện thoại, đặc biệt là cho những chuyến đi xa và cần duy trì nguồn năng lượng cho nhiều thiết bị thông minh.',
	N'Dù ghi nhận dung lượng pin lớn nhưng PowerGo Smart AI Innostyle có kích cỡ nhỏ gọn chỉ 13.5 x 6.7 x 1.5 cm, với trọng lượng nhẹ nhàng là 217 gram. Đây là lợi thế hết sức cần thiết với một sản phẩm cần tính cơ động cao như pin sạc dự phòng. Bề mặt của thiết bị được phủ một lớp chất liệu nhám mờ nhằm phòng tránh hiện tượng bám mồ hôi và vân tay khi cầm nắm, hạn chế hiện tượng rơi rớt xảy ra.
	Chất lượng hoàn thiện tốt cùng việc lựa chọn vật liệu có độ bền cao sẽ đảm bảo sản phẩm không bị cấn móp khi được đặt chung trong balo, túi xách với các vật dụng cứng như chìa khóa.',
	599000,100000,2,'Pin sạc dự phòng Innostyle PowerGo Smart Ai 10000mAh',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Pin sạc dự phòng UmeTravel 10000mAh TRIP10000 Quick Charge','umetravel.jpg',4,
	N'Gây ấn tượng nhờ thiết kế hiện đại, có khả năng hỗ trợ sạc nhanh và sở hữu dung lượng pin lớn, bộ pin sạc dự phòng UMETRAVEL TRIP10000 là một trong những giải pháp hiệu quả nhất để đáp ứng nhu cầu sạc pin cơ động cho smartphone và tablet của bạn.',
	N'Điểm gây bất ngờ lớn nhất của UMETRAVEL TRIP10000 là việc sản phẩm có kích cỡ rất gọn, với kích thước chuẩn là 87 x 62 x 24mm cùng trọng lượng 180g, TRIP10000 xứng danh là một trong những bộ pin sạc dự phòng cơ động nhất thị trường hiện nay.
	Mọi chi tiết trên thân vỏ sản phẩm cùng với hệ thống cổng kết nối, nút nguồn đều được hoàn thiện tỉ mỉ, chữ số 10000 được dập chìm vừa thông báo dung lượng pin, vừa góp phần tạo nên diện mạo trẻ trung lôi cuốn.',
	899000,100000,1,'Pin sạc dự phòng UmeTravel 10000mAh TRIP10000 Quick Charge',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'USB 3.0 Sandisk 32GB CZ600','usb_sandish_cruzer.jpg',4,
	N'Bạn có thể lưu trữ rất nhiều dữ liệu quan trọng bên trong USB Sandisk CZ600 và mang tất cả chúng bên mình một cách an toàn nhờ thiết kế nhỏ gọn và trọng lượng siêu nhẹ của sản phẩm.',
	N'USB Sandisk CZ600 mang đến khoảng 32GB dung lượng bộ nhớ để người dùng có thể lưu trữ các dữ liệu yêu thích của mình và mang chúng đi mọi nơi. Mức dung lượng này phù hợp để chứa các tệp tin quan trọng như tài liệu làm việc, tập tin đồ hoạ, các bài hát yêu thích, video kỷ yếu hoặc những bức ảnh cá nhân. Mọi thứ đều có thể lưu trữ dễ dàng và đồng hành bên bạn với chiếc USB 3.0 này.',
	250000,50000,2,'USB 3.0 Sandisk 32GB CZ600',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'USB 3.2 64GB Kingston','usb_3_2_gen_1_kingston.jpg',4,
	N'USB 3.2 64GB Kingston DataTraveler Exodia nổi bật với thiết kế nhỏ gọn, móc khoá lớn tiện lợi và nắp bảo vệ an toàn. Ngoài ra, sản phẩm này còn có dung lượng lưu trữ lớn và tốc độ truyền dữ liệu nhanh.',
	N'USB Kingston 64GB DataTraveler Exodia sử dụng cổng kết nối USB Type-A rất phổ biến. Đây là giao thức kết nối có trên hầu hết các thiết bị điện tử hiện nay như máy tính xách tay, máy tính để bàn, Smart TV... Vì vậy, bạn có thể dễ dàng lưu trữ dữ liệu của mình ở bất cứ đâu mà không cần đến các bộ chuyển đổi chuyên dụng.',
	390000,900000,1,'USB 3.2 64GB Kingston',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Ổ cứng ngoài HDD WD My PassPort Ultra - 1TB','hdd_western_digital.jpg',4,
	N'Với cổng kết nối USB-C tích hợp, bạn có thể dễ dàng mở rộng bộ nhớ hoặc sao lưu dữ liệu mọi lúc trên ổ cứng ngoài HDD WD My PassPort Ultra.',
	N'Ổ cứng HDD WD My PassPort Ultra được thiết kế với cổng USB Type-C tiện lợi để mang lại khả năng lưu trữ nhanh chóng và dễ dàng mọi lúc mọi nơi. Bên cạnh đó, bộ chuyển đổi USB 3.1 đi kèm đảm bảo chiếc ổ cứng này có thể tương thích hoàn hảo với hầu hết các hệ thống máy tính hiện nay.',
	1890000,0,2,'Ổ cứng ngoài HDD WD My PassPort Ultra - 1TB',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Ổ cứng ngoài HDD SEAGATE One Touch - 2TB USB 3.0','Seagate_One_Touch.jpg',4,
	N'Ổ cứng di động Seagate One Touch HDD 2 TB sẽ mang đến cho bạn một giải pháp lưu trữ linh động mọi lúc mọi nơi. Với dung lượng lớn và tốc độ đọc/ghi cao, việc truyền các tệp lớn hay sao lưu dữ liệu cá nhân của bạn sẽ không bao giờ bị chậm trễ.',
	N'Như tên gọi, ổ cứng di động Seagate One Touch HDD 2 TB cung cấp dung lượng lưu trữ lên tới 2TB. Tuy nhiên, sản phẩm này có kích cỡ nhỏ hơn cả một điện thoại thông minh hiện đại. Kết hợp với trọng lượng siêu nhẹ, người dùng có thể dễ dàng mang đi và sử dụng ổ cứng ở bất cứ đâu. Kích thước nhỏ gọn trong lòng bàn tay cũng giúp việc cầm, bảo quản thiết bị trở nên đơn giản hơn bao giờ hết. Giữ nội dung của bạn bên mình để nội dung luôn sẵn sàng truy cập bất cứ khi nào bạn cần.',
	2890000,0,2,'Ổ cứng ngoài HDD SEAGATE One Touch - 2TB USB 3.0',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Combo Loa Bluetooth Karaoke kèm Mic không dây ivalue 6.5 inch Gỗ','loa_blutooth_karaoke.jpg',4,
	N'Bộ combo bạn đang theo dõi gồm có một chiếc loa Bluetooth 6.5 inch được hoàn thiện bằng chất liệu gỗ sang trọng, đi kèm với micro không dây, sạc và remote điều khiển từ xa hiện đại. Với combo loa Bluetooth này, bạn có thể thỏa sức tận hưởng những phút giây giải trí cùng bạn bè và gia đình ở bất cứ nơi đâu.',
	N'Thiết kế sản phẩm trở nên sang trọng hơn bao giờ hết khi i.value sử dụng chất liệu chủ đạo là gỗ để hoàn thiện thân vỏ chiếc loa. Những đường vân gỗ mềm mại với màu sắc sang trọng giúp sản phẩm ghi điểm tuyệt đối về tính thẩm mỹ mà vẫn đảm bảo tính bền bỉ cứng cáp trong quá trình sử dụng. Thiết kế lịch thiệp cho phép bạn có thể dùng chiếc loa như một phụ kiện trang trí đặt trong không gian gia đình.',
	3690000,600000,2,'Combo Loa Bluetooth Karaoke kèm Mic không dây ivalue 6.5 inch Gỗ',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Loa vi tính SoundMax A700 (2.1 - 16W)','loa_soundmax.jpg',4,
	N'Loa dàn SoundMax A700 mang tới cho người dùng những âm thanh sống động. Sản phẩm phù hợp cho nhiều mục đích sử dụng như nghe nhạc, chơi game hoặc xem phim nhờ sự xuất hiện của nhiều cổng kết nối tích hợp.',
	N'Mặc dù có giá bán phải chăng nhưng SoundMax A700 vẫn được nhà sản xuất đầu tư kỹ lưỡng về thiết kế. Chất liệu chính để tạo ra bộ khung của loa là nhựa, tuy nhiên SoundMax đã rất tinh tế khi hoàn thiện bề mặt theo nhiều phong cách khác nhau để tăng tính thẩm mỹ của sản phẩm. Phần lưới loa được làm dạng ba cánh để khiến loa trở nên hiện đại hơn. Loa có màu đen chủ đạo và kích thước nhỏ gọn, phù hợp để lắp đặt ở nhiều vị trí cũng như không gian khác nhau cho nhiều mục đích sử dụng.',
	699000,0,2,'Loa vi tính SoundMax A700 (2.1 - 16W)',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Tai nghe choàng đầu có mic Gaming Soundmax AH335','tai_nghe_Gaming_Soundmax_AH335_03.jpg',4,
	N'Không chỉ đẹp với thiết kế đèn LED RGB rực rỡ, tai nghe chơi game SoundMax AH-335 còn có kiểu dáng hiện đại, đeo lâu không mệt và chất âm đỉnh cao để cung cấp một không gian giải trí riêng cho mỗi game thủ.',
	N'So với những thế hệ tai nghe SoundMax trước đây, SoundMax AH-335 đã được lột xác hoàn toàn trong một thiết kế trẻ trung và hiện đại hơn. Trên chiếc tai nghe chơi game này, nhà sản xuất sử dụng các đường nét góc cạnh, hầm hố và liền lạc hơn để cuốn hút bất kỳ game thủ nào ngay từ cái nhìn đầu tiên.
	Các chi tiết nhựa được phủ lên một lớp sơn nhám ánh kim trong khi phần vòm chụp đầu được gia tăng sự cứng cáp bởi một khung xương kim loại. Tuy nhiên, phần thiết kế ấn tượng nhất trên sản phẩm lại đến từ dải đèn LED RGB chạy dọc mặt ngoài củ tai và phần logo. Chỉ cần bạn cắm tai nghe vào máy tính hay laptop, bạn chắc chắn sẽ khiến mọi ánh nhìn đổ dồn về phía mình bởi màu sắc của dải LED này liên tục chuyển đổi một cách mượt mà và bắt mắt.',
	650000,0,2,'Tai nghe choàng đầu có mic Gaming Soundmax AH335',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Tai nghe bluetooth TWS Belkin Soundform Freedom','tai_nghe_soundform_freedom.jpg',4,
	N'Không chỉ tiện dụng với kết nối không dây, tai nghe Bluetooth TWS Belkin Soundform Freedom còn nổi bật với âm trầm mạnh mẽ, thời lượng pin siêu trâu, hỗ trợ định vị vị trí hộp sạc, khử tiếng ồn ENC, cảm biến thông minh tích hợp, hỗ trợ sạc không dây Qi và chống thấm nước.',
	N'Các tai nghe của Belkin Soundform Freedom được trang bị trình điều khiển 2 lớp với kích thước lớn bên trong. Kết hợp cùng thiết kế in-ear, chiếc tai nghe không dây này hứa hẹn mang lại âm thanh phong phú, sống động ở bất kỳ mức âm lượng nào mà người dùng lựa chọn. Cho dù bạn đang nghe nhạc, chơi game hay xem phim, Soundform Freedom đều cung cấp dải âm trầm ấn tượng, âm trung và âm cao trong trẻo để bạn có thể tận hưởng được những chi tiết tinh tế nhất của âm thanh.',
	2590000,500000,1,'Tai nghe bluetooth TWS Belkin Soundform Freedom',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Tai nghe gaming Corsair HS35 Stereo','corsair_hs35_stereo_carbon.jpg',4,
	N'Tai nghe chơi game CORSAIR HS35 Stereo mang đến âm thanh chất lượng cao và giọng nói rõ ràng dù cho bạn chơi game hay làm việc nhiều giờ liên tục. Thiết kế tổng thể sang trọng của nó cùng chụp tai có thể điều chỉnh mang đến cho bạn độ tiện lợi nhất khi sử dụng. Không những vậy, bạn có thể cắm và kết nối tai nghe với nhiều thiết bị hỗ trợ.',
	N'Tai nghe chơi game CORSAIR HS35 Stereo được gia công chắc chắn với các chất liệu cao cấp dù được bán ra ở mức giá cực kỳ rẻ. HS35 Stereo có dạng thiết kế chụp tai cơ bản nhưng cực kỳ ấn tượng với cách phối màu cá tính, bao gồm Xanh dương, Xanh lá, Đỏ và Đen. Phần headband to vừa đủ sẽ giúp tai nghe bền bỉ hơn và tiện lợi hơn khi mang đi bên mình.',
	990000,0,2,'Tai nghe gaming Corsair HS35 Stereo',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Bàn Phím Gập Không Dây Mipow Miffy Mini Slim-Fold MPC-003','mipow_miffy_mini_slim.jpg',4,
	N'Mipow Miffy Mini Slim-Fold là chiếc bàn phím gập không dây phù hợp cho những ai yêu thích sự tiện lợi. Công nghệ Bluetooth kết hợp cùng trọng lượng nhẹ cho phép sản phẩm trở thành người bạn đồng hành hoàn hảo cho mọi người.',
	N'Được thiết kế dành cho những ai thường xuyên phải di chuyển để làm việc, bàn phím gập không dây Mipow Miffy Mini Slim-Fold sở hữu kích thước siêu nhỏ gọn và trọng lượng chỉ 150gr. Bạn có thể dễ dàng cầm sản phẩm trên tay mà không gặp bất cứ vấn đề nào.
	Đặc biệt, chiếc bàn phím không dây này còn sở hữu tính năng gập lại vô cùng tiện lợi. Kết hợp công nghệ từ tính thông minh, sản phẩm của Mipow sẽ trở thành một công cụ đắc lực để làm việc mọi lúc mọi nơi, thuận tiện cho bạn khi di chuyển và sử dụng nó trong các cuộc họp.',
	1590000,0,2,'Bàn Phím Gập Không Dây Mipow Miffy Mini Slim-Fold MPC-003',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Bàn phím giả cơ có dây Zadez G-852K','gaming_zadez_g_852k.jpg',4,
	N'Sau nhiều năm nghiên cứu nhu cầu của các game thủ và những người đam mê với Esport, Zadez đã đúc rút kinh nghiệm để sáng tạo ra một mẫu bàn phím Gaming G-852K. Ngoài điểm sáng ở thiết kế chơi game chuyên dụng, chiếc bàn phím này còn hỗ trợ nhiều tính năng khác như đèn LED 7 màu, switch bán cơ. Tất cả nhằm đảm bảo trải nghiệm chơi game PC được đưa lên một tầm cao mới.',
	N'Từng chi tiết trên bàn phím Zadez G-852K hướng tới việc hỗ trợ hoàn hảo cho các game thủ trong những pha giao tranh căng thẳng. Trong đó, chiếu nghỉ tay được bố trí ở cả hai bên để thuận tiện nhất cho việc thao tác và giảm cảm giác ê mỏi khi thao tác liên tục trong nhiều giờ.
	Khoảng cách hợp lý giữa các phím đem tới sự thoải mái tối ưu khi nhập văn bản. Đặc biệt hơn, hệ thống đèn LED 7 màu sẽ khơi gợi cảm hứng gaming theo cách đặc biệt nhất.',
	600000,0,2,'Bàn phím giả cơ có dây Zadez G-852K',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Chuột Gaming Asus CERBERUS','asus_cerberus.jpg',4,
	N'Đến từ dòng sản phẩm Asus gaming rất được lòng giới đam mê Esport, chuột máy tính CERBERUS sở hữu thiết kế ấn tượng với những đường cắt xẻ hiện đại, thể hiện hiệu năng tốt khi vận hành và đặc biệt là có giá bán phải chăng. Ngoài ra, công tắc DPI bốn nấc và đèn LED tiện dụng sẽ khiến bạn hài lòng trong quá trình trải nghiệm sản phẩm.',
	N'Không tập trung vào trải nghiệm cho người thuận tay phải như một số dòng chuột gaming trên thị trường, Asus CERBERUS được thiết kế cân xứng để đáp ứng linh hoạt nhu cầu sử dụng của mọi game thủ, dù bạn thuận tay trái hay tay phải. Mọi thao tác lia chuột và click trên Asus CERBERUS đều được thực hiện thoải mái, giúp bạn kiểm soát tốt mọi diễn biến của game đấu.',
	499000,0,2,'Chuột Gaming Asus CERBERUS',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Chuột Gaming Logitech G502 Hero High Performance','chuot-gaming-logitech-high-performance-hero-g502.jpg',4,
	N'Với thiết kế đậm chất gaming và những nét cắt xẻ cực cá tính, chuột Logitech G502 HERO High Performance sẽ là trợ thủ đắc lực để game thủ có điều kiện phô diễn kỹ năng thượng thừa trong từng pha giao tranh gay cấn. Mọi chi tiết của sản phẩm như cảm biến quang học, hệ thống nút bấm, trọng lượng và đèn RGB đều được tối ưu hợp lý nhằm tạo điều kiện tốt nhất khi chơi game.',
	N'Chỉ liếc sơ qua bạn cũng sẽ biết Logitech G502 HERO High Performance thiết kế dành riêng cho người thuận tay phải. Sản phẩm được hoàn thiện với hai tone màu chủ đạo là xám và đen, các cạnh của chuột có viền cao su chống trượt. Trải nghiệm thực tế cho thấy G502 HERO High Performance có thể vận hành ổn định trong mọi trường hợp ngay cả khi tay bạn đổ mồ hôi sau nhiều giờ sử dụng. Thiết kế ấn tượng theo phong cách gaming sẽ mê hoặc bạn ngay từ lần đầu trải nghiệm.',
	1759000,0,2,'Chuột Gaming Logitech G502 Hero High Performance',NULL,0,1,1,'1/1/2011','1/1/2011'),

--Đồng hồ thông minh
(N'Apple Watch SE 2 GPS 40mm viền nhôm dây cao su','apple_watch_se.jpg',5,
	N'Có quá nhiều lý do để bạn yêu Apple Watch SE 2022. Thiết kế năng động, cảm biến mạnh mẽ mang đến đầy đủ các thông tin về sức khỏe, hỗ trợ tập luyện hiệu quả, hiệu suất vượt trội và luôn luôn kết nối, Apple Watch SE 2 (2022) là chiếc đồng hồ thông minh giá tốt phù hợp cho tất cả mọi người.',
	N'Apple Watch SE 2022 có 3 phiên bản màu là Đen Midnight, Vàng Starlight và Bạc Silver. Phần viền màn hình tràn cạnh giúp mọi thứ trở nên hấp dẫn hơn. Đồng hồ rất thân thiện với môi trường khi được làm hoàn toàn từ nhôm tái chế 100%, đồng thời phần vỏ thiết kế theo quy trình sản xuất mới để giảm lượng khí thải carbon hơn 80%. Apple Watch SE 2022 đẹp và tỏa sáng trên cổ tay của bạn với một thiết kế thời thượng, không bao giờ lỗi thời. Hơn nữa, bạn có thể thay đổi và tùy biến dây đeo bất cứ lúc nào để cảm nhận sự mới mẻ mỗi ngày.',
	7490000,0,2,'Apple Watch SE 2 GPS 40mm',1,0,1,1,'1/1/2011','1/1/2011'),
(N'Samsung Galaxy Watch5 Pro 45mm','samsung_galaxy_watch.jpg',5,
	N'Lần đầu tiên xuất hiện trong danh mục Galaxy Watch, Galaxy Watch5 Pro thể hiện sự xuất sắc với thiết kế cao cấp, các tính năng sức khỏe cải tiến, hỗ trợ luyện tập chuyên biệt, xứng đáng là chiếc đồng hồ bền bỉ và đa nhiệm nhất của Samsung, giúp người dùng dễ dàng chinh phục các mục tiêu sức khỏe hàng ngày.',
	N'Samsung Galaxy Watch5 Pro có tính năng Track back, để bạn dễ dàng quay lại cung đường cũ. Cụ thể, đồng hồ có khả năng lưu lại tuyến đường bạn đã đi, từ đó bạn có thể quay lại nơi bắt đầu một cách dễ dàng – xóa tan nỗi lo đi lạc. Bạn cũng có thể bật định hướng giọng nói và tín hiệu rung để tiện lợi và tập trung vào các hoạt động đạp xe hay đi bộ.',
	11990000,1000000,1,'Samsung Galaxy Watch5 Pro 45mm',2,0,1,1,'1/1/2011','1/1/2011'),
(N'Samsung Galaxy Watch 4 Classic 42mm','samsung_galaxy_watch_4.jpg',5,
	N'Samsung Galaxy Watch 4 Classic là một tuyệt phẩm với thiết kế đẹp như những chiếc đồng hồ đeo tay cổ điển cao cấp nhưng lại mang trên mình loạt tính năng thông minh hàng đầu hiện nay. Những cảm biến theo dõi sức khỏe và hỗ trợ tập luyện tối tân nhất sẽ giúp bạn ngày càng khỏe mạnh hơn.',
	N'Đúng như tên gọi, dù là một chiếc đồng hồ thông minh nhưng thiết kế của Galaxy Watch 4 Classic thời trang và thân thuộc như những mẫu đồng hồ truyền thống cao cấp. Bạn có thể cảm nhận được sự sang trọng qua chất liệu thép không gỉ cứng cáp, mạnh mẽ và kiểu dáng biểu trưng cho sự thành đạt. Trên Galaxy Watch 4 Classic còn có vòng xoay Bezel vật lý đặc trưng, cho bạn sử dụng đồng hồ không chỉ tiện lợi mà còn rất sành điệu.',
	8490000,3300000,1,'Samsung Galaxy Watch 4 Classic 42mm',2,0,1,1,'1/1/2011','1/1/2011'),
(N'Vòng đeo tay thông minh Mi Band 6','xiaomi_mi_band_6.jpg',5,
	N'Kế thừa tinh hoa của những thế hệ trước, Xiaomi Mi Band 6 là chiếc vòng đeo tay thông minh hoàn hảo khi sở hữu màn hình AMOLED sắc nét, hỗ trợ đo nhịp tim và SpO2, thời lượng pin 2 tuần, hoạt động tập luyện chuyên nghiệp và khả năng chống nước bền bỉ.',
	N'Lần đầu tiên trên một chiếc Mi Band, bạn sẽ được tận hưởng màn hình tràn viền kích thước tới 1,56 inch, cho diện tích hiển thị lớn hơn tới 50% so với thế hệ trước nhưng vẫn rất nhỏ gọn. Màn hình công nghệ AMOLED, mật độ điểm ảnh 326ppi hiển thị sắc nét, màu sắc sống động, rõ ràng ngay cả khi dưới ánh nắng mặt trời. Màn hình này còn được làm cong đều ở các góc cạnh, rất thẩm mỹ và nâng tầm trải nghiệm xem. Dễ dàng kiểm tra tin nhắn, thông báo, cuộc gọi và các thông tin hữu ích trên Mi Band 6.',
	1290000,600000,1,'Mi Band 6',3,0,1,1,'1/1/2011','1/1/2011'),
(N'Xiaomi Redmi Watch 2 Lite','xiaomi_redmi_watch_2_lite.jpg',5,
	N'Với tinh thần là thương hiệu dẫn đầu thế giới về thiết bị đeo thông minh, Xiaomi tiếp tục mang đến những điểm ấn tượng cho chiếc đồng hồ thông minh Redmi Watch 2 Lite. Nó được cải tiến hơn Mi Watch Lite với màn hình lớn 1.55 inch, hơn 100 chế độ tập luyện và tích hợp cảm biến SpO2. ',
	N'Xiaomi Redmi Watch 2 Lite được nâng cấp khá nhiều và màn hình là điểm nâng cấp nổi bật so với thế hệ trước. Chiếc smartwatch này có màn hình tràn viền lớn 1.55 inch, có độ phân giải cao và nhiều màu sắc, hiển thị nhiều chi tiết hơn. Với kích thước này, tỷ lệ màn hình so với thân máy lớn hơn, tăng 10% so với mẫu Mi Watch Lite trước đó.',
	1490000,200000,1,'Xiaomi Redmi Watch 2 Lite',3,0,1,1,'1/1/2011','1/1/2011'),
(N'Apple Watch Series 3 GPS 38mm viền nhôm dây cao su','apple_watch_series3_gps.jpg',5,
	N'iPhone 12 ra mắt với vai trò mở ra một kỷ nguyên hoàn toàn mới. Tốc độ mạng 5G siêu tốc, bộ vi xử lý A14 Bionic nhanh nhất thế giới smartphone, màn hình OLED tràn cạnh tuyệt đẹp và camera siêu chụp đêm, tất cả đều có mặt trên iPhone 12.Apple Watch Series 3 GPS 38mm viền nhôm dây cao su trắng – chiếc đồng hồ mang thương hiệu Apple, sở hữu một thiết kế hiện đại và trẻ trung, phù hợp cho các hoạt động thể thao hay đi picnic. Bạn sẽ phải ngạc nhiên trước những tính năng mà chiếc đồng hồ này đang sở hữu.',
	N'Tương đồng với phiên bản trước, Apple Watch Series 3 được thiết kế với mặt kính được đẩy lên cao và có phần thân máy dày. Phần mặt trên của máy được chế tác bằng chất liệu nhôm, mạ bạc tỉ mỉ, trông rất tinh tế và cứng cáp. Phần dây đeo của đồng hồ thông minh này được làm bằng cao su flo-carbon, có bề mặt sắc sảo, độ bền cao, ít bị rít khi tiếp xúc với nước. Bên cạnh đó, máy được trang bị 2 hệ thống loa có khả năng chống nước, cùng bộ đo cảm biến nhịp tim đặt bên mặt dưới đồng hồ.',
	5999000,1200000,2,'Apple Watch Series 3 GPS 38mm',1,0,1,1,'1/1/2011','1/1/2011'),
(N'Samsung Galaxy Watch5 LTE 40mm','samsung_galaxy_watch5_lte.jpg',5,
	N'Thời trang và phong cách không ngừng với Galaxy Watch5 LTE, smartwatch giúp bạn thể hiện dấu ấn riêng hoàn hảo. Không chỉ vậy, Samsung còn cải tiến cảm biến giúp người dùng theo dõi sức khỏe lẫn hỗ trợ luyện tập toàn diện. Đặc biệt, phiên bản LTE tiện lợi cho bạn kết nối độc lập mà không cần đến điện thoại.',
	N'Samsung Galaxy Watch5 LTE tích hợp cảm biến sinh học BioActive 3 trong 1, bao gồm: Phân tích kháng điện sinh học (BIA), Điện tim (ECG) và Nhịp tim quang học (HR), mang đến bức tranh sức khỏe chuyên sâu, để bạn thấu hiểu rõ bản thân.',
	7490000,500000,2,'Samsung Galaxy Watch5 LTE 40mm',2,0,1,1,'1/1/2011','1/1/2011'),
(N'Đồng hồ thông minh Xiaomi Watch S1 Active','xiaomi_watch_s1_active.jpg',5,
	N'Xiaomi Watch S1 Active sẽ đặt cả thế giới công nghệ thông minh lên trên cổ tay bạn. Sản phẩm sở hữu màn hình AMOLED 1.43 inch và ghi nhận thời lượng pin lên tới 12 ngày, hỗ trợ cuộc gọi bluetooth, đồng thời đem tới 117 chế độ tập luyện đa dạng khác nhau.',
	N'Xiaomi Watch S1 Active có thế mạnh lớn về khả năng hiển thị khi sử dụng màn hình 1.43 inch AMOLED đa sắc màu và hết sức mượt mà. Công nghệ Always On giúp bạn dễ dàng quan sát, kiểm tra thời gian một cách thuận tiện. Bạn có thể theo dõi những thông báo, cuộc gọi đến một cách dễ dàng ngay cả trong môi trường ánh sáng ngoài trời.',
	4490000,300000,2,'Đồng hồ thông minh Xiaomi Watch S1 Active',3,0,1,1,'1/1/2011','1/1/2011'),
(N'Apple Watch Ultra GPS + Cellular 49mm Titanium Alpine Loop Small','apple_watch_ultra_49mm.jpg',5,
	N'Chiếc đồng hồ thách thức mọi giới hạn đã xuất hiện, Apple Watch Ultra phiên bản GPS + Cellular mở ra những trải nghiệm chưa từng có trên mọi chiếc Apple Watch trước đó. Sản phẩm được trang bị GPS siêu chính xác, thời lượng pin tới 36 giờ và kết cấu bền bỉ dành cho những người yêu thích trải nghiệm khám phá.',
	N'Apple Watch Ultra được đầu tư kỹ lưỡng ngay từ cấu trúc thân vỏ để đẩy độ bền lên ngưỡng cao nhất. Bộ khung Titanium kết hợp cùng mặt kính Sapphire tạo nên kết cấu tổng thể vững vàng, chịu lực tốt, chống xước hiệu quả và bảo vệ hệ thống linh kiện khỏi những tác động mạnh từ môi trường. Bạn sẽ dễ dàng phân biệt Apple Watch Ultra với các mẫu đồng hồ Apple khác bởi phím xoay Digital Crown kích cỡ lớn, thao tác thuận tiện ngay cả khi đang đeo găng tay. Sản phẩm có thể chống nước 100 mét, đạt tiêu chuẩn MIL-STD 810H siêu bền và chống bụi IP6X xuất sắc.',
	23990000,0,1,'Apple Watch Ultra GPS + Cellular 49mm',1,0,1,1,'1/1/2011','1/1/2011'), 
(N'Apple Watch SE 2 GPS + Cellular 40mm viền nhôm dây cao su','apple_watch_se_2_gps_cellular.jpg',5,
	N'Với lợi thế luôn nằm trên cổ tay của bạn, Apple Watch SE 2 GPS Cellular làm được những điều mà các thiết bị công nghệ khác khó lòng thực hiện. Những thông tin sức khỏe đầy ý nghĩa và khả năng kết nối tuyệt vời giúp Apple Watch là một thiết bị kỳ diệu, luôn quan tâm đến bạn.',
	N'Nhờ việc hỗ trợ mạng 4G, Apple Watch SE 2 Cellular giúp bạn luôn luôn kết nối mọi lúc mọi nơi. Bạn sẽ không bỏ lỡ cuộc gọi, tin nhắn hay bất cứ thông báo nào, ngay cả khi không có iPhone bên cạnh. Apple Watch sẽ đồng hành bên bạn với những tính năng hữu ích như bản đồ, Siri để bạn có thể yên tâm tham gia các hoạt động ngoài trời, tự tin khám phá những vùng đất mới.',
	8990000,0,2,'Apple Watch SE 2 GPS + Cellular 40mm',1,0,1,1,'1/1/2011','1/1/2011'),
--Đồng hồ thời trang
(N'Đồng hồ SWISS MILITARY Ladies Swiss Recruit Lady II 32 mm Nữ 06-7230.7.02.002','swiss-military.jpg',6,
	N'Thương hiệu Swiss Military mang phong cách thể thao mạnh mẽ, kết hợp chất lượng làm nổi bật các giá trị của các lực lượng vũ trang Thụy Sĩ: mạnh mẽ, bền bỉ và độ chính xác cao, cũng như khả năng hoạt động trong điều kiện khắc nghiệt.',
	N'Thiết kế tinh tế với màu vàng sang trọng, là một phụ kiện thời trang lý tưởng dành cho các quý cô nữ tính và dịu dàng
Đồng hồ nữ Swiss Military 06-7230.7.02.002 là chiếc đồng hồ quartz đến từ hãng Swiss Military một thương hiệu của đất nước Thụy Sỹ.
Bảo vệ tốt các chi tiết máy bên trong
-  Chiếc đồng hồ nữ này có mặt kính có độ trong suốt và độ cứng cực cao được trang bị trên, gần như không trầy xước khi va chạm.
- Khung viền của chiếc chiếc đồng hồ Swiss Military này có khả năng chịu lực tốt, chống ăn mòn, chống oxy hóa hiệu quả, hạn chế hư hỏng khi va chạm nhẹ.
Có thể đeo đồng hồ khi rửa tay, đi mưa hay tắm rửa nhờ hệ số hống nước 5 ATM. Không đeo chiếc đồng hồ này khi đi lặn, bơi lội
Chiếc đồng hồ kim này còn có lịch ngày tại vị trí 3 giờ, giúp bạn theo dõi ngày trong tháng một cách dễ dàng
Chiếc đồng hồ Swiss Military nữ này có dây đeo bền bỉ, chịu được mọi thời tiết, cho cảm giác mát tay khi đeo',
	5980000,2000000,1,'SWISS MILITARY',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Đồng hồ MVW 40 mm Nam ML009-01','mvw_ml009_01.jpg',6,
	N'Đồng hồ MVW ML009-01 là chiếc đồng hồ nam của hãng MVW đến từ Việt Nam - thương hiệu độc quyền của Thế Giới Di Động.',
	N'Bên cạnh tính năng xem giờ, đồng hồ là món phụ kiện thời trang góp phần không nhỏ tôn vinh vẻ đẹp của người đeo. Đồng hồ MVW được nhiều người yêu thích bởi sự đa dạng về mẫu mã và chất lượng. Để tìm hiểu thêm về hãng đồng hồ MVW của nước nào, có tốt không, giá bao nhiêu, các bạn hãy cùng theo dõi bài viết dưới đây nhé!
Những mẫu đồng hồ của MVW được thiết kế tỉ mỉ từ đội ngũ thiết kế người Việt sẽ đảm nhận khâu lên ý tưởng, phác họa bản thảo thiết kế sản phẩm. Sau đó đi đến các bước lắp ráp sản phẩm của các đối tác Trung Quốc để đem đến những chiếc đồng hồ hoàn thiện nhất.
Bộ máy Miyota bên trong của đồng hồ MVW đến từ Nhật Bản luôn đảm bảo chất lượng ổn định và tính bền bỉ và độ chính xác cao.
Dây đồng hồ MVW là dây da thuộc mềm mại, dây hợp kim ôm trọn cổ tay, được mài giũa gọn gàng, có lớp chống oxi hoá,... Khi đeo trên tay sẽ có cảm giác cứng cáp cùng với độ bền cao.',
	2600000,1000000,1,'Đồng hồ MVW',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Đồng hồ G-Shock 45.4 mm Nam GA-2100-1A4DR','g_shock_ga.jpg',6,
	N'Chữ G trong từ G-Shock được bắt nguồn từ chữ cái đầu của từ Gravity, nghĩa là không trọng lực. G-Shock được hiểu với khả năng chống va đập, rơi vỡ. Cái tên đã nói rõ về tính năng và thiết kế của chiếc đồng hồ.',
	N'• Là chiếc đồng hồ đầy sự nam tính, trẻ trung và hiện đại thuộc dòng đồng hồ G-Shock của thương hiệu Casio nổi tiếng và uy tín Nhật Bản
• Đồng hồ G-Shock 45.4 mm nam GA-2100-1A4DR với đường kính mặt 45.4 mm.
• Khung viền và dây đeo của đồng hồ đều được làm từ nhựa, bền bỉ, chống nước tốt. Êm ái khi đeo cả ngày dài.
• Đồng hồ nam sở hữu độ chống nước 20 ATM: An toàn khi đeo đi bơi, lặn.
• Vô số tiện ích được tích hợp trên mặt đồng hồ như: Báo thức, bấm giờ thể thao, bấm giờ đếm ngược, kim dạ quang, lịch ngày, lịch thứ, múi giờ thứ 2, âm bấm phím, đèn led, đồng hồ 24 giờ. Giúp người dùng theo dõi thời gian một cách nhanh chóng và thuận tiện.',
	3628000,600000,2,'Đồng hồ G-Shock',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Đồng hồ CITIZEN 39.2 mm Nam BM7523-12X','citizen_bm7523_12x.jpg',6,
	N'Xu hướng thiết kế chính của đồng hồ Citizen là đơn giản và thanh lịch. Citizen luôn chú trọng đến việc đổi mới và tạo sự phong phú cho các mẫu thiết kế. Các chi tiết cũng được Citizen đầu tư kỹ lưỡng trong khâu chế tác.',
	N'• Đồng hồ CITIZEN 39.2 mm Nam BM7523-12X sẽ là lựa chọn phù hợp dành cho những ai là tín đồ yêu đồng hồ bởi thiết kế vô cùng tinh tế và thanh lịch. Mẫu đồng hồ đến từ thương hiệu Citizen - một trong những thương hiệu nổi tiếng và uy tín đến từ Nhật Bản. 
• Mẫu đồng hồ này nổi bật với sắc nâu trung tính cùng đường kính mặt 39.2 mm và độ rộng dây 19 mm.
• Dây đeo làm từ da tổng hợp mềm mại và nhẹ nhàng. Khung viền đồng hồ được làm từ thép không gỉ 316L bền bỉ với thời gian, chống oxi hoá, chống chịu mọi thời tiết. Chất liệu này sáng bóng, bắt mắt.
• Độ kháng nước của chiếc đồng hồ nam này là 5 ATM, người dùng có thể an toàn đeo khi đi tắm, đi mưa. Lưu ý: không nên mang khi đi bơi, lặn.
• Lịch ngày được tích hợp ngay trên mặt đồng hồ giúp người dùng theo dõi thời gian một cách thuận tiện.',
	8285000,500000,2,'Đồng hồ CITIZEN',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Đồng hồ ORIENT Star 38.7 mm Nam RE-AU0002S00B','orient_star_re_au0002s00b.jpg',6,
	N'Đồng hồ Orient đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ Orient với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ Orient chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.',
	N'- Đến từ hãng đồng hồ Orient của Nhật Bản
- Đồng hồ cơ tự động bền bỉ, không cần lên dây cót bằng tay, có tuổi thọ cao
- Chiếc đồng hồ nam này có đường kính mặt 38.7 mm, phù hợp với cổ tay người có chu vi khoảng từ 18 - 19 cm
- Khung viền thép không gỉ chịu va đập tốt, dây da nhẹ nhàng, mềm mại, thiết kế ôm tay tốt
- Hệ số chống nước 5 ATM cho bạn thoải mái đeo đồng hồ khi đi tắm, rửa tay, không nên mang khi bơi lội, lặn
- Xác định thời gian chuẩn xác hơn nhờ có ô lịch ngày tiện lợi',
	21700000,1500000,1,'Đồng hồ ORIENT',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Đồng hồ ORIENT SK 41.7 mm Nam RA-AA0B04R19B','orient_rk.jpg',6,
	N'Đồng hồ Orient đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ Orient với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ Orient chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.',
	N'Đồng hồ Orient SK Việt Nam RA-AA0B04R19B sở hữu đường kính mặt 41.7 mm
Mặt kính của đồng hồ được làm từ kính cứng, có độ cứng cáp, độ trong suốt cao, chống trầy xước nứt vỡ cực tốt
Khung viền và dây đeo được làm từ thép không gỉ 316L có khả năng chống chịu ăn mòn cao, độ cứng và độ bền cao
Mẫu đồng hồ nam được trang bị hệ số chống nước lên đến 5 ATM, bạn có thể an tâm khi mang đi tắm và đi mưa, tuy nhiên không nên đeo đi bơi, lặn
Đồng hồ này còn được trang bị lịch thứ, lịch ngày giúp người dùng theo dõi thời gian một cách thuận tiện, an tâm theo dõi thời gian trong bóng tối vì đã có kim dạ quang',
	8800000,800000,2,'Đồng hồ ORIENT SK',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Đồng hồ ERNEST BOREL Iris 31 mm Nữ LGR6002-422RD','ernest_borel.jpg',6,
	N'Các mẫu đồng hồ Ernest Borel luôn mang lại sự sang trọng, quý phái mỗi khi đeo lên tay. Bên cạnh đó, Ernest Borel cũng dành rất nhiều tâm huyết cho các mẫu đồng hồ đôi thể hiện sự ngọt ngào của dư vị tình yêu thông qua màu sắc và các hoạt tiết được gia công tinh xảo bên trong mặt số.',
	N'- Hãng đồng hồ Ernest Borel đến từ đất nước Thụy Sĩ, nổi bật với tone màu đỏ trang nhã cùng các chi tiết tinh xảo bên trong mặt số 
- Đồng hồ Automatic có độ chính xác cao, hoạt động bền bỉ và ổn định nhờ bộ máy vận hành dựa trên sự chuyển động của cổ tay 
- Mẫu đồng hồ có đường kính mặt 31 mm
- Khung viền thép không gỉ 316L được mạ vàng giúp chiếc đồng hồ nữ này có khả năng chống trầy, chống oxy hóa tốt và dây đeo chất liệu da bò cao cấp, êm ái, thoải mái với làn da người dùng 
- Người dùng có thể yên tâm khi tắm, đi dưới mưa hay rửa tay mà không lo hư hỏng nhờ khả năng chống nước 5 ATM của đồng hồ. Lưu ý, tránh mang đồng hồ theo khi bơi lội hoặc lặn 
- Đồng hồ có tính thẩm mỹ cao với 11 kim cương được đính trên đồng hồ',
	31540000,1500000,1,'Đồng hồ ERNEST BOREL',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Đồng hồ TITAN Neo IV 41 mm Nam 1802SM01','titan_neo_iv_41.jpg',6,
	N'Đồng hồ Titan chủ yếu là phong cách cổ điển nhưng vẫn mang âm hưởng của phong cách hiện đại. Thương hiệu này chú trọng chủ yếu đến chất lượng và mẫu mã đồng hồ khiến người dùng thật sự hài lòng về các model đồng hồ có mặt trên thị trường hiện nay.',
	N'- Đồng hồ Nam Titan 1802SM01 phong cách hiện đại là sản phẩm của thương hiệu đồng hồ Titan của Ấn Độ  
- Sở hữu đường kính mặt và độ dày mặt lần lượt là 41 mm và 7.7 mm
- Đồng hồ trang bị khung viền và dây đeo làm từ hợp kim chống ăn mòn cao, dễ lau chùi, bảo vệ tốt mọi chi tiết máy bên trong
- Đồng hồ nam có hệ số chống nước 5 ATM, đeo đồng hồ khi tắm, rửa tay và đi mưa đều được. Không nên đeo đồng hồ khi đi lặn, bơi lội',
	1800000,0,2,'Đồng hồ TITAN',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Đồng hồ Casio 36.3 mm Unisex A168WER-2ADF','casio_a168wer_2adf.jpg',6,
	N'Thương hiệu đồng hồ nổi tiếng đến từ Nhật Bản không ngừng cải tiến và cho ra mắt những dòng sản phẩm chất lượng phù hợp với nhiều đối tượng khách hàng. Những dòng sản phẩm nổi tiếng của Casio là: G-Shock với thiết kế mạnh mẽ cùng độ bền cao, Edifice thiết kế hiện đại cùng nhiều tính năng vượt trội, Sheen với thiết kế cổ điển và sang trọng,…',
	N'• Đồng hồ Casio 36.3 mm Unisex A168WER-2ADF là món phụ kiện thời trang lý tưởng đến từ hãng đồng hồ Casio nổi tiếng của Nhật Bản. 
• Đồng hồ có đường kính mặt 38.6 x 36.3 mm.
• Chất liệu của khung viền được làm từ nhựa resin và dây đeo của đồng hồ được làm từ thép không gỉ cứng cáp, bền bỉ với thời gian.
• Đồng hồ unisex sở hữu độ chống nước 1 ATM: An toàn khi rửa tay. Không nên sử dụng khi đi mưa, đi tắm hay bơi, lặn.
• Báo thức, bấm giờ thể thao, lịch ngày, lịch thứ, đèn nền và đồng hồ 24 giờ là những tiện ích của đồng hồ, giúp người dùng chủ động hơn trong cuộc sống.',
	1555000,50000,2,'Đồng hồ Casio',NULL,0,1,1,'1/1/2011','1/1/2011'),
(N'Đồng hồ FREDERIQUE CONSTANT Manufacture 42 mm Nam FC-760V4H4','frederique_constant_fc_760v4h4.jpg',6,
	N'Frederique Constant Geneve nổi tiếng với những mẫu đồng hồ có kiểu dáng tối giản nhưng không kém phần sang trọng. Đội ngũ thiết kế của thương hiệu này luôn đem lại cho người dùng những thiết kế ấn tượng, có tính thẩm mỹ cao, nhờ vậy rất được nhiều người tin dùng.',
	N'- Là một thương hiệu nổi tiếng tại Thụy Sĩ, đồng hồ Frederique Constant chắc chắn sẽ làm hài lòng các bạn nam lịch lãm
- Đồng hồ Automatic có bộ máy vận hành tốt nhờ sự chuyển động của cổ tay, nên không cần phải lên dây cót thường xuyên 
- Mẫu đồng hồ sở hữu đường kính mặt 42 mm 
- Đồng hồ nam có khung viền được làm từ chất liệu thép không gỉ 316L, được mạ PVD mang lại sự bền bỉ và cứng cáp, chống ăn mòn hiệu quả, cùng dây đeo da cá sấu cao cấp, mềm mại, ôm trọn cổ tay khi đeo
- Hệ số chống nước của đồng hồ là 5 ATM, giúp đồng hồ không bị hỏng hóc khi đi tắm, đi mưa hay rửa tay, tuy nhiên không nên đeo khi đi bơi và lặn 
- Các tiện ích như bấm giờ và lịch ngày hỗ trợ người dùng làm chủ thời gian hơn ',
	124810000,500000,2,'Đồng hồ FREDERIQUE CONSTANT',NULL,0,1,1,'1/1/2011','1/1/2011')

create table Users(
	Id int primary key,
	FirstName varchar(50),
	LastName varchar(50),
	Email varchar(50),
	Password varchar(50),
)