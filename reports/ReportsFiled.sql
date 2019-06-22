SELECT
  CONCAT(u1.LastName, ', ', u1.FirstName) AS 'Name',
  COUNT(u1.ID) AS 'Reports Filed',
  MIN(a.DateTimeCompleted) AS 'Reporting Begin',
  MAX(a.DateTimeCompleted) AS 'Reporting End'
FROM Authorize a
  LEFT OUTER JOIN Users u1 ON a.MemberUID = u1.UserID
WHERE a.DateTimeReviewed > DATE_SUB(NOW(), INTERVAL 1 YEAR)
GROUP BY u1.ID;