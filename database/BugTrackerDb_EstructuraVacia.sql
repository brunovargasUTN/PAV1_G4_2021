USE [master]
GO
/****** Object:  Database [TPI_G4_Modulo_4]    Script Date: 14/11/2021 21:31:34 ******/
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
/****** Object:  Table [dbo].[Barrios]    Script Date: 14/11/2021 21:31:34 ******/
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
/****** Object:  Table [dbo].[Clientes]    Script Date: 14/11/2021 21:31:34 ******/
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
/****** Object:  Table [dbo].[Contactos]    Script Date: 14/11/2021 21:31:34 ******/
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
/****** Object:  Table [dbo].[Facturas]    Script Date: 14/11/2021 21:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[id_factura] [int] IDENTITY(1,1) NOT NULL,
	[nro_factura] [int] NULL,
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
/****** Object:  Table [dbo].[FacturasDetalle]    Script Date: 14/11/2021 21:31:34 ******/
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
/****** Object:  Table [dbo].[Productos]    Script Date: 14/11/2021 21:31:34 ******/
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
/****** Object:  Table [dbo].[Proyectos]    Script Date: 14/11/2021 21:31:34 ******/
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
/****** Object:  Table [dbo].[Usuarios]    Script Date: 14/11/2021 21:31:34 ******/
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
