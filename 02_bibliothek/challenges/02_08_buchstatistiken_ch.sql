-- Erstellen Sie zwei Buchstatistiken.

-- Die erste soll zeigen wie viele Bücher pro Jahr veröffentlicht wurden. 
-- Die zweite soll zeigen, welche fünf Bücher am meisten ausgeliehen worden sind.

SELECT COUNT(DISTINCT(Titel)) AS Veröffentlichungen, Erscheinungsdatum FROM Buecher 
  GROUP BY Erscheinungsdatum
  ORDER BY  Veröffentlichungen DESC;

SELECT DISTINCT Buecher.Titel, COUNT(Ausleihung.BuchID) AusleihAnzahl FROM Buecher
  JOIN Ausleihung ON Buecher.BuchID=Ausleihung.BuchID
  GROUP BY Buecher.TItel
  ORDER BY AusleihAnzahl DESC
  LIMIT 5;