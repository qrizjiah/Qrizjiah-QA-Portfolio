# Qrizjiah-QA-Portfolio
# E-Commerce API Testing Suite (Postman)

This project demonstrates API testing using Postman for a sample e-commerce backend.  
It includes positive tests, negative tests, and Postman test scripts to validate key API behaviors.

---

## 📌 Endpoints Tested

### ✔ GET `/products`
- Retrieves all products
- Validates status code = 200
- Ensures response contains a `products` array

### ✔ GET `/products/{id}`
- Retrieves a single product by ID
- Validates the returned product matches the requested ID
- Ensures required fields (e.g., `title`) exist

### ✔ GET `/products/999999` (Negative Test)
- Tests invalid product ID
- Confirms API does not return 200 for invalid data
- Ensures an error object is returned instead of success

---

## 🧪 Test Scripts (Postman Tests)

This collection includes automated Postman tests to validate:

- Status codes  
- Response JSON structure  
- Data types  
- Field values  
- Error handling  

These tests help ensure the API responds correctly to valid and invalid requests.

---

## 🛠 Tools Used

- **Postman** – for sending API requests & writing tests  
- **JavaScript (Postman Scripts)** – for assertions  
- **JSON** – API response format  
- **DummyJSON API** – fake sample e-commerce API for testing  

---

## 🎯 Purpose of This Project

This project shows my ability to:

- Create structured API test collections  
- Write automated Postman tests  
- Perform positive & negative testing  
- Validate backend data  
- Document test coverage clearly  

This is part of my Manual QA → Automation → Cloud Security career path.

---

## 📁 Files Included

- `Ecommerce_API_Testing.postman_collection.json`  
  (Exported Postman collection containing all requests + test scripts)
