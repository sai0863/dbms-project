1. **Bike_details Table:**
   - `bike_id` (Primary Key): Unique identifier for each bike.
   - `bike_name`: The name of the bike (e.g., "Hero Honda").
   - `bike_model`: The model of the bike (e.g., "Non Electric").
   - `bike_condition`: The condition of the bike (e.g., "GOOD", "BAD").
   - `bike_speed`: The speed of the bike.
   - `bike_mileage`: The mileage of the bike.

2. **Shop_details Table:**
   - `bike_id` (Foreign Key): Relates to the `bike_id` in the `Bike_details` table.
   - `shop_name`: The name of the shop (e.g., "Swath Motors").
   - `owner_name`: The name of the shop owner.
   - `shop_address`: The address of the shop.
   - `Phone_Num`: The phone number of the shop.

3. **Customer_details Table:**
   - `bike_id` (Foreign Key): Relates to the `bike_id` in the `Bike_details` table.
   - `customer_name`: The name of the customer.
   - `licence`: License information of the customer.
   - `customer_address`: The address of the customer.
   - `Phone_Num`: The phone number of the customer.

4. **Booking_info Table:**
   - `bike_id` (Foreign Key): Relates to the `bike_id` in the `Bike_details` table.
   - `Booking`: The booking status (e.g., "Yes" or "No").
   - `AdvancePayment`: The amount paid in advance.
   - `SecurityDeposit`: The security deposit amount.
   - `Cost`: The total cost of the booking.
   - `duration`: The duration of the booking.

**Third Normal Form (3NF) Assessment:**

- **No transitive dependencies:** Each non-prime attribute is non-transitively dependent on every superkey.
  - All attributes in each table seem to directly depend on the primary key (`bike_id`), and there are no transitive dependencies observed.

- **All attributes depend only on the primary key:** All attributes are fully functionally dependent on the primary key.
  - The attributes in each table appear to depend only on the primary key, and there are no partial dependencies.

