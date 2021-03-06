USE [SELLPHONE]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/14/2020 10:09:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Image] [varchar](4000) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/14/2020 10:09:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Image] [varchar](4000) NULL,
	[Description] [nvarchar](4000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 6/14/2020 10:09:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[ProductID] [int] NOT NULL,
	[Sold] [int] NOT NULL,
	[Valid] [int] NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Name], [Image]) VALUES (1, N'Apple', N'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Apple_logo_dark_grey.svg/1200px-Apple_logo_dark_grey.svg.png')
INSERT [dbo].[Categories] ([ID], [Name], [Image]) VALUES (2, N'Samsung', N'https://digix.vn/wp-content/uploads/2018/07/samsung-logo-png-samsung-logo-png-300.png')
INSERT [dbo].[Categories] ([ID], [Name], [Image]) VALUES (3, N'Xiaomi', N'https://crescentmall.com.vn/en/wp-content/uploads/2018/01/xiaomi-logo.png')
INSERT [dbo].[Categories] ([ID], [Name], [Image]) VALUES (4, N'Nokia', N'https://nokiamuseum.info/wp-content/uploads/2013/06/NOKIA.png')
INSERT [dbo].[Categories] ([ID], [Name], [Image]) VALUES (6, N'Huawei', N'https://logos-world.net/wp-content/uploads/2020/04/Huawei-Emblem.png')
INSERT [dbo].[Categories] ([ID], [Name], [Image]) VALUES (7, N'Oppo', N'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/OPPO_LOGO_2019.svg/1024px-OPPO_LOGO_2019.svg.png')
INSERT [dbo].[Categories] ([ID], [Name], [Image]) VALUES (8, N'Vsmart', N'https://i0.wp.com/vsmart.net/eu-vi/EuropeTheme/images/default.jpg?ssl=1')
INSERT [dbo].[Categories] ([ID], [Name], [Image]) VALUES (9, N'Asus', N'https://1000logos.net/wp-content/uploads/2016/10/Asus-Logo.png')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (2, N'Iphone 11', 1, 18000000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone11-purple-select-2019.png', N'iPhone 11 là mẫu iPhone có nhiều màu sắc nhất của Apple được ra mắt trong năm 2019. Bên cạnh đó, cấu hình iPhone 11 cùng với iPhone 11 Pro, iPhone 11 Pro Max cũng được nâng cấp đặc biệt về cụm camera sau và Faceid, viên pin dung lượng lớn hơn.

iPhone 11 đa dạng sự lựa chọn với 6 phiên bản màu sắc
Điểm nổi bật của iPhone 11 2019 đó là bên cạnh hai phiên bản đen và trắng quen thuộc thì máy còn có thêm bốn phiên bản khác đó là tím, vàng, xanh lá, đỏ. Với tất cả các phiên bản, Apple đều thiết kế cạnh bên trùng màu với thân máy, tạo nên một thể thống nhất.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (3, N'Iphone SE 2020', 1, 11590000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_se_2020.png', N'iPhone SE 2020 – phiên bản nâng cấp của iPhone 8 với hiệu năng vượt trội hơn
Với hàng loạt thành công từ các siêu phẩm iPhone 11 thì Apple lại tiếp tục tung ra chiếc iPhone SE 2020  (hay iPhone 9) – bản nâng cấp của iPhone SE ra mắt cách đây 3 năm – khiến người hâm mộ và các tín đồ công nghệ tiếp tục phát cuồng. Chiếc iPhone SE 2 chính là chiếc smartphone được mong chờ nhất những năm qua và đến nay cộng đồng người yêu công nghệ mới được chiêm ngưỡng vẻ đẹp của chiếc smartphone này.

iPhone Se 2020 có thiết kế kim loại nguyên khối, mặt kính cường lực và các góc được bo tròn nhiều hơn
Khác với phiên bản iPhone SE 2016 trước, iPhone SE 2 sẽ có thiết kế khá giống với iPhone 8 nghĩa là chiếc smartphone này sẽ không còn phần khung viền vát phẳng nữa mà sẽ được bo tròn nhiều hơn. Kiểu dáng đơn giản nhưng hài hòa, tinh tế trong từng đường nét và thiết kế nhôm kính mang đến sự bền bỉ, sang trọng.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (4, N'Iphone 11 pro max', 1, 28000000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone-11-pro-max-space-select-2019.png', N'iPhone 11 Pro Max chính hãng VN/A – Bộ ba camera sau chụp ảnh đỉnh cao
Ra mắt cùng với iPhone 11 và iPhone 11 Pro là iPhone 11 Pro Max, đây mẫu smartphone cao cấp nhất của Apple được ra mắt năm 2019. Với thiết kế cao cấp, hệ thống camera 3 camera cùng cấu hình siêu mạnh mẽ thì iPhone 11 Pro Max chính là một chiếc smartphone đáp ứng mọi trải nghiệm của người dùng.

iPhone 11 Pro Max có kích thước to hơn với chất liệu thép không gỉ bền bỉ
iPhone 11 Pro Max có thiết kế tương tự như iPhone 11 Pro nhưng kích thước thì to hơn với kích thước màn hình 6.5 inch và toàn bộ máy có kích thước 158 x 77.8 x 8.1 mm. Thiết kế không có nhiều thay đổi trừ hệ thống camera sau được nâng cấp thành 3 camera. Màn hình tai thỏ vẫn được giữ nguyên và chất liệu thép không gỉ giúp iPhone 11 Pro Max bền bỉ hơn.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (6, N'Iphone XR', 1, 14990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_xr_64gb.png', N'iPhone XR 64GB - Smartphone sang trọng, trẻ trung với nhiều màu sắc
Được ra mắt cùng Apple iPhone XS và XS Max, iPhone XR 64GB không chỉ được thừa kế những tính năng đặc trưng nổi trội của người tiền nhiệm iPhone X được ra mắt một năm trước đó và còn có những cải tiến nhằm mang lại trải nghiệm mới lạ và thú vị cho người dùng.

iPhone XR 64GB chính hãng (VN/A) là gì? Vì sao khách hàng nên chọn iPhone XR mã VN/A
Đầu tiên, VN/A là mã trên sản phẩm Apple phân phối trực tiếp cho các đại lý ủy quyền Apple tại Việt Nam và iPhone XR 64GB chính hãng (VN/A) là hàng chính hãng do Apple sản xuất theo tiêu chuẩn của thị trường Việt Nam.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (7, N'Iphone 7 plus', 1, 8990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/6/0/600_iphone_7_plus_silver_800x800_1_1.jpg', N'Đặc điểm nổi bật của iPhone 7 Plus 32GB
Ra mắt vào năm 2016, iPhone 7 Plus là một trong những dòng flagship ấn tượng của Apple. Tính đến hiện tại, iPhone 7 Plus 32GB chính hãng VN/A vẫn là một sự lựa chọn đáng giá cho người dùng đang tìm kiếm một sản phẩm chất lượng, đẳng cấp và có mức giá bán phù hợp

iPhone 7 Plus 32GB chính hãng VN/A là gì? Vì sao nên mua iPhone chính hãng VN/A?
iPhone chính hãng VN/A tại CellphoneS là các sản phẩm iPhone được Apple sản xuất riêng cho thị trường Việt Nam và phân phối trực tiếp cho những công ty đối tác tại Việt Nam. Khi mua iPhone chính hãng VN/A, bạn sẽ có được những quyền lợi và hỗ trợ mà các dòng iPhone xách tay, iPhone cũ không có. Những tiêu chuẩn về chất lượng sản phẩm cũng như các quyền lợi về bảo hành sản phẩm là điều mà bạn sẽ được trải nghiệm rõ ràng nhất khi mua iPhone chính hãng VN/A.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (5, N'Iphone 8 plus', 1, 12800000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/8/-/8-plus-3_1.jpg', N'Đánh giá chi tiết iPhone 8 Plus 64GB
Trong thời buổi hiện đại ngày nay, smartphone là một trong những thiết bị di động không thể thiếu đối với bất kì người dùng nào. Nổi bật và thịnh hành trong các thương hiệu trên thị trường hiện nay không thể nào không kể đến hãng Apple. Các sản phẩm đến từ Apple đều mang lại chất lượng hoàn hảo. Như thường lệ, iPhone 8 Plus 64GB ra đời với thiết kế cùng tính năng tuyệt vời sẽ mang đến cho người dùng những trải nghiệm thú vị nhất.

Tại sao người dùng nên chọn mua iPhone 8 Plus 64GB chính hãng VN/A?
Lý do để người dùng lựa chọn chiếc iPhone 8 Plus chính hãng VN/A vì đây là chiếc điện thoại có giá thành hợp lý và chất lượng đảm bảo. Đây là sản phẩm hàng chính hãng sản xuất cho thị trường Việt Nam, do đại lý Apple được ủy quyền tại Việt Nam phân phối. Chất lượng hàng hóa của iPhone 8 Plus 64GB chính hãng VN/A được đảm bảo theo đúng tiêu chuẩn nhà sản xuất.  ')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (8, N'Iphone XS max', 1, 21990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_xs_max_64gb.jpg', N'iPhone Xs Max 64GB - Flagship mạnh mẽ nhất của Apple
Chính thức ra mắt vào tháng 9 năm 2018, iPhone XS MAX là một trong những dòng flagship thành công nhất của Apple. Không phụ kỳ vọng của người hâm mộ, iPhone XS MAX 64GB chính hãng VN/A sỡ hữu những công nghệ nổi bật như chip A12 mạnh mẽ, màn hình rộng đến 6.5 inches, camera kép AI, Face ID nâng cấp cùng dung lượng bộ nhớ tối ưu.

iPhone chính hãng VN/A là gì? Vì sao nên mua iPhone chính hãng VN/A?
iPhone chính hãng VN/A là các sản phẩm iPhone được Apple sản xuất riêng cho thị trường và phân phối trực tiếp cho những công ty đối tác tại Việt Nam. Khi mua dòng sản phẩm này, bạn sẽ có được những quyền lợi và hỗ trợ mà các dòng iPhone xách tay, iPhone cũ không có. Những tiêu chuẩn về chất lượng sản phẩm cũng như các quyền lợi về bảo hành sản phẩm là điều mà bạn sẽ được trải nghiệm rõ ràng nhất khi mua iPhone chính hãng VN/A.

Thứ nhất, sản phẩm bạn mua sẽ được đảm bảo đúng các tiêu chuẩn về chất lượng và an toàn của Apple vì các sản phẩm iPhone chính hãng VN/A đều phải là hàng mới 100%, nguyên seal và chưa active. Các sản phẩm hàng xách tay bên ngoài thị trường có thể có giá rẻ hơn nhưng vấn đề chất lượng sẽ không được đảm bảo, tạo cảm giác không yên tâm khi mua hàng.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (25, N'Nokia 7.2', 4, 3990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/n/o/nokia_7.2_xanh.jpg', N'Điện thoại Nokia 7.2 – Chiếc điện thoại tầm trung mạnh mẽ
Nokia là một thương hiệu sản xuất điện thoại lâu đời của thế giới. Những chiếc điện thoại của Nokia sản xuất luôn được người dùng ưa chuộng và đánh giá cao nhất là độ bền mà nó mang lại. Tiếp tục phát huy những thế mạnh của mình Nokia tiếp tục cho ra chiếc Nokia 7.2 với những tính năng theo kịp xu hướng công nghệ hiện đại.

Thiết kế Nokia 7.2 sang trọng ảnh hương nhiều từ thế hệ đàn anh Nokia 7.1
Nokia 7.2 có thiết kế nguyên khối được làm một cách tỉ mỉ và chi tiết. Các góc cạnh của Nokia 7.2 được bo tròn mềm mại tạo cảm giác cầm nắm dễ chịu. Chất liệu là khung kim loại tạo vẻ sang trọng và chắc chắn cho Nokia 7.2.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (9, N'Iphone 11 pro max', 1, 32490000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone-11-pro-max-midnight-green-select-2019_1.png', N'Trong năm 2019 thì chiếc smartphone được nhiều người mong muốn sở hữu trên tay và sử dụng nhất không ai khác chính là iPhone 11 Pro Max 64GB tới từ nhà Apple.
Camera được cải tiến mạnh mẽ
Chắc chắn lý do lớn nhất mà bạn muốn nâng cấp lên iPhone 11 Pro Max chính là cụm camera mới được Apple nâng cấp rất nhiều.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (10, N'Iphone 6s', 1, 6690000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/6/s/6s_gold_2.jpg', N'Điện thoại iPhone 6S 32GB chính hãng VN/A  -  Flagship một thời đáp ứng mọi nhu cầu sử dụng
Thị trường điện thoại iPhone rất đa dạng về loại hình sản phẩm, từ iPhone cũ, iPhone xách tay nhưng mẫu iPhone 6S chính hãng VN/A vẫn luôn được khách hàng đón nhận và quan tâm.

iPhone 6S 32GB chính hãng VN/A là gì? Vì sao khách hàng nên chọn iPhone 6S VN/A
Đầu tiên, iPhone 6S 32GB chính hãng VN/A là hàng chính hãng do Apple sản xuất theo tiêu chuẩn của thị trường Việt Nam. Máy được phân phối chính hãng thông qua các đại lý ủy quyền của Apple')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (11, N'Samsung Galaxy S20 plus', 2, 14600000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/6/3/637170945536714482_ss-s20-plus-den-1.png', N'Samsung S20 Plus - Flagship màn hình lớn, cấu hình cao
Galaxy S20 Plus được biết là phiên bản có cấu hình mạnh hơn của Samsung S20 và Samsung S20 Ultra. Samsung S20 Plus có kính thước màn hình lớn hơn và cấu hình khá tương đồng với người anh em Galaxy S20.

Thiết kế Samsung S20 Plus với màn hình đục lỗ, mặt lưng kính bóng bẩy
Samsung Galaxy S20 Plus sở hữu thiết kế mặt trước tương tự các sản phẩm Samsung Galaxy S khác. Bạn vẫn có màn hình không viền với hai cạnh bên cong tràn. Tuy nhiên vị trí đặt camera trước đã chuyển ra trung tâm, điều này khá giống Galaxy Note 10. Phần lỗ camera này cũng được làm nhỏ hơn, kết hợp với phần viền siêu mỏng nên Samsung S20 Plus cho diện tích hiển thị gần như tuyệt đối. Giúp tăng không gian trải nghiệm cho người dùng.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (12, N'Samsung Galaxy S20 Ultra', 2, 29990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/6/3/637170935875912528_ss-s20-ultra-den-1.png', N'Điện thoại Samsung Galaxy S20 Ultra trắng thiên vân – Phiên bản giới hạn đặc biệt
Samsung S20 Ultra ra mắt đầu năm 2020 chỉ với hai màu cơ bản là đen và xám. Mới đây, hãng điện thoại Samsung đã cho ra mắt phiên bản màu sắc mới - Samsung Galaxy S20 Ultra trắng thiên vân đầy sang trọng.

Phiên bản giới hạn, màu trắng thiên vân mang lại sự thanh lịch
Samsung Galaxy S20 Ultra trắng thiên vân tượng trưng cho sự tinh khiết. Trắng là màu sắc cơ bản nhất, giúp tôn lên những màu sắc khác và màu sắc này được coi là sự khởi điểm của mọi ý tưởng.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (17, N'Samsung Galaxy A20s', 2, 5390000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/6/3/637049168849441623_ss-a20s-xanh-1.jpg', N'Samsung Galaxy A20s')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (21, N'Xiaomi Mi Note 10 Lite', 3, 9150000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/m/i/mi-note-10-lite_0001_1.jpg', N'Mi Note 10 Lite – Phiên bản rút gọn với hệ thống 4 camera sau 64MP
Sau sự ra mắt thành công của hàng loạt smartphone cận cao cấp giá rẻ với tên Lite, Xiaomi tiếp tục trình làng phiên bản giảm cấp của chiếc điện thoại cao cấp nhất là Xiaomi Mi Note 10 Lite. Điện thoại được trang bị vi xử lý Snapdragon 730 mạnh nhất của Qualcomm và đặc biệt, được trang bị đến tận 5 camera sau.

Màn hình Super AMOLED, Full HD+ cùng mặt lưng kính gradient bắt mắt
Về vẻ ngoài, Mi Note 10 Lite vẫn giữ thiết kế quen thuộc với khung viền kim loại chắc chắn đi kèm hai mặt kính cường lực sang trọng. Cầm chiếc máy này trên tay không khác gì một món đồ trang sức, gia tăng vẻ sang trọng cho người dùng. Hơn nữa, với thiết kế màn hình khuyết đỉnh có hình giọt nước giúp tối ưu màn hình, tạo không gian hiển thị được nhiều hơn. Ngoài ra, để bắt được xu hướng thiết kế máy hiện nay, Note 10 Lite có màu gradient bắt mắt chuyển từ đen xang xanh.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (23, N'Xiaomi Redmi Note 8 Pro', 3, 5550000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/6/3/637060435932431657_xiaomi-redmi-note-8-pro-xanh-1.png', N'REDMI NOTE 8 PRO: "VUA HIỆU NĂNG" TRONG PHÂN KHÚC 6-7 TRIỆU ĐỒNG Redmi Note lâu nay vẫn là dòng sản phẩm chủ lực của Xiaomi ở phân khúc giá rẻ và tầm trung. Cứ mỗi thế hệ, hãng này đều đưa ra những sản phẩm với những nâng cấp mới thú vị trong khi mức giá không thay đổi.

Chiếc Redmi Note 7 Pro ra mắt cách đây 8 tháng đã tạo ra dấu ấn mới ở phân khúc tầm trung với camera 48MP sử dụng cảm biến Sony IMX586 và vi xử lý Snapdragon 675 hiệu năng mạnh mẽ vào thời điểm đó. Với Redmi Note 8 Pro, Xiaomi lại tiếp tục tạo ra thách thức cao hơn cho các đối thủ khi trang bị cho sản phẩm này bộ vi xử lý chuyên game Helio G90T mạnh tương đương flagship năm ngoái, camera chính 64MP và viên pin dung lượng 4.500 mAh lớn hơn mặt bằng chung.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (27, N'Nokia 6.1 Plus', 4, 9290000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/6/3/636737264632684088_nokia6plus-trang-1.jpg', N'Điện thoại Nokia 6.1 Plus – Thiết kế đẹp mắt, hiệu suất ổn định, tiết kiệm năng lượng
Điện thoại Nokia 6.1 Plus là smartphone tầm trung của Nokia sản xuất. Sản phẩm mang thiết kế phong cách tai thỏ với màn hình tràn viền cũng như hiệu năng được cải tiến vượt bậc, tiết kiệm điện năng. Sản phẩm hứa hẹn sẽ gây tiếng vang lớn trong phân khúc tầm trung.

Thiết kế kết hợp giữa khung kim loại và kính cao cấp được bo tròn tỉ mỉ
Nokia 6.1 Plus được thay đổi hoàn toàn khi sử dụng kết hợp giữa khung kim loại và kính cao cấp với 93% bề mặt kính đã tạo nên một dáng vẻ sang trọng và đem đến tính thẩm mỹ cũng như sự trẻ trung, năng động. Các viền góc của Nokia 6.1 Plus được bo cong 2.5D cho kiểu dáng liền mạch và tạo cảm giác vừa chắc chắn vừa nhẹ nhàng khi cầm nắm. ')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (13, N'Samsung Galaxy Note 10 Lite', 2, 9700000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/2/0/2026427.png', N'Samsung Note 10 Lite - Phiên bản nhỏ gọn, đa năng của siêu phẩm Note 10
Galaxy Note 10 Lite (ra mắt cùng với Galaxy S10 Lite) là phiên bản nhỏ gọn hơn, giá rẻ hơn bộ đôi siêu phẩm Note 10 / Note 10+ nhưng vẫn giữ nguyên những tinh hoa của người tiền nhiệm. Smartphone dự kiến sẽ được Samsung ra mắt vào đầu năm sau, hứa hẹn sẽ mang đến những trải nghiệm tuyệt vời cho người dùng với mức giá dễ tiếp cận hơn.

Samsung Note 10 Lite có cấu hình như thế nào
Trong thuật ngữ công nghệ, chữ "lite" đại diện cho "light", nghĩa là phiên bản nhẹ hơn, được thu nhỏ để vận hành ổn định mà không bị giật. Về cơ bản, bất kỳ thiết bị nào có chữ "Lite" trong tên sản phẩm đều là phiên bản nhỏ hơn, vận hành nhẹ hơn so với thiết bị gốc được ra mắt trước đó.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (14, N'Samsung Galaxy A71', 2, 8150000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/x/a/xanh_78l4-a2_1_2.jpg', N'Samsung A71 – Smartphone tầm trung của Samsung
Samsung Galaxy A71 sẽ là điện thoại giá cả phải chăng của Samsung với mục đích tiếp cận đối tượng rộng hơn. Samsung A71 là sản phẩm thuộc series Samsung Galaxy A với màn hình đục lỗ, cấu hình mạnh mẽ, cụm bốn camera sau chất lượng cao và cùng nhiều công nghệ thời thượng.

Sau Galaxy A51 và A71, rất có thể Galaxy A01 sẽ là sản phẩm tiếp theo thuộc dòng Galaxy A 2020 được Samsung trình làng trong thời gian sắp tới.

Samsung A71 có màn hình đục lỗ 6,7 inch, Full HD với tấm nền Super AMOLED
Galaxy A71 sở hữu màn hình Super AMOLED Plus 6,7 inch. Có độ phân giải Full HD 1080 x 2400 pixel, 393ppi. Máy cũng được trang bị đầu đọc dấu vân tay dưới màn hình giống như nhiều mẫu smartphone của Samsung đã ra mắt gần đây với tốc độ nhận diện rất nhanh. Cùng với đó là chức năng mở khóa bằng nhận diện khuôn mặt.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (15, N'Samsung Galaxy Z Flip', 2, 28500000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/z/-/z-flip-1_1.jpg', N'Samsung Galaxy Z Flip - Đẳng cấp với màn hình gập hiện đại cùng hiệu năng mạnh mẽ
Trong thời đại mà công nghệ phát triển từng ngày thì ngày càng nhiều dòng smartphone đẳng cấp được ra mắt để cạnh tranh trên thị trường. Samsung chính là một trong những thương hiệu đi đầu trong việc thường xuyên cho ra mắt những dòng điện thoại thông minh với thiết kế và tính năng hiện đại. Samsung Galaxy Z Flip chính là sản phẩm tiếp theo được Samsung tung ra thị trường với những điểm đặc biệt khó có sản phẩm nào bì được sau sự thành công của Samsung Galaxy Fold.

Samsung Z Flip có thiết kế màn hình gập mới lạ, đẳng cấp với tấm nền AMOLED
Điện thoại được thiết kế với các góc cạnh được bo cong hoàn hảo mang lại sự chắc chắn khi sử dụng. Khác với Galaxy Fold đời đầu với cơ chế gập theo chiều dọc, Galaxy Z Flip với thiết kế gập ngang. Cụ thể, máy sẽ có 2 màn hình với màn hình phụ kích thước 1.1 inch và 6.7 inch cho màn hình chính. Màn hình phụ Super AMOLED (300 x 116 pixel) hiển thị ngày, giờ và các thông báo đơn giản ở mặt ngoài.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (16, N'Samsung Galaxy A01', 2, 2650000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-a01-600x600_1.jpg', N'Samsung A01 – Điện thoại giá rẻ mang đến trải nghiệm hấp dẫn
Samsung Galaxy A01 sẽ là thành viên tiếp theo của gia đình Galaxy A Series - dòng smartphone tầm trung của Samsung với sự phân hóa khá đa dạng từ giá rẻ đến cận cao cấp. Galaxy A01 sở hữu thiết kế đơn giản, tinh tế, cấu hình mượt mà hứa hẹn sẽ mang tới cho người dùng nhiều trải nghiểm hấp dẫn khi sử dụng.

Samsung A01 có thiết kế nguyên khối cứng cáp, màn hình 5.7 Infinity-V sắc nét
Theo thông tin hé lộ từ nhà sản xuất thì Galaxy A01 sở hữu thiết kế nguyên khối cứng cáp, mặt lưng được làm từ nhựa. Các chi tiết trên máy được làm rất tỉ mỉ và chau chuốt đến từng chi tiết cho cảm giác cầm nắm êm ái và mang tới sự sang trọng cho chiếc smartphone này. Ngoài ra, Samsung A01 sẽ có 3 phiên bản màu lộng lẫy bao gồm: xanh lam, đen, đỏ cùng với đó là hiệu ứng nổi bật ở phần mặt lưng bắt mắt và cuống hút cho người dùng nhiều sự lựa chọn hơn.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (18, N'Xiaomi Redmi Note 8', 3, 3950000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/6/3/637060410960077373_xiaomi-redmi-note-8-xanh-1.png', N'Điện thoại Xiaomi Redmi Note 8 – Chiếc điện thoại Xiaomi với phần cứng mạnh mẽ
(*)Điện thoại Xiaomi chính hãng, có sẵn tiếng Việt, đầy đủ ứng dụng của Google. Bạn có thể sử dụng ngay bình thường. Khác với các máy hàng xách tay: không có sẵn rom tiếng Việt, chặn các ứng dụng của Google

Redmi Note 8 là chiếc smartphone tầm trung mới nhất của Xiaomi bẹn cạnh mẫu điện thoại Redmi Note 8 Pro. Xiaomi Redmi Note 8 gây ấn tượng với cấu hình phần cứng mạnh mẽ, hệ thống bốn camera sau chất lượng và đi kèm giá bán cực kỳ hấp dẫn. Xiaomi Redmi Note 8 sẽ là chiếc điện thoại gây nhiều chú ý nhất trong thời gian sắp tới. Ngoài ra, bạn cũng có thể tham khảo Redmi Note 9 vừa mới ra mắt với nhiều nâng cấp về camera, cấu hình cùng thiết kế đẹp mắt.

Redmi Note 8 có thiết kế mặt lưng gradient, kính cường lực Gorilla Glass 5 bền bỉ
Xiaomi Redmi Note 8 được trang bị mặt lưng bóng bẩy với hiệu ứng gradient đang trở thành một trào lưu của các smartphone thường xuyên thiết kế các sản phẩm của mình theo hiệu ứng này. Khi nghiêng bạn có thể nhìn thấy màu sắc thay đổi ở các góc nhìn khác nhau. Do đó, khi cầm Xiaomi Redmi Note 8 trên tay, chắc chắn sẽ khiến bạn nổi bật hơn.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (30, N'Nokia 800 Tough', 4, 1990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/n/o/nokia_800-front_back-sand.png', N'Điện thoại Nokia 800 Tough - điện thoại cơ bản, bền bỉ hoạt động ở bất kỳ đâu
Nokia 800 Tough là mẫu điện thoại cơ bản mới nhất của Nokia với điểm mạnh về khả năng chống nước và chống rơi vỡ.

Thiết kế gọn gàng với kích thước 145,4x62,1x16,11mm, nút bàn phím chắn bụi được bọc cao su
Nokia 800 Tough có thiết kế đẹp, gọn gàng với kích thước 145,4x62,1x16,11mm và trọng lượng 161g. Không giống bất kì sản phẩm nào của Nokia từ trước đến nay với ngoại hình cực kỳ hầm hố, đúng chất của một smartphone dã chiến. Máy mang lại một thiết kế rắn rỏi với lớp vỏ bọc các cạnh chắc chắn, thiết kế dày lên đến 16,11 mm.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (19, N'Xiaomi Redmi Note 9s', 3, 4900000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/r/e/redmi-9s-xam.png', N'Xiaomi Redmi Note 9S – Smartphone cấu hình mạnh, 4 camera ấn tượng
Redmi Note 9S là chiếc smartphone tầm trung mới nhất của Xiaomi được nâng cấp của Redmi Note 9 Pro. Chiếc điện thoại này gây ấn tượng với cấu hình phần cứng mạnh mẽ 4GB RAM, hệ thống bốn camera sau chất lượng cùng mức giá bán cực kỳ hấp dẫn. Đây hứa hẹn sẽ là chiếc điện thoại gây bão trong thời gian sắp tới.

Thiết kế mặt lưng kính họa tiết gradient, màn hình lớn 6.67 inch, độ phân giải FullHD+
Điện thoại Xiaomi Redmi Note 9S có vẻ ngoài vô cùng nổi bật bởi mặt lưng kính bóng bẩy cùng hiệu ứng gradient. Hiệu ứng này đã và đang trở thành một trào lưu của các smartphone hiện nay. Khi nghiêng bạn có thể nhìn thấy màu sắc thay đổi ở các góc nhìn khác nhau. Do đó, khi cầm Redmi Note 9S trên tay, chẳng khác gì bạn đang cầm món đồ trang sức.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (20, N'Xiaomi Redmi Note 9 Pro', 3, 6490000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/1/_/1_65_5.jpg', N'Điện thoại Xiaomi Redmi Note 9 Pro – Smartphone màn hình rộng, viên pin lớn
Cùng với Xiaomi Redmi Note 9s, Xiaomi Redmi Note 9 Pro sẽ là sự lựa chọn hoàn hảo dành cho những ai đang mong muốn sở hữu một chiếc điện thoại tầm trung có dung lượng pin cao cùng thiết kế sang trọng và khả năng chụp ảnh tốt. Ngày nay, việc sở hữu một chiếc smartphone là điều thiết yếu với mỗi người, giúp người dùng có thể giải quyết cả những công việc mà trước đây chỉ có thể thực hiện trên laptop, mở ra một trai nghiệm thú vị, hiện đại và tiện lợi hơn rất nhiều. 

Redmi Note 9 Pro có thiết kế mặt lưng kính cong 3D và màn hình Full HD+ lên đến 16 triệu điểm ảnh
Điện thoại Xiaomi này sở hữu thiết kế nguyên khối với mặt lưng kính cong 3D mang đến cho Redmi Note 9 Pro một ngoại hình sang trọng và bắt mắt với các đường nét mềm mại và tinh tế chứ không mang đến cảm giác thô cứng khi cầm nắm.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (22, N'Xiaomi Mi Note 10 Pro', 3, 12700000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/m/i/mi-cc9-pro-blue_1.jpg', N'Mi Note 10 Pro – Smartphone cao cấp với 5 camera sau 108MP
Xiaomi Mi Note 10 Pro vừa được ra mắt chính thức tại Việt Nam vào 9/12/2019 vừa qua cùng với phiên bản thấp hơn là Mi Note 10. Đây là mẫu smartphone đầu tiên trên thế giới được trang bị camera góc rộng có độ phân giải lên đến 108MP, ngoài ra máy còn sở hữu thiết kế đẹp mắt, viên pin siêu khủng cùng cấu hình mạnh mẽ.

Thiết kế hai mặt kính cao cấp cùng màn hình Arc AMOLED sắc nét
Mi Note 10 Pro vẫn giữ thiết kế quen thuộc với khung viền kim loại đi kèm hai mặt kính cường lực sang trọng, cao cấp nhưng có nhược điểm nhỏ là máy khá dày, đổi lại máy cầm nắm rất đầm tay. Hơn nữa, máy dùng màn hình khuyết đỉnh có hình giọt nước vô cùng nhỏ gọn, giúp cho máy có cái nhìn tổng thể tinh tế hơn Redmi Note 8 Pro.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (24, N'Xiaomi Redmi 8A', 3, 2150000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-8a-1-600x600.jpg', N'Điện thoại Xiaomi Redmi 8A - Smartphone tầm trung với nhiều cải tiến quan trọng và mức giá vô cùng hấp dẫn
Xiaomi Redmi 8A là một smartphone nổi bật trong phân khúc điện thoại giá rẻ, bản nâng cấp quan trọng của Xiaomi Redmi 7A với chip Snapdgragon mới, viên pin dung lượng khủng, AI camera, màn hình giọt nước thời thượng cùng thiết kế Aura Wave ấn tượng hơn.

Viên pin siêu khủng 5000 mAh, hỗ trợ sạc nhanh với cổng kết nối USB Type-C
Điểm nhấn lớn nhất của chiếc Redmi 8A chính là viên pin Li-Po có dung lượng lên đến 5.000 mAh, đáp ứng tốt với cường độ sử dụng cao của người dùng trong thời gian dài. Cùng với đó, máy hỗ trợ sạc nhanh 18W thông qua cổng USB Type-C. Ngoài ra, Redmi 8A cũng đi kèm với củ sạc 10W. Đây có thể nói là tính năng hiếm thấy cho một chiếc smartphone trong phân khúc giá rẻ như Redmi 8A.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (26, N'Nokia 5.3', 4, 3390000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/n/o/nokia-1-3-va-nokia-5-3-ra-mat-2.png', N'Điện thoại Nokia 5.3 - Smartphone thuần Android cùng bộ tứ camera sau ấn tượng
Một trong những hãng sản xuất smartphone hàng đầu với chủ trương điện thoại siêu bền, cùng với một hệ điều hành luôn thuần Google với đặc tính nhẹ và mượt mà nhất, thứ mà không bất kỳ hãng nào làm được. Thương hiệu đó chính là Nokia và với chiếc Nokia 5.3, hãng lại tiếp tục viết tiếp câu chuyện về một huyền thoại làm điện thoại bền.

Thiết kế mặt lưng bằng nhựa giả kính cao cấp cùng màn hình IPS LCD 6.55 inch
Mặc dù với mức giá và phân khúc được xác định là tầ trung nhưng Nokia 5.3 lại mang trong mình một thiết kế không hề rẻ tiền chút nào. Với mặt lưng sau được làm từ nhựa phủ bóng giả kính cực kỳ cao cấp và tinh tế. Giúp người nhìn vào có một ánh nhìn rằng đây ra kính chứ không phải là loại nhựa rẻ tiền, ngoài ra chúng còn có độ bền bỉ khá tốt.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (28, N'Nokia 5.1 Plus', 4, 2990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/2/3/23812ef1b3ec112b3218ec1a62c54ba5.jpg', N'Điện thoại Nokia 5.1 Plus 32GB – Smartphone kiểu dáng bắt mắt, hiệu năng tuyệt vời
Chính thức ra mắt tại Việt Nam vào tháng 10 năm 2018, Nokia 5.1 Plus 32GB là một trong những con “chiến mã” thực sự của Nokia trong phân khúc điện thoại tầm trung. Sở hữu thiết kế sang trọng, hiệu năng tốt trong tầm giá, đây thực sự là lựa chọn đáng cân nhắc của người dùng.

Độ hoàn thiện cao với khung kim loại cứng cáp và màn hình 5.8 inch HD+ cho trải nghiệm thị giác tuyệt vời
Độ hoàn thiện và sức bền luôn là những đặc điểm nổi trội của những chiếc điện thoại đến từ Nokia từ ngay những ngày đầu hãng chưa sản xuất điện thoại thông minh. Nokia 5.1 Plus 32GB được các chuyên gia từ Nokia hoàn thiện tỉ mỉ đến từng chi tiết. Phần khung điện thoại được làm hoàn toàn từ kim loại rất chắc chắn, kết hợp với đó là phần thân được chế tác từ 2 mặt kính cong 2.5D bóng bẩy, tinh tế. Ngôn ngữ thiết kế này giúp Nokia 5.1 Plus 32GB vừa có vẻ đẹp thời trang, lại vừa rắn chắc và an toàn khi cẩm trên tay. Cùng với đó, thiết kế tai thỏ thời thượng cùng khung viền siêu mỏng giúp cho tổng thể của Nokia 5.1 Plus 32GB khá nhỏ nhắn, đây thực sự là lựa chọn tối ưu cho nhóm khách hàng yêu thích điện thoại nhỏ nhưng màn hình lớn.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (29, N'Nokia 3.2', 4, 2490000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/n/o/nokia-3.2-price-in-tanzania.jpg', N'Điện thoại Nokia 3.2 – Smartphone giá rẻ đến từ thương hiệu Nokia đình đám một thời
Nối tiếp sự thành công của Nokia 3.1 thì mới đây HMD Global đã cho ra mắt một phiên bản nâng cấp hơn người tiền nhiệm đó là Nokia 3.2. Với nhiều sự thay đổi về thiết kế và cấu hình, Nokia 3.2 hứa hẹn là một sản phẩm đáng quan tâm trong phân khúc giá. Cùng tầm giá này, bạn cũng có thể tham khảo thêm Nokia 2.3 với cụm camera kép mới được trình làng.

Thiết kế nguyên khối chắc chắn cùng màn hình giọt nước
Là một sản phẩm thuộc phân khúc giá rẻ nhưng Nokia 3.2 vẫn mang trong mình một thiết kế nguyên khối sang trọng. Được làm từ nhựa Polycarbonate nhưng Nokia 3.2 trông vẫn bóng bẩy như những thiết bị kim loại nguyên khối. Bên cạnh đó, những chi tiết xung quanh máy được hoàn thiện tỉ mỉ hơn, nhờ đó Nokia 3.2 trông liền mạch hơn so với người anh 3.1 của mình.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (31, N'Nokia 2720 Flip', 4, 1890000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/n/o/nokia_2720_flip-front_n_back-black.png', N'Nokia 2720 Flip – Điện thoại nắp gập nhỏ gọn, hỗ trợ kết nối 4G nhanh chóng
Nokia 2720 Flip là dòng điện thoại phổ thông với thiết kế nắp gập tiện dụng được trang bị nhiều công nghệ hiện đại. Với kết nối 4G cùng hệ điều hành KaiOs cho phép chiếc Nokia 2720 Flip có khả năng thực hiện những kết nối mạng xã hội nhanh chóng và thực hiện các thao tác không chạm dễ dàng với Google Assistant. Hãy cùng xem bài viết bên dưới để hiểu thêm.

Thiết kế nắp gặp nhỏ gọn và bàn phím có đèn led nền dễ sử dụng
Mang trong mình thiết kế vỏ nhựa cùng khả năng gập mở tiện dụng giúp cho chiếc Nokia 2720 Flip dễ dàng mang cất theo trong mình. Kích thước khi gập là 54.5mm x 104.8mm x 18.7 mm, còn khi máy được mở nắp thì sẽ có kích thước lần lượt là 54.5mm x 192.7mm x 11.6 mm. Thiết kế vỏ nhựa giúp cho chiếc điện thoại này chỉ có 118g.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (32, N'Nokia C2', 4, 1350000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/n/o/nokia_c2-den1-removebg-preview.png', N'Điện thoại Nokia C2 – Giá thành phải chăng, thiết kế bền bỉ
Nokia C2 là một trong những chiếc điện thoại đến từ thương hiệu nổi tiếng về công nghệ Nokia và sắp được hãng này cho ra mắt vào thời gian sắp tới. Chiếc điện thoại giá rẻ này sở hữu thiết kế cực kì sang trọng và cấu hình cực khỏe và hàng loạt các tính năng thông minh.  

Nokia C2 có kích thước 154.8 x 75.6 x 8.9 (mm) và trọng lượng 161g, màn hình 5.7 inch chuẩn HD+
Chiếc điện thoại Nokia C2 sở hữu thiết kế không mấy khác biệt so với các người đàn anh Nokia C1 trước đây có thiết kế với chất liệu nhựa cao cấp bền bỉ. Điểm khác biệt ở đây chính là nắp máy có thể dễ dàng tháo rời. Các chi tiết trên được nhà sản xuất hoàn thiện cực kì tỉ mỉ và chau chuốt, cho người dùng dễ dàng sử dụng. Máy sở hữu thiết kế vô cùng nhỏ gọn với kích thước là 154.8 mm x 75.6 mm x 8.9 mm và trọng lượng 161 g. Nhà sản xuất còn cho ra mắt sản phẩm với 2 màu sắc là đen và xanh ngọc phù hợp với nhiều người sử dụng.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (46, N'OPPO A12 3GB', 7, 2850000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/a/1/a12-xanh.png', N'Điện thoại Oppo A12 – Camera kép, vi xử lý mạnh mẽ, màn hình giọt nước
Oppo A12 nổi bật với cụm camera kép 13MP + 2MP ở mặt sau, vi xử lý Helio P35 cùng màn hình IPS 6.22 inch. Viên pin 4230mAh giúp người dùng thoải mái sử dụng trọn ngày dài. Đây là mẫu điện thoại hứa hẹn mang đến nhiều sự tiện dụng đối với phân khúc tầm trung của OPPO. 

Màn hình giọt nước, độ phân giải HD+ với tấm nền IPS LCD
Oppo A12 được trang bị màn hình giọt nước tràn viền kích thước lên đến 6.22 inch cho không gian sử dụng thoải mái. Độ phân giải HD+ (720 x 1560 pixels) công nghệ màn hình IPS LCD giúp hiển thị màu sắc, hình ảnh trung thực, rõ ràng ở mọi góc nhìn.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (33, N'Nokia 3.1 Plus', 4, 2990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/n/o/nokia_3_1_plus-recommended.png', N'Điện thoại Nokia 3.1 Plus – Điện thoại giá rẻ cho mọi người
Nối tiếp sự thành công của Nokia 3 thì mới đây Nokia đã cho ra mắt một phiên bản nâng cấp hơn người tiền nhiệm đó là Nokia 3.1 Plus. Với nhiều sự thay đổi về thiết kế và cấu hình, Nokia 3.1 Plus hứa hẹn là một sản phẩm đáng quan tâm trong phân khúc giá thấp mà những người có số tiền ít vẫn có thể sở hữu được.

Tham khảo giá Nokia 2.2 

Thiết kế nguyên khối chắc chắn cùng màn hình 18:9 bắt kịp xu thế
Là một sản phẩm thuộc phân khúc giá rẻ nhưng Nokia 3.1 Plus Sở hữu ngoại hình truyền thống, vẫn mang trong mình một thiết kế nguyên khối sang trọng đối xứng qua các hoàn thiện viền màn hình và bố trí các chi tiết. Được làm từ nhựa nhưng chắc chắn mà vẫn bóng bẩy như những thiết bị kim loại nguyên khối. Bên cạnh đó, những chi tiết xung quanh máy được hoàn thiện tỉ mỉ hơn, nhờ đó Nokia 3.1 Plus trông liền mạch hơn so với người anh 3 của mình.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (34, N'Huawei Mate 30 Pro', 6, 14990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/m/a/mate30__0006_layer_4.jpg', N'Mate 30 Pro – Tận hưởng công nghệ cùng vẻ đẹp khó cưỡng
Huawei Mate 30 Pro là smartphone lấy cảm hứng từ tương lai với loạt công nghệ mới được tích hợp, hứa hẹn vượt qua mọi mong đợi về trải nghiệm sử dụng của người dùng. Tiếp nối sự thành công của người tiền nhiệm Huawei Mate 20 Pro, thế hệ tiếp theo của dòng Mate đã không làm mọi người thất vọng và mang lại tiếng vang lớn trên thị trường.

Huawei Mate 30 Pro có thiết kế kim loại nguyên khối, mặt lưng kính chuyển màu tuyệt đẹp
Ngôn ngữ thiết kế trên các sản phẩm cao cấp của Huawei luôn làm người dùng phải choáng ngợp. Tương tự người tiền nhiệm, Mate 30 Pro được trau chuốt và hoàn thiện đến từng chi tiết về vẻ ngoài của mình. Bạn sẽ bị chiếc điện thoại này hấp dẫn ngày từ cái nhìn đầu tiên.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (35, N'Huawei P30 Pro', 6, 19540000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/s/k/skyblue-rgb-500x500.png', N'Điện thoại Huawei P30 Pro – Siêu phẩm Flagship tiếp theo của Huawei
Sản phẩm tạm hết hàng, bạn có thể tham khảo Huawei Mate 30 Pro đã có thể cài đặt hầu hết các ứng dụng phổ biến hiện nay.

Huawei P30 Pro, Huawei P30 và P30 Lite là 3 mẫu điện thoại mới nhất sẽ được Huawei ra mắt vào ngày 26/3 tại Paris, Pháp. Trong đó, P30 Pro là phiên bản cao cấp nhất với nhiều công nghệ đột phá đặt biệt là camera. Với dòng P của mình Huawei cho thấy khả năng dẫn đầu mảng cameraphone.

Thiết kế viền mỏng, màn hình giọt nước tích hợp cảm biến vân tay
Thay vì vùng notch khá lớn như tên Mate 20 Pro, P30 Pro sẽ sở hữu màn hình kiểu giọt nước, qua đó cắt giảm đáng kể viền bezel đáng kể so với người tiền nhiệm, tăng tỷ lệ hiển thị ở mặt trước. Kết hợp cùng 2 cạnh bên được làm cong 3D, P30 Pro toát lên vẻ đẹp cao cấp, sang trọng và tinh tế ngay từ cái nhìn đầu tiên.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (39, N'Huawei P30 Lite', 6, 4490000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/1/2/1232-500x500.png', N'Điện thoại Huawei P30 Lite - Smartphone giá rẻ được trang bị 3 camera sau, chip Kirin 710
(*) Huawei P30 Lite chính hãng, có sẵn tiếng Việt, đầy đủ ứng dụng của Google. Bạn có thể sử dụng ngay bình thường. Khác với các máy hàng xách tay: không có sẵn rom tiếng Việt, chặn các ứng dụng của Google

 Tiếp nối sự thành công của Huawei P20, thế hệ Huawei P30 sắp được ra mắt bao gồm Huawei P30, P30 Pro và P30 Lite hứa hẹn mang đến một luồng gió mới cho thị trường smartphone trong năm 2019. Trong số những sản phẩm sắp ra mắt đó, Huawei P30 Lite chắc chắn sẽ tiếp tục trở thành thiết bị có cấu hình tốt cùng giá bán dễ tiếp cận nhất đến từ Huawei.

P30 Lite có màn hình 6.0 inch Full HD+, thiết kế giọt nước
Theo những thông số rò rỉ, Huawei P30 Lite sẽ được trang bị một màn hình có kích thước 6.0 inch độ phân giải Full HD+. Bên cạnh đó, tương tự như P20 Lite, tấm nền màn hình trên P30 Lite vẫn sẽ giữ nguyên là IPS LCD. Màn hình này chắc chắn sẽ mang đến cho người dùng một trải nghiệm tốt với màu sắc chân thực cùng độ sáng cao.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (36, N'Huawei P40', 6, 15990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/p/4/p40-blue.png', N'Điện thoại Huawei P40 – Ba camera chụp ảnh đỉnh cao và hiệu năng mạnh mẽ
Huawei P40 và Huawei P40 Pro là một mẫu flagship mới của nhà Huawei và luôn bắt kịp với xu hướng hiện đại, P40 cũng được trang bị hệ thống 4 camera đỉnh cao, hiệu năng mạnh mẽ đáp ứng mọi nhu cầu sử dụng. Bên cạnh đó, máy còn sở hữu thiết kế cao cấp, quyến rũ với màn hình đục lỗ mới nhất cùng chất liệu kim loại và kính sang trọng, tạo nên một smartphone tuyệt đẹp.

Huawei P40 có thiết kế nguyên khối, sự kết hợp ấn tượng của chất liệu nhôm và kính
Huawei P40 có thiết kế nguyên khối sang trọng với phần khung kim loại và mặt lưng kính cường lực Gorilla tạo nên sự sang trọng, tinh tế. Có kích thước 148,9 x 71,06 mm và độ mỏng chỉ 8,5mm, P40 vẫn khá gọn gàng mặc dù sở hữu màn hình 6.1 inch. Các đường nét được hoàn thiện tỉ mỉ, các góc được bo cong nhẹ nhàng tạo nên sự mềm mại cũng như mang đến cảm giác cầm nắm thoải mái cho người dùng.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (37, N'Huawei Nova 5T', 6, 8490000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/6/3/637165989862080442_huawei-nova-5t-green-1.png', N'Điện thoại Huawei Nova 5T – Điện thoại có 4 camara, sạc siêu nhanh
Nova 5T là smartphone mới nhất được Huawei cho ra mắt vào tháng 9/2019. Huawei Nova 5T là mẫu smartphone có cấu hình mạnh mẽ với chip Kirin 980 8 nhân, camera selfie 32mp nhưng giá bán cực kỳ cạnh tranh

Huawei Nova 5T sử dụng màn hình IPS LCD 6.26 inch độ phân giải FHD thiết kế màn hình dạng nốt ruồi 
Với Nova 5T, Huawei trang bị cho flagship này công nghệ màn hình IPS, công nghệ màn hình này có khả năng cho chất lượng ảnh tươi, độ tái tạo màu sắc tuyệt vời. Khi áp dụng công nghệ này lên màn hình 6.26 inch cùng độ phân giải FHD hứa hẹn đây sẽ là một sản phẩm có màn hình đẹp nhất trên thị trường hiện nay với 16,7 triệu màu, độ bão hòa màu đạt 96%.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (38, N'Huawei Y9s 2019', 6, 5790000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/h/u/huawei-y9s-breathing-crystal.jpg', N'Huawei Y9s – Màn hình fullview cùng hệ thống camera AI chất lượng
Huawei Y9s vừa chính thức được ra mắt tại Việt Nam tiếp nối sự thành công của mẫu smartphone tầm trung Huawei Y9 2019 trước đó. Điện thoại được trang bị màn hình 6.59 inch cực lớn và hệ thống 3 camera sau hỗ trợ AI, sẵn sàng mang đến cho bạn những trải nghiệm sử dụng đáng kinh ngạc. Cùng tầm giá này bạn cũng có thể tham khảo thêm Huawei Nova 7i vừa ra mắt với 4 camera sau, cấu hình mạnh hơn cùng màn hình nốt ruồi đẹp mắt.

Huawei Y9s sở hữu mặt lưng kính gradient chuyển màu bắt mắt
Huawei luôn được biết đến với tư cách là một hãng smartphone sở hữu ngôn ngữ thiết kế hàng đầu thị trường hiện nay, nổi tiếng với thiết kế màu gradient vô cùng bắt mắt. Huawei Y9s 2019 là một minh chứng cụ thể khi mà thiết kế của nó được chính Huawei gọi là “Bản giao hưởng trong tầm tay của bạn”. Với hai màu sắc sáng và tối chắc chắn sẽ thu hút bạn ngay từ anh nhìn đầu tiên.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (52, N'Vsmart Active 3', 8, 3490000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/v/s/vsmart-active-3-6gb-ram-1_6_2.png', N'Ra mắt vào đầu năm 2020, Vsmart Active 3 (4GB/64GB) là một smartphone có hiệu năng ổn định, thời lượng pin cả ngày dài và còn nhiều tính năng đặc biệt khác nữa, hứa hẹn sẽ mang đến cho bạn một thiết bị công nghệ chẳng những thời trang còn rất hiện đại.
Sang trọng với mặt lưng kính, hiệu ứng gradient thời thượng
Mặt sau của Active 3 gồm 4 sự lựa chọn thời trang: Xanh lục bảo, Xanh sapphire, Đen thạch anh và Tím ngọc lấy cảm hứng từ vẻ đẹp của đá quý. Thiết kế cong nhẹ về hai cạnh và 4 góc được bo tròn mềm mại, Active 3 được hoàn thiện theo xu hướng gradient – bóng bẩy và chuyển màu khi di chuyển.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (40, N'Huawei P40 Pro', 6, 21990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/p/4/p40-pro-silver.png', N'Điện thoại Huawei P40 Pro - Smartphone cao cấp với camera siêu nét
Thời gian gần đây, gã khổng lồ nổi tiếng đến từ Trung Quốc Huawei luôn "khuấy đảo" thị trường smartphone với những thiết bị flagship cao cấp cùng cấu hình ấn tượng. Và một trong những chiếc flagship được hãng cho ra mắt trong năm 2020 đó là Huawei P40 Pro và Huawei P40. Trong đó, P40 Pro là smartphone sở hữu màn hình cong lớn, vi xử lý mạnh mẽ cùng camera có độ phân giải siêu nét.

Huawei P40 Pro có thiết kế hiện đại với lớp phủ gốm bắt mắt, màn hình tần số 120Hz sắc nét
Huawei P40 Pro được xem là flagship mới nhất của Huawei trong năm 2020, do đó chiếc smartphonenày sẽ sở hữu vẻ ngoài vô cùng bắt mắt. Máy có thiết kế vuông vức, khung kim loại cứng cáp, mặt lưng được phủ một lớp gốm làm tăng thêm nét sang trọng cho một flagship cao cấp.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (41, N'Oppo Find X2', 7, 19990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/6/3/637191049692122812_oppo-find-x2-xanh-1.png', N'Oppo Find X2 – Hiệu năng đỉnh cao, màn hình chiếm trọn mặt trước
Oppo Find X2  và Oppo Find X2 Pro là chiếc điện thoại thuộc phân khúc cao cấp vừa được Oppo ra mắt, tiếp nối sự thành công vang dội của người tiền nhiệm Oppo Find X. Đây là mẫu sản phẩm được thừa hưởng những công nghệ mới và tốt nhất ở thời điểm hiện tại so với các đối thủ cùng phân khúc.

Find X2 có thiết kế chuyển màu nổi bật, cho cảm giác cực kì nhẹ nhàng
Oppo Find X2 nổi bật với mặt sau làm từ chất liệu nhựa nhưng vẫn thể hiện lên tính sang trọng của máy bởi phần màu sắc. Màu sắc gradient ấn tượng xanh đam mê. Đây là màu sắc được lấy cảm hứng từ những màu sắc tự nhiên với sự chuyển màu mượt mà dưới ánh sáng và kiểu thiết kế đối xứng.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (42, N'Oppo Reno 2', 7, 14990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/6/3/637037229706723788_oppo-reno-2-5.png', N'Điện thoại Oppo Reno 2 – Chiếc máy tầm trung sở hữu hệ thống camera độc đáo
Không lâu sau khi ra mắt Oppo Reno dòng điện thoại đặc biệt với thiết kế camera selfie vây cá mập, thì hãng lại làm người dùng đứng ngồi không yên khi ra mắt chiếc siêu phẩm tiếp theo mang tên Oppo Reno 2 cùng với Oppo Reno 2F và Oppo Reno 2Z. Và tất nhiên, phiên bản này đi cùng vô số những nâng cấp, về cụ thể dưới đây người dùng sẽ thấy những điểm mạnh của chiếc máy này.

Oppo Reno 2 sở hữu 4 camera sau zoom 20x cùng camera selfie “vây cá mập” độc đáo
Dường như, camera selfie “vây cá mập” đã là đặc trưng và đặc điểm nhận diện của dòng Oppo Reno, được thiết kế bởi một hình tam giác giống như chiếc vây cá mập. Bên cạnh đó, còn được tích hợp một module có khả năng thò ra thụt vào khi cần thiết nhưng không phải toàn bộ mà chỉ nâng một bên và một bên cố định. Độ phân giải của camera selfie của Oppo Reno 2 lên đến 16 MP được tích hợp công nghệ làm đẹp AI hứa hẹn sẽ mang đến những bức ảnh selfie lung linh, sắc nét và sinh động cho người dùng. Tốc độ mở camera trước nhanh hơn 28.5% so với các tiền nhiệm giúp bạn không phải chờ đợi lâu khi sử dụng camera pop-up.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (44, N'Oppo A31 6GB', 7, 4590000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/o/p/oppo-a31-trang_2.png', N'OPPO A31 2020 (6GB/128GB) - Smartphone gây ấn tượng với bộ 3 camera sau trứ danh OPPO, hiệu năng tốt kết hợp nhiều nâng cấp đáng kể về thiết kế trên giá thành phải chăng phù hợp với đại đa số người dùng.
Thiết kế màn hình tràn viền thời trang
Được trang bị một màn hình kích thước lớn 6.5 inch, sử dụng tấm nền IPS LCD cho góc nhìn rộng, dễ dàng thao tác với độ sáng cao lên tới 480 nits có thể sử dụng tốt ngoài trời nắng.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (43, N'Oppo A9 2020', 7, 5200000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/a/9/a9-xanhbien_1.jpg', N'Điện thoại Oppo A9 – Điện thoại nhiều màu sắc tinh tế, camera đột phá
Kế tiếp sự thành công vang dội của người tiền nhiệm Oppo A7, Oppo tiếp tục giới thiệu đến người dùng một chiếc điện thoại thuộc phân khúc tầm trung mới mang tên Oppo A9. Đây là mẫu sản phẩm được thừa hưởng những công nghệ mới và tốt nhất ở thời điểm hiện tại so với các đối thủ cùng phân khúc.

Mặt lưng nhựa nổi bật bởi hai màu xanh và tím, độ mỏng đạt 8.3mm
Oppo A9 2020 nổi bật với mặt sau làm từ chất liệu nhựa nhưng vẫn thể hiện lên tính sang trọng của máy bởi phần màu sắc. Màu sắc gradient ấn tượng xanh đam mê và tím đột phá. Đây là màu sắc được lấy cảm hứng từ những màu sắc tự nhiên với sự chuyển màu mượt mà dưới ánh sáng và kiểu thiết kế đối xứng. Do đó, Oppo A9 2020 cực kì nổi bật.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (45, N'Oppo A5 2020', 7, 3690000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/a/5/a5-den.png', N'Oppo A5 - Bốn camera, pin khủng, cấu hình mạnh mẽ
Oppo A5 khoát lên mình một vẻ ngoại thời trang, trẻ trung đi kèm màn hình giọt nước thời thượng, sở hữu đến 4 camera sau, viên pin cực khủng cùng hiệu năng vô cùng mạnh mẽ. Thiết bị hướng tới giới trẻ - những ai yêu thích thiết kế trẻ trung và có một điện thoại đẹp trong tay để chụp ảnh selfie đẹp với mức giá phải chăng. Ngoài ra, bạn cũng có thể tham khảo phiên bản cấu hình cao hơn là Oppo A5 4GB. Ngoài ra, bạn có thể tham khảo Oppo A31 2020 mới được ra mắt với mức giá tương đương nhưng sở hữu cụm 3 camera sau.

Oppo A5 có thiết kế màn hình giọt nước, mặt lưng bóng bẩy dễ cầm nắm
Dù sở hữu thiết kế không quá nổi bật nhưng Oppo A5 vẫn tạo bạn cảm giác trẻ trung và hiện đại mỗi khi nhìn ngắm. Không gian phía trước được tối giản với viền màn hình siêu mỏng kết hợp với chiếc tai thỏ đang trở thành xu thế hiện nay. Máy cho cảm giác cầm nắm khá chắc chắn và đầm tay dù máy được hoàn thiện từ chất liệu nhựa nguyên khối. ')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (47, N'Oppo A5s', 7, 2900000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/a/5/a5s-do.png', N'Điện thoại Oppo A5s - Smartphone giá rẻ đáng để lựa chọn
Năm 2019, OPPO cho ra mắt thành viên mới thuộc dòng A với cái tên OPPO A5s - dòng smartphone giá rẻ sở hữu nhiều ưu điểm từ ngôn ngữ thiết kế, cấu hình đến những tính năng thú vị. Đây hứa hẹn sẽ tiếp tục trở thành một sản phẩm “ngon - bổ - rẻ” của hãng điện thoại đến từ Trung Quốc. Cùng tầm giá này, bạn cũng có thể tham khảo thêm Oppo A12 vừa ra mắt.

Thiết kế thời trang với màn hình giọt nước 6.2 inch
Về thiết kế, Oppo A5s sở hữu ngôn ngữ thiết kế hiện đại với màn hình giọt nước giúp tối đa không gian màn hình. Các hình ảnh lộ diện gần đây cho thấy máy sẽ có 2 phiên bản màu sắc gồm đỏ và đen mang lại vẻ đẹp tinh tế, sang trọng và hợp thời trang. Bên cạnh đó, thiết bị còn có hệ thống cảm biến vân tay ở mặt lưng để tăng tính tiện lợi cho người dùng.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (53, N'Vsmart Active 1', 8, 3290000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/v/s/vsmart_active1_gold_distributiva_1.jpg', N'Chi tiết điện thoại Vsmart Active 1 
Vsmart Active 1 là 1 trong 4 chiếc điện thoại được tập đoàn VinGroup ra mắt vào giữa tháng 12 vừa qua tại tòa nhà Landmark 81. Đây là phiên bản smartphone mang thương hiệu Vsmart có mức giá tầm trung có thiết kế cao cấp, cấu hình mạnh cùng với camera chất lượng cực kỳ tốt. Bạn có thể tham khảo Vsmart Live vừa ra mắt, nhiều khả năng sắp tới hãng sẽ giới thiệu thêm Vsmart Bee giá cực rẻ.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (48, N'Oppo A1K', 7, 2450000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/a/1/a1k-do.png', N'Oppo A1k chính hãng - Màn hình lớn, thiết kế đẹp mắt, pin 4000mAh
Bạn đang tìm một chiếc điện thoại ở tầm giá rẻ, với cấu hình tốt, nhiều tính năng, dung lượng pin lớn, hệ điều hành Android mới nhất? Có lẽ Oppo A1k chính là sản phẩm mà bạn nên lưu tâm tới, khi sản phẩm này là sự kết hợp giữa rất nhiều yếu tố của một thiết bị tầm trung, nhưng vẫn được định ở mức giá rẻ.

Màn hình IPS LCD, 6.1 inch, thiết kế giọt nước hiện đại
Oppo A1k được trang bị màn hình kích thước 6.1 inch cùng độ phân giải lên đến 720 x 1560 pixel. Song song với đó, dù ở phân khúc giá rẻ, thiết bị này vẫn được Oppo ưu ái trang bị cho thiết kế màn hình giọt nước cùng tỉ lệ hiển thị hiện đại 19.5:9. Viền màn hình trên máy từ đó cũng được gọt mỏng hơn, với tỉ lệ mặt trước lên đến 80%. Có thể nói, màn hình này sẽ mang đến cho người dùng không gian trải nghiệm rộng rãi, thoáng đãng mà ít sản phẩm nào ở phân khúc giá rẻ làm được.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (49, N'Oppo Reno 3', 7, 8490000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/2/_/2_59_21.jpg', N'Điện thoại OPPO Reno 3 – Màn hình tràn viền, hệ thống 4 camera khủng và hiệu năng vượt trội
Bộ đôi Oppo Reno 3 và OPPO Reno 3 Pro được ra mắt không lâu sau người anh em tiền nhiệm Oppo Reno 2 với nhiều nâng cấp ấn tượng. Thuộc phân khúc smartphone tầm trung nhưng Oppo Reno 3 vẫn sở hữu thiết kế cao cấp, hiệu năng mạnh mẽ đặc biệt là hệ thống camera với 4 camera cùng khả năng zoom 20x mang đến những trải nghiệm tuyệt vời.

Thiết kế nguyên khối tinh tế mỏng và nhẹ hơn với các màu sắc tự nhiên
Oppo Reno 3 sở hữu thiết kế nguyên khối tinh tế với kích thước 160.2 x 73.3 mm và độ mỏng chỉ 7.9mm nên có trọng lượng nhẹ hơn, chỉ 170g. Từng được nét thanh toán được hoàn thiện tỉ mỉ với bốn góc được bo tròn nhẹ nhàng cùng hai cạnh bên hơi vát cong cho cảm giác cầm chắc tay, thoải mái.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (54, N'Vsmart Live 6GB', 8, 3790000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/v/s/vsmart-live-xanh_1.jpg', N'Điện thoại Vsmart Live 6GB RAM – Điện thoại giá rẻ với hiệu năng tốt
Thương hiệu điện thoại Việt Vsmart đến từ ông lớn Vingroup mới đây đã bổ sung thêm thành viên cho bộ sư tập smartphone tầm trung – đó chính là Vsmart Live. Điện thoại Vsmart Live 6GB giá rẻ nhưng sở hữu hiệu năng cao sẽ là sự lựa chọn đáng cân nhắc.

Vsmart Live 6GB RAM nâng cao khả năng đa nhiệm
Vsmart Live 6GB RAM mang lại khả năng đa nhiệm tốt, bạn sẽ không phải gặp tình trạng load lại ứng dụng hay đứng máy. Nhờ vậy Vsmart Live phiên bản 6GB RAM không chỉ mang đến trải nghiệm tốt mà còn giúp tiết kiệm thời gian.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (56, N'Vsmart Joy 3 4GB', 8, 3290000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/j/o/joy-3-4g-tim.jpg', N'Vsmart Joy 3 4GB/64GB là một phiên bản mới, được nâng cấp nhẹ về RAM và bộ nhớ trong so với 2 mẫu smartphone cùng tên trước đó, mang đến thêm một sự lựa chọn hấp dẫn ở phân khúc giá rẻ cho người dùng.
Cấu hình nâng cấp với mức giá bình dân
Không vì mức giá rẻ mà cấu hình bị thua thiệt, Joy 3 bản 4GB vẫn được hãng Vsmart tích hợp vi xử lý tầm trung Snapdragon 632 cho hiệu năng xử lý mượt các tác vụ hàng ngày cũng như chiến tốt các tựa game hot nhất hiện nay như Liên Quân hay PUBG Mobile ở mức đồ họa trung bình. ')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (64, N'ASUS ZenFone Max Pro M2 3GB', 9, 3390000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/z/f/zfmaxpro_m2__front_darkblue.jpg', N'ASUS ZenFone Max Pro M2 3GB RAM Chính hãng
Với thiết kế sang trọng, cấu hình mạnh, camera “chất” và đặc biệt là viên pin dung lượng “khủng”, điện thoại ASUS ZenFone Max Pro M2 3GB RAM là ứng cử viên “nặng ký” khi người dùng cần mua một chiếc smartphone tầm trung.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (55, N'Vsmart Star', 8, 1390000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/4/b/4ba2vt.jpg', N'Điện thoại Vsmart Star – Chiếc smartphone giá rẻ, ấn tượng màn hình tai thỏ thời thượng
Vsmart là điện thoại của Việt Nam và là thương hiệu smartphone của tập đoàn Vingroup. Sau khi ra mắt một loạt sản phẩm đầu tiên. Vsmart tiếp tục làm người dùng Việt Nam ngạc nhiên, khi tiếp tục cho trình làng những sản phẩm mới như Vsmart Bee, Joy 2 Plus, Star,... Một trong số đó là Vsmart Star, chiếc smartphone giá rẻ có đầy đủ tính năng và đặc biệt được cập nhật xu hướng. Ngoài ra, bạn có thể tham khảo thêm Vsmart Star 3 vừa mới ra mắt với nhiều nâng cấp về camera và dung lượng pin.

Thiết kế màn hình giọt nước, chất liệu nhựa bền bỉ
Vsmart Star được hoàn thiện bởi chất liệu bằng nhựa để tạo cho máy có độ nhẹ, dễ dàng cầm nắm trong lòng bàn tay và tiết kiệm chi phí. Mặc dù sử dụng chất liệu nhựa, nhưng Vsmart Star không bị ọp ẹp, kém chất lượng. Thiết bị vô cùng bền bỉ, bởi độ hoàn thiện vô cùng xuất sắc, thậm chí ấn tượng hơn những sản phẩm tiền nhiệm tầm trung của hãng. Bên cạnh đó chiếc máy còn có các đường bo tròn ở góc máy, góc màn hình, nhằm mang lại cảm giác nhẹ nhàng, thanh mảnh. Với Vsmart Star bạn sẽ có một thiết bị thật sự di động, và cho phép bạn thoải mái với nhiều loại công việc khác nhau.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (57, N'Vsmart Bee', 8, 990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/b/e/bee_indigo_blue_thumbnail_2500.jpg', N'Điện thoại Vsmart Bee - Smartphone giá rẻ nhất của tập đoàn Vingroup
Sau khi ra mắt Vsmart Live thì trong thời gian sắp tới, tập đoàn Vingroup cũng sẽ cho ra mắt một mẫu smartphone mới có tên là Vsmart Bee. Đây là chiếc điện thoại nằm trong phân khúc giá rẻ, sở hữu màn hình HD + 5.45 inch, chip MediaTek MT6739, RAM 1 GB, hỗ trợ mạng 4G cùng viên pin có dung lượng 2500 mAh.

Vsmart Bee có thiết kế vỏ nhựa, màn hình 5.45 inch tỉ lệ 18:9
Vsmart Bee được nhấn mạnh là mẫu điện thoại sở hữu thiết kế thời trang, thanh lịch, nhưng vẫn đảm bảo được sự tiện dụng và ưu việt cần có. Vỏ ngoài của mẫu smartphone này được làm hoàn toàn bằng nhựa và có hai phiên bản màu sắc là Graphite Grey (xám đen) và Blue (xanh). Như vậy, người dùng có 2 sự lựa chọn để có thể phù hợp với sở thích và nhu cầu của mình.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (66, N'Asus Zenfone Live L1', 9, 1490000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/z/e/zenfonelive-l1-blk-1.png.jpg', N'Asus Zenfone Live L1 Chính hãng
Bên cạnh Zenfone Live, thì trong năm nay, Asus cũng đã cho ra mắt một phiên bản khác của nó là Asus Zenfone Live L1. Mặc dù thiết bị thuộc phân khúc smartphone giá rẻ nhưng vẫn được trang bị màn hình 18 : 9 thời thượng, cấu hình phần cứng ấn tượng cùng nhiều tính năng thú vị khác.

Asus Zenfone Live L1 sở hữu thiết kế đơn giản
Vì nằm trong phân khúc điện thoại giá rẻ, nên vỏ ngoài của Zenfone Live L1 vẫn được chế tác từ chất liệu nhựa. Điện thoại sở hữu thiết kế khá truyền thống, với các góc, cạnh viền được bo cong mềm mại. Mặt lưng của máy cũng được làm nhám nhằm hạn chế sự bám dính mồ hôi, vân tay và đem lại cảm giác thoải mái, chắc chắn khi cầm, nắm.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (63, N'Vsmart Joy 3 2GB', 8, 2290000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/j/o/joy-3-1_7.png', N'Vsmart Joy 3 – Smartphone Việt giá rẻ, cấu hình ấn tượng
Để chứng tỏ vị thế và sức mạnh của smartphone thương hiệu Việt, Vsmart đã tiếp tục cho ra mắt phiên bản điện thoại Vsmart mới với tên gọi là Vsmart Joy 3. Điện thoại sở hữu màn hình cực lớn dạng giọt nước, dung lượng pin siêu khủng hỗ trợ sạc nhanh và hệ thống ba camera sau AI, hoàn toàn đáp ứng mọi nhu cầu người dùng với mức giá vô cùng phải chăng.

Joy 3 có màn hình giọt nước thời thượng, kích thước 6.52 inch, công nghệ IPS
Vsmart Joy 3 sở hữu một thiết kế vô cùng sang trọng khi được trang bị màn hình giọt nước vô cùng thời thượng. Màn hình giọt nước giúp tối ưu hóa trải nghiệm hình ảnh, gia tăng không gian sử dụng cho người dùng. Thêm vào đó thì thân máy sẽ được tô điểm với nhiều màu sắc trẻ trung cá tính phù hợp với từng cá nhân.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (65, N'Asus Zenfone Max M2 4GB', 9, 2990000, N'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/350x/9df78eab33525d08d6e5fb8d27136e95/0/m/0mtjgefggujzwdnb_setting_fff_1_90_end_500.jpg', N'Điện thoại Asus Zenfone Max M2 4GB – Smartphone tai thỏ, hiệu năng cao, pin trâu
Bên cạnh laptop, Asus còn được biết đến là nhà sản xuất điện thoại với các sản phẩm tập trung ở phân khúc giá rẻ và tầm trung. Asus Zenfone Max M2 là một đại diện cho điện thoại Asus phân khúcgiá rẻ với thiết kế tai thỏ, thời lượng pin cao.

Thiết kế kim loại nguyên khối cùng màn hình IPS LCD 6.3” HD+ cho độ sắc nét cao
Asus Zenfone Max M2 sở hữu thiết kế kim loại nguyên khối, tạo cảm giác sang trọng và thanh thoát và bền bỉ theo thời gian. Kích thước của Zenfone Max M2 lần lượt là dài 158.4 mm – ngang 76.3 mm – dày 7.7 mm. Trọng lượng của chiếc máy này chỉ đạt 160g cùng với độ dày rơi vào mức 7.7 mm. Khá thanh mảnh và độ gọn nhẹ của Max M2 tạo nên sự linh hoạt cho việc cầm nắm cũng như trải nghiệm chơi game lâu sẽ không gây cảm giác mỏi tay.')
SET IDENTITY_INSERT [dbo].[Products] OFF
