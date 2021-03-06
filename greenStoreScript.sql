USE [GreenStore]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 4/1/2021 8:55:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NOT NULL,
	[passWord] [nvarchar](50) NOT NULL,
	[phonenumber] [varchar](20) NOT NULL,
	[isAdmin] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/1/2021 8:55:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] NOT NULL,
	[name] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/1/2021 8:55:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cusID] [int] NOT NULL,
	[orderDate] [date] NOT NULL,
	[totalPrice] [float] NOT NULL,
	[note] [nchar](200) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_detail]    Script Date: 4/1/2021 8:55:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[productName] [varchar](200) NOT NULL,
	[productPrice] [float] NOT NULL,
	[productImage] [varchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/1/2021 8:55:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[image] [varchar](max) NOT NULL,
	[description] [varchar](max) NOT NULL,
	[cid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (1, N'admin', N'12345', N'0123456789', 1)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (2, N'Maria', N'hahaha', N'0147896325', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (3, N'Tom', N'tomtomtom', N'012369874', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (4, N'Denish', N'hihihi', N'034795164', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (7, N'Anna', N'33333', N'037219823', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (8, N'Mod', N'12222', N'', 0)
INSERT [dbo].[Accounts] ([id], [userName], [passWord], [phonenumber], [isAdmin]) VALUES (9, N'admin', N'12345', N'1234567', 0)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
INSERT [dbo].[Categories] ([id], [name]) VALUES (1, N'Low light plants')
INSERT [dbo].[Categories] ([id], [name]) VALUES (2, N'Cactus & Succlents')
INSERT [dbo].[Categories] ([id], [name]) VALUES (3, N'Pots & Planters')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (1, 2, CAST(N'2021-03-31' AS Date), 85, N'hopping                                                                                                                                                                                                 ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (2, 2, CAST(N'2021-03-31' AS Date), 30, N'nothing                                                                                                                                                                                                 ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (3, 2, CAST(N'2021-03-31' AS Date), 170, N'Hihi                                                                                                                                                                                                    ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (4, 2, CAST(N'2021-03-31' AS Date), 65, N'aaaaa                                                                                                                                                                                                   ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (5, 2, CAST(N'2021-03-31' AS Date), 30, N'cccccccccccccccccccccccccccccccc                                                                                                                                                                        ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (6, 2, CAST(N'2021-03-31' AS Date), 50, N'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq                                                                                                                                                          ')
INSERT [dbo].[Order] ([id], [cusID], [orderDate], [totalPrice], [note]) VALUES (7, 2, CAST(N'2021-03-31' AS Date), 45, N'                                                                                                                                                                                                        ')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_detail] ON 

INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (1, 1, 1, N'Small ZZ Plant + MEPO Pots', 15, N'1.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (2, 1, 4, N'Small ZZ Plant', 50, N'4.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (3, 1, 5, N'Baby ZZ Plant', 20, N'5.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (4, 2, 19, N'Small ZZ Plant + MEPO Pots', 15, N'1.jpg', 2)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (5, 3, 19, N'Small ZZ Plant + MEPO Pots', 15, N'1.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (6, 3, 20, N'Golden Hahnii + Terracotta POTS', 25, N'2.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (7, 3, 21, N'Aloe Humilis + CUPO Pots', 65, N'3.jpg', 2)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (8, 4, 19, N'Small ZZ Plant + MEPO Pots', 15, N'1.jpg', 1)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (9, 4, 20, N'Golden Hahnii + Terracotta POTS', 25, N'2.jpg', 2)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (10, 5, 19, N'Small ZZ Plant + MEPO Pots', 15, N'1.jpg', 2)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (11, 6, 20, N'Golden Hahnii + Terracotta POTS', 25, N'2.jpg', 2)
INSERT [dbo].[Order_detail] ([id], [orderID], [productID], [productName], [productPrice], [productImage], [quantity]) VALUES (12, 7, 19, N'Small ZZ Plant + MEPO Pots', 15, N'1.jpg', 3)
SET IDENTITY_INSERT [dbo].[Order_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (19, N'Small ZZ Plant + MEPO Pots', 10, 15, N'1.jpg', N'It is one of the most popular indoor plants for its good germination ability, grows rapidly even under low light conditions.', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (20, N'Golden Hahnii + Terracotta POTS', 5, 25, N'2.jpg', N'When it comes to the top types of air purifiers, we cannot help but mention Tigers Tongue - the "machine" that filters the air from nature. In particular, this plant also has very good vitality, even with low light conditions or direct sunlight, and is resistant to drought up to several months. In Western countries, Tiger Tongue is often placed in bedrooms, because with reverse photosynthetic properties, it will release oxygen at night, helping to sleep deeply and fresh.', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (21, N'Aloe Humilis + CUPO Pots', 6, 65, N'3.jpg', N'This is a succulent plant of the genus Aloe (Aloe Vera). In particular, this is a crossbred line, so their size will be small in a certain range, then they will lay more seedlings next to them, you can also separate and plant separately when the seedlings are big enough.', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (22, N'Small ZZ Plant', 8, 50, N'4.jpg', N'It is one of the most popular indoor plants for its good germination ability, grows rapidly even under low light conditions. ', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (24, N'Fittonia + CUPO pots', 10, 55, N'6.jpg', N'It can be said that Fittonia is a bonsai for beginners. Most people, when starting to take care of trees, choose plants that are easy to take care of, but still have to be beautiful and eye-catching. Therefore, Fittonia is always the first choice whenever you want to care or give someone a pot without too much light.', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (25, N'Golden Hahnii', 20, 70, N'7.jpg', N'When it comes to the top types of air purifiers, we cannot help but mention Tigers Tongue - the "machine" that filters the air from nature. In particular, this plant also has very good vitality, even with low light conditions or direct sunlight, and is resistant to drought up to several months. In Western countries, Tiger Tongue is often placed in bedrooms, because with reverse photosynthetic properties, it will release oxygen at night, helping to sleep deeply and fresh.', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (26, N'Nipple Cactus (Birthday Cactus) + CUPO Pots', 15, 95, N'mong1.jpg', N'As you probably know, Cactus helps in eliminating radiation from electronic devices in the office such as computers, phones, printers, televisions ... However, not all types of cacti can be placed in the environment. office. Choose those with many spines, small spines, dark green and hard body, typically Nipple Cactus (Birthday Cake Cactus). This line is suitable for those who do not have time to water the plants, because the cactus drought tolerance is very good, can be up to several months.', 2)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (27, N'Haworthia Zebra', 30, 45, N'mong2.jpg', N'It is one of the most popular succulent plants when it comes to the Stone Lotus / Cactus. The advantage of this plant is that it is well adapted to the Vietnamese climate, does not need too much sunshine to grow, can live well with shady conditions and especially does not need too much water.', 2)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (28, N'Haworthia Zebra + CUPO Pots', 25, 75, N'mong3.jpg', N'It is one of the most popular succulent plants when it comes to the Stone Lotus / Cactus. The advantage of this plant is that it is well adapted to the Vietnamese climate, does not need too much sunshine to grow, can live well with shady conditions and especially does not need too much water.', 2)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (29, N'Basic Terracotta 13cm (Terracotta Pots)', 10, 50, N'chau1.jpg', N'Terracotta - Terracotta is the best potted material for growing plants. With good water absorption makes it easier to water plants indoors, minimizing root rot for plants.', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (30, N'Basic Terracotta 9cm (Terracotta Pots)', 20, 40, N'chau2.jpg', N'Terracotta - Terracotta is the best potted material for growing plants. With good water absorption makes it easier to water plants indoors, minimizing root rot for plants', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (31, N'Thick glass pots', 15, 45, N'chau3.jpg', N'Pot products are only available at NOTH Garden, with thick glass material, more difficult to break. Especially, the pot has a drainage hole at the bottom of the pot, so it can be planted straight into the pot without worrying about waterlogging.', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (32, N'MEPO pots', 20, 30, N'chau4.jpg', N'MEPO is a ceramic pot product produced by hand by NOTH Garden. With high quality ceramic material, the surface of the pot is not enameled, the inside of the pot has a water-resistant glaze, a drainage hole in the bottom of the pot and a water catcher disc.', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (34, N'Small ZZ Plant + MEPO Pots', 10, 15, N'1.jpg', N'It is one of the most popular indoor plants for its good germination ability, grows rapidly even under low light conditions.', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (35, N'Golden Hahnii + Terracotta POTS', 5, 25, N'2.jpg', N'When it comes to the top types of air purifiers, we cannot help but mention Tigers Tongue - the "machine" that filters the air from nature. In particular, this plant also has very good vitality, even with low light conditions or direct sunlight, and is resistant to drought up to several months. In Western countries, Tiger Tongue is often placed in bedrooms, because with reverse photosynthetic properties, it will release oxygen at night, helping to sleep deeply and fresh.', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (36, N'Aloe Humilis + CUPO Pots', 6, 65, N'3.jpg', N'This is a succulent plant of the genus Aloe (Aloe Vera). In particular, this is a crossbred line, so their size will be small in a certain range, then they will lay more seedlings next to them, you can also separate and plant separately when the seedlings are big enough.', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (37, N'Small ZZ Plant', 8, 50, N'4.jpg', N'It is one of the most popular indoor plants for its good germination ability, grows rapidly even under low light conditions. ', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (38, N'Baby ZZ Plant', 4, 20, N'5.jpg', N'It is one of the interior plants that is favored for having good germination, growing quickly even under low light conditions. In particular, the baby Kim Tien tree that you are viewing is currently only available at NOTH garden.', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (39, N'Fittonia + CUPO pots', 10, 55, N'6.jpg', N'It can be said that Fittonia is a bonsai for beginners. Most people, when starting to take care of trees, choose plants that are easy to take care of, but still have to be beautiful and eye-catching. Therefore, Fittonia is always the first choice whenever you want to care or give someone a pot without too much light.', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (40, N'Golden Hahnii', 20, 70, N'7.jpg', N'When it comes to the top types of air purifiers, we cannot help but mention Tigers Tongue - the "machine" that filters the air from nature. In particular, this plant also has very good vitality, even with low light conditions or direct sunlight, and is resistant to drought up to several months. In Western countries, Tiger Tongue is often placed in bedrooms, because with reverse photosynthetic properties, it will release oxygen at night, helping to sleep deeply and fresh.', 1)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (41, N'Nipple Cactus (Birthday Cactus) + CUPO Pots', 15, 95, N'mong1.jpg', N'As you probably know, Cactus helps in eliminating radiation from electronic devices in the office such as computers, phones, printers, televisions ... However, not all types of cacti can be placed in the environment. office. Choose those with many spines, small spines, dark green and hard body, typically Nipple Cactus (Birthday Cake Cactus). This line is suitable for those who do not have time to water the plants, because the cactus drought tolerance is very good, can be up to several months.', 2)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (42, N'Haworthia Zebra', 30, 45, N'mong2.jpg', N'It is one of the most popular succulent plants when it comes to the Stone Lotus / Cactus. The advantage of this plant is that it is well adapted to the Vietnamese climate, does not need too much sunshine to grow, can live well with shady conditions and especially does not need too much water.', 2)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (43, N'Haworthia Zebra + CUPO Pots', 25, 75, N'mong3.jpg', N'It is one of the most popular succulent plants when it comes to the Stone Lotus / Cactus. The advantage of this plant is that it is well adapted to the Vietnamese climate, does not need too much sunshine to grow, can live well with shady conditions and especially does not need too much water.', 2)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (44, N'Basic Terracotta 13cm (Terracotta Pots)', 10, 50, N'chau1.jpg', N'Terracotta - Terracotta is the best potted material for growing plants. With good water absorption makes it easier to water plants indoors, minimizing root rot for plants.', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (45, N'Basic Terracotta 9cm (Terracotta Pots)', 20, 40, N'chau2.jpg', N'Terracotta - Terracotta is the best potted material for growing plants. With good water absorption makes it easier to water plants indoors, minimizing root rot for plants', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (46, N'Thick glass pots', 15, 45, N'chau3.jpg', N'Pot products are only available at NOTH Garden, with thick glass material, more difficult to break. Especially, the pot has a drainage hole at the bottom of the pot, so it can be planted straight into the pot without worrying about waterlogging.', 3)
INSERT [dbo].[Products] ([pid], [name], [quantity], [price], [image], [description], [cid]) VALUES (47, N'MEPO pots', 20, 30, N'chau4.jpg', N'MEPO is a ceramic pot product produced by hand by NOTH Garden. With high quality ceramic material, the surface of the pot is not enameled, the inside of the pot has a water-resistant glaze, a drainage hole in the bottom of the pot and a water catcher disc.', 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_orderDate]  DEFAULT (getdate()) FOR [orderDate]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([cusID])
REFERENCES [dbo].[Accounts] ([id])
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Categories] ([id])
GO
