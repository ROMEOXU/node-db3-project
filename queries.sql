-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Product.ProductName,Category.CategoryName FROM "Product"
JOIN "Category"
WHERE "Product"."CategoryId"="Category"."Id";
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Id,ShipName FROM "Order"

WHERE OrderDate < "2012-08-09";
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName,UnitsInStock FROM "Product"
Join OrderDetail
WHERE OrderDetail.OrderId = "10251"
limit(3);
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT "Order"."Id","Customer"."CompanyName", "Employee"."LastName" FROM "Order"
Join "Customer" ON "Order"."CustomerId" = "Customer"."Id"
Join "Employee" ON "Order"."EmployeeId"="Employee"."Id"