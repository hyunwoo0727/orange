-- DEF_SELECT_MAJOR(ALL)
CREATE OR REPLACE PROCEDURE select_major(
    major_cur OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN major_cur FOR
    SELECT major_seq,title FROM major;
END select_major;

