*&---------------------------------------------------------------------*
*& Report YGCB_006_05
*&---------------------------------------------------------------------*
*& Tela de Seleção com parâmetro
*&---------------------------------------------------------------------*
REPORT YGCB_006_05.

 SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.
   PARAMETER: p_1bim(12) TYPE p DECIMALS 2,
              p_2bim(12) TYPE p DECIMALS 2,
              p_3bim(12) TYPE p DECIMALS 2,
              p_4bim(12) TYPE p DECIMALS 2.
 SELECTION-SCREEN END OF BLOCK b1.

 START-OF-SELECTION.

 DATA(ld_media) = ( p_1bim + p_2bim + p_3bim + p_4bim  ) / 4.

 WRITE: 'A média do aluno é:',ld_media.