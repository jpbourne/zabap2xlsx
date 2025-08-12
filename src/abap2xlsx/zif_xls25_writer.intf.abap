INTERFACE zif_xls25_writer
  PUBLIC .


  METHODS write_file
    IMPORTING
      !io_excel      TYPE REF TO zcl_xls25
    RETURNING
      VALUE(ep_file) TYPE xstring
    RAISING
      zcx_xls25.
ENDINTERFACE.
