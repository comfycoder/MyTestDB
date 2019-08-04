﻿CREATE TYPE [dbo].[CompanyType] AS TABLE
(
	[CompanyId] [uniqueidentifier],
	[CompanyName] [varchar](30),
	[Description] [varchar](1000),
	[EmailAddress] [varchar](255),
	[StreetAddress] [varchar](50),
	[City] [varchar](30),
	[State] [varchar](30),
	[PostalCode] [varchar](10),
	[AnimalName] [varchar](50),
	[AnimalScientificName] [varchar](60),
	[AppName] [varchar](30),
	[BuzzWord] [varchar](30),
	[CarMake] [varchar](20),
	[CarModel] [varchar](20),
	[CarVin] [varchar](20),
	[CatchPhrase] [varchar](60),
	[DomainName] [varchar](30),
	[ContactFirstName] [varchar](30),
	[ContactLastName] [varchar](30),
	[JobTitle] [varchar](50),
	[Language] [varchar](25),
	[Skill] [varchar](40),
	[Longitude] [numeric](9, 4),
	[Latitude] [numeric](7, 4),
	[Phone] [varchar](12),
	[Product] [varchar](50),
	[TimeZone] [varchar](30),
	[Notes] [varchar](1000)
)
