--CREATE OR REPLACE VIEW v59x_4311_Try AS
SELECT 
A.PRMATC, --類型:比對紀錄類型
A.PRDOCO, --單據(訂單號碼,發票)
A.PRDCTO, --訂單類型
A.PRKCOO, --下單公司(單據號碼)
A.PRKCO, --單據公司
A.PRAN8, --地址號碼
A.PRSFXO, --訂單尾碼
A.PRLNID, --行號
A.PRNLIN, --行數
A.PRDOC,  -- 單據(傳票,發票)
A.PRNXTR, --下一狀態代碼
A.PRLTTR, --上一狀態代碼
A.PRTRDJ, --日期-訂單/異動
A.PRDGL,  --日期-總帳



FROM F43121 A
LEFT JOIN F0911 B ON B.GLAN8 = A.PRAN8
;
SELECT
*
FROM v59x_0911_AA
ORDER BY 6 DESC
