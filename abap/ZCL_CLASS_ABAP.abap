CLASS ZCL_CLASS_ABAP DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.
    CLASS-METHODS get_mara_detail
      FOR DATABASE FUNCTION
      FOR HDB
      LANGUAGE SQLSCRIPT
      OPTIONS READ-ONLY
      USING mara.

ENDCLASS.


CLASS ZCL_CLASS_ABAP IMPLEMENTATION.

  METHOD get_mara_detail BY DATABASE FUNCTION
                          FOR HDB
                          LANGUAGE SQLSCRIPT
                          OPTIONS READ-ONLY
                          USING mara.

    RETURN
      SELECT
        mandt,
        matnr,
        mtart,
        sled_bbd
      FROM mara
      WHERE matnr = :p_matnr;

  ENDMETHOD.

ENDCLASS.
