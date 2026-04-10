-- Fuegen Sie die Bestellung einer Kundin in unsere Datenbank ein
-- und stellen Sie ihr die Gesamtkosten bereit

-- Bestellungsinformationen sind:
-- Für: Loretta Hundey, 6939 Elka Place, 
-- Im Einkaufskorb: 1 House Salad, 1 Mini Cheeseburgers, 1 Tropical Blue Smoothie,
-- Lieferdatum und Zeit: September 20, 2022, @2PM (14:00)

-- Find ID of Customer
SELECT KundenID, Vorname, Nachname, Adresse FROM Kunden 
  WHERE Nachname='Hundey' AND Adresse='6939 Elka Place';

SELECT SpeiseID, Name, Preis, SUM(Preis) OVER() AS GesamtPreis FROM Speise
  WHERE Name IN ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie');

-- KundenID = 70, Gesamtpreis 21.00, 

-- enter the order into Bestellungen  
INSERT INTO Bestellungen(KundenID, BestellungsDatum) VALUES(70, '2022-09-20 14:00:00');

SELECT * FROM Bestellungen WHERE KundenID=70 ORDER BY BestellungsDatum DESC;

-- Enter the dishes + Order into BestellungSpeise -> BestellungID = 1001, SpeiseID = 4,7,20
INSERT INTO BestellungSpeise(BestellungsID, SpeiseID)
   VALUES(1001, (SELECT SpeiseID FROM Speise WHERE Name='House Salad'));
INSERT INTO BestellungSpeise(BestellungsID, SpeiseID)
   VALUES(1001, (SELECT SpeiseID FROM Speise WHERE Name='Mini Cheeseburgers'));
INSERT INTO BestellungSpeise(BestellungsID, SpeiseID)
   VALUES(1001, (SELECT SpeiseID FROM Speise WHERE Name='Tropical Blue Smoothie'));

SELECT * FROM Speise 
  JOIN BestellungSpeise ON Speise.SpeiseID=BestellungSpeise.SpeiseID
  WHERE BestellungSpeise.BestellungsID=1001;

SELECT SUM(Speise.Preis) FROM Speise
  JOIN BestellungSpeise ON Speise.SpeiseID=BestellungSpeise.SpeiseID
  WHERE BestellungSpeise.BestellungsID=1001;