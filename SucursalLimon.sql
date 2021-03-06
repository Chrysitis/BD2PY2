USE [master]
GO
/****** Object:  Database [SucursalLimon]    Script Date: 6/9/2021 2:05:45 PM ******/
CREATE DATABASE [SucursalLimon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SucursalLimon', FILENAME = N'C:\Program Files\Microsoft SQL Server DE RE\MSSQL15.RE\MSSQL\DATA\SucursalLimon.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SucursalLimon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server DE RE\MSSQL15.RE\MSSQL\DATA\SucursalLimon_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SucursalLimon] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SucursalLimon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SucursalLimon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SucursalLimon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SucursalLimon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SucursalLimon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SucursalLimon] SET ARITHABORT OFF 
GO
ALTER DATABASE [SucursalLimon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SucursalLimon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SucursalLimon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SucursalLimon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SucursalLimon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SucursalLimon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SucursalLimon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SucursalLimon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SucursalLimon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SucursalLimon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SucursalLimon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SucursalLimon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SucursalLimon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SucursalLimon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SucursalLimon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SucursalLimon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SucursalLimon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SucursalLimon] SET RECOVERY FULL 
GO
ALTER DATABASE [SucursalLimon] SET  MULTI_USER 
GO
ALTER DATABASE [SucursalLimon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SucursalLimon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SucursalLimon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SucursalLimon] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SucursalLimon] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SucursalLimon] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SucursalLimon', N'ON'
GO
ALTER DATABASE [SucursalLimon] SET QUERY_STORE = OFF
GO
USE [SucursalLimon]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 6/9/2021 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IDCategoria] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[categoria] [varchar](25) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__Categori__70E82E28BD7A6CF6] PRIMARY KEY CLUSTERED 
(
	[IDCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 6/9/2021 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IDcliente] [int] IDENTITY(1,1) NOT NULL,
	[IDgenero] [tinyint] NOT NULL,
	[nombreCliente] [varchar](25) NOT NULL,
	[apellidoCliente] [varchar](25) NOT NULL,
	[email] [varchar](60) NOT NULL,
	[telefono] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesFacturas]    Script Date: 6/9/2021 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesFacturas](
	[IDfactura] [bigint] NOT NULL,
	[IDproducto] [int] NOT NULL,
	[precioUnitario] [decimal](18, 0) NOT NULL,
	[cantidad] [tinyint] NOT NULL,
	[total] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enfermedades]    Script Date: 6/9/2021 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermedades](
	[IDEnfermedad] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[enfermedad] [varchar](50) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__Enfermed__4856161E0E53638E] PRIMARY KEY CLUSTERED 
(
	[IDEnfermedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 6/9/2021 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[IDfactura] [bigint] IDENTITY(1,1) NOT NULL,
	[IDfarmaceutico] [int] NOT NULL,
	[IDcliente] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[subTotal] [decimal](18, 0) NOT NULL,
	[total] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDfactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Farmaceuticos]    Script Date: 6/9/2021 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Farmaceuticos](
	[IDfarmaceutico] [int] IDENTITY(1,1) NOT NULL,
	[nombreFarmaceutico] [varchar](25) NOT NULL,
	[apellidoFarmaceutico] [varchar](25) NOT NULL,
	[email] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDfarmaceutico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 6/9/2021 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[IDgenero] [tinyint] IDENTITY(1,1) NOT NULL,
	[genero] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDgenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventarios]    Script Date: 6/9/2021 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventarios](
	[IDProducto] [int] NOT NULL,
	[cantidad] [varchar](25) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 6/9/2021 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[IDProducto] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCategoria] [int] NOT NULL,
	[productoDes] [varchar](100) NULL,
	[precio] [decimal](18, 0) NOT NULL,
	[imagen] [varchar](500) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__Producto__ABDAF2B4A1AB893F] PRIMARY KEY CLUSTERED 
(
	[IDProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tratamiento]    Script Date: 6/9/2021 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tratamiento](
	[IDProducto] [int] NULL,
	[IDEnfermedad] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_997578592]    Script Date: 6/9/2021 2:05:45 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_997578592] ON [dbo].[Categorias]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1077578877]    Script Date: 6/9/2021 2:05:45 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1077578877] ON [dbo].[Enfermedades]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1029578706]    Script Date: 6/9/2021 2:05:45 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1029578706] ON [dbo].[Productos]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1109578991]    Script Date: 6/9/2021 2:05:45 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1109578991] ON [dbo].[Tratamiento]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categorias] ADD  CONSTRAINT [MSmerge_df_rowguid_749DED0BEBE24B76B5A78AF9138C6534]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Enfermedades] ADD  CONSTRAINT [MSmerge_df_rowguid_F8BA0D0A1ACF4233ACCCBC5909657988]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [MSmerge_df_rowguid_87B67F9B963D4359ABF2934611C706CC]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Tratamiento] ADD  CONSTRAINT [MSmerge_df_rowguid_119426094E504C3BB13C9245F5912D5F]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD FOREIGN KEY([IDgenero])
