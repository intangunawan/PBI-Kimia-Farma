CREATE TABLE tabel_analisa AS
SELECT 
    t.transaction_id,
    t.date,
    c.branch_id,
    c.branch_name,
    c.kota,
    c.provinsi,
    c.rating AS rating_cabang,
    t.customer_name,
    p.product_id,
    p.product_name,
    p.price AS actual_price,
    t.discount_percentage,
    CASE 
        WHEN p.price <= 50000 THEN 0.1
        WHEN p.price > 50000 AND p.price <= 100000 THEN 0.15
        WHEN p.price > 100000 AND p.price <= 300000 THEN 0.2
        WHEN p.price > 300000 AND p.price <= 500000 THEN 0.25
        ELSE 0.3
    END AS persentase_gross_laba,
    ROUND(p.price * (1 - t.discount_percentage)) AS nett_sales,
    ROUND((p.price * (1 - t.discount_percentage)) * 
        CASE 
            WHEN p.price <= 50000 THEN 0.1
            WHEN p.price > 50000 AND p.price <= 100000 THEN 0.15
            WHEN p.price > 100000 AND p.price <= 300000 THEN 0.2
            WHEN p.price > 300000 AND p.price <= 500000 THEN 0.25
            ELSE 0.3
        END
    ) AS nett_profit,
    t.rating AS rating_transaksi
FROM kf_final_transaction t
LEFT JOIN kf_kantor_cabang c ON t.branch_id = c.branch_id
LEFT JOIN kf_product p ON t.product_id = p.product_id;

select * from tabel_analisa
ORDER BY nett_profit DESC;



