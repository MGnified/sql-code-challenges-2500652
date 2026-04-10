-- Aktualisieren Sie die Kontak-Informationen eines Kunden.

-- Taylor Jenkins aus 27170 6th Ave., Washington, DC,
-- ist umgezogen nach 74 Pine St., New York, NY.

-- Check the data for duplicates
SELECT * FROM Kunden WHERE Nachname='Jenkins' AND Stadt='Washington';

-- Update the table
UPDATE Kunden 
  SET Adresse='74 Pine St.',
      Stadt='New York',
      State='NY'
  WHERE KundenID=26;

-- Displaying the output
SELECT * FROM Kunden WHERE KundenID=26;