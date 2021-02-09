<<foo>>
DECLARE
  a CONSTANT PLS_INTEGER := 0;
BEGIN
  <<foo>>                                  -- Noncompliant
  DECLARE
    b CONSTANT PLS_INTEGER := 42;
  BEGIN
    DBMS_OUTPUT.PUT_LINE('x = ' || foo.b); -- Confusing
  END;
END;
/