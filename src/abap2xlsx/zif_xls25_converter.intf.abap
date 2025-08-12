INTERFACE zif_xls25_converter
  PUBLIC .


  METHODS can_convert_object
    IMPORTING
      !io_object TYPE REF TO object
    RAISING
      zcx_xls25 .
  METHODS create_fieldcatalog
    IMPORTING
      !is_option       TYPE zxls25_s_converter_option
      !io_object       TYPE REF TO object
      !it_table        TYPE STANDARD TABLE
    EXPORTING
      !es_layout       TYPE zxls25_s_converter_layo
      !et_fieldcatalog TYPE zxls25_t_converter_fcat
      !eo_table        TYPE REF TO data
      !et_colors       TYPE zxls25_t_converter_col
      !et_filter       TYPE zxls25_t_converter_fil
    RAISING
      zcx_xls25 .

   METHODS get_supported_class
     RETURNING VALUE(rv_supported_class) TYPE seoclsname.
ENDINTERFACE.
