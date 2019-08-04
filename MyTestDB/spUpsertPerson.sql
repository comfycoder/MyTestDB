CREATE PROCEDURE spUpsertPerson @person PersonType READONLY
AS
BEGIN
  MERGE INTO dbo.Person AS Target
  USING @person AS Source
  ON (Target.PersonId = Source.PersonId)
WHEN MATCHED THEN
  -- Update records in the target that match those in the source
  UPDATE SET
    FirstName = Source.FirstName,
    LastName = Source.LastName,
    EmailAddress = Source.EmailAddress
WHEN NOT MATCHED BY TARGET THEN
  -- Insert records in the target that only exist in the source
  INSERT (PersonId, FirstName, LastName, EmailAddress)
  VALUES (PersonId, FirstName, LastName, EmailAddress);
END
