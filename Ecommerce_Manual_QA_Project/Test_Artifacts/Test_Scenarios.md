# Test Scenarios – Ecommerce Web Application

Below are high-level test scenarios covering the core e-commerce flow.

## 1. User Registration & Login

1. TS01 – Verify user can register with valid details.
2. TS02 – Verify registration fails with missing required fields.
3. TS03 – Verify user can log in with valid credentials.
4. TS04 – Verify login fails with invalid credentials.
5. TS05 – Verify user can log out successfully.

## 2. Product Browsing & Search

6. TS06 – Verify user can view product listings on the home page.
7. TS07 – Verify search returns relevant products for a valid keyword.
8. TS08 – Verify search handles no-result scenarios gracefully.
9. TS09 – Verify user can filter products by category.
10. TS10 – Verify user can filter or sort products by price or rating.

## 3. Product Details Page

11. TS11 – Verify user can open the product details page from the listing.
12. TS12 – Verify product details page displays correct information (name, price, description, image).
13. TS13 – Verify product details page shows stock availability.
14. TS14 – Verify user can select product options (size, color) if applicable.

## 4. Shopping Cart

15. TS15 – Verify user can add a product to the cart from the product details page.
16. TS16 – Verify user can view items in the cart.
17. TS17 – Verify user can update the quantity of items in the cart.
18. TS18 – Verify user can remove items from the cart.
19. TS19 – Verify cart total updates correctly based on quantity and price.
20. TS20 – Verify cart persists during the session until cleared or checkout is completed.

## 5. Checkout & Payment

21. TS21 – Verify user can navigate from cart to checkout page.
22. TS22 – Verify user can enter shipping address details.
23. TS23 – Verify required fields in the checkout form show validation messages when left empty.
24. TS24 – Verify user can select a payment method (e.g., credit card).
25. TS25 – Verify user can place an order successfully with valid data.
26. TS26 – Verify order confirmation page shows order summary and order ID.

## 6. General UI & Navigation

27. TS27 – Verify main navigation links (Home, Products, Cart, Login/Account) are working.
28. TS28 – Verify logo click redirects to the home page.
29. TS29 – Verify footer links (Contact, Help, Terms) are accessible.
30. TS30 – Verify error pages or messages are user-friendly when something goes wrong.
