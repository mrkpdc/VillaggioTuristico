--la password dell'utente admin e di tutti gli altri utenti è Password01!

USE [master]
GO
/****** Object:  Database [DbVillaggio]    Script Date: 31/07/2022 16:27:18 ******/
CREATE DATABASE [DbVillaggio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbVillaggio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DbVillaggio.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbVillaggio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DbVillaggio_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DbVillaggio] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbVillaggio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbVillaggio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbVillaggio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbVillaggio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbVillaggio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbVillaggio] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbVillaggio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbVillaggio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbVillaggio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbVillaggio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbVillaggio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbVillaggio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbVillaggio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbVillaggio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbVillaggio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbVillaggio] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbVillaggio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbVillaggio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbVillaggio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbVillaggio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbVillaggio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbVillaggio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbVillaggio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbVillaggio] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbVillaggio] SET  MULTI_USER 
GO
ALTER DATABASE [DbVillaggio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbVillaggio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbVillaggio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbVillaggio] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbVillaggio] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbVillaggio] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DbVillaggio] SET QUERY_STORE = OFF
GO
USE [DbVillaggio]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 31/07/2022 16:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 31/07/2022 16:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 31/07/2022 16:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 31/07/2022 16:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 31/07/2022 16:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 31/07/2022 16:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 31/07/2022 16:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ElencoCamere]    Script Date: 31/07/2022 16:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElencoCamere](
	[CAMERA] [int] NOT NULL,
	[TIPOLOGIA] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ElencoPeriodi]    Script Date: 31/07/2022 16:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElencoPeriodi](
	[PERIODO] [int] NOT NULL,
	[INIZIO] [date] NOT NULL,
	[FINE] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ElencoPrenotazioni]    Script Date: 31/07/2022 16:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElencoPrenotazioni](
	[ID] [uniqueidentifier] NOT NULL,
	[UTENTE] [nvarchar](50) NOT NULL,
	[TIPOLOGIA] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'b5dad443-fd55-408a-8039-771d684dffd3', N'52ea3c72-81db-43fe-9f18-a2c0fadc22b8', N'Admin', N'ADMIN')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'07ead05e-6ce7-4dd5-adc6-2360392928fe', N'b5dad443-fd55-408a-8039-771d684dffd3')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'07ead05e-6ce7-4dd5-adc6-2360392928fe', 0, N'eff9cfdf-253c-4f98-a272-6b5ccc5dcd4a', N'admin@admin.it', 0, 1, NULL, N'ADMIN@ADMIN.IT', N'ADMIN', N'AQAAAAEAACcQAAAAEDJgc519+N8b4EA82qZ8qhSKFnipgc4oz6FJraoBs4PrUPe5BfVHZtOQwtE+9Gjd3g==', NULL, 0, N'AB47ZNRBRBBLEFXJMESBDADC5O4AZF5J', 0, N'Admin', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'8475d7fb-ba10-4720-bfb6-87c927824a5f', 0, N'430cfbc2-6305-41ab-8c1c-5464ca66f4ec', N'giovanniverdi@email.com', 0, 1, NULL, N'GIOVANNIVERDI@EMAIL.COM', N'GIOVANNIVERDI', N'AQAAAAEAACcQAAAAEKUaIOsW5VFQBBGCreeaEkcZxnJ1IWXm8tYTfEXjycv4/ekQX3di7s+Fe/hwPQtscA==', NULL, 0, N'COQV4F62QSU6NUHXPI2DMTMF6TBRS6AV', 0, N'GiovanniVerdi', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'a94edfab-d5d4-4727-a57d-06e09a4b09f6', 0, N'8f82e680-6e52-4e62-9c09-ad4b2fe0e66e', N'luigibianchi@email.com', 0, 1, NULL, N'LUIGIBIANCHI@EMAIL.COM', N'LUIGIBIANCHI', N'AQAAAAEAACcQAAAAEBzeacYsUbsWNvF7JoGbe/cuk3TBsmy/JghP1bZjy7ew3IRwJc360FhrO3Ep3tJcfw==', NULL, 0, N'NLNZHAWEFKDBGKC3JWT5QDPQM3I4VEBV', 0, N'LuigiBianchi', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'b78253d4-1e77-469c-9e5a-b75bc0c5b8e3', 0, N'e76e4b45-f98c-46af-aaa1-e06354b0461f', N'mariorossi@email.com', 0, 1, NULL, N'MARIOROSSI@EMAIL.COM', N'MARIOROSSI', N'AQAAAAEAACcQAAAAEP/QpS1rBTnjhErMOkGRs6m1eeolcbisEVD/jyfRPgnp05/lYfnsD56zqYez34xf8Q==', NULL, 0, N'YUIABYIIPBZNMQUQ2WMMUCOMUYUTFEJE', 0, N'MarioRossi', NULL, NULL)
