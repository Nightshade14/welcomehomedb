-- image location must be /var/lib/mysql-files/
UPDATE Item SET photo = LOAD_FILE('/var/lib/mysql-files/book.jpg') WHERE ItemID = 1;

 SELECT ItemID, iDescription, color, isNew, hasPieces, material, mainCategory, subCategory from Item;