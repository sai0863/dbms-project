from flask import Flask, render_template, request
import mysql.connector 

app = Flask(__name__)


def fetch_data(house_id="", owner_id="", house_det="", house_id_del=""):
    
    cnx = mysql.connector.connect(user='root', password='123456789',
                              host='localhost', database='bike_rentails')

# Create a cursor object to execute queries
    cursor = cnx.cursor()
    
    if len(house_id)>=1:
        query = """

        select * from bike_details
        where bike_id = {Id};
        
        """

        main_query = query.format(Id=house_id)
        cursor.execute(main_query)
        rows = cursor.fetchall()
        print(rows)
        sequence = cursor.column_names
        main_data = []
        print(main_data)
        for result in rows:
            main_data.append(result)
        print(main_data)
        return(sequence, tuple(main_data))
        
    # get all the employee salaries greater than given input
    if len(owner_id)>=1:
        query = """

        select * from bike_details
        join shop_details
        on bike_details.bike_id = shop_details.bike_id
        Join bookind_info
        on bike_details.bike_id = bookind_info.bike_id
        join customer_details
        on bike_details.bike_id = customer_details.bike_id
        where customer_details.bike_id = {Id};
        
        """

        main_query = query.format(Id=owner_id)
        cursor.execute(main_query)
        rows = cursor.fetchall()
        print(rows)
        sequence = cursor.column_names
        main_data = []
        print(main_data)
        for result in rows:
            main_data.append(result)
        print(main_data)
        return(sequence, tuple(main_data))
    
    if len(house_det)>1:
        Id, Area, Furnish_details, type, Price, mileage = house_det.split(",")
        query = """
        INSERT INTO bike_details(bike_id, bike_name, bike_model, bike_condition, bike_speed, bike_mileage)
        VALUES ({Id},'{area}',"{furnish}","{housetype}",{houseprice}, {mileage});
        """
        main_query = query.format(Id=Id, area = Area, furnish = Furnish_details, housetype = type, houseprice = Price, mileage = mileage)
        cursor.execute(main_query)
        cnx.commit()

        query = """
        select * from bike_details;
        """
        cursor.execute(query)
        rows = cursor.fetchall()
        print(rows)
        sequence = cursor.column_names
        main_data = []
        print(main_data)
        for result in rows:
            main_data.append(result)
        print(main_data)
        return(sequence, tuple(main_data))
    
    if len(house_id_del)>=1:
         
        query = """

        Delete from bike_details
        where bike_details.bike_id = {Id};
        
        """

        main_query = query.format(Id=house_id_del)
        cursor.execute(main_query)
        cnx.commit()

        query = """
        select * from bike_details;
        """
        cursor.execute(query)
        rows = cursor.fetchall()
        print(rows)
        sequence = cursor.column_names
        main_data = []
        print(main_data)
        for result in rows:
            main_data.append(result)
        print(main_data)
        return(sequence, tuple(main_data))
    
@app.route("/", methods =["GET", "POST"])
def index():
    if request.method == "POST":
        house_id = request.form['house_id']
        print(house_id)
        owner_id = request.form['owner_id']
        house_det = request.form['house_det']
        house_id_del = request.form['house_id_del']
        headings, data = fetch_data(house_id, owner_id, house_det, house_id_del)
        return render_template("Main_page.html", headings=headings, data=data)
    return render_template("Main_page.html")


if __name__=="__main__":
    app.run(debug=True)