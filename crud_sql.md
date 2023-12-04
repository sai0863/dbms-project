        select * from bike_details
        where bike_id = {Id};


        select * from bike_details
        join shop_details
        on bike_details.bike_id = shop_details.bike_id
        Join bookind_info
        on bike_details.bike_id = bookind_info.bike_id
        join customer_details
        on bike_details.bike_id = customer_details.bike_id
        where customer_details.bike_id = {Id};

        INSERT INTO bike_details(bike_id, bike_name, bike_model, bike_condition, bike_speed, bike_mileage)
        VALUES (bike_id, bike_name, bike_model, bike_condition, bike_speed, bike_mileage)

        Delete from bike_details
        where bike_details.bike_id = {Id};
