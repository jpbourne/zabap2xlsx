CLASS zcl_xls25_data_validation DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
*"* public components of class ZCL_EXCEL_DATA_VALIDATION
*"* do not include other source files here!!!

    DATA errorstyle TYPE zxls25_data_val_error_style .
    DATA operator TYPE zxls25_data_val_operator .
    DATA allowblank TYPE flag VALUE 'X'. "#EC NOTEXT .  .  .  .  .  .  .  .  .  . " .
    DATA cell_column TYPE zxls25_cell_column_alpha .
    DATA cell_column_to TYPE zxls25_cell_column_alpha .
    DATA cell_row TYPE zxls25_cell_row .
    DATA cell_row_to TYPE zxls25_cell_row .
    CONSTANTS c_type_custom TYPE zxls25_data_val_type VALUE 'custom'. "#EC NOTEXT
    CONSTANTS c_type_list TYPE zxls25_data_val_type VALUE 'list'. "#EC NOTEXT
    DATA showerrormessage TYPE abap_bool VALUE 'X'. "#EC NOTEXT .  .  .  .  .  .  .  .  .  . " .
    DATA showinputmessage TYPE abap_bool VALUE 'X'. "#EC NOTEXT .  .  .  .  .  .  .  .  .  . " .
    DATA type TYPE zxls25_data_val_type .
    DATA formula1 TYPE zxls25_validation_formula1 .
    DATA formula2 TYPE zxls25_validation_formula1 .
    CONSTANTS c_type_none TYPE zxls25_data_val_type VALUE 'none'. "#EC NOTEXT
    CONSTANTS c_type_date TYPE zxls25_data_val_type VALUE 'date'. "#EC NOTEXT
    CONSTANTS c_type_decimal TYPE zxls25_data_val_type VALUE 'decimal'. "#EC NOTEXT
    CONSTANTS c_type_textlength TYPE zxls25_data_val_type VALUE 'textLength'. "#EC NOTEXT
    CONSTANTS c_type_time TYPE zxls25_data_val_type VALUE 'time'. "#EC NOTEXT
    CONSTANTS c_type_whole TYPE zxls25_data_val_type VALUE 'whole'. "#EC NOTEXT
    CONSTANTS c_style_stop TYPE zxls25_data_val_error_style VALUE 'stop'. "#EC NOTEXT
    CONSTANTS c_style_warning TYPE zxls25_data_val_error_style VALUE 'warning'. "#EC NOTEXT
    CONSTANTS c_style_information TYPE zxls25_data_val_error_style VALUE 'information'. "#EC NOTEXT
    CONSTANTS c_operator_between TYPE zxls25_data_val_operator VALUE 'between'. "#EC NOTEXT
    CONSTANTS c_operator_equal TYPE zxls25_data_val_operator VALUE 'equal'. "#EC NOTEXT
    CONSTANTS c_operator_greaterthan TYPE zxls25_data_val_operator VALUE 'greaterThan'. "#EC NOTEXT
    CONSTANTS c_operator_greaterthanorequal TYPE zxls25_data_val_operator VALUE 'greaterThanOrEqual'. "#EC NOTEXT
    CONSTANTS c_operator_lessthan TYPE zxls25_data_val_operator VALUE 'lessThan'. "#EC NOTEXT
    CONSTANTS c_operator_lessthanorequal TYPE zxls25_data_val_operator VALUE 'lessThanOrEqual'. "#EC NOTEXT
    CONSTANTS c_operator_notbetween TYPE zxls25_data_val_operator VALUE 'notBetween'. "#EC NOTEXT
    CONSTANTS c_operator_notequal TYPE zxls25_data_val_operator VALUE 'notEqual'. "#EC NOTEXT
    DATA showdropdown TYPE abap_bool .
    DATA errortitle TYPE string .
    DATA error TYPE string .
    DATA prompttitle TYPE string .
    DATA prompt TYPE string .

    METHODS constructor .
*"* protected components of class ZCL_EXCEL_DATA_VALIDATION
*"* do not include other source files here!!!
*"* protected components of class ZCL_EXCEL_DATA_VALIDATION
*"* do not include other source files here!!!
  PROTECTED SECTION.
  PRIVATE SECTION.
*"* private components of class ZCL_EXCEL_DATA_VALIDATION
*"* do not include other source files here!!!
ENDCLASS.



CLASS zcl_xls25_data_validation IMPLEMENTATION.


  METHOD constructor.
    " Initialise instance variables
    formula1          = ''.
    formula2          = ''.
    type              = me->c_type_none.
    errorstyle        = me->c_style_stop.
    operator          = ''.
    allowblank        = abap_false.
    showdropdown      = abap_false.
    showinputmessage  = abap_true.
    showerrormessage  = abap_true.
    errortitle        = ''.
    error             = ''.
    prompttitle       = ''.
    prompt            = ''.
* inizialize dimension range
    cell_row     = 1.
    cell_column  = 'A'.
  ENDMETHOD.
ENDCLASS.
