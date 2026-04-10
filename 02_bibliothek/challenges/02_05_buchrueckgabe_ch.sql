-- Pflegen Sie die Rückgabe der folgenden Bücher in die Datenbank ein.
-- Nutzen Sie dafür die Barcodes.
-- Rückgabedatum ist der 5. Juli 2022.

-- Buch 1: 6435968624
-- Buch 2: 5677520613
-- Buch 3: 8730298424
SELECT * FROM Buecher WHERE Barcode IN (6435968624, 5677520613, 8730298424);

UPDATE Ausleihung SET RueckgabeDatum='2022-07-05' WHERE BuchID=(SELECT Buecher.BuchID FROM Buecher WHERE Buecher.Barcode=6435968624);
UPDATE Ausleihung SET RueckgabeDatum='2022-07-05' WHERE BuchID=(SELECT Buecher.BuchID FROM Buecher WHERE Buecher.Barcode=5677520613);
UPDATE Ausleihung SET RueckgabeDatum='2022-07-05' WHERE BuchID=(SELECT Buecher.BuchID FROM Buecher WHERE Buecher.Barcode=8730298424);

SELECT * FROM Ausleihung WHERE RueckgabeDatum='2022-07-05';