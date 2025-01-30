 SELECT * FROM vendors
   ORDER BY vendor_id;
   
SELECT vendor_name, vendor_phone, vendor_city 
   FROM vendors 
   WHERE vendor_state = 'CA'
   ORDER BY vendor_name;
   
 SELECT invoice_id, invoice_total, invoice_date 
   FROM invoices
   ORDER BY invoice_total DESC;
   
   SELECT invoice_id, invoice_total
   FROM invoices
   ORDER BY invoice_total
   LIMIT 6 OFFSET 2;
   


   SELECT invoice_id, invoice_total, 
   (invoice_total - payment_total) AS Remaining_Balance
   FROM invoices
   ORDER BY invoice_id;
   
   SELECT invoices.invoice_id, invoices.invoice_total, vendors.vendor_name, vendors.vendor_phone
   FROM invoices
   INNER JOIN vendors ON invoices.vendor_id = vendors.vendor_id
   ORDER BY invoices.invoice_id;
   
   SELECT vendors.vendor_name, invoices.invoice_id
   FROM vendors
   LEFT JOIN invoices ON vendors.vendor_id = invoices.vendor_id
   ORDER BY vendors.vendor_name;
   
   SELECT CONCAT(vendor_contacts.first_name, ' ', vendor_contacts.last_name) AS Combined_Contact_Name, vendors.vendor_name
   FROM vendor_contacts
   JOIN vendors ON vendor_contacts.vendor_id = vendors.vendor_id
   ORDER BY Combined_Contact_Name;
   SELECT invoices.invoice_id, invoices.invoice_total, vendors.vendor_name, terms.terms_description
    FROM invoices
    JOIN vendors ON invoices.vendor_id = vendors.vendor_id
    JOIN terms ON invoices.terms_id = terms.terms_id
    ORDER BY invoices.invoice_id;
    
 SELECT CONCAT(vendor_contacts.first_name, ' ', vendor_contacts.last_name) AS Combined_Contact_Name, vendors.vendor_name
   FROM vendor_contacts
   JOIN vendors ON vendor_contacts.vendor_id = vendors.vendor_id
   ORDER BY Combined_Contact_Name;
   

   
   
