INSERT INTO Member (MemberID, SSN, CampusAddress, HomeAddress, PhoneNumber, Photo, MembershipExpiryDate) VALUES
(1, '123-45-6789', '12 University Ave', '101 Maple Drive', '555-1010', NULL, '2025-01-01'),
(2, '234-56-7890', '34 College St', '202 Oak Lane', '555-2020', NULL, '2025-02-02'),
(3, '345-67-8901', '56 Academy Rd', '303 Birch Street', '555-3030', NULL, '2025-03-03'),
(4, '456-78-9012', '78 Institute Blvd', '404 Pine Road', '555-4040', NULL, '2025-04-04'),
(5, '567-89-0123', '91 University Plaza', '505 Cedar Ave', '555-5050', NULL, '2025-05-05'),
(6, '678-90-1234', '123 Campus Circle', '606 Elm Street', '555-6060', NULL, '2025-06-06'),
(7, '789-01-2345', '234 Library Lane', '707 Fir Court', '555-7070', NULL, '2025-07-07'),
(8, '890-12-3456', '345 Lecture Hall Way', '808 Spruce Path', '555-8080', NULL, '2025-08-08'),
(9, '901-23-4567', '456 Dormitory Rd', '909 Willow Way', '555-9090', NULL, '2025-09-09'),
(10, '012-34-5678', '567 Campus View Dr', '110 Chestnut Lane', '555-1011', NULL, '2025-10-10');

INSERT INTO Professor (MemberID) VALUES
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10);



INSERT INTO Book (ISBN, Title, Author, SubjectArea, Description, BookType) VALUES
('978-0-00-000000-1', 'Exploring the Galaxies', 'Jane Doe', 'Astronomy', 'A comprehensive guide to the cosmos', 'Lendable'),
('978-0-00-000000-2', 'The World of Mathematics', 'John Smith', 'Mathematics', 'An exploration of mathematical theories', 'Lendable'),
('978-0-00-000000-3', 'History of Ancient Civilizations', 'Alice Johnson', 'History', 'Study of ancient societies and cultures', 'Lendable'),
('978-0-00-000000-4', 'Basics of Chemistry', 'Bob Brown', 'Chemistry', 'Introduction to chemical elements and reactions', 'Lendable'),
('978-0-00-000000-5', 'The Art of Renaissance', 'Cathy Green', 'Art', 'A journey through Renaissance art history', 'Lendable'),
('978-0-00-000000-6', 'Understanding the Human Mind', 'David White', 'Psychology', 'Insights into human behavior and psychology', 'Lendable'),
('978-0-00-000000-7', 'Advanced Programming', 'Eve Black', 'Computer Science', 'In-depth concepts in modern programming', 'Lendable'),
('978-0-00-000000-8', 'Molecular Biology', 'Frank Grey', 'Biology', 'Exploring the structure and function of molecules in living organisms', 'Lendable'),
('978-0-00-000000-9', 'Philosophy in the Modern World', 'Gina Blue', 'Philosophy', 'Analysis of contemporary philosophical thoughts', 'Lendable'),
('978-0-00-000000-10', 'Innovations in Engineering', 'Henry Red', 'Engineering', 'The evolution and impact of engineering breakthroughs', 'Lendable'),
('978-0-00-000000-11', 'The Universe and Us', 'Irene Purple', 'Astrophysics', 'Understanding our place in the universe', 'Lendable'),
('978-0-00-000000-30', 'Secrets of the Deep Ocean', 'Zack Orange', 'Marine Biology', 'Exploring the mysteries of marine life', 'Lendable');

INSERT INTO Catalog (CatalogID, ISBN) VALUES
(1, '978-0-00-000000-1'),
(2, '978-0-00-000000-2'),
(3, '978-0-00-000000-3'),
(4, '978-0-00-000000-4'),
(5, '978-0-00-000000-5'),
(6, '978-0-00-000000-6'),
(7, '978-0-00-000000-7'),
(8, '978-0-00-000000-8'),
(9, '978-0-00-000000-9'),
(10, '978-0-00-000000-10');

