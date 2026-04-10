-- Updaten Sie die Informationen in der Datenbank.

-- Tragen Sie Cleo Goldwaters Lieblingsgericht 
-- als "Quinoa Salmon Salad" ein.

SELECT SpeiseID, Name FROM Speise WHERE Name='Quinoa Salmon Salad';
SELECT KundenID, Nachname, Vorname, Lieblingsgericht FROM Kunden WHERE Vorname='Cleo' AND Nachname='Goldwater';

UPDATE Kunden SET Lieblingsgericht=9 WHERE KundenID=42;

