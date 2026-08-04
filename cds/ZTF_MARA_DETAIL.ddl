define table function ZTF_MARA_DETAIL
  with parameters
    p_matnr : mara.matnr
returns {
  mandt    : abap.clnt;
  matnr    : mara.matnr;
  mtart    : mara.mtart;
  sled_bbd : mara-sled_bbd;
}
implemented by method ZCL_CLASS_ABAP=>get_mara_detail;
