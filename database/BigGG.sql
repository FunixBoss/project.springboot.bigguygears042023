USE master
GO

DROP DATABASE IF EXISTS BigGuyGear
CREATE DATABASE BigGuyGear
GO

USE BigGuyGear
GO

-- ACCOUNT RELATED -- 
DROP TABLE IF EXISTS [Role]
CREATE TABLE [Role] (
  role_id INT PRIMARY KEY IDENTITY,
  [name] VARCHAR(50) NOT NULL UNIQUE,
)
GO

DROP TABLE IF EXISTS Account
CREATE TABLE Account (
  account_id INT PRIMARY KEY IDENTITY,
  username VARCHAR(255) NOT NULL UNIQUE,
  [password] VARCHAR(255) NOT NULL,
  full_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  phone_number VARCHAR(20) NOT NULL,
  image_url VARCHAR(255),
  [address] VARCHAR(255) NOT NULL,
  role_id INT NOT NULL,
  created_at DATETIME NOT NULL DEFAULT GETDATE(),
  updated_at DATETIME NOT NULL DEFAULT GETDATE(),
  FOREIGN KEY (role_id) REFERENCES [Role](role_id),

)

-- PRODUCT RELATED -- 
DROP TABLE IF EXISTS Category
CREATE TABLE Category (
  category_id INT PRIMARY KEY IDENTITY,
  category_name NVARCHAR(100) NOT NULL,
  created_at DATETIME NOT NULL DEFAULT GETDATE(),
  updated_at DATETIME NOT NULL DEFAULT GETDATE(),
)
GO

DROP TABLE IF EXISTS Brand
CREATE TABLE Brand (
  brand_id INT PRIMARY KEY IDENTITY,
  brand_name NVARCHAR(100) NOT NULL
)
GO

DROP TABLE IF EXISTS Size
CREATE TABLE Size (
  size_id INT PRIMARY KEY IDENTITY,
  size_name VARCHAR(50) NOT NULL,
  size_type VARCHAR(50) NOT NULL,
)
GO

DROP TABLE IF EXISTS Product
CREATE TABLE Product (
  product_id INT PRIMARY KEY IDENTITY,
  product_name NVARCHAR(200) NOT NULL,
  description TEXT,
  price DECIMAL(18, 2) NOT NULL,
  brand_id INT NOT NULL,
  category_id INT NOT NULL,
  created_at DATETIME NOT NULL DEFAULT GETDATE(),
  updated_at DATETIME NOT NULL DEFAULT GETDATE()
  FOREIGN KEY (brand_id) REFERENCES Brand(brand_id),
  FOREIGN KEY (category_id) REFERENCES Category(category_id)
)
GO

DROP TABLE IF EXISTS Product_Image
CREATE TABLE Product_Image (
  product_image_id INT PRIMARY KEY IDENTITY,
  product_id INT NOT NULL,
  image_path VARCHAR(200) NOT NULL,
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
)
GO

DROP TABLE IF EXISTS Product_Size
CREATE TABLE Product_Size (
  product_id INT NOT NULL,
  size_id INT NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY (product_id, size_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id),
  FOREIGN KEY (size_id) REFERENCES Size(size_id)
)
GO

DROP TABLE IF EXISTS Review
CREATE TABLE Review (
	review_id INT PRIMARY KEY IDENTITY,
	account_id INT NOT NULL,
	product_id INT NOT NULL,
	content TEXT,
	rating TINYINT NOT NULL,
	created_at DATETIME NOT NULL DEFAULT GETDATE(),
	updated_at DATETIME NOT NULL DEFAULT GETDATE(),
	FOREIGN KEY (account_id) REFERENCES Account(account_id),
	FOREIGN KEY (product_id) REFERENCES Product(product_id),
)
GO



-- CART RELATED -- 
DROP TABLE IF EXISTS Cart
CREATE TABLE Cart (
	cart_id INT PRIMARY KEY IDENTITY,
	account_id INT NOT NULL,
	created_at DATETIME NOT NULL DEFAULT GETDATE(),
	updated_at DATETIME NOT NULL DEFAULT GETDATE(),
	FOREIGN KEY (account_id) REFERENCES Account(account_id)
)
GO

