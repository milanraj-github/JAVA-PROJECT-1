University Management System (UMS)
Welcome to the University Management System (UMS), an innovative Java-based application designed to manage various university operations, such as student enrollment, course management, faculty management, and grading. The system allows administrators, faculty, and students to interact seamlessly within a university setting.

🎯 Features
Student Enrollment: Allows students to register for courses, view schedules, and track academic progress.
Course Management: Faculty can create, edit, and manage courses and assign grades.
Faculty Management: Administrators can manage faculty details and assign them to courses.
Grading System: Allows faculty to grade assignments and exams, with automatic calculation of final grades.
Attendance Tracking: Faculty can record and view student attendance.
Student Dashboard: Displays course enrollment, attendance, grades, and other relevant information.
Admin Dashboard: Allows administrators to manage users, courses, and overall university data.
🖥️ Software Requirements
Java 8 or above
JDK 1.8 or later for compiling and running the project
MySQL for database management
JDBC for connecting to the MySQL database
Swing for GUI components
IDE: IntelliJ IDEA or Eclipse
📂 Project Structure
The project consists of several core classes designed for specific functionalities:

Splash: The splash screen shown during the initial loading.
Signup: Manages student and faculty registration.
Login: Handles login functionality for students, faculty, and administrators.
MainClass: The entry point for the application.
ViewCourses: Displays available courses for students and manages course details for faculty.
ViewAttendance: Displays and tracks student attendance.
GenerateGrades: Allows faculty to assign grades to students and automatically calculate final grades.
StudentDashboard: The main interface for students to view their enrolled courses, grades, and attendance.
AdminDashboard: The main interface for administrators to manage university operations.
Database: Manages database connections and queries.
🛠️ Classes and Interfaces
1. Splash
Attributes:

JFrame frame: The main frame for the splash screen.
Methods:

public void displaySplashScreen(): Displays the splash screen on application startup.
2. Signup
Attributes:

int id: User ID (for students or faculty).
String username: Username for the new user.
String password: Password for the new user.
String name: Full name of the user.
String email: Email address.
String role: Role (student, faculty, admin).
Methods:

public void registerUser(): Registers a new user into the database.
public boolean validateInput(): Validates the user’s input during registration.
3. Login
Attributes:

String username: User's login username.
String password: User's login password.
Methods:

public boolean authenticate(): Authenticates user credentials against the database.
4. MainClass
Attributes:

JFrame mainFrame: Main window for the application.
Methods:

public static void main(String[] args): Launches the application.
public void showDashboard(): Displays the dashboard for the logged-in user.
5. ViewCourses
Attributes:

JTable table: Table to display course information.
DefaultTableModel tableModel: Model for managing table data.
int userId: Stores the logged-in user's ID.
Methods:

private void loadDataFromDatabase(): Loads course data from the database.
public void displayCourses(): Displays the fetched course data in a JTable.
public void registerForCourse(): Allows students to register for a course.
6. ViewAttendance
Attributes:

int courseId: Course ID for attendance tracking.
Methods:

public void recordAttendance(): Allows faculty to record attendance.
public void displayAttendance(): Displays student attendance for the course.
7. GenerateGrades
Attributes:

int courseId: Course ID for grading.
Methods:

public void assignGrade(int studentId, double grade): Assigns a grade to a student.
public double calculateFinalGrade(int studentId): Calculates the final grade for a student based on assignments and exams.
8. StudentDashboard
Attributes:

int studentId: Stores the student's ID.
Methods:

public void viewCourses(): Displays the student’s enrolled courses.
public void viewGrades(): Displays the student’s grades.
public void viewAttendance(): Displays the student’s attendance record.
9. AdminDashboard
Attributes:

int adminId: Stores the administrator's ID.
Methods:

public void manageUsers(): Allows administrators to manage users (students, faculty).
public void manageCourses(): Allows administrators to manage courses offered by the university.
public void viewReports(): Displays reports on student performance, attendance, etc.
10. Database
Attributes:

String URL: Connection URL for the MySQL database.
String USER: MySQL username.
String PASSWORD: MySQL password.
Methods:

public Connection getConnection(): Returns a connection to the MySQL database.
public void closeConnection(): Closes the database connection.
🗂️ Database Structure
The database for University Management System (UMS) includes the following tables:

signup (Stores user details):
sql
Copy code
CREATE TABLE signup (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(20) NOT NULL
);
courses (Stores course information):
sql
Copy code
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(10) UNIQUE NOT NULL,
    credits INT NOT NULL
);
enrollment (Stores student-course enrollment data):
sql
Copy code
CREATE TABLE enrollment (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES signup(id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
attendance (Stores student attendance records):
sql
Copy code
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    date DATE,
    status VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES signup(id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
grades (Stores grades for each student in each course):
sql
Copy code
CREATE TABLE grades (
    grade_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    grade DOUBLE,
    FOREIGN KEY (student_id) REFERENCES signup(id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
Example Dummy Data for Students and Courses:
Users: Students and faculty members with their roles (student, faculty, admin).
Courses: Courses like "Computer Science 101", "Mathematics 101", "Physics 101", etc.
Enrollment: Records of which students are enrolled in which courses.
Attendance: Tracks if students attended specific classes.
Grades: Records of the grades assigned to students for each course.
Next Steps and Considerations:
UI Design: Ensure a clean, user-friendly UI for students, faculty, and admins. Use Swing to design responsive components.
Database Integration: Test all CRUD operations (Create, Read, Update, Delete) for seamless database interaction.
Advanced Features: You could add features like notifications for grade updates or new announcements.
Security: Add security measures like password hashing to protect user credentials.
This system will streamline university management by automating tasks such as course registration, grading, attendance, and overall data handling.

