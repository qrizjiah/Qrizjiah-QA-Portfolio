# Bug Reports – Ecommerce Web Application

Below are sample defects identified during manual testing.

---

## BUG-001 – Cart Total Not Updating After Quantity Change

- **ID:** BUG-001  
- **Title:** Cart total does not update when item quantity is changed  
- **Module:** Cart  
- **Severity:** Major  
- **Priority:** High  

**Preconditions:**
- User is logged in (optional).
- At least one item is added to the cart.

**Steps to Reproduce:**
1. Navigate to the cart page.
2. Change the quantity of an existing cart item from 1 to 3.
3. Click “Update” (if applicable) or wait for auto-update.

**Expected Result:**
- Item subtotal and cart total update based on the new quantity.

**Actual Result:**
- Quantity field updates visually, but subtotal and cart total remain unchanged.

**Status:** Open  
**Comments:** Impacts pricing accuracy and user trust.

---

## BUG-002 – Login Accepts Invalid Email Format

- **ID:** BUG-002  
- **Title:** Login form accepts invalid email format without validation  
- **Module:** Login  
- **Severity:** Critical  
- **Priority:** High  

**Steps to Reproduce:**
1. Go to the Login page.
2. In the email field, enter “abc” (no “@” or domain).
3. Enter any password.
4. Click “Login”.

**Expected Result:**
- Email field should show validation error (e.g., “Please enter a valid email address”).
- Login should not proceed.

**Actual Result:**
- No validation error is shown for invalid email format.
- Login request is sent with invalid data.

**Status:** Open  
**Comments:** Basic validation missing; potential security/usability issue.

---

## BUG-003 – Search Shows Blank Page on Special Characters

- **ID:** BUG-003  
- **Title:** Search results page breaks when searching with special characters  
- **Module:** Search  
- **Severity:** Major  
- **Priority:** Medium  

**Steps to Reproduce:**
1. Navigate to the home or products page.
2. In the search bar, enter “@@@###”.
3. Click the search button.

**Expected Result:**
- Either “No products found” message is displayed, or user remains on a stable search results page.

**Actual Result:**
- Blank page displayed with no results or message.
- In some cases, a console error appears in DevTools.

**Status:** Open  
**Comments:** Needs proper handling of unexpected input.

---

## BUG-004 – Checkout Allows Submission with Empty Phone Number

- **ID:** BUG-004  
- **Title:** Checkout form allows order placement without required phone number  
- **Module:** Checkout  
- **Severity:** Major  
- **Priority:** High  

**Steps to Reproduce:**
1. Add an item to the cart.
2. Go to the checkout page.
3. Fill in all required fields except phone number.
4. Click “Place Order”.

**Expected Result:**
- Phone number should be treated as a required field with a validation error if left empty.

**Actual Result:**
- Order is placed successfully without a phone number.

**Status:** Open  
**Comments:** May impact order confirmation or delivery communication.