DROP TABLE IF EXISTS Cart_Detail
CREATE TABLE Cart_Detail (
	cart_id INT PRIMARY KEY IDENTITY,
	product_id INT NOT NULL,
	quantity INT NOT NULL,
	price DECIMAL(18,2) NOT NULL,
	created_at DATETIME NOT NULL DEFAULT GETDATE(),
	updated_at DATETIME NOT NULL DEFAULT GETDATE(),
	FOREIGN KEY (cart_id) REFERENCES Cart(cart_id),
	FOREIGN KEY (product_id) REFERENCES Product(product_id)
)
GO



-- ORDER RELATED -- 
DROP TABLE IF EXISTS Coupon_Type
CREATE TABLE Coupon_Type(
	coupon_type_id INT PRIMARY KEY IDENTITY,
	coupon_type_name NVARCHAR(50) NOT NULL
)
GO

DROP TABLE IF EXISTS Coupon
CREATE TABLE Coupon (
	coupon_id INT PRIMARY KEY IDENTITY,
	coupon_name VARCHAR(200) NOT NULL,
	discount INT NOT NULL,
	coupon_type_id INT NOT NULL,
	[description] NVARCHAR(200),
	created_at DATETIME NOT NULL DEFAULT GETDATE(),
	expired_at DATETIME NOT NULL,
	FOREIGN KEY (coupon_type_id) REFERENCES Coupon_Type(coupon_type_id)
)
GO

DROP TABLE IF EXISTS Account_Coupon
CREATE TABLE Account_Coupon(
	coupon_id INT,
	account_id INT,
	is_used BIT NOT NULL, 
	PRIMARY KEY (coupon_id, account_id),
	FOREIGN KEY (coupon_id) REFERENCES Coupon(coupon_id),
	FOREIGN KEY (account_id) REFERENCES Account(account_id)
)
GO

DROP TABLE IF EXISTS Payment_Method
CREATE TABLE Payment_Method (
	payment_method_id INT PRIMARY KEY IDENTITY,
	payment_method_name VARCHAR(100) NOT NULL,
)
GO

DROP TABLE IF EXISTS [Order_Status]
CREATE TABLE [Order_Status] (
  order_status_id INT PRIMARY KEY IDENTITY,
  status_name NVARCHAR(50) NOT NULL,
  status_description NVARCHAR(100) NOT NULL,
)
GO

DROP TABLE IF EXISTS [Order]
CREATE TABLE [Order] (
	order_id INT PRIMARY KEY IDENTITY,
	account_id INT NOT NULL,
	coupon_id INT,
	total_price DECIMAL(18,2) NOT NULL,
	order_status_id INT NOT NULL,
	created_at DATETIME NOT NULL DEFAULT GETDATE(),
	updated_at DATETIME NOT NULL DEFAULT GETDATE(),
	FOREIGN KEY (account_id) REFERENCES Account(account_id),
	FOREIGN KEY (order_status_id) REFERENCES [Order_Status](order_status_id),
	FOREIGN KEY (coupon_id) REFERENCES Coupon(coupon_id)
)
GO

DROP TABLE IF EXISTS Order_Detail
CREATE TABLE Order_Detail (
	order_detail_id INT PRIMARY KEY IDENTITY,
	order_id INT NOT NULL,
	product_id INT NOT NULL,
	address_id INT NOT NULL,
	quantity INT NOT NULL,
	price DECIMAL(18,2) NOT NULL,
	created_at DATETIME NOT NULL DEFAULT GETDATE(),
	updated_at DATETIME NOT NULL DEFAULT GETDATE(),
	FOREIGN KEY (order_id) REFERENCES [Order](order_id),
	FOREIGN KEY (product_id) REFERENCES Product(product_id)
)
GO

-- INVOICE RELATED
DROP TABLE IF EXISTS [Invoice_Status]
CREATE TABLE [Invoice_Status] (
  invoice_status_id INT PRIMARY KEY IDENTITY,
  status_name NVARCHAR(50) NOT NULL,
  status_description NVARCHAR(100) NOT NULL,
)
GO

DROP TABLE IF EXISTS Invoice
CREATE TABLE Invoice (
  invoice_id INT PRIMARY KEY IDENTITY,
  payment_method_id INT NOT NULL,
  coupon_id INT,
  invoice_status_id INT NOT NULL,
  account_id INT NOT NULL,
  created_at DATETIME NOT NULL DEFAULT GETDATE(),
  FOREIGN KEY (payment_method_id) REFERENCES Payment_Method(payment_method_id),
  FOREIGN KEY (account_id) REFERENCES Account(account_id),
  FOREIGN KEY (invoice_status_id) REFERENCES [Invoice_Status](invoice_status_id)

)
GO


