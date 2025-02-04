USE [HealthyPawsDB]
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
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3B264A0A-C8A9-40D0-A154-536657737D6B', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'84E7A3A0-2E20-4855-85E4-75FB8EED53C1', N'Vet', N'VET', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'A77CD780-4C50-49B2-B2BF-BA587EEC77F5', N'User', N'USER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0f8a2d5f-f248-484a-bd42-f36cb857a3b1', N'3B264A0A-C8A9-40D0-A154-536657737D6B')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2f12b68a-8655-4096-8d5f-11c485119085', N'3B264A0A-C8A9-40D0-A154-536657737D6B')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e2a2ab50-0857-4565-abfc-7a0e44f4c2d3', N'3B264A0A-C8A9-40D0-A154-536657737D6B')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e59faeb7-07d7-4c6b-8009-b0a0d8c8a124', N'3B264A0A-C8A9-40D0-A154-536657737D6B')
GO

