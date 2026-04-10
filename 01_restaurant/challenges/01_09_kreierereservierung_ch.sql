-- Erstellen Sie eine Reservierung für einen Kunden, 
-- dessen Daten eventuell schon in unserer Datenbank sind - oder auch nicht.

-- Die Reservierung ist für:
-- Sam McAdams (smac@kinetecoinc.com), 5 Personen
-- August 12, 2022 @ 6PM (18:00)

-- Check if guest in Kunden
SELECT KundenID, Vorname, Nachname, Email 
  FROM Kunden
  WHERE Email='smac@kinetecoinc.com';

-- Since not entries are found create a datarecord for Kunden
INSERT INTO Kunden(Vorname, Nachname, Email) 
  VALUES('Sam', 'McAdams', 'smac@kinetecoinc.com');

-- Create reservation
INSERT INTO Reservierung
(KundenID, Datum, PartyGroesse) 
VALUES(
  (SELECT KundenID 
  FROM Kunden
  WHERE Email='smac@kinetecoinc.com'),
  '2022-08-12 18:00:00',
  5
);

-- Verify Code
SELECT Kunden.Vorname, Kunden.Nachname, Reservierung.Datum, Reservierung.PartyGroesse FROM Reservierung 
  JOIN Kunden ON Reservierung.KundenID=Kunden.KundenID
  ORDER BY Datum DESC; 