GO
INSERT [dbo].[ElencoCamere] ([CAMERA], [TIPOLOGIA]) VALUES (0, N'DOPPIA')
GO
INSERT [dbo].[ElencoCamere] ([CAMERA], [TIPOLOGIA]) VALUES (3, N'TRIPLA')
GO
INSERT [dbo].[ElencoCamere] ([CAMERA], [TIPOLOGIA]) VALUES (4, N'QUADRUPLA')
GO
INSERT [dbo].[ElencoCamere] ([CAMERA], [TIPOLOGIA]) VALUES (1, N'SUITE')
GO
INSERT [dbo].[ElencoPeriodi] ([PERIODO], [INIZIO], [FINE]) VALUES (1, CAST(N'2022-06-27' AS Date), CAST(N'2022-07-03' AS Date))
GO
INSERT [dbo].[ElencoPeriodi] ([PERIODO], [INIZIO], [FINE]) VALUES (2, CAST(N'2022-07-04' AS Date), CAST(N'2022-07-10' AS Date))
GO
INSERT [dbo].[ElencoPeriodi] ([PERIODO], [INIZIO], [FINE]) VALUES (3, CAST(N'2022-07-11' AS Date), CAST(N'2022-07-17' AS Date))
GO
INSERT [dbo].[ElencoPeriodi] ([PERIODO], [INIZIO], [FINE]) VALUES (4, CAST(N'2022-07-18' AS Date), CAST(N'2022-07-24' AS Date))
GO
INSERT [dbo].[ElencoPeriodi] ([PERIODO], [INIZIO], [FINE]) VALUES (5, CAST(N'2022-07-25' AS Date), CAST(N'2022-07-31' AS Date))
GO
INSERT [dbo].[ElencoPeriodi] ([PERIODO], [INIZIO], [FINE]) VALUES (6, CAST(N'2022-08-01' AS Date), CAST(N'2022-07-07' AS Date))
GO
INSERT [dbo].[ElencoPeriodi] ([PERIODO], [INIZIO], [FINE]) VALUES (7, CAST(N'2022-08-08' AS Date), CAST(N'2022-07-14' AS Date))
GO
INSERT [dbo].[ElencoPeriodi] ([PERIODO], [INIZIO], [FINE]) VALUES (8, CAST(N'2022-08-15' AS Date), CAST(N'2022-07-21' AS Date))
GO
INSERT [dbo].[ElencoPeriodi] ([PERIODO], [INIZIO], [FINE]) VALUES (9, CAST(N'2022-08-22' AS Date), CAST(N'2022-07-28' AS Date))
GO
INSERT [dbo].[ElencoPeriodi] ([PERIODO], [INIZIO], [FINE]) VALUES (10, CAST(N'2022-08-29' AS Date), CAST(N'2022-09-04' AS Date))
GO
INSERT [dbo].[ElencoPeriodi] ([PERIODO], [INIZIO], [FINE]) VALUES (11, CAST(N'2022-09-05' AS Date), CAST(N'2022-09-11' AS Date))
GO
INSERT [dbo].[ElencoPeriodi] ([PERIODO], [INIZIO], [FINE]) VALUES (12, CAST(N'2022-09-12' AS Date), CAST(N'2022-09-18' AS Date))
GO
INSERT [dbo].[ElencoPrenotazioni] ([ID], [UTENTE], [TIPOLOGIA]) VALUES (N'ab2d1c9c-92bb-402e-bd42-08da72fc4d16', N'MarioRossi', N'DOPPIA')
GO
INSERT [dbo].[ElencoPrenotazioni] ([ID], [UTENTE], [TIPOLOGIA]) VALUES (N'b79734fd-af7c-4337-da79-08da72fd8d55', N'MarioRossi', N'DOPPIA')
GO
INSERT [dbo].[ElencoPrenotazioni] ([ID], [UTENTE], [TIPOLOGIA]) VALUES (N'e5252a64-e6d7-43b3-da7a-08da72fd8d55', N'MarioRossi', N'TRIPLA')
GO
INSERT [dbo].[ElencoPrenotazioni] ([ID], [UTENTE], [TIPOLOGIA]) VALUES (N'099547fe-a60f-4aa2-8306-08da72fe9547', N'LuigiBianchi', N'SUITE')
GO
INSERT [dbo].[ElencoPrenotazioni] ([ID], [UTENTE], [TIPOLOGIA]) VALUES (N'7c09d5c0-9aab-40c5-b48c-08da73008819', N'GiovanniVerdi', N'TRIPLA')
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [DbVillaggio] SET  READ_WRITE 
GO
