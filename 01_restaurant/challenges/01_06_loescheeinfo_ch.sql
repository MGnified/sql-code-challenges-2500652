-- Entfernen Sie eine ungueltige Reservierung aus der Datenbank.

-- Ein Kunde namens Norby hat uns informiert, dass er seine Reservierung
-- für Freitag stornieren moechte. Heute ist der 24.Juli 2022.

-- Reservierung nicht im System erhalten/Bereits gelöscht. Deshalb manuell hinzugefügt
INSERT INTO Reservierung(KundenID, Datum, PartyGroesse) 
  VALUES(64, '2022-07-29 18:30:00', 4);

-- Find the Reservation
SELECT * FROM Reservierung 
  JOIN Kunden ON Reservierung.KundenID=Kunden.KundenID
  WHERE Kunden.Vorname='Norby' AND Reservierung.Datum > '2022-07-24'; 

-- DELETING the reservation
DELETE FROM Reservierung WHERE ReservierungsID=2001;

SELECT * FROM Reservierung ORDER BY ReservierungsID DESC;