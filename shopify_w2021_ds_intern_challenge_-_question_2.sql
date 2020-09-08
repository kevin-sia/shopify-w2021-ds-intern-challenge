# How many orders were shipped by Speedy Express in total?

SELECT s.ShipperName, COUNT(*)
FROM Orders o
JOIN Shippers s ON o.ShipperID = s.ShipperID
GROUP BY s.ShipperName;

# 54 orders were shipped by Speedy Express in total.

# ---------------------------------------------------------------

# What is the last name of the employee with the most orders?

SELECT e.LastName, COUNT(*)
FROM orders o
JOIN Employees e ON o.EmployeeID = e.EmployeeID
GROUP BY e.LastName
ORDER BY COUNT(*) DESC;

# The last name of the employee with the most orders is Peacock.

# ---------------------------------------------------------------

# What product was ordered the most by customers in Germany?

SELECT p.ProductName, COUNT(*)
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
WHERE c.Country = 'Germany'
GROUP BY p.ProductName
ORDER BY COUNT(*) DESC;

# The product ordered the most by customers in Germany was Gorgonzola Telino.