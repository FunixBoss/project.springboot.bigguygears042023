USE BigGuyGear 
GO

INSERT INTO Roles(name) 
VALUES
('admin'),
('member')
GO

INSERT INTO Users (username, password, full_name, email, phone_number, address, role_id, created_at, updated_at)
VALUES
('admin1', '123456789', 'ADMIN', 'admin@gmail.com', '123-456-7890', '123 Main St', 1, GETDATE(), GETDATE()),
('admin2', '123456789', 'ADMIN', 'manhphu@gmail.com', '123-456-7890', '123 Main St', 1, GETDATE(), GETDATE()),
('admin3', '123456789', 'ADMIN', 'nguyenphu@gmail.com', '123-456-7890', '123 Main St', 1, GETDATE(), GETDATE()),
('admin4', '123456789', 'ADMIN', 'phunguyen@gmail.com', '123-456-7890', '123 Main St', 1, GETDATE(), GETDATE()),
('admin5', '123456789', 'ADMIN', 'nguyenmanhphu@gmail.com', '123-456-7890', '123 Main St', 1, GETDATE(), GETDATE()),
('user1', '123456789', 'Jane Smith', 'jane.smith@example.com', '234-567-8901', '456 Oak Ave', 2, GETDATE(), GETDATE()),
('user2', '123456789', 'Pen Theion', 'penten.smith@example.com', '234-567-8901', '456 Oak Ave', 2, GETDATE(), GETDATE()),
('user3', '123456789', 'Bob Johnson', 'bob.johnson@example.com', '345-678-9012', '789 Pine St', 2, GETDATE(), GETDATE()),
('user4', 'password4', 'Alice Lee', 'alice.lee@example.com', '456-789-0123', '987 Elm St', 2, GETDATE(), GETDATE()),
('user5', 'password5', 'David Brown', 'david.brown@example.com', '567-890-1234', '654 Cedar Ave', 2, GETDATE(), GETDATE())
GO

INSERT INTO Categories (cate_name,description,created_at,updated_at)
VALUES 
('Kaki', 'New Clothes here', GETDATE(), GETDATE()),
('Trouser', 'New Clothes here', GETDATE(), GETDATE()),
('Jean', 'New Clothes here', GETDATE(), GETDATE()),
('Shirts', 'New Clothes here', GETDATE(), GETDATE()),
('T-shirt', 'New Clothes here', GETDATE(), GETDATE())
GO


INSERT INTO Products (name,category_id,description,price,created_at,updated_at)
VALUES
('SHORT JEANS FAPAS', 1, 'Its inconvenient in the rainy season to wear long pants and get wet, so these shorts are a pretty appropriate choice. Basic jeans never go out of fashion when applied to shorts. With a slim-fit design with a youthful tone, this is definitely an item that most men own because of the comfortable and dynamic nature it always brings.', 10, GETDATE(), GETDATE()),
('BIGSIZE - Men kaki pants big size 75 - 130kg in vertical form', 1, 'Specializing in bulk wholesale khaki pants, customers who want to buy retail, please inbox the shop for size advice', 12.5, GETDATE(), GETDATE()),
('BIGSIZE - Men black kaki jeans jogger pants big size 80 - 130kg - Code KK36', 1, 'Its inconvenient in the rainy season to wear long pants and get wet, so these shorts are a pretty appropriate choice. Basic jeans never go out of fashion when applied to shorts. With a slim-fit design with a youthful tone, this is definitely an item that most men own because of the comfortable and dynamic nature it always brings.', 13.3, GETDATE(), GETDATE()),
('BIGSIZE - kaki shorts with elastic waist in all colors', 1, 'We do not accept orders via notes, so please check the color, size, address with standard phone number before placing an order.', 10.8, GETDATE(), GETDATE()),
('Fashionable kaki shorts navy blue', 1, 'Men khaki pants with many youthful colors are being chosen by many men to show their modern style.', 10, GETDATE(), GETDATE()),
('Light gray trousers form-fit with elastic belt', 2, 'The fashion set with elegant colors and high-quality materials is a perfect suggestion for customers who pursue luxury and sophistication.', 16.2, GETDATE(), GETDATE()),
('Quần tây thun nam forrm bigsize 85kg - 130kg', 2, 'Light stretch fabric makes it comfortable in all activities, soft fabric, no wrinkles, no color fading, little ruffles, little dust, keep shape.', 10.5, GETDATE(), GETDATE()),
('Slim fit trousers with elastic belt for big size 75kg to 130kg', 2, 'The fashion set with elegant colors and high-quality materials is a perfect suggestion for customers who pursue luxury and sophistication.', 16.1, GETDATE(), GETDATE()),
('Slim fit trousers with elastic belt standing tube form, rain cloth', 2, 'The fashion set with elegant colors and high-quality materials is a perfect suggestion for customers who pursue luxury and sophistication.', 12.4, GETDATE(), GETDATE()),
('lim fit trousers', 2, 'The fashion set with elegant colors and high-quality materials is a perfect suggestion for customers who pursue luxury and sophistication.', 10.5, GETDATE(), GETDATE()),

