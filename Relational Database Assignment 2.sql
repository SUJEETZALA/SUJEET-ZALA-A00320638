SELECT COUNT(*) AS total_invoices
FROM invoices;
SELECT SUM(invoice_total) AS total_invoice_amount
FROM invoices;
SELECT AVG(invoice_total) AS average_invoice_total
FROM invoices;
SELECT MAX(invoice_total) AS highest_invoice_total,
       MIN(invoice_total) AS lowest_invoice_total
FROM invoices;
SELECT vendor_id, SUM(payment_total) AS total_amount_paid
FROM invoices
GROUP BY vendor_id
ORDER BY total_amount_paid DESC;
SELECT vendor_id, COUNT(*) AS invoice_count, SUM(invoice_total) AS total_invoice_amount
FROM invoices
GROUP BY vendor_id
ORDER BY total_invoice_amount DESC;
SELECT account_number, SUM(line_item_amount) AS total_line_item_amount
FROM general_ledger_accounts
GROUP BY account_number
ORDER BY total_line_item_amount DESC;
SELECT vendor_id, SUM(invoice_total) AS total_invoice_amount
FROM invoices
GROUP BY ROLLUP(vendor_id)
ORDER BY vendor_id ASC