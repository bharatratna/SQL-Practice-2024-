SELECT 
    CASE 
        WHEN Grade < 8 THEN NULL 
        ELSE Name 
    END AS Name, 
    Grade, 
    Marks
FROM 
    Students s
JOIN 
    Grades g ON s.Marks BETWEEN  g.Min_Mark AND g.Max_Mark
ORDER BY 
    Grade DESC, 
    CASE 
        WHEN Grade >= 8 THEN Name
  
    END ASC, 
    CASE 
        WHEN Grade < 8 THEN Marks

    END ASC;
