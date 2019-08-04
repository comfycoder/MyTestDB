CREATE TABLE [dbo].[Person]
(
    [PersonId] [uniqueidentifier] NOT NULL DEFAULT newid(),
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](255) NULL, 
    CONSTRAINT [PK_Table] PRIMARY KEY ([PersonId]),
)
