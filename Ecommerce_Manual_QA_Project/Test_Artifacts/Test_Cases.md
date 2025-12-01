# Test Cases – Ecommerce Web Application

Below are sample detailed test cases mapped to the main user flows.

---

## TC01 – Successful Login with Valid Credentials

- **Test Case ID:** TC01  
- **Related Scenario:** TS03 – Verify user can log in with valid credentials  
- **Preconditions:** User account is already registered.  
- **Test Data:**  
  - Email: validuser@example.com  
  - Password: ValidPassword123  

**Steps:**
1. Navigate to the Login page.
2. Enter a valid email address.
3. Enter a valid password.
4. Click the "Login" button.

**Expected Result:**
- User is logged in successfully and redirected to the dashboard/home page.
- User’s name or account icon is visible in the header.

---

## TC02 – Login with Invalid Password

- **Test Case ID:** TC02  
- **Related Scenario:** TS04 – Verify login fails with invalid credentials  
- **Preconditions:** User account exists.  
- **Test Data:**  
  - Email: validuser@example.com  
  - Password: WrongPassword999  

**Steps:**
1. Navigate to the Login page.
2. Enter a valid email.
3. Enter an invalid password.
4. Click the "Login" button.

**Expected Result:**
- User is not logged in.
- An error message such as “Invalid email or password” is displayed.

---

## TC03 – Search for an Existing Product

- **Test Case ID:** TC03  
- **Related Scenario:** TS07 – Verify search returns relevant products  
- **Preconditions:** Products exist with the name “Shoes”.  

**Steps:**
1. Navigate to the home or products page.
2. Enter "Shoes" into the search bar.
3. Click the search icon or press Enter.

**Expected Result:**
- A list of products related to “Shoes” is displayed.
- No technical error or blank page appears.

---

## TC04 – Add Product to Cart from Product Details Page

- **Test Case ID:** TC04  
- **Related Scenario:** TS15 – Verify user can add a product to the cart  
- **Preconditions:** User can access the product details page.  

**Steps:**
1. Open any product details page.
2. (Optional) Select size/color if required.
3. Click the “Add to Cart” button.

**Expected Result:**
- A confirmation message appears (e.g., “Item added to cart”).
- Cart icon/count is updated to reflect the added item.

---

## TC05 – Update Quantity in Cart

- **Test Case ID:** TC05  
- **Related Scenario:** TS17 – Verify user can update the quantity of items in the cart  

**Steps:**
1. Add a product to the cart.
2. Go to the cart page.
3. Change the quantity from 1 to 2.
4. Click “Update” or wait for auto-update.

**Expected Result:**
- Quantity updates to 2.
- Line item total and cart total update correctly.

---

## TC06 – Remove Item from Cart

- **Test Case ID:** TC06  
- **Related Scenario:** TS18 – Verify user can remove items from the cart  

**Steps:**
1. Ensure at least one item is present in the cart.
2. On the cart page, click the “Remove” or trash icon for an item.

**Expected Result:**
- Selected item is removed from the cart.
- Cart total updates accordingly.
- If it was the only item, the cart shows as empty.

---

## TC07 – Checkout with Missing Required Fields

- **Test Case ID:** TC07  
- **Related Scenario:** TS23 – Verify required fields show validation  

**Steps:**
1. Add a product to the cart.
2. Proceed to checkout.
3. Leave required fields (e.g., First Name, Address) blank.
4. Click the “Place Order” or “Continue” button.

**Expected Result:**
- Form is not submitted.
- Validation messages are displayed next to required fields.

---

## TC08 – Successful Order Placement

- **Test Case ID:** TC08  
- **Related Scenario:** TS25 – Verify user can place an order successfully  

**Steps:**
1. Add product(s) to the cart.
2. Go to the checkout page.
3. Fill in valid shipping details.
4. Enter valid payment details (dummy data).
5. Click “Place Order”.

**Expected Result:**
- Order is placed successfully.
- Order confirmation page is displayed with order summary and order ID.

---

## TC09 – Logout from Account

- **Test Case ID:** TC09  
- **Related Scenario:** TS05 – Verify user can log out successfully  

**Steps:**
1. Log in as a valid user.
2. Click on the account menu or user icon.
3. Click “Logout”.

**Expected Result:**
- User session ends.
- User is redirected to the Login or Home page.
- Restricted pages are no longer accessible without logging in.

---

## TC10 – Verify Navigation Links

- **Test Case ID:** TC10  
- **Related Scenario:** TS27 – Verify navigation links work  

**Steps:**
1. From the home page, click on “Products”.
2. From the products page, click on “Cart”.
3. From any page, click on the site logo.

**Expected Result:**
- “Products” link opens the products listing page.
- “Cart” link opens the cart page.
- Clicking the logo returns the user to the home page.
