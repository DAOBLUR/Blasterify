
SELECT sequence_name, last_number, increment_by FROM user_sequences;
-- DROP ALL SEQUENCES
DECLARE
  v_sequence_name VARCHAR2(100);
BEGIN
  FOR seq IN (SELECT sequence_name2 FROM user_sequences)
  LOOP
    v_sequence_name := seq.sequence_name2;
    EXECUTE IMMEDIATE 'DROP SEQUENCE ' || v_sequence_name;
    DBMS_OUTPUT.PUT_LINE('Secuencia ' || v_sequence_name || ' eliminada');
  END LOOP;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error al eliminar la secuencia ' || v_sequence_name || ': ' || SQLERRM);
END;
/


