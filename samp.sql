-- DEF_SELECT_MAJOR(ALL)
CREATE OR REPLACE PROCEDURE select_major(
    major_cur OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN major_cur FOR
    SELECT major_seq,title FROM major;
END select_major;

-- EXE_SELECT_MAJOR(ALL)
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_major_seq   major.major_seq%TYPE;
  l_title   major.title%TYPE;
BEGIN
  select_major (l_cursor);         
  LOOP 
    FETCH l_cursor
    INTO  l_major_seq, l_title;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_major_seq || ' | ' ||l_title);
  END LOOP;
  CLOSE l_cursor;
END;
