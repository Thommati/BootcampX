SELECT assignment_id AS id, assignments.name AS assignment, assignments.day, chapter, COUNT(assignments.name) AS total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY assignment_id, assignments.name, assignments.day, chapter
ORDER BY total_requests DESC;