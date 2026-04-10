-- Leihen Sie die Bücher „The Picture of Dorian Gray“ (barcode: 2855934983)
--  und „Great Expectations“ (Barcode: 	4043822646) an Jack Vaan aus. 
-- Das Ausleihdatum ist der 25. August 2022  
--  und die Ausleihfrist endet am 8. September.
SELECT * From Buecher WHERE Titel IN ('The Picture of Dorian Gray', 'Great Expectations') AND Barcode IN (2855934983, 4043822646);
SELECT * FROM Mitglieder WHERE Nachname='Vaan';

INSERT INTO Ausleihung(
  BuchID, MitgliedsID, AusleihDatum, Rueckgabefrist
  ) 
  VALUES(11,50, '2022-08-25', '2022-09-08'),
  (93, 50, '2022-08-25', '2022-09-08');

SELECT * FROM Ausleihung WHERE MitgliedsID=50 ORDER BY AusleihDatum  DESC;

INSERT INTO Ausleihung(BuchID, MitgliedsID, AusleihDatum, Rueckgabefrist) VALUES(73,59,'2022-08-20', '2022-09-08');
UPDATE Ausleihung SET AusleihDatum='2022-07-01', Rueckgabefrist='2022-07-15' WHERE AusleihID=2003;