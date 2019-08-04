CREATE TYPE [dbo].[PersonType] AS TABLE
(
	[PersonId] [uniqueidentifier],
	[FirstName] [nvarchar](50),
	[LastName] [nvarchar](50),
	[EmailAddress] [nvarchar](255)
)
