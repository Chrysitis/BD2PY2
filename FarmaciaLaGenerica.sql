USE [master]
GO
/****** Object:  Database [FarmaciaLaGenerica]    Script Date: 6/9/2021 2:04:21 PM ******/
CREATE DATABASE [FarmaciaLaGenerica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FarmaciaLaGenerica', FILENAME = N'C:\Program Files\Microsoft SQL Server DE\MSSQL15.MSSQLSERVER\MSSQL\DATA\FarmaciaLaGenerica.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FarmaciaLaGenerica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server DE\MSSQL15.MSSQLSERVER\MSSQL\DATA\FarmaciaLaGenerica_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FarmaciaLaGenerica] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FarmaciaLaGenerica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FarmaciaLaGenerica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET ARITHABORT OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET RECOVERY FULL 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET  MULTI_USER 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FarmaciaLaGenerica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FarmaciaLaGenerica] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FarmaciaLaGenerica', N'ON'
GO
ALTER DATABASE [FarmaciaLaGenerica] SET QUERY_STORE = OFF
GO
USE [FarmaciaLaGenerica]
GO
/****** Object:  DatabaseRole [MSmerge_PAL_role]    Script Date: 6/9/2021 2:04:21 PM ******/
CREATE ROLE [MSmerge_PAL_role]
GO
/****** Object:  DatabaseRole [MSmerge_67B46BF48C5249D9824F5E7A8FC1EDA9]    Script Date: 6/9/2021 2:04:21 PM ******/
CREATE ROLE [MSmerge_67B46BF48C5249D9824F5E7A8FC1EDA9]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_67B46BF48C5249D9824F5E7A8FC1EDA9]
GO
/****** Object:  Schema [MSmerge_PAL_role]    Script Date: 6/9/2021 2:04:21 PM ******/
CREATE SCHEMA [MSmerge_PAL_role]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 6/9/2021 2:04:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IDCategoria] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[categoria] [varchar](25) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enfermedades]    Script Date: 6/9/2021 2:04:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermedades](
	[IDEnfermedad] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[enfermedad] [varchar](50) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDEnfermedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 6/9/2021 2:04:21 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[IDProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tratamiento]    Script Date: 6/9/2021 2:04:21 PM ******/
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
/****** Object:  Index [MSmerge_index_997578592]    Script Date: 6/9/2021 2:04:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_997578592] ON [dbo].[Categorias]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1077578877]    Script Date: 6/9/2021 2:04:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1077578877] ON [dbo].[Enfermedades]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1029578706]    Script Date: 6/9/2021 2:04:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1029578706] ON [dbo].[Productos]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1109578991]    Script Date: 6/9/2021 2:04:21 PM ******/
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
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD FOREIGN KEY([IDCategoria])
REFERENCES [dbo].[Categorias] ([IDCategoria])
GO
ALTER TABLE [dbo].[Tratamiento]  WITH CHECK ADD FOREIGN KEY([IDEnfermedad])
REFERENCES [dbo].[Enfermedades] ([IDEnfermedad])
GO
ALTER TABLE [dbo].[Tratamiento]  WITH CHECK ADD FOREIGN KEY([IDProducto])
REFERENCES [dbo].[Productos] ([IDProducto])
GO
ALTER TABLE [dbo].[Categorias]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_5B50FC89_F673_40A0_A519_6232A3E8372E] CHECK NOT FOR REPLICATION (([IDCategoria]>(2) AND [IDCategoria]<=(1002) OR [IDCategoria]>(1002) AND [IDCategoria]<=(2002)))
GO
ALTER TABLE [dbo].[Categorias] CHECK CONSTRAINT [repl_identity_range_5B50FC89_F673_40A0_A519_6232A3E8372E]
GO
ALTER TABLE [dbo].[Enfermedades]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_AB4E1E66_6F36_4C71_B6C0_0A7222E6C589] CHECK NOT FOR REPLICATION (([IDEnfermedad]>=(1) AND [IDEnfermedad]<=(1001) OR [IDEnfermedad]>(1001) AND [IDEnfermedad]<=(2001)))
GO
ALTER TABLE [dbo].[Enfermedades] CHECK CONSTRAINT [repl_identity_range_AB4E1E66_6F36_4C71_B6C0_0A7222E6C589]
GO
ALTER TABLE [dbo].[Productos]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_99C9381F_6AB1_4F74_994A_5C03AB884EF2] CHECK NOT FOR REPLICATION (([IDProducto]>(14) AND [IDProducto]<=(1014) OR [IDProducto]>(1014) AND [IDProducto]<=(2014)))
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [repl_identity_range_99C9381F_6AB1_4F74_994A_5C03AB884EF2]
GO
/****** Object:  StoredProcedure [dbo].[InsertarCategoria]    Script Date: 6/9/2021 2:04:21 PM ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarProducto]    Script Date: 6/9/2021 2:04:21 PM ******/
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
ALTER DATABASE [FarmaciaLaGenerica] SET  READ_WRITE 
GO
