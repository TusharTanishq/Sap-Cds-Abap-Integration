@AbapCatalog.sqlViewName: 'ZV_HDR2444843'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view ZI_2444843_Header
  as select from ekko
{
  key ebeln,
      bukrs,
      bstyp,
      bsart,
      aedat,
      ernam,
      ekorg,
      ekgrp,
      lifnr
}

