SELECT
PDAEXP,--���B - �`����
PDFEA,  --���B - �~���`����
PDTXA1--�|�v/ �|��
FROM F4311
;
--CREATE OR REPLACE VIEW v59x_4311_Try AS
SELECT 
  A.PDKCOO,--�U�椽�q (��ڸ��X)
  A.PDDOCO,--��� (�q�渹�X�B�o����)
  A.PDDCTO,--�q������
  A.PDLNID,--�渹
  A.PDLNTY,--������
  CEIL(J_N(A.PDTRDJ)/100) DATE_CHANGE,--��� - �q��/ ����
  CEIL(J_N(A.PDDRQJ)/100) DATE_CLAIM,--��� - �n�D
  A.PDUOM1,--�p�q��� - �D�n
  A.PDITM,--�Ƹ� - �u
  A.PDLITM,--�ĤG�Ƹ�
  A.PDDSC1,--����
  A.PDDSC2,--���� - �� 2
  A.PDUORG/10000 ORDER_QTY,--��� - �q��/ ���ʼƶq
  A.PDUREC/10000 CLOSE_QTY,--��� - �w�禬
  A.PDUOPN/10000 OPEN_QTY,--��� - ����
  A.PDMCU, --�~�ȳ��
  A.PDAEXP,--���B-�`����
  C.WWMLNM PO_MAN, --���ʤH�����X
  D.WWMLNM VENDER_NAME, --���q
  E.WPPH1 VENDER_TEL --�p���q��
FROM F4311 A
LEFT JOIN F0111 C ON C.WWAN8=A.PDANBY
LEFT JOIN F0111 D ON D.WWAN8=A.PDAN8
LEFT JOIN F0115 E ON E.WPAN8=A.PDAN8 AND E.WPRCK7=1

;


SELECT CEIL(A.DATE_CHANGE/100)
FROM V59X_4311_Try A
;
