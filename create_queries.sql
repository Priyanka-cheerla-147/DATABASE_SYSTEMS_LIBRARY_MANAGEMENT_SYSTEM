CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    SSN VARCHAR(11),
    CampusAddress VARCHAR(255),
    HomeAddress VARCHAR(255),
    PhoneNumber VARCHAR(15),
    Photo BLOB,
    MembershipExpiryDate DATE
);

CREATE TABLE Professor (
    MemberID INT PRIMARY KEY,
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

CREATE TABLE Book (
    ISBN VARCHAR(20) PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    SubjectArea VARCHAR(255),
    Description TEXT,
    BookType ENUM('Lendable', 'Non-Lendable')
);
CREATE TABLE Catalog (
    CatalogID INT PRIMARY KEY,
    ISBN VARCHAR(20),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);

CREATE TABLE BorrowingActivity (
    TransactionID INT PRIMARY KEY,
    MemberID INT,
    ISBN VARCHAR(20),
    BorrowDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);

CREATE TABLE LibraryStaff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(255),
    Role ENUM('Chief Librarian', 'Associate Librarian', 'Reference Librarian', 'Check-Out Staff', 'Library Assistant')
);

CREATE TABLE OverdueNotice (
    NoticeID INT PRIMARY KEY,
    TransactionID INT,
    MemberID INT,
    IssueDate DATE,
    FOREIGN KEY (TransactionID) REFERENCES BorrowingActivity(TransactionID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

CREATE TABLE Wishlist (
    WishlistID INT PRIMARY KEY,
    BookTitle VARCHAR(255),
    Reason ENUM('Lost', 'Rare', 'Out-of-Print', 'Not Yet Acquired')
);

CREATE TABLE Notifications (
    NotificationID INT PRIMARY KEY AUTO_INCREMENT,
    MemberID INT,
    Message VARCHAR(255),
    NotificationDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