('Large size jeans, big size 80kg - 130kg', 3, 'Its inconvenient in the rainy season to wear long pants and get wet, so these shorts are a pretty appropriate choice. Basic jeans never go out of fashion when applied to shorts. With a slim-fit design with a youthful tone, this is definitely an item that most men own because of the comfortable and dynamic nature it always brings.', 11.5, GETDATE(), GETDATE()),
('Black jean shorts big size 80 - 130kg', 3, 'Its inconvenient in the rainy season to wear long pants and get wet, so these shorts are a pretty appropriate choice. Basic jeans never go out of fashion when applied to shorts. With a slim-fit design with a youthful tone, this is definitely an item that most men own because of the comfortable and dynamic nature it always brings.', 11.7, GETDATE(), GETDATE()),
('Black wash jeans with yin and yang big size 80 - 130kg', 3, 'High-end designer goods for stylish and elegant guys', 17.3, GETDATE(), GETDATE()),
('Long jeans big size burnt gray, torn gray sz 80 - 130kg', 3, 'High-end designer goods for stylish and elegant guys', 12, GETDATE(), GETDATE()),
('Jeans big size 80 - 130kg - black salt and pepper, black gray silver', 3, 'High-end designer goods for stylish and elegant guys', 10.5, GETDATE(), GETDATE()),

('Short-sleeved shirt with big size print sz 70 - 130kg', 4, 'Fashion style with youthful design and personality, giving men confidence to show off their vibrant personality.', 10.5, GETDATE(), GETDATE()),
('Short-sleeved shirt 50 - 100kg', 4, 'Fashion style with youthful design and personality, giving men confidence to show off their vibrant personality.', 11.8, GETDATE(), GETDATE()),
('Short-sleeved shirt', 4, 'Fashion style with youthful design and personality, giving men confidence to show off their vibrant personality.', 9.8, GETDATE(), GETDATE()),
('Short-sleeved shirt black salt and pepper', 4, 'Fashion style with youthful design and personality, giving men confidence to show off their vibrant personality.', 12.2, GETDATE(), GETDATE()),
('Short-sleeved shirt black gray silver', 4, 'Fashion style with youthful design and personality, giving men confidence to show off their vibrant personality.', 11.5, GETDATE(), GETDATE()),

('Short-sleeved T-shirt uniex bear', 5, 'Fashion style with youthful design and personality', 10.5, GETDATE(), GETDATE()),
('Short-sleeved T-shirt uniex panda', 5, 'Fashion style with youthful design and personality', 11.8, GETDATE(), GETDATE()),
('Short-sleeved T-shirt uniex dear', 5, 'Fashion style with youthful design and personality', 9.8, GETDATE(), GETDATE()),
('Short-sleeved T-shirt uniex cat', 5, 'Fashion style with youthful design and personality', 12.2, GETDATE(), GETDATE()),
('Short-sleeved T-shirt uniex dog', 5, 'Fashion style with youthful design and personality', 11.5, GETDATE(), GETDATE())
GO

