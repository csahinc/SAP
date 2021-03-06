*----------------------------------------------------------------------*
*   INCLUDE ZIPP302L_BOM_BDC_01_T                                      *
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
* TABLES DECLARATION
*----------------------------------------------------------------------*
TABLES: CUKB,
        CUOB,
        MARC,
        MARA,
        MAST,
        STPO,
        STAS.
*----------------------------------------------------------------------*
* INTERNAL TABLES  DECLARATION
*----------------------------------------------------------------------*
* EXCEL UPLOAD
DATA: BEGIN OF IT_EXCL OCCURS 0,
        MATNR TYPE MARA-MATNR,
        WERKS TYPE T001W-WERKS,
        STLAN TYPE RC29N-STLAN,
        STLAL TYPE RC29N-STLAL,
        POSNR TYPE RC29P-POSNR,
        IDNRK TYPE RC29P-IDNRK,
        ZSUFF TYPE ZSUFF,
        ZSEQU(04),
        ZSEQC,
        AENNR TYPE RC29N-AENNR,
        BMENG(20),
        BMEIN TYPE RC29K-BMEIN,
        STLST TYPE RC29K-STLST,
        POSTP TYPE RC29P-POSTP,
        MENGE(20),
          ZSTGB(20),
        MEINS TYPE RC29P-MEINS,
        ITSOB TYPE RC29P-ITSOB,
        ZEITM TYPE ZEITM,
        CLPT(01),
        DPID  TYPE RCUKD-KNNAM,
        UPCT(01),
        ZUPGN TYPE ZUPGN,
        ZINFO TYPE ZINFO,
        ZRESULT LIKE SY-MSGTY,
        ZMSG LIKE CFGNL-MSGLIN,
      END   OF IT_EXCL.
DATA: BEGIN OF IT_NCOL OCCURS 0,
        UPCT(01),
        AENNR TYPE RC29N-AENNR,
        MATNR TYPE MARA-MATNR,
        WERKS TYPE T001W-WERKS,
        STLAN TYPE RC29N-STLAN,
        STLAL TYPE RC29N-STLAL,
        POSNR TYPE RC29P-POSNR,
        IDNRK TYPE RC29P-IDNRK,
        ZSUFF TYPE ZSUFF,
        ZSEQU(04),
        ZSEQC,
        BMENG(20),
        BMEIN TYPE RC29K-BMEIN,
        STLST TYPE RC29K-STLST,
        POSTP TYPE RC29P-POSTP,
        MENGE(20),
        ZSTGB(20),
        MEINS TYPE RC29P-MEINS,
        ITSOB TYPE RC29P-ITSOB,
        ZEITM TYPE ZEITM,
        CLPT(01),
        DPID  TYPE RCUKD-KNNAM,
        ZUPGN TYPE ZUPGN,
        ZINFO TYPE ZINFO,
        ZRESULT LIKE SY-MSGTY,
        ZMSG LIKE CFGNL-MSGLIN,
      END   OF IT_NCOL.
DATA: WA_NCOL LIKE IT_NCOL.
DATA: BEGIN OF IT_COLO OCCURS 0,
        UPCT(01),
        MATNR TYPE MARA-MATNR,
        WERKS TYPE T001W-WERKS,
        STLAN TYPE RC29N-STLAN,
        STLAL TYPE RC29N-STLAL,
        POSNR TYPE RC29P-POSNR,
        IDNRK TYPE RC29P-IDNRK,
        ZSUFF TYPE ZSUFF,
        ZSEQC,
        ZSEQU(04),
        AENNR TYPE RC29N-AENNR,
        BMENG(20),
        BMEIN TYPE RC29K-BMEIN,
        STLST TYPE RC29K-STLST,
        POSTP TYPE RC29P-POSTP,
        MENGE(20),
        ZSTGB(20),
        MEINS TYPE RC29P-MEINS,
        ITSOB TYPE RC29P-ITSOB,
        ZEITM TYPE ZEITM,
        CLPT(01),
        DPID  TYPE RCUKD-KNNAM,
        ZUPGN TYPE ZUPGN,
        ZINFO TYPE ZINFO,
        ZRESULT LIKE SY-MSGTY,
        ZMSG LIKE CFGNL-MSGLIN,
      END   OF IT_COLO.
DATA: WA_COLO LIKE IT_COLO.

