REPORT zcds_alv_combine.

TYPES: BEGIN OF ty_combine,
         ebeln     TYPE ekko-ebeln,
         ebelp     TYPE ekpo-ebelp,
         bukrs     TYPE ekko-bukrs,
         lifnr     TYPE ekko-lifnr,
         matnr     TYPE mara-matnr,
         werks     TYPE ekpo-werks,
         menge     TYPE ekpo-menge,
         meins     TYPE ekpo-meins,
         netpr     TYPE ekpo-netpr,
         netwr     TYPE ekpo-netwr,
         peinh     TYPE ekpo-peinh,
         mtart     TYPE mara-mtart,
         sled_bbd  TYPE mara-sled_bbd,
       END OF ty_combine.

DATA: lt_data TYPE TABLE OF ty_combine,
      lo_alv  TYPE REF TO cl_salv_table.

SELECT ebeln,
       ebelp,
       bukrs,
       lifnr,
       matnr,
       werks,
       menge,
       meins,
       netpr,
       netwr,
       peinh,
       mtart,
       sled_bbd
  FROM zc_combine_auto
  INTO TABLE @lt_data.

IF sy-subrc <> 0.
  WRITE: / 'No data found in CDS view ZC_COMBINE_AUTO'.
  EXIT.
ENDIF.

CALL METHOD cl_salv_table=>factory
  IMPORTING
    r_salv_table = lo_al
