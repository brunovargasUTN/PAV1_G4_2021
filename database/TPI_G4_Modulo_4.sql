USE [master]
GO
/****** Object:  Database [TPI_G4_Modulo_4]    Script Date: 11/10/2021 17:40:52 ******/
CREATE DATABASE [TPI_G4_Modulo_4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TPI_G4_Modulo_4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TPI_G4_Modulo_4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TPI_G4_Modulo_4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TPI_G4_Modulo_4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TPI_G4_Modulo_4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET ARITHABORT OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET  MULTI_USER 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET QUERY_STORE = OFF
GO
USE [TPI_G4_Modulo_4]
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 11/10/2021 17:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrios](
	[id_barrio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Barrios] PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 11/10/2021 17:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[cuit] [varchar](50) NULL,
	[razon_social] [varchar](100) NULL,
	[calle] [varchar](100) NULL,
	[numero] [varchar](50) NULL,
	[fecha_alta] [datetime] NULL,
	[id_barrio] [int] NULL,
	[id_contacto] [int] NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contactos]    Script Date: 11/10/2021 17:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contactos](
	[id_contacto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[telefono] [varchar](50) NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Contactos] PRIMARY KEY CLUSTERED 
(
	[id_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 11/10/2021 17:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[id_factura] [int] IDENTITY(1,1) NOT NULL,
	[nro_factura] [varchar](50) NULL,
	[id_cliente] [int] NOT NULL,
	[fecha] [datetime] NULL,
	[id_usuario_creador] [int] NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturasDetalle]    Script Date: 11/10/2021 17:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturasDetalle](
	[id_factura] [int] NOT NULL,
	[nro_orden] [int] NOT NULL,
	[id_producto] [int] NULL,
	[id_proyecto] [int] NULL,
	[precio] [decimal](18, 0) NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [pk_Facturas_detalle] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC,
	[nro_orden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 11/10/2021 17:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyectos]    Script Date: 11/10/2021 17:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyectos](
	[id_proyecto] [int] IDENTITY(1,1) NOT NULL,
	[id_producto] [int] NULL,
	[descripcion] [varchar](100) NULL,
	[version] [varchar](100) NULL,
	[alcance] [varchar](100) NULL,
	[id_responsable] [int] NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Proyectos] PRIMARY KEY CLUSTERED 
(
	[id_proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 11/10/2021 17:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[id_perfil] [int] NULL,
	[usuario] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[estado] [varchar](100) NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Barrios] ON 

INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (51, N'Swinice Warckie', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (52, N'Chahe', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (53, N'Raman', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (54, N'Donetsk', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (55, N'Nelidovo', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (56, N'Las Vegas', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (57, N'Dalai', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (58, N'Karangdalam', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (59, N'Mauren', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (60, N'Rogoznik', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (61, N'Yenagoa', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (62, N'Senglea', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (63, N'Lávara', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (64, N'Baffa', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (65, N'Catende', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (66, N'Oslo', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (67, N'Shuangxing', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (68, N'Teryayevo', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (69, N'Itapaci', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (70, N'Tanlin', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (71, N'El Porvenir', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (72, N'Bertoua', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (73, N'Dachuan', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (74, N'Kademangan', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (75, N'Nakhon Chai Si', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (76, N'Grand Rapids', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (77, N'Néa Filadélfeia', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (78, N'Casal do Conde', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (79, N'Machachi', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (80, N'Turba', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (81, N'Krasnyy Kholm', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (82, N'Pizhanka', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (83, N'Mazyr', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (84, N'Chaumont', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (85, N'Sasebo', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (86, N'Bungsuan', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (87, N'Selínia', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (88, N'Longwan', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (89, N'Tanushimarumachi-toyoki', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (90, N'Vysokogornyy', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (91, N'Klapagada', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (92, N'Chanthaburi', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (93, N'Fastovetskaya', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (94, N'Besançon', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (95, N'Ginowan', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (96, N'Hejiang', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (97, N'Volkhov', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (98, N'Montería', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (99, N'Getafe', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (100, N'Santa Monica', 0)
SET IDENTITY_INSERT [dbo].[Barrios] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto], [borrado]) VALUES (1, N'20-12345678-9', N'Compumundo', N'Hola', N'123', CAST(N'2021-10-11T00:00:00.000' AS DateTime), 100, 2, 0)
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Contactos] ON 

INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (2, N'Juan', N'Perez', N'jperez@gmail.com', N'425896', 0)
SET IDENTITY_INSERT [dbo].[Contactos] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (1, N'Avast', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (2, N'Office', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (3, N'SysFacturacion', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (4, N'Matsoft', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (5, N'Zontrax', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (6, N'Matsoft', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (7, N'Ventosanzap', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (8, N'Tres-Zap', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (9, N'Zoolab', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (10, N'Rank', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (11, N'Sonsing', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (12, N'Fintone', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (13, N'Keylex', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (14, N'Flowdesk', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (15, N'Bamity', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (16, N'Domainer', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (17, N'Latlux', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (18, N'Zaam-Dox', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (19, N'Fintone', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (20, N'Zathin', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (21, N'Span', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (22, N'Biodex', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (23, N'Cookley', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (24, N'Opela', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (25, N'Y-find', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (26, N'Stim', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (27, N'Gembucket', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (28, N'Tempsoft', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (29, N'Flexidy', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (30, N'Treeflex', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (31, N'Stronghold', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (32, N'Hatity', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (33, N'Temp', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (34, N'Alpha', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (35, N'Bytecard', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (36, N'Bitwolf', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (37, N'Stim', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (38, N'Andalax', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (39, N'Konklux', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (40, N'Fix San', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (41, N'Latlux', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (42, N'Asoka', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (43, N'Tres-Zap', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (44, N'Stim', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (45, N'Sonair', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (46, N'Stringtough', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (47, N'Transcof', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (48, N'Stronghold', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (49, N'Alpha', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (50, N'Voltsillam', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (51, N'Solarbreeze', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (52, N'Pannier', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (53, N'Veribet', 0)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[Proyectos] ON 

INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (1, 1, N'MObileApp 2', N'Beta', N'Enterprise', 1, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (3, 3, N'Mejora de Seguridad', N'1.3', N'Student', 2, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (4, 22, N'Struck by falling object on fishing boat, subs encntr', N'7.8', N'Energy', 10, 1)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (5, 38, N'Legal intervnt', N'7.2', N'Finance', 2, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (6, 14, N'Postprocedural', N'1.24', N'Finance', 15, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (7, 14, N'Trichomonal vulvovaginitis', N'3.7.8', N'n/a', 16, 1)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (8, 24, N'Displ seg fx shaft of r femr, 7thF', N'3.5.7', N'Finance', 2, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (9, 26, N'Poisoning by unsp psychotropic drug, self-harm, init', N'7.1', N'n/a', 7, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (10, 49, N'Exposure to infrared radiation, sequela', N'0.35', N'Basic Industries', 3, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (11, 51, N'Benign neoplasm of parotid gland', N'6.98', N'n/a', 10, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (12, 26, N'Poisn by emollients, demulcents and protect, slf-hrm, sqla', N'8.93', N'n/a', 12, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (13, 38, N'Displ artic fx head of r femr, subs for clos fx w routn heal', N'6.3.0', N'Finance', 3, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (14, 5, N'Puncture wound without foreign body, right foot', N'4.5', N'Health Care', 16, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (15, 8, N'Penetrating wound w/o foreign body of left eyeball, init', N'3.0.9', N'Technology', 2, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (16, 53, N'Burn of 2nd deg mul sites of right ankle and foot', N'4.8.6', N'Basic Industries', 6, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (17, 49, N'Unspecified ectropion of left lower eyelid', N'6.1.8', N'Consumer Services', 11, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (18, 31, N'Corros unsp degree of single r finger except thumb, init', N'0.1.6', N'Basic Industries', 11, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (19, 46, N'Unsp tear of unsp meniscus, current injury, unspecified knee', N'0.4.6', N'Health Care', 14, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (20, 24, N'Quadriplegia, C1-C4 complete', N'6.9.0', N'n/a', 14, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (21, 5, N'Burn 1st deg mult sites of right lower limb, ex ank/ft, subs', N'2.21', N'Health Care', 3, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (22, 24, N'Keratoconjunct sicca, not specified as Sjogren''s, bilateral', N'0.55', N'Health Care', 16, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (23, 39, N'Other specified pulmonary heart diseases', N'1.8', N'n/a', 7, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (24, 24, N'Injury of ulnar artery at wrist and hand level', N'3.5', N'Public Utilities', 17, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (25, 47, N'Corrosion of second degree of left elbow', N'3.21', N'Health Care', 4, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (26, 44, N'Postproc hemor of a circ sys org following a cardiac cath', N'3.7.2', N'Finance', 10, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (27, 11, N'Radiculopathy, lumbosacral region', N'0.2.4', N'Consumer Services', 13, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (28, 26, N'Other superficial bite of hip, right hip, subs encntr', N'0.31', N'n/a', 13, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (29, 23, N'Postproc hemorrhage of a dgstv sys org following a procedure', N'0.12', N'Health Care', 16, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (30, 51, N'Late congenital syphilitic meningitis', N'9.7.4', N'n/a', 19, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (31, 52, N'Unspecified physeal fracture of right calcaneus, 7thD', N'0.24', N'Consumer Services', 19, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (32, 12, N'Encntr screen for genetic and chromosomal anomalies', N'0.4.4', N'Finance', 18, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (33, 44, N'Topical agents', N'9.38', N'n/a', 2, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (34, 9, N'Hesitancy of micturition', N'8.4', N'n/a', 1, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (35, 9, N'Nondisp transverse fx shaft of r rad, 7thB', N'5.6', N'Transportation', 10, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (36, 44, N'Disorders of muscle in diseases classd elswhr, oth site', N'0.5.2', N'n/a', 7, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (37, 31, N'Contus/lac/hem crblm w LOC of 6 hours to 24 hours, init', N'3.7.1', N'Consumer Services', 1, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (38, 34, N'Explosn of mine place dur war op but expld after, civ, sqla', N'4.3.6', N'Energy', 5, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (39, 22, N'Laceration w foreign body of r idx fngr w/o damage to nail', N'0.7.4', N'n/a', 10, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (40, 17, N'Open bite of foot', N'0.8.7', N'Health Care', 3, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (41, 8, N'Salter-Harris Type IV physeal fracture of upper end radius', N'9.9', N'Consumer Services', 7, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (42, 50, N'Nondisp fx of unspecified tibial tuberosity, sequela', N'0.17', N'Capital Goods', 18, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (43, 21, N'Oral contraceptives', N'0.50', N'n/a', 11, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (44, 44, N'Attn and concentration deficit following ntrm intcrbl hemor', N'2.6', N'n/a', 5, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (45, 8, N'Poisoning by other psychodysleptics, intentional self-harm', N'6.3', N'Basic Industries', 6, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (46, 5, N'Lateral subluxation of unsp ulnohumeral joint, subs encntr', N'1.3.5', N'Health Care', 9, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (47, 46, N'Poisn by oth agents aff the cardiovasc sys, undet, sequela', N'1.7', N'Transportation', 4, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (48, 31, N'Complex regional pain syndrome I of lower limb', N'0.1.2', N'Technology', 14, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (49, 12, N'Contact w transmission devices, NEC, sequela', N'9.3.6', N'n/a', 2, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (50, 9, N'Exanthema subitum [sixth disease] due to human herpesvirus 7', N'8.4', N'Consumer Non-Durables', 20, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (51, 40, N'Hairy cell leukemia not having achieved remission', N'0.77', N'Energy', 19, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (52, 4, N'Motorcycle driver injured in collision w oth mv nontraf', N'0.14', N'n/a', 20, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (53, 23, N'Expectant parent(s) prebirth pediatrician visit', N'1.30', N'Consumer Services', 17, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (54, 1, N'Hola Mundo', N'3.2.4', N'Home Edition', 9, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (55, 2, N'hola ', N'25.25', N'asdas', 1, 1)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (56, 2, N'Mobile app1', N'95', N'Home', 1, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (57, 5, N'Mobile App3', N'23', N'Home', 6, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (58, 6, N'Mobile App 4', N'2.9.3', N'Enterprise', 1, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (59, 5, N'Mobile App 4', N'12.3', N'Home', 1, 0)
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (60, 3, N'Agregar control de stock', N'1', N'Empresarial', 1, 0)
SET IDENTITY_INSERT [dbo].[Proyectos] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (1, 1, N'ivan', N'123', N'sahgdjsa@askhgdas.com', NULL, 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (2, 2, N'invitado', N'123', N'124312@whkja.com', N'3', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (3, 5, N'ebusse0', N'MjbGTYdeqdZ', N'smagwood0@walmart.com', N'bstanmore0@hao123.com', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (4, 1, N'wstairs1', N'qSCQeOD3Bpb2', N'nhankin1@gov.uk', N'dtunniclisse1@sourceforge.net', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (5, 4, N'bsiberry2', N'9Bu9F12j3g08', N'cdunbar2@unicef.org', N'bstenet2@go.com', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (6, 1, N'mskeldinge3', N's30pZ2tii', N'dpettitt3@alexa.com', N'gedlington3@deliciousdays.com', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (7, 4, N'rwarbeys4', N'kqqfFdBShG7', N'sdyster4@about.me', N'doldknow4@yolasite.com', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (8, 3, N'oclunie5', N'MmW7PW3edH9E', N'dredmille5@intel.com', N'ddemougeot5@shareasale.com', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (9, 2, N'droth6', N'k72Q6O', N'ryakovich6@wikipedia.org', N'mshoulder6@w3.org', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (10, 5, N'sroistone7', N'bnBSXdNQUh', N'kdumper7@nationalgeographic.com', N'csteggals7@diigo.com', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (11, 4, N'bonolan8', N'Bk7Seyh', N'denos8@1und1.de', N'lprobbings8@ca.gov', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (12, 1, N'jtemlett9', N'JuTNUvNnSf', N'lseint9@marriott.com', N'atiebe9@tinypic.com', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (13, 1, N'fmacgillivraya', N'8PXqSM', N'fmonana@ask.com', N'apagetta@ehow.com', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (14, 1, N'kmoulandb', N'kZ2ZdCjzf', N'apancostb@marketwatch.com', N'mpysonb@odnoklassniki.ru', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (15, 3, N'mkochlc', N'TQEgQ3g560', N'sbeggc@lycos.com', N'rharropc@sourceforge.net', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (16, 5, N'swarnerd', N'lIiSlIgbUNf', N'tphythiand@nytimes.com', N'cpalphramandd@google.co.jp', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (17, 1, N'bfranssenie', N'dFJblPOn', N'sspondere@seattletimes.com', N'gormstone@marriott.com', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (18, 5, N'pdalgleishf', N'5EXi1T86JQgG', N'lbecksonf@joomla.org', N'apimmockef@homestead.com', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (19, 3, N'bohallagang', N'IjXMm1xaBJ', N'wrustedg@hp.com', N'kmccuaigg@sina.com.cn', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (20, 4, N'ppenrighth', N'9QyhBq43', N'bridewoodh@livejournal.com', N'iembrah@theatlantic.com', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (21, 3, N'rraymani', N'vd0n2CiBtP8p', N'wingsi@gnu.org', N'emargriei@senate.gov', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (22, 5, N'spatrichej', N'lCafLvqxi1Z7', N'qfaraganj@dropbox.com', N'kcanteroj@biblegateway.com', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (23, NULL, N'admin', N'123', N'adm@sjkdh.com', NULL, 0)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Barrio] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[Barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Barrio]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Contacto] FOREIGN KEY([id_contacto])
REFERENCES [dbo].[Contactos] ([id_contacto])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Contacto]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Cliente]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Usuario] FOREIGN KEY([id_usuario_creador])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Usuario]
GO
ALTER TABLE [dbo].[FacturasDetalle]  WITH CHECK ADD  CONSTRAINT [fk_Facturas_detalle_productos] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[FacturasDetalle] CHECK CONSTRAINT [fk_Facturas_detalle_productos]
GO
ALTER TABLE [dbo].[FacturasDetalle]  WITH CHECK ADD  CONSTRAINT [fk_Facturas_detalle_proyectos] FOREIGN KEY([id_proyecto])
REFERENCES [dbo].[Proyectos] ([id_proyecto])
GO
ALTER TABLE [dbo].[FacturasDetalle] CHECK CONSTRAINT [fk_Facturas_detalle_proyectos]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [FK_Proyectos_Producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [FK_Proyectos_Producto]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [FK_Proyectos_Usuario] FOREIGN KEY([id_responsable])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [FK_Proyectos_Usuario]
GO
USE [master]
GO
ALTER DATABASE [TPI_G4_Modulo_4] SET  READ_WRITE 
GO
