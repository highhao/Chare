USE 中文北風

SELECT * FROM 訂貨主檔
SELECT * FROM 訂貨明細
SELECT * FROM 產品資料
SELECT * FROM 客戶
--//公司交易,財務,金錢流量--

SELECT 
A.客戶編號, --I
A.員工編號, --I
A.訂單號碼, --I
A.訂單日期, 
A.運費,
B.公司名稱,
C.單價,
C.數量,
C.折扣,
D.產品
FROM 訂貨主檔 A
LEFT JOIN 
客戶 B ON B.客戶編號=A.客戶編號
LEFT JOIN
訂貨明細 C ON C.訂單號碼=A.訂單號碼
LEFT JOIN
產品資料 D ON D.產品編號=C.產品編號
