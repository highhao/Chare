--CREATE OR REPLACE VIEW v59x_4311_Try AS
SELECT 
A.PRMATC, --����:����������
A.PRDOCO, --���(�q�渹�X,�o��)
A.PRDCTO, --�q������
A.PRKCOO, --�U�椽�q(��ڸ��X)
A.PRKCO, --��ڤ��q
A.PRAN8, --�a�}���X
A.PRSFXO, --�q����X
A.PRLNID, --�渹
A.PRNLIN, --���
A.PRDOC,  -- ���(�ǲ�,�o��)
A.PRNXTR, --�U�@���A�N�X
A.PRLTTR, --�W�@���A�N�X
A.PRTRDJ, --���-�q��/����
A.PRDGL,  --���-�`�b



FROM F43121 A
LEFT JOIN F0911 B ON B.GLAN8 = A.PRAN8
;
SELECT
*
FROM v59x_0911_AA
ORDER BY 6 DESC
