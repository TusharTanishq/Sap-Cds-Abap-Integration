@AbapCatalog.sqlViewName: 'ZV_ITEM2444843'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view ZI_2444843_Item
  as select from ekpo
{
  key ebeln,
  key ebelp,
      matnr,
      werks,
      menge,
      meins,
      netpr,
      netwr,
      peinh
}