* TABLE SELECTION
DATA: IT_BMDT LIKE ZTBM_ABXEBMDT OCCURS 0 WITH HEADER LINE.
DATA: BEGIN OF IT_BMCO OCCURS 0,
        MANDT TYPE ZTBM_ABXEBMDT-MANDT,
        UPCT TYPE ZTBM_ABXEBMDT-UPCT,
        MTNO TYPE ZTBM_ABXEBMDT-MTNO,
        PLNT TYPE ZTBM_ABXEBMDT-PLNT,
        USAG TYPE ZTBM_ABXEBMDT-USAG,
        ALTN TYPE ZTBM_ABXEBMDT-ALTN,
        PREF TYPE ZTBM_ABXEBMDT-PREF,
        COMP TYPE ZTBM_ABXEBMDT-COMP,
        SUFF TYPE ZTBM_ABXEBMDT-SUFF,
        SEQC TYPE ZTBM_ABXEBMDT-SEQC,
        SEQU TYPE ZTBM_ABXEBMDT-SEQU,
        EONO TYPE ZTBM_ABXEBMDT-EONO,
        BQTY TYPE ZTBM_ABXEBMDT-BQTY,
        HUNT TYPE ZTBM_ABXEBMDT-HUNT,
        STAT TYPE ZTBM_ABXEBMDT-STAT,
        ITCA TYPE ZTBM_ABXEBMDT-ITCA,
        QNTY TYPE ZTBM_ABXEBMDT-QNTY,
        STGB TYPE ZTBM_ABXEBMDT-STGB,
        UNIT TYPE ZTBM_ABXEBMDT-UNIT,
        SPPR TYPE ZTBM_ABXEBMDT-SPPR,
        EITM TYPE ZTBM_ABXEBMDT-EITM,
        CLPT TYPE ZTBM_ABXEBMDT-CLPT,
        DPID TYPE ZTBM_ABXEBMDT-DPID,
        UPGN TYPE ZTBM_ABXEBMDT-UPGN,
        ZUSER TYPE ZTBM_ABXEBMDT-ZUSER,
        ZSDAT TYPE ZTBM_ABXEBMDT-ZSDAT,
        ZSTIM TYPE ZTBM_ABXEBMDT-ZSTIM,
        ZEDAT TYPE ZTBM_ABXEBMDT-ZEDAT,
        ZETIM TYPE ZTBM_ABXEBMDT-ZETIM,
        ZBDAT TYPE ZTBM_ABXEBMDT-ZBDAT,
        ZBTIM TYPE ZTBM_ABXEBMDT-ZBTIM,
        ZBNAM TYPE ZTBM_ABXEBMDT-ZBNAM,
        ZMODE TYPE ZTBM_ABXEBMDT-ZMODE,
        ZRESULT TYPE ZTBM_ABXEBMDT-ZRESULT,
        ZMSG TYPE ZTBM_ABXEBMDT-ZMSG,
      END OF IT_BMCO.
DATA: WA_BMCO LIKE IT_BMCO.
DATA: BEGIN OF IT_BMNC OCCURS 0,
        MANDT TYPE ZTBM_ABXEBMDT-MANDT,
        UPCT TYPE ZTBM_ABXEBMDT-UPCT,
        EONO TYPE ZTBM_ABXEBMDT-EONO,
        MTNO TYPE ZTBM_ABXEBMDT-MTNO,
        PLNT TYPE ZTBM_ABXEBMDT-PLNT,
        USAG TYPE ZTBM_ABXEBMDT-USAG,
        ALTN TYPE ZTBM_ABXEBMDT-ALTN,
        PREF TYPE ZTBM_ABXEBMDT-PREF,
        COMP TYPE ZTBM_ABXEBMDT-COMP,
        SUFF TYPE ZTBM_ABXEBMDT-SUFF,
        SEQU TYPE ZTBM_ABXEBMDT-SEQU,
        SEQC TYPE ZTBM_ABXEBMDT-SEQC,
        BQTY TYPE ZTBM_ABXEBMDT-BQTY,
        HUNT TYPE ZTBM_ABXEBMDT-HUNT,
        STAT TYPE ZTBM_ABXEBMDT-STAT,
        ITCA TYPE ZTBM_ABXEBMDT-ITCA,
        QNTY TYPE ZTBM_ABXEBMDT-QNTY,
        STGB TYPE ZTBM_ABXEBMDT-STGB,
        UNIT TYPE ZTBM_ABXEBMDT-UNIT,
        SPPR TYPE ZTBM_ABXEBMDT-SPPR,
        EITM TYPE ZTBM_ABXEBMDT-EITM,
        CLPT TYPE ZTBM_ABXEBMDT-CLPT,
        DPID TYPE ZTBM_ABXEBMDT-DPID,
        UPGN TYPE ZTBM_ABXEBMDT-UPGN,
        ZUSER TYPE ZTBM_ABXEBMDT-ZUSER,
        ZSDAT TYPE ZTBM_ABXEBMDT-ZSDAT,
        ZSTIM TYPE ZTBM_ABXEBMDT-ZSTIM,
        ZEDAT TYPE ZTBM_ABXEBMDT-ZEDAT,
        ZETIM TYPE ZTBM_ABXEBMDT-ZETIM,
        ZBDAT TYPE ZTBM_ABXEBMDT-ZBDAT,
        ZBTIM TYPE ZTBM_ABXEBMDT-ZBTIM,
        ZBNAM TYPE ZTBM_ABXEBMDT-ZBNAM,
        ZMODE TYPE ZTBM_ABXEBMDT-ZMODE,
        ZRESULT TYPE ZTBM_ABXEBMDT-ZRESULT,
        ZMSG TYPE ZTBM_ABXEBMDT-ZMSG,
      END OF IT_BMNC.
