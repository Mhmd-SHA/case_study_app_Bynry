## Flutter Case Study - Bynry_UnNamed_Project

This project is a case study showcasing the power of Flutter in building a mobile application with a focus on improved user experience, robust features, and clean code practices.

### Project Overview

This case study demonstrates the development of a mobile application with a complete UI/UX overhaul, user authentication using Firebase Auth, and functionalities for managing transactions, recent activities, statistics, and user profiles.

### Project ScreenShots

<p float="left">
  <img src="/img.png" width="250"  alt=""/>
  <img src="/img_1.png" width="250"  alt=""/> 
  <img src="/img_2.png" width="250"  alt=""/>
  <img src="/img_3.png" width="250"  alt=""/>
  <img src="/img_2.png" width="250"  alt=""/>
  <img src="/img_5.png" width="250"  alt=""/>
  <img src="/img_6.png" width="250"  alt=""/>
</p>


### Technologies Used

* Flutter version: Channel stable 3.22.2
* Dart version: 3.4.3
* Additional dependencies:
    * Firebase Auth: User authentication and management
    * Provider/GetX: State management 
    * cupertino_icons: ^1.0.6
    * get: ^4.6.6 
    * provider: ^6.1.2 
    * google_fonts: ^6.2.1 
    * firebase_auth: ^5.1.0 
    * firebase_core: ^3.1.0 
    * cloud_firestore: ^5.0.1 
    * shimmer: ^3.0.0 
    * flutter_iconly: ^1.0.2 
    * animated_bottom_navigation_bar: ^1.3.3 
    * u_credit_card: ^1.3.1 
    * font_awesome_flutter: ^10.7.0 
    * intl: ^0.19.0 
    * fl_chart: ^0.68.0
  

### Running the App
    USERNAME : mhmd@gmail.com
    PASSWORD : 123456
        or simply create an Account using any mailID


1. **Prerequisites:**
    * Ensure you have Flutter installed on your system. Refer to the official documentation: https://docs.flutter.dev/get-started/install [invalid URL removed].
2. **Clone the Project:**
    ```bash
    git clone https://github.com/Mhmd-SHA/case_study_app_Bynry.git
    ```
3. **Install Dependencies:**
   Navigate to the project directory and run:
    ```bash
    flutter pub get
    ```
4. **Configure Firebase (if applicable):**
    * Follow Firebase instructions to set up your project and obtain configuration details.
    * create firebase_options.dart if you want to use your own firebase (use flutterfire)
    * 
5. **Run the App:**
   Connect your device or start an emulator, and run the app:
    ```bash
    flutter run
    ```

### Project Structure

The project maintains a well-organized folder structure for improved code readability and maintainability. Key folders include:
* `ui`: Contains all UI components (widgets) for login, signup, home, transactions, statistics, profile, etc.
* `models`: Represents data structures used in the application.
* `services`: Handles interactions with external services like Firebase.
* `providers`: Houses state management logic using Provider or GetX.
* `utils`: Contains utility functions used throughout the app.

**Note:** This is a general structure, you can adjust it based on your specific project.

### Case Study Focus

This case study highlights several key aspects of Flutter development:

* **UI/UX Enhancements:**  A complete UI/UX revamp focused on creating an appealing and user-friendly experience.
* **Form Validation:** Robust validation implemented in login and signup forms to ensure data integrity.
* **Firebase Authentication:** Secure user management with Firebase Auth for login, signup, and user data storage.
* **State Management:** Effective state management using Provider or GetX for managing application state across different screens.
* **Clean Code Practices:** Emphasis on maintaining a clean and well-structured codebase for better maintainability.

### Implemented Features

The application boasts a wide range of features including:

* Login and Signup functionalities
* Home page with recent activity display
* Grid view for quick access to available services
* Dedicated Statistics page with line chart for data analysis
* Transaction page to track user transactions
* Profile page for managing cards and account settings



following changes were made in this case Study

* Overall UI/UX changes to appealing style
* LoginPage, SignUp Page design Changes
* validations added in the login signup forms 
* Firebase Auth For user Management 
* Folder Structure Maintained to Code Readabilty, maintanence 
* Provider And GetX used for State Management 
* homePage design and ligics cahnged to best userexpereince 
* Recent App Activity Design Added in the HomePage 
* Available Services added in the GridView for QUick access 
* StatisticsPage Added to Manage the overall Data off Transactions and Track the Income and Expenses 
* Line Chart Added to Analyse the Overal Data 
* TransactionPage Added to Track All the Transacitons made by the user 
* Profile Page added to Manage Cards and Account Settings


### Future Enhancements

* Integration with additional payment gateways
* Push notifications for real-time updates
* Advanced filtering and search functionalities

### License

* Specify the license under which you are distributing the code (e.g., MIT License, Apache License).

### Contributing

* If you are open to contributions, explain how others can contribute to the project.
