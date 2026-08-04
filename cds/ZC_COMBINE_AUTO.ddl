@AbapCatalog.sqlViewName: 'ZV_COMBINE_AUTO'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Auto-published OData for PO + Material'
@OData.publish: true

define view ZC_COMBINE_AUTO
  as select from ZI_2444843_Header as Header
    inner join ZI_2444843_Item as Item
      on Header.ebeln = Item.ebeln
    left outer join (
      select from ZTF_MARA_DETAIL( p_matnr: Item.matnr )
      {
        matnr,
        mtart,
        sled_bbd
      }
    ) as Mara
      on Mara.matnr = Item.matnr
{
  key Header.ebeln,
  key Item.ebelp,
      Header.bukrs,
      Header.bsart,
      Header.bstyp,
      Header.aedat,
      Header.ernam,
      Header.ekorg,
      Header.ekgrp,
      Header.lifnr,
      Item.matnr,
      Item.werks,
      Item.menge,
      Item.meins,
      Item.netpr,
      Item.netwr,
      Item.peinh,
      Mara.mtart,
      Mara.sled_bbd
}
