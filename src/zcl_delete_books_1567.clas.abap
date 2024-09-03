CLASS zcl_delete_books_1567 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_delete_books_1567 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DELETE FROM ztb_libros_1567.
    IF sy-subrc EQ 0.
      out->write( 'All Data Deleted' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
