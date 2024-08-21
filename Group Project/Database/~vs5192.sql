Use EventManagement;

Create table Booking(
	BookingID INT PRIMARY KEY IDENTITY(1,1),
	CustomerName VARCHAR(255) NOT NULL,
	Event VARCHAR(255) NOT NULL,
	EventDate DATE,
	NoOfPersons INT NOT NULL,                 
	Dishes VARCHAR(255) NOT NULL,              
	PlatePrice DECIMAL,              
	Beverages TEXT ,               
    AdditionalEvents VARCHAR(255) ,  
	PaymentOption VARCHAR(50) NOT NULL,
    PaymentStatus VARCHAR(50) NOT NULL,       
    FirstInstallment DECIMAL,       
    DueAmount DECIMAL,              
    NetTotal DECIMAL NOT NULL,           
    Discount DECIMAL,              
    GrossTotal DECIMAL,  
    CustomerID INT ,                       
    FOREIGN KEY (CustomerID) REFERENCES Customers(cusId) ON DELETE CASCADE
);



INSERT INTO Booking (
    CustomerName, 
    Event, 
    EventDate, 
    NoOfPersons, 
    Dishes, 
    PlatePrice, 
    Beverages, 
    AdditionalEvents, 
    PaymentStatus, 
    FirstInstallment, 
    DueAmount, 
    NetTotal, 
    Discount, 
    GrossTotal, 
    CustomerID
) 
VALUES (
    'John Doe',                     
    'Wedding',                     
    '2024-08-25',                 
    150,                          
    'Italian, Indian',              
    25.50,                         
    'Wine 10, Beer 10',                  
    'Wedding Car, DJ',                
    'Paid',                        
    2000.00,                       
    1500.00,                        
    3500.00,                        
    500.00,                         
    3000.00,                       
    2                             
);


select * from Booking;