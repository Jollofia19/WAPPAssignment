CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    PasswordHash NVARCHAR(255) NOT NULL,
    Role NVARCHAR(20) NOT NULL CHECK (Role IN ('Student', 'Admin')),
    DateRegistered DATETIME DEFAULT GETDATE(),
    ProfileImage NVARCHAR(255),
    Status NVARCHAR(20) DEFAULT 'Active'
);

CREATE TABLE Courses (
    CourseID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX),
    Category NVARCHAR(50),
    DifficultyLevel NVARCHAR(50),
    CreatedByUserID INT,
    DateCreated DATETIME DEFAULT GETDATE(),
    Status NVARCHAR(20) DEFAULT 'Published',
    FOREIGN KEY (CreatedByUserID) REFERENCES Users(UserID)
);

CREATE TABLE Modules (
    ModuleID INT IDENTITY(1,1) PRIMARY KEY,
    CourseID INT NOT NULL,
    Title NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX),
    ModuleOrder INT,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE LearningMaterials (
    MaterialID INT IDENTITY(1,1) PRIMARY KEY,
    ModuleID INT NOT NULL,
    Title NVARCHAR(100) NOT NULL,
    ContentType NVARCHAR(20),
    FileURL NVARCHAR(255),
    Description NVARCHAR(MAX),
    DateUploaded DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (ModuleID) REFERENCES Modules(ModuleID)
);

CREATE TABLE Quizzes (
    QuizID INT IDENTITY(1,1) PRIMARY KEY,
    ModuleID INT NOT NULL,
    Title NVARCHAR(100) NOT NULL,
    TotalMarks INT,
    TimeLimit INT,
    DateCreated DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (ModuleID) REFERENCES Modules(ModuleID)
);

CREATE TABLE Questions (
    QuestionID INT IDENTITY(1,1) PRIMARY KEY,
    QuizID INT NOT NULL,
    QuestionText NVARCHAR(MAX) NOT NULL,
    QuestionType NVARCHAR(30) DEFAULT 'MCQ',
    OptionA NVARCHAR(255),
    OptionB NVARCHAR(255),
    OptionC NVARCHAR(255),
    OptionD NVARCHAR(255),
    CorrectAnswer NVARCHAR(255),
    Marks INT DEFAULT 1,
    FOREIGN KEY (QuizID) REFERENCES Quizzes(QuizID)
);