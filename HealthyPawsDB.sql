USE [HealthyPawsDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[province] [nvarchar](max) NOT NULL,
	[canton] [nvarchar](max) NOT NULL,
	[district] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[AppointmentId] [int] IDENTITY(1,1) NOT NULL,
	[petFile] [int] NOT NULL,
	[vetId] [nvarchar](max) NOT NULL,
	[ownerId] [nvarchar](450) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[description] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
	[diagnostic] [nvarchar](max) NULL,
	[Additional] [nvarchar](max) NULL,
	[petIdpetFileId] [int] NULL,
	[veterinarioId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[AppointmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppointmentInventories]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppointmentInventories](
	[appointmentInventoryId] [int] IDENTITY(1,1) NOT NULL,
	[appointmentId] [int] NOT NULL,
	[inventoryID] [int] NOT NULL,
	[dose] [nvarchar](max) NULL,
	[measuredose] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppointmentInventories] PRIMARY KEY CLUSTERED 
(
	[appointmentInventoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/13/2024 7:49:30 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/13/2024 7:49:30 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[surnames] [nvarchar](100) NOT NULL,
	[lastConnection] [datetime2](7) NOT NULL,
	[idType] [nvarchar](max) NOT NULL,
	[idNumber] [nvarchar](12) NOT NULL,
	[phone1] [nvarchar](12) NOT NULL,
	[phone2] [nvarchar](12) NULL,
	[phone3] [nvarchar](12) NULL,
	[addressId] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[canton] [nvarchar](max) NULL,
	[district] [nvarchar](max) NULL,
	[province] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/13/2024 7:49:30 PM ******/
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
/****** Object:  Table [dbo].[Document]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[documentId] [int] IDENTITY(1,1) NOT NULL,
	[petFileId] [int] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[category] [nvarchar](max) NULL,
	[fileType] [tinyint] NOT NULL,
	[status] [bit] NOT NULL,
	[FechaCreacion] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[documentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventories]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventories](
	[inventoryId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[category] [nvarchar](max) NULL,
	[brand] [nvarchar](max) NULL,
	[availableStock] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[price] [float] NOT NULL,
	[provider] [float] NOT NULL,
	[providerInfo] [nvarchar](max) NULL,
	[State] [bit] NOT NULL,
 CONSTRAINT [PK_Inventories] PRIMARY KEY CLUSTERED 
(
	[inventoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogReports]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogReports](
	[LogReportId] [int] IDENTITY(1,1) NOT NULL,
	[creator] [nvarchar](max) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[type] [nvarchar](max) NULL,
	[creationDate] [datetime2](7) NOT NULL,
	[CreatorIdId] [nvarchar](450) NULL,
 CONSTRAINT [PK_LogReports] PRIMARY KEY CLUSTERED 
(
	[LogReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PetBreeds]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetBreeds](
	[petBreedId] [int] IDENTITY(1,1) NOT NULL,
	[petTypeId] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_PetBreeds] PRIMARY KEY CLUSTERED 
(
	[petBreedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PetFile]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetFile](
	[petFileId] [int] IDENTITY(1,1) NOT NULL,
	[petBreedId] [int] NOT NULL,
	[idNumber] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[petTypeId] [int] NOT NULL,
	[gender] [nvarchar](max) NULL,
	[age] [int] NOT NULL,
	[weight] [float] NOT NULL,
	[creationDate] [datetime2](7) NOT NULL,
	[vaccineHistory] [nvarchar](max) NULL,
	[castration] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[status] [bit] NOT NULL,
	[duenoId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PetFile] PRIMARY KEY CLUSTERED 
(
	[petFileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PetTypes]    Script Date: 10/13/2024 7:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetTypes](
	[petTypeId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_PetTypes] PRIMARY KEY CLUSTERED 
(
	[petTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240924044411_Inicial', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240924045337_InicialAuth', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241011031224_nullatributes', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241011031707_nullatributes', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241011044709_DocumentChanges', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241011190215_NewDetails', N'8.0.8')
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([AddressId], [province], [canton], [district]) VALUES (1, N'Cartago', N'La Unión', N'Concepción')
INSERT [dbo].[Address] ([AddressId], [province], [canton], [district]) VALUES (2, N'Heredia', N'Central', N'Mercedes')
INSERT [dbo].[Address] ([AddressId], [province], [canton], [district]) VALUES (3, N'Heredia', N'Barva', N'Barva')
INSERT [dbo].[Address] ([AddressId], [province], [canton], [district]) VALUES (4, N'Heredia', N'Belén', N'La Ribera')
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [name], [surnames], [lastConnection], [idType], [idNumber], [phone1], [phone2], [phone3], [addressId], [status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [canton], [district], [province]) VALUES (N'0f8a2d5f-f248-484a-bd42-f36cb857a3b1', N'JAFET', N'PORRAS BOGANTES', CAST(N'2024-10-13T17:15:17.5631171' AS DateTime2), N'Nacional', N'402350752', N'88888888', N'88888888', N'88888888', 4, 1, N'jporras50752@ufide.ac.cr', N'JPORRAS50752@UFIDE.AC.CR', N'jporras50752@ufide.ac.cr', N'JPORRAS50752@UFIDE.AC.CR', 0, N'AQAAAAIAAYagAAAAECIoTH5E16yXuE8qo8kGHzYuMEj+P1ncMCi2t6Ub1kJr5jRaqGMpCAk/uo9C7DXxWA==', N'83e3d15c-91ff-47e4-af4a-f5258a477da1', N'4d6dc7ff-9bc6-4a89-bc5b-c869fb822caa', N'88888888', 0, 0, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [name], [surnames], [lastConnection], [idType], [idNumber], [phone1], [phone2], [phone3], [addressId], [status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [canton], [district], [province]) VALUES (N'2f12b68a-8655-4096-8d5f-11c485119085', N'ALEXA MARIA', N'CABALCETA RODRIGUEZ', CAST(N'2024-10-13T17:05:52.0721392' AS DateTime2), N'Nacional', N'115800165', N'89768136', N'89768136', NULL, 1, 1, N'acabalceta00165@ufide.ac.cr', N'ACABALCETA00165@UFIDE.AC.CR', N'acabalceta00165@ufide.ac.cr', N'ACABALCETA00165@UFIDE.AC.CR', 0, N'AQAAAAIAAYagAAAAEDeHySTdJbm44oFgRdlvylRuBLwvM8ltOsp62D225VZFco+PiCWZhBvOZQKkOxOhHQ==', N'31327ae1-29df-4c79-aaa9-6d182185acc2', N'286e88a0-cb65-4814-ad8e-015e5d504012', N'89768136', 0, 0, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [name], [surnames], [lastConnection], [idType], [idNumber], [phone1], [phone2], [phone3], [addressId], [status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [canton], [district], [province]) VALUES (N'e2a2ab50-0857-4565-abfc-7a0e44f4c2d3', N'KATHERINE ANDREA', N'JARQUIN FONSECA', CAST(N'2024-10-13T17:13:42.6101484' AS DateTime2), N'Nacional', N'207680383', N'88888888', N'88888888', N'88888888', 2, 1, N'kjarquin80383@ufide.ac.cr', N'KJARQUIN80383@UFIDE.AC.CR', N'kjarquin80383@ufide.ac.cr', N'KJARQUIN80383@UFIDE.AC.CR', 0, N'AQAAAAIAAYagAAAAEGoL0e1Cnxz8xTPGKFmNZ8E9LLbkC8PbU6Dzx0OaAQYq9GXsV5D4Wi59jbZlVffKyw==', N'f2480eb0-9cdd-42a3-b34f-58ff06d4e7e9', N'9f19e5ef-f25b-4d74-844a-d94fad063716', N'88888888', 0, 0, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [name], [surnames], [lastConnection], [idType], [idNumber], [phone1], [phone2], [phone3], [addressId], [status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [canton], [district], [province]) VALUES (N'e59faeb7-07d7-4c6b-8009-b0a0d8c8a124', N'JESUS ARTURO', N'MORALES FUENTES', CAST(N'2024-10-13T17:14:33.8440808' AS DateTime2), N'Nacional', N'117870554', N'88888888', N'88888888', N'88888888', 3, 1, N'jmorales70554@ufide.ac.cr', N'JMORALES70554@UFIDE.AC.CR', N'jmorales70554@ufide.ac.cr', N'JMORALES70554@UFIDE.AC.CR', 0, N'AQAAAAIAAYagAAAAEN/oenNW2QT8fnl5CwAfi6sIwyupLGOoz6Me2VsPe00P6hNSEBllVca1f4XpMQez4Q==', N'414f0f95-bf63-491e-a430-06f20ebd1a56', N'4c7baff8-8b8c-49ae-9e9b-b53742f723d2', N'88888888', 0, 0, NULL, 0, 0, NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[Document] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_AspNetUsers_ownerId] FOREIGN KEY([ownerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_AspNetUsers_ownerId]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_AspNetUsers_veterinarioId] FOREIGN KEY([veterinarioId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_AspNetUsers_veterinarioId]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_PetFile_petIdpetFileId] FOREIGN KEY([petIdpetFileId])
REFERENCES [dbo].[PetFile] ([petFileId])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_PetFile_petIdpetFileId]
GO
ALTER TABLE [dbo].[AppointmentInventories]  WITH CHECK ADD  CONSTRAINT [FK_AppointmentInventories_Appointment_appointmentId] FOREIGN KEY([appointmentId])
REFERENCES [dbo].[Appointment] ([AppointmentId])
GO
ALTER TABLE [dbo].[AppointmentInventories] CHECK CONSTRAINT [FK_AppointmentInventories_Appointment_appointmentId]
GO
ALTER TABLE [dbo].[AppointmentInventories]  WITH CHECK ADD  CONSTRAINT [FK_AppointmentInventories_Inventories_inventoryID] FOREIGN KEY([inventoryID])
REFERENCES [dbo].[Inventories] ([inventoryId])
GO
ALTER TABLE [dbo].[AppointmentInventories] CHECK CONSTRAINT [FK_AppointmentInventories_Inventories_inventoryID]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Address_addressId] FOREIGN KEY([addressId])
REFERENCES [dbo].[Address] ([AddressId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Address_addressId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_PetFile_petFileId] FOREIGN KEY([petFileId])
REFERENCES [dbo].[PetFile] ([petFileId])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_PetFile_petFileId]
GO
ALTER TABLE [dbo].[LogReports]  WITH CHECK ADD  CONSTRAINT [FK_LogReports_AspNetUsers_CreatorIdId] FOREIGN KEY([CreatorIdId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[LogReports] CHECK CONSTRAINT [FK_LogReports_AspNetUsers_CreatorIdId]
GO
ALTER TABLE [dbo].[PetBreeds]  WITH CHECK ADD  CONSTRAINT [FK_PetBreeds_PetTypes_petTypeId] FOREIGN KEY([petTypeId])
REFERENCES [dbo].[PetTypes] ([petTypeId])
GO
ALTER TABLE [dbo].[PetBreeds] CHECK CONSTRAINT [FK_PetBreeds_PetTypes_petTypeId]
GO
ALTER TABLE [dbo].[PetFile]  WITH CHECK ADD  CONSTRAINT [FK_PetFile_AspNetUsers_duenoId] FOREIGN KEY([duenoId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PetFile] CHECK CONSTRAINT [FK_PetFile_AspNetUsers_duenoId]
GO
ALTER TABLE [dbo].[PetFile]  WITH CHECK ADD  CONSTRAINT [FK_PetFile_PetBreeds_petBreedId] FOREIGN KEY([petBreedId])
REFERENCES [dbo].[PetBreeds] ([petBreedId])
GO
ALTER TABLE [dbo].[PetFile] CHECK CONSTRAINT [FK_PetFile_PetBreeds_petBreedId]
GO
