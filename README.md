# SAP CDS + ABAP Integration Project

This repository demonstrates a complete SAP S/4HANA development flow:
- **Interface CDS views** for Purchase Order header and item
- **CDS Table Function + AMDP** for material details
- **Consumption CDS view** with `@OData.publish: true`
- **Metadata Extension (MDE)** for Fiori UI annotations
- **Service Binding** for Fiori Elements preview
- **ABAP Report (SE38)** to consume CDS values and display ALV

---

## 🚀 Project Flow

1. **[Header CDS](cds/ZI_2444843_Header.ddl)** → PO header fields from `EKKO`
2. **[Item CDS](cds/ZI_2444843_Item.ddl)** → PO item fields from `EKPO`
3. **[Table Function](cds/ZTF_MARA_DETAIL.ddl)** → Material details from `MARA`
4. **[AMDP Class](abap/ZCL_CLASS_ABAP.abap)** → Implements table function logic
5. **[Consumption CDS](cds/ZC_COMBINE_AUTO.ddl)** → Combines header, item, material
6. **[Metadata Extension](cds/ZC_COMBINE_MDE.mde)** → UI labels, filter bar, table layout
7. **Service Binding** → Auto‑published OData service (`ZC_COMBINE_AUTO_CDS`)
8. **[ABAP Report](abap/ZCDS_ALV_COMBINE.abap)** → Reads CDS view, displays ALV

---

## 📂 Files Overview

| File | Purpose |
|------|---------|
| **[ZI_2444843_Header.ddl](cds/ZI_2444843_Header.ddl)** | PO header CDS |
| **[ZI_2444843_Item.ddl](cds/ZI_2444843_Item.ddl)** | PO item CDS |
| **[ZTF_MARA_DETAIL.ddl](cds/ZTF_MARA_DETAIL.ddl)** | CDS table function |
| **[ZCL_CLASS_ABAP.abap](abap/ZCL_CLASS_ABAP.abap)** | AMDP implementation |
| **[ZC_COMBINE_AUTO.ddl](cds/ZC_COMBINE_AUTO.ddl)** | Consumption CDS with OData publish |
| **[ZC_COMBINE_MDE.mde](cds/ZC_COMBINE_MDE.mde)** | Metadata extension for UI |
| **[ZCDS_ALV_COMBINE.abap](abap/ZCDS_ALV_COMBINE.abap)** | ABAP report with ALV |

---

## 🛠️ Setup Instructions

1. Import CDS files into ADT (Eclipse).
2. Activate in order:
   - `ZI_2444843_Header`
   - `ZI_2444843_Item`
   - `ZTF_MARA_DETAIL`
   - `ZCL_CLASS_ABAP`
   - `ZC_COMBINE_AUTO`
   - `ZC_COMBINE_MDE`
3. Register OData service `ZC_COMBINE_AUTO_CDS` in `/IWFND/MAINT_SERVICE`.
4. Create Service Binding → Preview in Fiori Elements.
5. Run ABAP report `ZCDS_ALV_COMBINE` in SE38 → ALV output.

---

## 🎯 Interview Talking Points

- Built **end‑to‑end CDS architecture** (interface, consumption, table function).
- Integrated **AMDP logic** for material details.
- Published CDS as **OData service** with `@OData.publish: true`.
- Customized UI with **Metadata Extension**.
- Demonstrated **dual consumption**: Fiori Elements app + classic ABAP ALV.
- Showcases ability to bridge **modern CDS/OData** with **traditional ABAP reporting**.

---

## 📸 Screenshots

See [docs/screenshots](docs/screenshots) for:
- CDS activation
- OData service registration
- Fiori Elements preview
- ALV output in SE38
