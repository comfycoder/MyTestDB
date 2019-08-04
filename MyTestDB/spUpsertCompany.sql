CREATE PROCEDURE spUpsertCompany @company CompanyType READONLY
AS
BEGIN
  MERGE INTO dbo.Company AS Target
  USING @company AS Source
  ON (Target.CompanyId = Source.CompanyId)
WHEN MATCHED THEN
  -- Update records in the target that match those in the source
  UPDATE SET
    CompanyName = Source.CompanyName,
    Description = Source.Description,
    EmailAddress = Source.EmailAddress,
    StreetAddress = Source.StreetAddress,
    City = Source.City,
    State = Source.State,
    PostalCode = Source.PostalCode,
    AnimalName = Source.AnimalName,
    AnimalScientificName = Source.AnimalScientificName,
    AppName = Source.AppName,
    BuzzWord = Source.BuzzWord,
    CarMake = Source.CarMake,
    CarModel = Source.CarModel,
    CarVin = Source.CarVin,
    CatchPhrase = Source.CatchPhrase,
    DomainName = Source.DomainName,
    ContactFirstName = Source.ContactFirstName,
    ContactLastName = Source.ContactLastName,
    JobTitle = Source.JobTitle,
    Language = Source.Language,
    Skill = Source.Skill,
    Longitude = Source.Longitude,
    Latitude = Source.Latitude,
    Phone = Source.Phone,
    Product = Source.Product,
    TimeZone = Source.TimeZone,
    Notes = Source.Notes
WHEN NOT MATCHED BY TARGET THEN
  -- Insert records in the target that only exist in the source
  INSERT (CompanyId, CompanyName, Description, EmailAddress, StreetAddress, City, State, PostalCode, AnimalName, AnimalScientificName, AppName, BuzzWord, CarMake, CarModel, CarVin, CatchPhrase, DomainName, ContactFirstName, ContactLastName, JobTitle, Language, Skill, Longitude, Latitude, Phone, Product, TimeZone, Notes)
  VALUES (CompanyId, CompanyName, Description, EmailAddress, StreetAddress, City, State, PostalCode, AnimalName, AnimalScientificName, AppName, BuzzWord, CarMake, CarModel, CarVin, CatchPhrase, DomainName, ContactFirstName, ContactLastName, JobTitle, Language, Skill, Longitude, Latitude, Phone, Product, TimeZone, Notes);
END