REFERENCES [dbo].[Generos] ([IDgenero])
GO
ALTER TABLE [dbo].[DetallesFacturas]  WITH CHECK ADD FOREIGN KEY([IDfactura])
REFERENCES [dbo].[Facturas] ([IDfactura])
GO
ALTER TABLE [dbo].[DetallesFacturas]  WITH CHECK ADD FOREIGN KEY([IDproducto])
REFERENCES [dbo].[Productos] ([IDProducto])
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD FOREIGN KEY([IDcliente])
REFERENCES [dbo].[Clientes] ([IDcliente])
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD FOREIGN KEY([IDfarmaceutico])
REFERENCES [dbo].[Farmaceuticos] ([IDfarmaceutico])
GO
ALTER TABLE [dbo].[Inventarios]  WITH CHECK ADD FOREIGN KEY([IDProducto])
REFERENCES [dbo].[Productos] ([IDProducto])
GO
ALTER TABLE [dbo].[Productos]  WITH NOCHECK ADD  CONSTRAINT [FK__Productos__IDCat__3F466844] FOREIGN KEY([IDCategoria])
REFERENCES [dbo].[Categorias] ([IDCategoria])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK__Productos__IDCat__3F466844]
GO
ALTER TABLE [dbo].[Tratamiento]  WITH NOCHECK ADD  CONSTRAINT [FK__Tratamien__IDEnf__440B1D61] FOREIGN KEY([IDEnfermedad])
REFERENCES [dbo].[Enfermedades] ([IDEnfermedad])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Tratamiento] CHECK CONSTRAINT [FK__Tratamien__IDEnf__440B1D61]
GO
ALTER TABLE [dbo].[Tratamiento]  WITH NOCHECK ADD  CONSTRAINT [FK__Tratamien__IDPro__4316F928] FOREIGN KEY([IDProducto])
REFERENCES [dbo].[Productos] ([IDProducto])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Tratamiento] CHECK CONSTRAINT [FK__Tratamien__IDPro__4316F928]
GO
ALTER TABLE [dbo].[Categorias]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_5B50FC89_F673_40A0_A519_6232A3E8372E] CHECK NOT FOR REPLICATION (([IDCategoria]>(4002) AND [IDCategoria]<=(5002) OR [IDCategoria]>(5002) AND [IDCategoria]<=(6002)))
GO
ALTER TABLE [dbo].[Categorias] CHECK CONSTRAINT [repl_identity_range_5B50FC89_F673_40A0_A519_6232A3E8372E]
GO
ALTER TABLE [dbo].[Enfermedades]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_AB4E1E66_6F36_4C71_B6C0_0A7222E6C589] CHECK NOT FOR REPLICATION (([IDEnfermedad]>(4001) AND [IDEnfermedad]<=(5001) OR [IDEnfermedad]>(5001) AND [IDEnfermedad]<=(6001)))
GO
ALTER TABLE [dbo].[Enfermedades] CHECK CONSTRAINT [repl_identity_range_AB4E1E66_6F36_4C71_B6C0_0A7222E6C589]
GO
ALTER TABLE [dbo].[Productos]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_99C9381F_6AB1_4F74_994A_5C03AB884EF2] CHECK NOT FOR REPLICATION (([IDProducto]>(4014) AND [IDProducto]<=(5014) OR [IDProducto]>(5014) AND [IDProducto]<=(6014)))
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [repl_identity_range_99C9381F_6AB1_4F74_994A_5C03AB884EF2]
GO
/****** Object:  StoredProcedure [dbo].[InsertarCategoria]    Script Date: 6/9/2021 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarCategoria] 
	-- Add the parameters for the stored procedure here
	@categoria varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Categorias (categoria)
		VALUES (@categoria);
END

GO
/****** Object:  StoredProcedure [dbo].[InsertarProducto]    Script Date: 6/9/2021 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarProducto]
	-- Add the parameters for the stored procedure here
	@IDCategoria int,
	@productoDes varchar(100),
	@precio decimal,
	@imagen varchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Productos (IDCategoria, productoDes, precio, imagen)
		VALUES (@IDCategoria, @productoDes, @precio, @imagen);
END

GO
USE [master]
GO
ALTER DATABASE [SucursalLimon] SET  READ_WRITE 
GO
