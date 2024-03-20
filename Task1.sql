CREATE FUNCTION format_seconds(seconds INT)
RETURNS VARCHAR(255)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE result VARCHAR(255);
    
    SET days = FLOOR(seconds / (60 * 60 * 24));
    SET seconds = seconds - (days * 60 * 60 * 24);
    SET hours = FLOOR(seconds / (60 * 60));
    SET seconds = seconds - (hours * 60 * 60);
    SET minutes = FLOOR(seconds / 60);
    SET seconds = seconds - (minutes * 60);
    
    SET result = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds');
    
    RETURN result;
END;

