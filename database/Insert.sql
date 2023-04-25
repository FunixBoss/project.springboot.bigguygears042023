USE BigGuyGear 
GO

/*
INSERT INTO [Role]
VALUES
('ROLE_SUPERADMIN'),
('ROLE_ADMIN'),
('CUSTOMER')
GO

INSERT INTO OrderStatus
VALUES (N'Pending', N'When an order is created and has not been processed or confirmed by the customer.'),
(N'Processing', N'When the order has been confirmed and is being processed by the store''s staff.'),
(N'Shipped', N'Once the order has been packed and shipped to the carrier for delivery to the customer.'),
(N'Delivered', N'When the order has been successfully delivered to the customer.'),
(N'Cancelled', N'When an order is canceled by a customer or store employee for some reason.')
GO

INSERT INTO InvoiceStatus 
VALUES (N'Pending', N'Unpaid or pending invoice.'), 
(N'Paid', N' Invoice has been paid successfully.'),
(N'Failed', N'Bill payment failed.')
GO
*/

-- PRODUCT RELATED
INSERT INTO Category (category_name, image_name)
VALUES 
(N'Shirt', 'shirt.jpg'),
(N'Shorts', 'shorts.jpg'),
(N'Jeans', 'jeans.jpg'),
(N'Jacket', 'jacket.jpg'),
(N'Hoodie, sweater & sweatshirt', 'hoodie.jpg'),
(N'Tank top', 'tank_top.jpg'),
(N'Underwear', 'underwear.jpg')
GO

INSERT INTO ProductBrand
VALUES
(N'Kilomet109'),
(N'Subtle & Simple'),
(N'The Blue T-Shirt'),
(N'Vietcetera'),
(N'Papaya')
GO

/*
Insert Into ProductColor
VALUES
('White'), -- 1
('Black'), -- 2
('Yellow'), -- 3
('Moss green'), -- 4: Xanh rêu
('Dark Blue'), -- 5: Xanh đen
('Terracotta'), -- 6: Cam đất
('Brown'),-- 7: Nâu
('Sky blue'), -- 8: Xanh da trời
('Turquoise'), -- 9: Xanh bích
('Gray'), -- Xám
('Red')
GO
*/

Insert Into ProductSize
VALUES 
(N'XL (65-75kg)'),
(N'2XL (75-85kg)'),
(N'3XL (85-100kg)'),
(N'4XL (100-110kg)'),
(N'5XL (110-120kg)'),
(N'6XL (120-135kg), 1m8'), 
(N'36 : 70-80kg'), -- 7
(N'38 : 80-90kg'), -- 8
(N'40 : 90-100kg'), -- 9
(N'42 : 100-110kg'), -- 10
(N'44 : 110-120kg'), -- 11
(N'46 : 120-135kg') -- 12
GO

/*
INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- SHIRT
VALUES 
(N'',
N'', 20, 1, 1 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product1_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product1_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product1_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, , 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, , 10),
	((SELECT IDENT_CURRENT('Product')), 6, , 15)
	GO
*/


