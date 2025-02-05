USE [master]
GO
/****** Object:  Database [ReealoDB2019]    Script Date: 21/10/2024 23:09:58 ******/
CREATE DATABASE [ReealoDB2019]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ReealoDB2019', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ReealoDB2019.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ReealoDB2019_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ReealoDB2019_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ReealoDB2019] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ReealoDB2019].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ReealoDB2019] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ReealoDB2019] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ReealoDB2019] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ReealoDB2019] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ReealoDB2019] SET ARITHABORT OFF 
GO
ALTER DATABASE [ReealoDB2019] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ReealoDB2019] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ReealoDB2019] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ReealoDB2019] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ReealoDB2019] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ReealoDB2019] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ReealoDB2019] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ReealoDB2019] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ReealoDB2019] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ReealoDB2019] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ReealoDB2019] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ReealoDB2019] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ReealoDB2019] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ReealoDB2019] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ReealoDB2019] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ReealoDB2019] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ReealoDB2019] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ReealoDB2019] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ReealoDB2019] SET  MULTI_USER 
GO
ALTER DATABASE [ReealoDB2019] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ReealoDB2019] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ReealoDB2019] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ReealoDB2019] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ReealoDB2019] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ReealoDB2019] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ReealoDB2019] SET QUERY_STORE = OFF
GO
USE [ReealoDB2019]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 21/10/2024 23:09:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[codProd] [char](4) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
	[detalle] [varchar](300) NOT NULL,
	[stock] [int] NOT NULL,
	[precio] [numeric](8, 2) NOT NULL,
	[imagen] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P001', N'Smartphone', N'Smartphone de última generación con pantalla OLED de 6.5 pulgadas', 50, CAST(699.99 AS Numeric(8, 2)), N'smartphone.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P002', N'Laptop', N'Laptop con procesador Intel i7 y 16GB de RAM', 30, CAST(1199.99 AS Numeric(8, 2)), N'laptop.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P003', N'Tablet', N'Tablet con pantalla de 10 pulgadas y 64GB de almacenamiento', 40, CAST(299.99 AS Numeric(8, 2)), N'tablet.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P004', N'Auriculares', N'Auriculares inalámbricos con cancelación de ruido', 100, CAST(149.99 AS Numeric(8, 2)), N'auriculares.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P005', N'Reloj Inteligente', N'Reloj inteligente con GPS y monitor de actividad física', 70, CAST(199.99 AS Numeric(8, 2)), N'reloj.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P006', N'Teclado Mecánico', N'Teclado mecánico retroiluminado con teclas personalizables', 25, CAST(89.99 AS Numeric(8, 2)), N'teclado.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P007', N'Monitor 4K', N'Monitor 4K UHD de 27 pulgadas con tecnología IPS', 15, CAST(399.99 AS Numeric(8, 2)), N'monitor.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P008', N'Cámara DSLR', N'Cámara DSLR con lente de 18-55mm y grabación en 4K', 10, CAST(799.99 AS Numeric(8, 2)), N'camara.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P009', N'Disco Duro Externo', N'Disco duro externo de 2TB con conexión USB 3.0', 120, CAST(89.99 AS Numeric(8, 2)), N'discoduro.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P010', N'Impresora Multifuncional', N'Impresora multifuncional con escáner y conectividad Wi-Fi', 45, CAST(129.99 AS Numeric(8, 2)), N'impresora.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P011', N'Mouse Inalámbrico', N'Mouse inalámbrico ergonómico con batería recargable', 85, CAST(29.99 AS Numeric(8, 2)), N'mouse.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P012', N'Altavoz Bluetooth', N'Altavoz portátil Bluetooth con sonido estéreo', 60, CAST(59.99 AS Numeric(8, 2)), N'altavoz.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P013', N'Cargador Rápido', N'Cargador rápido USB-C con 65W de potencia', 200, CAST(25.99 AS Numeric(8, 2)), N'cargador.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P014', N'SSD Interno', N'SSD interno de 1TB con interfaz NVMe', 35, CAST(139.99 AS Numeric(8, 2)), N'ssd.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P015', N'Silla Gamer', N'Silla ergonómica para gamers con soporte lumbar ajustable', 20, CAST(249.99 AS Numeric(8, 2)), N'silla.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P016', N'Microondas', N'Microondas digital con 700W de potencia y 10 niveles de cocción', 10, CAST(79.99 AS Numeric(8, 2)), N'microondas.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P017', N'Cafetera', N'Cafetera de cápsulas con sistema de presión de 15 bares', 50, CAST(99.99 AS Numeric(8, 2)), N'cafetera.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P018', N'TV LED 50"', N'Televisor LED de 50 pulgadas con resolución Full HD', 8, CAST(459.99 AS Numeric(8, 2)), N'tv.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P020', N'Aspiradora Robótica', N'Aspiradora robótica con sistema de navegación inteligente', 18, CAST(299.99 AS Numeric(8, 2)), N'aspiradora.jpg')
INSERT [dbo].[productos] ([codProd], [descripcion], [detalle], [stock], [precio], [imagen]) VALUES (N'P021', N'Producto prueba insert', N'Este es un detalle', 100, CAST(150.50 AS Numeric(8, 2)), N'imageP021.jpg')
GO
USE [master]
GO
ALTER DATABASE [ReealoDB2019] SET  READ_WRITE 
GO
