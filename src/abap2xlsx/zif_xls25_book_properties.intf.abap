INTERFACE zif_xls25_book_properties
  PUBLIC .

  TYPES tv_excel_appversion TYPE c LENGTH 7.

  DATA creator TYPE zxls25_creator .
  DATA lastmodifiedby TYPE zxls25_creator .
  DATA created TYPE timestampl .
  DATA modified TYPE timestampl .
  DATA title TYPE zxls25_title .
  DATA subject TYPE zxls25_subject .
  DATA description TYPE zxls25_description .
  DATA keywords TYPE zxls25_keywords .
  DATA category TYPE zxls25_category .
  DATA company TYPE zxls25_company .
  DATA application TYPE zxls25_application .
  DATA docsecurity TYPE zxls25_docsecurity .
  DATA scalecrop TYPE zxls25_scalecrop .
  DATA linksuptodate TYPE flag .
  DATA shareddoc TYPE flag .
  DATA hyperlinkschanged TYPE flag .
  DATA appversion TYPE tv_excel_appversion .

  METHODS initialize .
ENDINTERFACE.
