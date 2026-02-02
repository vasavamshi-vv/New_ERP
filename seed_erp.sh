#!/bin/bash

API="http://35.154.32.180:8000/api"
TOKEN="7865a39fb1d04a79608c8fc26edeb4272f4f5db3"

HEADER=(-H "Content-Type: application/json" -H "Authorization: Token $TOKEN")

echo "=============================="
echo "🚀 ERP DATABASE SEED STARTED"
echo "=============================="

# 1️⃣ BRANCH
echo "➡ Creating Branch"
curl -s -X POST "$API/masters/branches/" "${HEADER[@]}" \
-d '{"name":"Hyderabad"}'
echo ""

# 2️⃣ DEPARTMENT
echo "➡ Creating Department"
curl -s -X POST "$API/masters/departments/" "${HEADER[@]}" \
-d '{
  "branch": 1,
  "code": "IT",
  "department_name": "IT Department",
  "description": "Handles all technical operations"
}'
echo ""

# 3️⃣ ROLE
echo "➡ Creating Role"
curl -s -X POST "$API/masters/roles/" "${HEADER[@]}" \
-d '{
  "branch": 1,
  "department": 1,
  "role": "Senior Developer",
  "description": "Handles development tasks",
  "permissions": {
    "dashboard": {"view": true},
    "task": {"full_access": true},
    "onboarding": {"view": true, "create": true}
  }
}'
echo ""

# 4️⃣ PRODUCT CATEGORY
echo "➡ Creating Product Category"
curl -s -X POST "$API/masters/product-categories/" "${HEADER[@]}" \
-d '{"name":"Electronics"}'
echo ""

# 5️⃣ TAX CODE
echo "➡ Creating Tax Code"
curl -s -X POST "$API/masters/product-taxcodes/" "${HEADER[@]}" \
-d '{"name":"GST 18%","percentage":18,"description":"Standard GST rate"}'
echo ""

# 6️⃣ UOM
echo "➡ Creating UOM"
curl -s -X POST "$API/masters/product-uoms/" "${HEADER[@]}" \
-d '{"name":"Box","items":12,"description":"12 items per box"}'
echo ""

# 7️⃣ WAREHOUSE
echo "➡ Creating Warehouse"
curl -s -X POST "$API/masters/product-warehouses/" "${HEADER[@]}" \
-d '{
  "name":"Main Warehouse",
  "location":"Hyderabad",
  "manager_name":"Ramesh",
  "contact_info":"9876543210"
}'
echo ""

# 8️⃣ PRODUCT
echo "➡ Creating Product"
curl -s -X POST "$API/masters/product/" "${HEADER[@]}" \
-d '{
  "name":"Laptop Pro 14",
  "product_type":"Goods",
  "category":1,
  "tax_code":1,
  "uom":1,
  "warehouse":1,
  "unit_price":"85000.00",
  "quantity":10,
  "status":"Active"
}'
echo ""

# 9️⃣ CUSTOMER
echo "➡ Creating Customer"
curl -s -X POST "$API/masters/customers/" "${HEADER[@]}" \
-d '{
  "first_name":"Rakesh",
  "last_name":"Kumar",
  "customer_type":"Individual",
  "email":"rakesh@example.com",
  "phone_number":"9876543210",
  "city":"Hyderabad",
  "state":"Telangana",
  "country":"India",
  "status":"Active"
}'
echo ""

echo "=============================="
echo "✅ ERP DATABASE SEED COMPLETED"
echo "=============================="