INSERT INTO Product_Size(size_name,product_id,quantity,created_at,updated_at)
VALUES
('S', 1, 100, GETDATE(), GETDATE()),('M', 1, 52, GETDATE(), GETDATE()),('L', 1, 79, GETDATE(), GETDATE()),('XL', 1, 91, GETDATE(), GETDATE()),('S', 2, 200, GETDATE(), GETDATE()),('M', 2, 54, GETDATE(), GETDATE()),('L', 2, 78, GETDATE(), GETDATE()),('S', 3, 231, GETDATE(), GETDATE()),('M', 3, 124, GETDATE(), GETDATE()),('L', 3, 179, GETDATE(), GETDATE()),('S', 4, 10, GETDATE(), GETDATE()),('M', 4, 51, GETDATE(), GETDATE()),('L', 4, 72, GETDATE(), GETDATE()),('XL', 4, 95, GETDATE(), GETDATE()),('S', 5, 123, GETDATE(), GETDATE()),('M', 5, 53, GETDATE(), GETDATE()),('L', 5, 74, GETDATE(), GETDATE()),('XL', 5, 92, GETDATE(), GETDATE()),('S', 6, 123, GETDATE(), GETDATE()),('L', 6, 74, GETDATE(), GETDATE()),('XL', 6, 92, GETDATE(), GETDATE()),('S', 7, 123, GETDATE(), GETDATE()),('L', 7, 74, GETDATE(), GETDATE()),('XL', 7, 92, GETDATE(), GETDATE()),('S', 8, 123, GETDATE(), GETDATE()),('M', 8, 53, GETDATE(), GETDATE()),('S', 5, 123, GETDATE(), GETDATE()),('M', 5, 53, GETDATE(), GETDATE()),('L', 5, 74, GETDATE(), GETDATE()),('S', 6, 123, GETDATE(), GETDATE()),('M', 6, 53, GETDATE(), GETDATE()),('L', 6, 74, GETDATE(), GETDATE()),('XL', 6, 92, GETDATE(), GETDATE()),('S', 7, 123, GETDATE(), GETDATE()),('M', 7, 53, GETDATE(), GETDATE()),('L', 7, 74, GETDATE(), GETDATE()),('XL', 7, 92, GETDATE(), GETDATE()),('S', 8, 123, GETDATE(), GETDATE()),('M', 8, 53, GETDATE(), GETDATE()),('L', 8, 74, GETDATE(), GETDATE()),('S', 9, 123, GETDATE(), GETDATE()),('M', 9, 53, GETDATE(), GETDATE()),('L', 9, 74, GETDATE(), GETDATE()),('S', 10, 123, GETDATE(), GETDATE()),('M', 10, 53, GETDATE(), GETDATE()),('L', 10, 74, GETDATE(), GETDATE()),('S', 11, 123, GETDATE(), GETDATE()),('M', 11, 53, GETDATE(), GETDATE()),('L', 11, 74, GETDATE(), GETDATE()),('S', 12, 123, GETDATE(), GETDATE()),('M', 12, 53, GETDATE(), GETDATE()),('L', 12, 74, GETDATE(), GETDATE()),('S', 13, 123, GETDATE(), GETDATE()),('M', 13, 53, GETDATE(), GETDATE()),('L', 13, 74, GETDATE(), GETDATE()),('S', 14, 123, GETDATE(), GETDATE()),('M', 14, 53, GETDATE(), GETDATE()),('L', 14, 74, GETDATE(), GETDATE()),('S', 15, 123, GETDATE(), GETDATE()),('M', 15, 53, GETDATE(), GETDATE()),('L', 15, 74, GETDATE(), GETDATE()),('S', 16, 123, GETDATE(), GETDATE()),('M', 16, 53, GETDATE(), GETDATE()),('L', 16, 74, GETDATE(), GETDATE()),('S', 17, 123, GETDATE(), GETDATE()),('M', 17, 53, GETDATE(), GETDATE()),('L', 17, 74, GETDATE(), GETDATE()),('S', 18, 123, GETDATE(), GETDATE()),('M', 18, 53, GETDATE(), GETDATE()),('L', 18, 74, GETDATE(), GETDATE()),('S', 19, 123, GETDATE(), GETDATE()),('M', 19, 53, GETDATE(), GETDATE()),('L', 19, 74, GETDATE(), GETDATE()),('S', 20, 123, GETDATE(), GETDATE()),('M', 20, 53, GETDATE(), GETDATE()),('L', 20, 74, GETDATE(), GETDATE()),('S', 21, 123, GETDATE(), GETDATE()),('M', 21, 53, GETDATE(), GETDATE()),('L', 21, 74, GETDATE(), GETDATE()),('S', 22, 123, GETDATE(), GETDATE()),('M', 22, 53, GETDATE(), GETDATE()),('L', 22, 74, GETDATE(), GETDATE()),('S', 23, 123, GETDATE(), GETDATE()),('M', 23, 53, GETDATE(), GETDATE()),('L', 23, 74, GETDATE(), GETDATE()),('S', 24, 123, GETDATE(), GETDATE()),('M', 24, 53, GETDATE(), GETDATE()),('L', 24, 74, GETDATE(), GETDATE()),('S', 25, 123, GETDATE(), GETDATE()),('M', 25, 53, GETDATE(), GETDATE()),('L', 25, 74, GETDATE(), GETDATE())
GO

INSERT INTO ProductImages (product_id,image_url,created_at,updated_at)
VALUES 
(1,'desktop/img1.png',GETDATE(),GETDATE()),
(2,'desktop/img2.png',GETDATE(),GETDATE()),
(3,'desktop/img3.png',GETDATE(),GETDATE()),
(4,'desktop/img4.png',GETDATE(),GETDATE()),
(5,'desktop/img5.png',GETDATE(),GETDATE()),
(6,'desktop/img6.png',GETDATE(),GETDATE()),
(7,'desktop/img7.png',GETDATE(),GETDATE()),
(8,'desktop/img8.png',GETDATE(),GETDATE()),
(9,'desktop/img9.png',GETDATE(),GETDATE()),
(10,'desktop/img10.png',GETDATE(),GETDATE()),
(11,'desktop/img11.png',GETDATE(),GETDATE()),
(12,'desktop/img12.png',GETDATE(),GETDATE()),
(13,'desktop/img13.png',GETDATE(),GETDATE()),
(14,'desktop/img14.png',GETDATE(),GETDATE()),
(15,'desktop/img15.png',GETDATE(),GETDATE()),
(16,'desktop/img16.png',GETDATE(),GETDATE()),
(17,'desktop/img17.png',GETDATE(),GETDATE()),
(18,'desktop/img18.png',GETDATE(),GETDATE()),
(19,'desktop/img19.png',GETDATE(),GETDATE()),
(20,'desktop/img20.png',GETDATE(),GETDATE()),
(21,'desktop/img21.png',GETDATE(),GETDATE()),
(22,'desktop/img22.png',GETDATE(),GETDATE()),
(23,'desktop/img23.png',GETDATE(),GETDATE()),
(24,'desktop/img24.png',GETDATE(),GETDATE()),
(25,'desktop/img25.png',GETDATE(),GETDATE())
GO
