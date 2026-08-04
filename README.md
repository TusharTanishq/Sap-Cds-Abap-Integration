# SAP CDS + ABAP Integration Project

This repository demonstrates a complete SAP S/4HANA development flow:
- Interface CDS views for PO header and item
- CDS Table Function + AMDP for material details
- Consumption CDS with `@OData.publish: true`
- Metadata Extension for Fiori UI
- Service Binding for Fiori Elements preview
- ABAP Report (SE38) to consume CDS values and display ALV

## 🚀 Project Flow
1. [Header CDS](cds/ZI_2444843_Header.ddl)
2. [Item CDS](cds/ZI_2444843_Item.ddl)
3. [Table Function](cds/ZTF_MARA_DETAIL.ddl)
4. [AMDP Class](abap/ZCL_CLASS_ABAP.abap)
5. [Consumption CDS](cds/ZC_COMBINE_AUTO.ddl)
6. [Metadata Extension](cds/ZC_COMBINE_MDE.mde)
7. Service Binding → OData service
8. [ABAP Report](abap/ZCDS_ALV_COMBINE.abap)

## 🛠️ Setup
- Import CDS files into ADT
- Activate in order: Header → Item → Table Function → AMDP → Consumption → MDE
- Register OData service in `/IWFND/MAINT_SERVICE`
- Preview via Service Binding
- Run ABAP report in SE38

## 🎯 Interview Talking Points
- End‑to‑end CDS architecture
- AMDP integration
- OData exposure
- Fiori Elements preview
- Classic ABAP ALV consumption
