***INCLUDE ZACO_AALA_CHANGE_TOP .
* FUNCTION CODES FOR TABSTRIP 'TC2'
CONSTANTS: BEGIN OF C_TC2,
             TAB1 LIKE SY-UCOMM VALUE 'TC2_FC1',
             TAB2 LIKE SY-UCOMM VALUE 'TC2_FC2',
             TAB3 LIKE SY-UCOMM VALUE 'TC2_FC3',
             TAB4 LIKE SY-UCOMM VALUE 'TC2_FC4',
           END OF C_TC2.
* DATA FOR TABSTRIP 'TC2'
CONTROLS:  TC2 TYPE TABSTRIP.
DATA:      BEGIN OF G_TC2,
             SUBSCREEN   LIKE SY-DYNNR,
PROG        LIKE SY-REPID VALUE 'ZACO_AALA_CHANGE_FSC_MODEL',
             PRESSED_TAB LIKE SY-UCOMM VALUE C_TC2-TAB1,
           END OF G_TC2.
DATA: S_DATA_CHANGED.