INSERT INTO Product (product_name, [description], price, brand_id, category_id)-- SHIRT 1
VALUES (
N'(sale) Áo sơ mi caro tay dài nam bigsize 75kg - 105kg', 
'CHỌN SIZE 
Size 3x : 80-90kg
Szie 4x : 90-100kg
Size 5x : 100-110kg
Size 6x : 110-120kg
Size 7x : 120-130kg', 20.00, 1, 1 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product1_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product1_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product1_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, N'Yellow', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, N'Brown', 10),
	((SELECT IDENT_CURRENT('Product')), 6, N'Dark Blue', 15)
	GO
INSERT INTO Product (product_name, [description], price, brand_id, category_id)-- SHIRT 2
VALUES 
(N'Áo sơ mi nam tay dài thiêu ngựa from bigsize 80kg - 130kg - hình ngựa cổ viền BBR',
N'Chọn size
sz 2x : 80 -90kg
sz 3x : 90 -100kg
sz 4x : 100 - 110kg
sz 5x : 110 - 120kg
sz 6x : 120 - 130kg', 20, 1, 1 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product2_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product2_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product2_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, N'White', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, N'Black', 10)
	GO
INSERT INTO Product(product_name, [description], price, brand_id, category_id) -- SHIRT 3
VALUES 
(N'BIGSIZE - Áo sơ mi nam bigsize in hình form 80-130kg',
N'Xuất xứ : Việt Nam
Anh em nên inbox chiều cao cân nặng để tư vấn size cho chính xác
Được hỗ trợ đổi trả nếu không ưng hoặc mặc không vừa,đổi trả miễn phí nếu lỗi do nhà bán hàng
Size - 
1x : 70-80kg ,bụng áo 56cm bề ngang
2x : 80-90kg , bụng áo 58cm bề ngang
3x : 90-100kg, bụng áo 60cm bề ngang
4x : 100-110kg, bụng áo 62cm bề ngang
5x : 110-120kg, bụng áo 64cm bề ngang
6x : 120-130kg, bụng áo 66cm bề ngang
7x : 130-140kg, bụng áo 72cm bề ngang', 30, 3, 1 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product3_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product3_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product3_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 5, N'White', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 6, N'Black', 10)
	GO
INSERT INTO Product (product_name, [description], price, brand_id, category_id)-- SHIRT 4
VALUES 
(N'(bigsize) Áo sơ mi nam tay ngắn bigsize nhiều màu - 70-140kg',
N'*** Chất liệu : KATE LỤA

**** Hướng dẫn chọn size áo chính xác 99% bằng 1 trong 2 cách sau :
Cách 1: cung cấp giúp shop số đo bề ngang bụng áo (áo đang mặc cảm thấy thoải mái nhất)
Cách 2 : cung cấp giúp shop số đo vòng bụng trên body.
NẾU thể sử dụng cách 1 và cách 2 vẫn còn Cách 3, chính xác 80%
Cách 3 : cung cấp giúp shop chiều cao cân nặng.

*** CHÍNH SÁCH ĐỔI TRẢ HÀNG QUẦN ÁO :
- Đổi trả hàng trong vòng 7 ngày kể từ ngày nhận được hàng, hàng đổi trả phải còn nguyên tem mạc , không có mùi lạ, chưa có dấu hiệu đã qua sử dụng.  ', 15, 1, 1 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product4_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product4_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product4_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, N'Gray', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, N'Dark Blue', 10)
	GO
INSERT INTO Product (product_name, [description], price, brand_id, category_id)-- SHIRT 5
VALUES 
(N'BIGSIZE - Áo sơ mi nam tay ngắn có túi chất kate bố linen form bigsize 80kg - 130kg',
N'Khách yêu lưu ý: BIGSIZE không nhận đặt hàng qua ghi chú, nên khách yêu kiểm tra màu size, địa chỉ với số điện thoại chuẩn trước khi đặt hàng nhé.
Thêm nữa do chính sách toàn sàn Shopee không cho kiểm hàng trước khi thanh toán, nhưng nhà BIGSIZE hỗ trợ đổi trả trong vòng 7 ngày cho các sản phẩm không vừa size không giống mô tả hoặc lỗi từ nhà sản xuất
Khách yêu yên tâm khi đặt hàng tại nhà BIGSIZE nha!!!
HƯỚNG DẪN CHỌN SIZE Áo :
Size 2x : 80kg - 90kg, ngang bụng áo 56cm bề ngang
Size 3x : 90kg - 100kg, ngang bụng áo 58cm bề ngang
Size 4x : 100kg - 110kg, ngang bụng áo 60cm bề ngang
Size 5x : 110kg - 120kg, ngang bụng áo 63cm bề ngang
Size 6x : 120kg - 130kg, ngang bụng áo 66cm bề ngang
Ghi chú : Cân nặng đi theo size chỉ ướm chừng, khách ib chiều cao cân nặng để được tu vấn size phù hợp/ khách tự đo kích thước áo khách đang mặc cảm thấy thoải mái nhất để so sánh với kích thước áo shop đang mô tả để chọn size phù hợp với mình nhé !', 25, 1, 1 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product5_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product5_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product5_3.jpg'),
	((SELECT IDENT_CURRENT('Product')), 'product5_4.jpg')

	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, N'Gray', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, N'Dark Blue', 10),
	((SELECT IDENT_CURRENT('Product')), 6, N'Sky Blue', 15)
	GO











INSERT INTO Product (product_name, [description], price, brand_id, category_id)-- Shorts 1
VALUES 
(N'(bigsize) Quần short thun nam lưng thun bigsize chất thun co giãn thoải mái màu đen trắng - 80-140kg',
N' 
-	Tên sản phẩm: Quần short thun cao cấp phong cách unisex dễ phối đồ 
-	Chất liệu: Vải thun, dày dặn nhưng vẫn tạo cảm giác thoáng mát.  Tại sao ư?  Vải thun được dệt với các sợi đan chéo nhau, tạo nên những lỗ thoáng khí giúp người mặc cảm thấy thoải mái, ấm áp, nhưng vẫn không gây khó chịu cho làn da.
-	Mặc đi tập gym, café, du lịch, mặc nhà đều ổn 
-	Màu sắc: ĐEN,trắng cực dễ phối đồ, không sợ gây nóng bức, khó chịu.    
BB Boiz đóng gói bằng túi zip cao cấp, sang trọng, đảm bảo được chất lượng sản phẩm đến tay khách hàng.

-	Size 5:  cho người 80 - 90kg
-	Size 6: cho người từ 90 - 100kg
-	Size 7:  cho người từ 100 - 110kg
-	Size 8:  cho người từ 110 - 120kg
-	Size 9:  cho người từ 120 - 130kg
-	Size 10:  cho người từ 130 - 140kg', 25, 2, 2) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product6_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product6_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product6_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 8, N'White', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 9, N'Black', 10)
	GO
INSERT INTO Product (product_name, [description], price, brand_id, category_id)-- Shorts 2
VALUES 
(N'BIGSIZE - Quần short thun nam form bigsize 80kg - 130kg - in ARM',
N'Quần short thun nam form bigsize 80kg - 130kg - in chữ UNDR phù hợp để đi tập thể dục một sản phẩm cực kì nổi bật của shop 

CHỌN SIZE : 
5x : 80 - 90kg
6x : 90 - 100kg
7x : 100 - 110kg
8x : 110 - 120kg
9x : 120 - 130kg
Chất : thun', 30, 2, 2 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product7_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product7_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product7_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 7, N'White', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 8, N'Black', 10),
	((SELECT IDENT_CURRENT('Product')), 9, N'Gray', 15)
	GO
INSERT INTO Product (product_name, [description], price, brand_id, category_id)-- Shorts 3
VALUES 
(N'BIGSIZE - Quần short thun nam form bigsize 80kg - 130kg - in 3 sọc',
N'Quần short thun nam form bigsize 80kg - 130kg - in chữ UNDR phù hợp để đi tập thể dục một sản phẩm cực kì nổi bật của shop 

CHỌN SIZE : 
5x : 80 - 90kg
6x : 90 - 100kg
7x : 100 - 110kg
8x : 110 - 120kg
9x : 120 - 130kg
Chất : thun', 25, 2, 2 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product8_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product8_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product8_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, N'Red', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, N'Black', 10),
	((SELECT IDENT_CURRENT('Product')), 6, N'Black', 15)
	GO









INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Jeans
VALUES 
(N'Quần jean nam vải bền đẹp bigsize form quần đứng vừa vặn đủ màu - 80-130kg',
N'ĐẶC ĐIỂM NỔI BẬT
- Chất liệu vải bền, đẹp, không gây kích ứng da.
- Form quần đứng, vừa vặn với cơ thể người mặc.
- Quần jean dễ dàng phối hợp cùng áo phông, áo sơ mi, giày thể thao, giày lười…
- Quần thích hợp mặc đi làm, đi chơi, tiệc tùng, sự kiện…', 49.99, 3, 3 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product9_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product9_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product9_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 8, N'Dark Blue', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 9, N'Sky Blue', 10),
	((SELECT IDENT_CURRENT('Product')), 10, N'Black', 15)
	GO
INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Jeans
VALUES 
(N'Quần jean nam dài bigsize màu xanh trơn - 85-120kg',
N'ĐẶC ĐIỂM NỔI BẬT
- Chất liệu vải bền, đẹp, không gây kích ứng da.
- Form quần đứng, vừa vặn với cơ thể người mặc.
- Quần jean dễ dàng phối hợp cùng áo phông, áo sơ mi, giày thể thao, giày lười…
- Quần thích hợp mặc đi làm, đi chơi, tiệc tùng, sự kiện…', 49.99, 3, 3 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product10_1.jpg') -- image_name
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 8, N'Sky Blue', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 9, N'Sky Blue', 10),
	((SELECT IDENT_CURRENT('Product')), 10, N'Sky Blue', 15)
	GO
INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Jeans
VALUES 
(N'Quần jean dài nam bigsize màu đen ống đứng màu đen form 80-130kg',
N'*** CHÍNH SÁCH ĐỔI TRẢ HÀNG QUẦN ÁO :
- Đổi trả hàng trong vòng 7 ngày kể từ ngày nhận được hàng, hàng đổi trả phải còn nguyên tem mạc , không có mùi lạ, chưa có dấu hiệu đã qua sử dụng.', 49.99, 1, 3 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product11_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product11_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product11_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 7, N'Black', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 8, N'Black', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 9, N'Black', 10),
	((SELECT IDENT_CURRENT('Product')), 10, N'Black', 15)
	GO









INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Jacket
VALUES 
(N'Áo khoác dù 2 lớp nam mềm thoải mái bigsize khoá kéo chống nước đủ màu - 80-130kg',
N'ĐẶC ĐIỂM NỔI BẬT: Áo khoác gió nam 2 lớp chống nước, chất gió tráng bạc
- Áo khoác gió nam 2 lớp  nhẹ, mềm và thoải mái
- Mặc đi nắng đi mưa đều phù hợp nhờ lớp ngoài cản gió, chống bám bụi, chống thấm nước giặt nhanh khô lại không bám bẩn.
-Thiếu kế khoá kéo chống nước 
- Áo khoác gió nam chống mưa có 3 màu trẻ trung: Rêu - Đen- Xanh than là những tone màu cực dễ phối đồ.', 99.99, 4, 4 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product12_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product12_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product12_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, N'Black', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, N'Moss Green', 10),
	((SELECT IDENT_CURRENT('Product')), 6, N'Moss Green', 15)
	GO
INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Jacket
VALUES 
(N'Áo khoác dây kéo vải nỉ thời trang nam bigsize 90 - 130kg - IN CHỮ',
N'** Chuyên sỉ số lượng lớn áo khoác nam, khách có nhu cầu mua lẻ vui lòng ib shop tư vấn sz nhé !
*** Size :  
Sz L 90 - 100kg 
Sz XL 100 -110kg
Sz 2XL 110 -120kg
Sz 3XL 120 -130kg
NỘI DUNG SẢN PHẨM:', 79.99, 4, 4 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product13_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product13_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product13_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, N'White', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, N'Gray', 10),
	((SELECT IDENT_CURRENT('Product')), 6, N'Turquoise', 15)
	GO
INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Jacket
VALUES 
(N'Áo khoác nam thời trang bigsize vải nỉ màu tối 90 - 130kg',
N'- Đối với sản phẩm quần áo mới mua về, nên giặt tay lần đâu tiên để tránh phai màu sang quần áo khác
- Khi giặt nên lộn mặt trái ra để đảm bảo độ bền 
- Sản phẩm phù hợp cho giặt máy/giặt tay
Anh em nên inbox chiều cao cân nặng để tư vấn size cho chính xác
Được hỗ trợ đổi trả nếu không ưng hoặc mặc không vừa,đổi trả miễn phí nếu lỗi do nhà bán hàng ', 109.99, 4, 4 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product14_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product14_2.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, N'Black', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, N'Black', 10),
	((SELECT IDENT_CURRENT('Product')), 6, N'Black', 15)
	GO











INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Hoodie 1
VALUES 
(N'Áo khoác hoodie nam bigsize in hình sz',
N'Vải : nỉ
Tem tag : do mỗi đợt hàng về có tem gì shop gắn tem đó, đợt hàng đầu gắn tem z a  r a nên lấy đi chup hình là tem z a r a , đợt sau này shop hết tem z a r a nên shop gắn tem NY, shop ghi chú giải thích ở đây để khách hàng khỏi thắc mắc ạ !
- Sản phẩm chính là mẫu thiết kế mới nhất đơn giản 
- Đem lại sự thoải mái tiện lợi nhất cho người mặc
Hướng dẫn sử dụng:
- Đối với sản phẩm quần áo mới mua về, nên giặt tay lần đâu tiên để tránh phai màu sang quần áo khác
- Khi giặt nên lộn mặt trái ra để đảm bảo độ bền 
- Sản phẩm phù hợp cho giặt máy/giặt tay', 59.99, 4, 5 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product15_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product15_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product15_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, N'Black', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, N'Black', 10),
	((SELECT IDENT_CURRENT('Product')), 6, N'Black', 15)
	GO
INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Hoodie 2
VALUES 
(N'Áo hoodie nam form bigsize 70kg - 130kg đen in chữ Cham pi',
N'Chất : nỉ dày dặn, mặc đông ấm áp, thời trang', 79.99, 4, 5 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product16_1.jpg') -- image_name
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, N'Black', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, N'Black', 10),
	((SELECT IDENT_CURRENT('Product')), 6, N'Black', 15)
	GO
INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Hoodie 3
VALUES 
(N'BIGSIZE - Áo khoác hoodie BB - Boiz nam size lớn, bigsize 90kg - 130kg - ess',
N'Hướng dẫn sử dụng sản phẩm Áo Khoắc thu đông 
- Lần đầu đem về chỉ xả nước lạnh rồi phơi khô để đảm bảo chất in trên áo không bong tróc nhé
- Chỉ giặt sau 3 ngày nhận áo
- Nhớ lộn trái áo khi giặt và không giặt ngâm lâu quá 1 tiếng trong nước
- Không sử dụng thuốc tẩy
- Khi phơi lộn trái áo', 99.99, 4, 5 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product17_1.jpg') -- image_name
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, N'White', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, N'White', 10),
	((SELECT IDENT_CURRENT('Product')), 6, N'White', 15)
	GO








INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Tank top
VALUES 
(N'Áo thun nam ba lỗ sát nách form bigsize 90kg đến 140kg - xám in chữ AC & DC, Magictimes',
N'Chất : thun lạnh 
Thoáng mát
Thích hợp mặc nhà, mặc chơi thể thao, tập gym, ...', 25, 5, 6 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product18_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product18_2.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, N'Moss Green', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, N'Moss Green', 10),
	((SELECT IDENT_CURRENT('Product')), 6, N'Moss Green', 15)
	GO
INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Tank top
VALUES 
(N'Áo thun ba lỗ form bigsize men 80-130kg',
N'Chất : cotton 100% 4 chiều co giãn, thấm hút mồ hôi.', 25, 5, 6 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product19_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product19_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product19_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, 'White', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, 'White', 10),
	((SELECT IDENT_CURRENT('Product')), 5, 'Black', 15),
	((SELECT IDENT_CURRENT('Product')), 6, 'Black', 15)
	GO
INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Tank top
VALUES 
(N'Áo thun ba lỗ nam thể thao bigsize 6 màu áo ba lỗ 70 - 130kg',
N'Xuất xứ : Việt Nam
Anh em nên inbox chiều cao cân nặng để tư vấn size cho chính xác
Được hỗ trợ đổi trả nếu không ưng hoặc mặc không vừa,đổi trả miễn phí nếu lỗi do nhà bán hàng', 30, 5, 6 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product20_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product20_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product20_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, 'White', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, 'Dark Blue', 10),
	((SELECT IDENT_CURRENT('Product')), 6, 'Turquoise', 15)
	GO



INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Underware
VALUES 
(N'Quần lót boxer nam độ co dãn đàn hồi cực tốt bigsize quần lót nam thun cotton 4 chiều đủ màu - 80-140kg',
N'* Quần lót Nam rất được khách hàng ưa chuộng vì đây là mẫu mới xuất hiện tại Việt Nam, khi vừa xuất hiện nó đã làm mưa làm gió vì chất lượng mang tới đáp ứng yêu cầu khách hàng.
Thông tin: Quần lót nam thun cotton 4 chiều.
* Độ co dãn, đàn hồi cực tốt
* Kháng khuẩn, khử mùi, thấm hút mồ hôi và đặc biệt nhanh khô khi mặc chơi thể thao và vận động nhiều
* Không màu nhuộm, ko chất gây hại
* Không sổ lông, không bai nhão, mềm mịn
* Size cho người từ 80-140kg 
 * Màu sắc: 3 màu Xám-Đen-Trắng', 10, 5, 7 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product21_1.jpg'), -- image_name
	((SELECT IDENT_CURRENT('Product')), N'product21_2.jpg'),
	((SELECT IDENT_CURRENT('Product')), N'product21_3.jpg')
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, 'White', 5), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, 'Black', 10),
	((SELECT IDENT_CURRENT('Product')), 6, 'Gray', 15)
	GO

INSERT INTO Product (product_name, [description], price, brand_id, category_id) -- Underware
VALUES 
(N'Quần lót boxer nam ',
N'* Quần lót Nam rất được khách hàng ưa chuộng vì đây là mẫu mới xuất hiện tại Việt Nam, khi vừa xuất hiện nó đã làm mưa làm gió vì chất lượng mang tới đáp ứng yêu cầu khách hàng.
Thông tin: Quần lót nam thun cotton 4 chiều.
* Độ co dãn, đàn hồi cực tốt
* Kháng khuẩn, khử mùi, thấm hút mồ hôi và đặc biệt nhanh khô khi mặc chơi thể thao và vận động nhiều
* Không màu nhuộm, ko chất gây hại
* Không sổ lông, không bai nhão, mềm mịn
* Size cho người từ 80-140kg 
 * Màu sắc: 3 màu Xám-Đen-Trắng', 10, 5, 7 ) -- name, desciption, pice, brand_id, cate_id
GO
	INSERT INTO ProductImage VALUES 
	((SELECT IDENT_CURRENT('Product')), N'product21_2.jpg') -- image_name
	GO
	INSERT INTO ProductVariant VALUES
	((SELECT IDENT_CURRENT('Product')), 4, 'White', 0), -- size_id, color, quantity
	((SELECT IDENT_CURRENT('Product')), 5, 'Black', 0),
	((SELECT IDENT_CURRENT('Product')), 6, 'Gray', 0)
	GO

