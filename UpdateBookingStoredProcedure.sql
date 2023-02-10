
use littlelemon;

DELIMITER //

CREATE PROCEDURE UpdateBooking(
	IN bookID int , bookDate date
)
BEGIN
	update booking
    set BookingDate = bookDate
    where booking.bookingID = bookID
	
    ;
    SELECT concate('Booking ', bookID, ' updated' )  AS "Confirmation";
END //

DELIMITER ;