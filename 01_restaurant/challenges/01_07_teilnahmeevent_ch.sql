-- Registrieren Sie einen Kunden 'atapley2j@kinetecoinc.com' 
-- für unsere Jubilaeumsfeier.
-- Der Kunde wird mit drei Freunden an der Feier teilnehmen.

SELECT * FROM Kunden WHERE Email='atapley2j@kinetecoinc.com';

INSERT INTO Jubilaeum VALUES(92, 4);

SELECT * FROM Jubilaeum; 

-- ODER BESSER
INSERT INTO Jubilaeum
  (KundenID, PersonenAnzahl)
VALUES(
    (SELECT KundenID 
    FROM Kunden
    WHERE Email='atapley2j@kinetecoinc.com'),
    4
);