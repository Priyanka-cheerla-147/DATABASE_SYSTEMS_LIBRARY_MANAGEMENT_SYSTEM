-- Members table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    SSN VARCHAR(11) UNIQUE NOT NULL,
    CampusAddress VARCHAR(255) NOT NULL,
    HomeAddress VARCHAR(255) NOT NULL,
    CompanyAddress VARCHAR(255),
    PhoneNumber VARCHAR(15),
    MemberCardNumber VARCHAR(20) UNIQUE NOT NULL,
    ExpirationDate DATE NOT NULL,
    GracePeriod INT NOT NULL,
    Active VARCHAR(3) DEFAULT 'Yes',
    CONSTRAINT chk_Active CHECK (Active IN ('Yes', 'No'))
);

-- HomeMember table (Subclass of Members)
CREATE TABLE HomeMember (
    MemberID INT PRIMARY KEY,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- CompanyMember table (Subclass of Members)
CREATE TABLE CompanyMember (
    MemberID INT PRIMARY KEY,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- LibraryStaff table
CREATE TABLE LibraryStaff (
    StaffID INT PRIMARY KEY,
    MemberID INT,
    BorrowID INT,
    Name VARCHAR(255) NOT NULL,
    Role VARCHAR(50) NOT NULL,
    CONSTRAINT chk_Staff_Role CHECK (Role IN ('Reference Librarian', 'Check-out Staff', 'Library Assistant', 'Chief Librarian')),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BorrowID) REFERENCES BorrowingActivity(BorrowID)
);

-- ReferenceLibrarian table (Subclass of LibraryStaff)
CREATE TABLE ReferenceLibrarian (
    StaffID INT PRIMARY KEY,
    Specialty VARCHAR(50) NOT NULL,
    FOREIGN KEY (StaffID) REFERENCES LibraryStaff(StaffID)
);

-- CheckoutStaff table (Subclass of LibraryStaff)
CREATE TABLE CheckoutStaff (
    StaffID INT PRIMARY KEY,
    CheckoutLimit INT NOT NULL,
    FOREIGN KEY (StaffID) REFERENCES LibraryStaff(StaffID)
);

-- LibraryAssistant table (Subclass of LibraryStaff)
CREATE TABLE LibraryAssistant (
    StaffID INT PRIMARY KEY,
    Department VARCHAR(50) NOT NULL,
    FOREIGN KEY (StaffID) REFERENCES LibraryStaff(StaffID)
);

-- ChiefLibrarian table (Subclass of LibraryStaff)
CREATE TABLE ChiefLibrarian (
    StaffID INT PRIMARY KEY,
    ManagementResponsibility VARCHAR(255) NOT NULL,
    FOREIGN KEY (StaffID) REFERENCES LibraryStaff(StaffID)
);

-- Subjects table
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

-- SubjectsBooks table (Association table between Subjects and Books)
CREATE TABLE SubjectsBooks (
    ISBN VARCHAR(20),
    SubjectID INT,
    PRIMARY KEY (ISBN, SubjectID),
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);

-- Books table
CREATE TABLE Books (
    ISBN VARCHAR(20) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(100),
    SubjectArea VARCHAR(50),
    Description TEXT,
    Copies INT NOT NULL,
    ReferenceStatus VARCHAR(3) DEFAULT 'No',
    CONSTRAINT chk_ReferenceStatus CHECK (ReferenceStatus IN ('Yes', 'No'))
);

-- Catalog table
CREATE TABLE Catalog (
    CatalogID INT PRIMARY KEY,
    ISBN VARCHAR(20) NOT NULL,
    Description TEXT NOT NULL,
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN)
);

-- BorrowingActivity table
CREATE TABLE BorrowingActivity (
    BorrowID INT PRIMARY KEY,
    MemberID INT NOT NULL,
    BookISBN VARCHAR(20) NOT NULL,
    BorrowDate DATE NOT NULL,
    ReturnDate DATE,
    Returned VARCHAR(3) DEFAULT 'Yes',
    CONSTRAINT fk_BorrowingActivity_Member FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    CONSTRAINT fk_BorrowingActivity_Book FOREIGN KEY (BookISBN) REFERENCES Books(ISBN),
    CONSTRAINT chk_Returned CHECK (Returned IN ('Yes', 'No'))
);
