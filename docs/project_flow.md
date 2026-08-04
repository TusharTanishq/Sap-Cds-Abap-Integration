# Project Flow Documentation

## Task A: Interface CDS
- `ZI_2444843_Header` → Purchase Order header
- `ZI_2444843_Item` → Purchase Order item

## Task B: Table Function + AMDP
- `ZTF_MARA_DETAIL` → CDS table function
- `ZCL_CLASS_ABAP` → AMDP implementation

## Task C: Consumption CDS
- `ZC_COMBINE_AUTO` → Combines header, item, material
- `@OData.publish: true` → Auto‑published OData

## Task D: Service Registration
- Register `ZC_COMBINE_AUTO_CDS` in `/IWFND/MAINT_SERVICE`

## Task E: Fiori Elements Preview
- Service Binding → Preview app
- Metadata Extension → Filter bar + table layout

## Task F: ABAP Report
- `ZCDS_ALV_COMBINE` → Reads CDS view, displays ALV grid