INSERT INTO BorrowingActivity (TransactionID, MemberID, ISBN, BorrowDate, DueDate, ReturnDate) VALUES
(1, 1, '978-0-00-000000-1', '2023-01-01', '2023-01-22', NULL),
(2, 2, '978-0-00-000000-2', '2023-01-02', '2023-01-23', NULL),
(3, 3, '978-0-00-000000-3', '2023-01-03', '2023-01-24', NULL),
(4, 4, '978-0-00-000000-4', '2023-01-04', '2023-01-25', NULL),
(5, 5, '978-0-00-000000-5', '2023-01-05', '2023-01-26', NULL),
(6, 6, '978-0-00-000000-6', '2023-01-06', '2023-01-27', NULL),
(7, 7, '978-0-00-000000-7', '2023-01-07', '2023-01-28', NULL),
(8, 8, '978-0-00-000000-8', '2023-01-08', '2023-01-29', NULL),
(9, 9, '978-0-00-000000-9', '2023-01-09', '2023-01-30', NULL),
(10, 10, '978-0-00-000000-10', '2023-01-10', '2023-01-31', NULL);

INSERT INTO LibraryStaff (StaffID, Name, Role) VALUES
(1, 'Laura Adams', 'Chief Librarian'),
(2, 'Mark Brown', 'Associate Librarian'),
(3, 'Chloe Clarke', 'Reference Librarian'),
(4, 'Dan Evans', 'Check-Out Staff'),
(5, 'Sophia Foster', 'Library Assistant'),
(6, 'George Harris', 'Reference Librarian'),
(7, 'Ivy Johnson', 'Check-Out Staff'),
(8, 'Kyle Lee', 'Library Assistant'),
(9, 'Mia Martin', 'Associate Librarian'),
(10, 'Noah Nelson', 'Library Assistant');


INSERT INTO OverdueNotice (NoticeID, TransactionID, MemberID, IssueDate) VALUES
(1, 1, 1, '2023-01-23'),
(2, 2, 2, '2023-01-24'),
(3, 3, 3, '2023-01-25'),
(4, 4, 4, '2023-01-26'),
(5, 5, 5, '2023-01-27'),
(6, 6, 6, '2023-01-28'),
(7, 7, 7, '2023-01-29'),
(8, 8, 8, '2023-01-30'),
(9, 9, 9, '2023-01-31'),
(10, 10, 10, '2023-02-01');

INSERT INTO Wishlist (WishlistID, BookTitle, Reason) VALUES
(1, 'The Lost City of Atlantis', 'Rare'),
(2, 'Unseen Universe', 'Out-of-Print'),
(3, 'Gardens of the Moon', 'Lost'),
(4, 'Hidden Treasures', 'Out-of-Print'),
(5, 'Ancient Myths', 'Rare'),
(6, 'The Uncharted Island', 'Lost'),
(7, 'Ghosts of the Past', 'Out-of-Print'),
(8, 'Secret Societies', 'Rare'),
(9, 'Fabled Lands', 'Lost'),
(10, 'Mysteries of the Pyramids', 'Out-of-Print');

INSERT INTO Notifications (NotificationID, MemberID, Message, NotificationDate) VALUES
(1, 1, 'Your book "Exploring the Galaxies" is overdue.', '2023-11-01'),
(2, 2, 'Reminder: Your membership will expire soon.', '2023-11-02'),
(3, 3, 'Your book "The World of Mathematics" is overdue.', '2023-11-03'),
(4, 4, 'Reminder: Your membership will expire in 30 days.', '2023-11-04'),
(5, 5, 'Your book "History of Ancient Civilizations" is overdue.', '2023-11-05'),
(6, 6, 'Reminder: Renew your membership to continue enjoying library services.', '2023-11-06'),
(7, 7, 'Your book "Basics of Chemistry" is overdue.', '2023-11-07'),
(8, 8, 'Your membership is about to expire. Please renew.', '2023-11-08'),
(9, 9, 'Your book "The Art of Renaissance" is overdue. Please return it.', '2023-11-09'),
(10, 10, 'Membership Renewal Notice: Your membership expires next week.', '2023-11-10');
