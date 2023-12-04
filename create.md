CREATE TABLE Bike_rentails.Bike_details(
    bike_id int primary key,
    bike_name varchar(50),
    bike_model varchar(50),
    bike_condition varchar(50),
    bike_speed int,
    bike_mileage double
);




CREATE TABLE IF NOT EXISTS Bike_rentails.shop_details(
    bike_id int,
    shop_name varchar(50),
    owner_name varchar(50),
    shop_address varchar(50),
    Phone_Num BIGINT
)




CREATE TABLE IF NOT EXISTS Bike_rentails.customer_details(
    bike_id int,
    customer_name varchar(50),
    licence varchar(50),
    customer_address varchar(50),
    Phone_Num BIGINT
)

CREATE TABLE IF NOT EXISTS Bike_rentails.Bookind_info(
    bike_id int,
    Booking varchar(50),
    SecurityDeposit varchar(50),
    AdvancePayment varchar(50),
    Cost int,
    duration int
)