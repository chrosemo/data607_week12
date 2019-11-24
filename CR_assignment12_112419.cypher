//DATA 607: Assignment 12 - NoSQL Migration
//C. Rosemond 112419
//Cypher

MATCH (e:enrollment)
MATCH (s:students) WHERE s.student_id in e.student_id
MATCH (c:courses) WHERE c.course_id in e.course_id
MERGE (s)-[:ENROLLED_IN]->(c)
RETURN s, c;