DATA: WA_BMNC LIKE IT_BMNC.
DATA: BEGIN OF IT_MAST OCCURS 0,
        MATNR TYPE MAST-MATNR,  "MATNRIAL NO
        WERKS TYPE MAST-WERKS,  "PLANT
        STLAN TYPE MAST-STLAN,  "BOM USAGE
        STLAL TYPE MAST-STLAL,  "ALTERNATIVE BOM
        POSNR TYPE STPO-POSNR,  "BOM item number(PREFIX)
        IDNRK TYPE STPO-IDNRK,  "BOM component
        ZSUFF TYPE STPO-SUFF ,  "BOM item text1(SUFFIX)
        ZSEQU TYPE STPO-SEQU,
        STLNR TYPE MAST-STLNR,  "Bill of material
        STLKN TYPE STPO-STLKN,  "BOM item node number
      END OF IT_MAST.
DATA: BEGIN OF IT_STPO OCCURS 0,
        POSNR TYPE STPO-POSNR,  "BOM item number(PREFIX)
        IDNRK TYPE STPO-IDNRK,  "BOM component
        ZSUFF TYPE STPO-SUFF,  "BOM item text1(SUFFIX)
        ZSEQU TYPE STPO-SEQU,
        STLKN TYPE STPO-STLKN,
      END OF IT_STPO.
*----------------------------------------------------------------------*
* BOM EXPLOSION
*----------------------------------------------------------------------*
DATA : BEGIN OF IT_BOM_EXPLODED OCCURS 0,
        MATNR      LIKE   STPOV-MATNR,   "Material
        WERKS      LIKE   STPOV-WERKS,   "Plant
        KZKFG      TYPE   MARA-KZKFG,    "Configurable Material
       END   OF IT_BOM_EXPLODED.
DATA : BEGIN OF IT_EXP_MESS OCCURS 0,
        MATNR      LIKE   STPOV-MATNR,   "Material
        WERKS      LIKE   STPOV-WERKS,   "Plant
        KZKFG      TYPE   MARA-KZKFG,    "Configurable Material
        MSG        LIKE   CFGNL-MSGLIN,
       END   OF IT_EXP_MESS.

DATA : IT_MC29S   LIKE MC29S   OCCURS 0 WITH HEADER LINE,
       IT_STPOV   LIKE STPOV   OCCURS 0 WITH HEADER LINE,
       IT_CSCEQUI LIKE CSCEQUI OCCURS 0 WITH HEADER LINE,
       IT_CSCKND  LIKE CSCKND  OCCURS 0 WITH HEADER LINE,
       IT_CSCMAT  LIKE CSCMAT  OCCURS 0 WITH HEADER LINE,
       IT_CSCSTD  LIKE CSCSTD  OCCURS 0 WITH HEADER LINE,
       IT_CSCTPL  LIKE CSCTPL  OCCURS 0 WITH HEADER LINE.
DATA:  WA_LAST.

*----------------------------------------------------------------------*
* BDC-DATA
*----------------------------------------------------------------------*
DATA: BEGIN OF IT_BDC OCCURS 0.
        INCLUDE STRUCTURE BDCDATA.
DATA: END OF IT_BDC.

DATA: BEGIN OF IT_MESS OCCURS 0.
        INCLUDE STRUCTURE BDCMSGCOLL.
DATA: END OF IT_MESS.

DATA: BEGIN OF WA_OPT OCCURS 0.
        INCLUDE STRUCTURE CTU_PARAMS.
DATA: END OF WA_OPT.
*----------------------------------------------------------------------*
* DATA
*----------------------------------------------------------------------*
DATA: WA_LINE_IDX TYPE I,
      WA_ERRO_IDX TYPE I,
      WA_CHECK.
*----------------------------------------------------------------------*
* SELECTION-SCREEN
*----------------------------------------------------------------------*
SELECTION-SCREEN BEGIN OF BLOCK B2 WITH FRAME TITLE TEXT-001.
PARAMETERS: P_RDO1 RADIOBUTTON GROUP R1 DEFAULT 'X'
                                   USER-COMMAND UCOM,
            P_RDO2 RADIOBUTTON GROUP R1.
SELECTION-SCREEN END   OF BLOCK B2.

* TABLE SELECTION
SELECTION-SCREEN BEGIN OF BLOCK B1 WITH FRAME TITLE TEXT-002.
PARAMETERS:
*  P_GROUP LIKE APQI-GROUPID DEFAULT SY-REPID  OBLIGATORY,
  P_ZEDAT LIKE ZTBM_ABXEBMDT-ZEDAT DEFAULT SY-DATUM,
  P_ZBTIM LIKE ZTBM_ABXEBMDT-ZBTIM.

* EXCEL DATA UPLOAD
PARAMETERS:
*  P_GROUP LIKE APQI-GROUPID DEFAULT SY-REPID  OBLIGATORY,
  P_FILE  LIKE RLGRAP-FILENAME DEFAULT 'C:\       .TXT' OBLIGATORY,
  P_FILETY LIKE RLGRAP-FILETYPE DEFAULT 'DAT',
  P_TCODE LIKE TSTC-TCODE DEFAULT 'CS01 & CS02'.
SELECTION-SCREEN END   OF BLOCK B1.
