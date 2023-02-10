
use littlelemon;

DELIMITER //

CREATE PROCEDURE ManageBooking(
	IN bookDate date, tableNo int
)
BEGIN
	select concat('Table', tableNo,' is already booked')  as BookingStatus where exists (SELECT * 
 	FROM booking as b
	WHERE b.BookingDate = bookDate and
    b.TableNo = TableNo)
    ;    
	
END //

DELIMITER ;