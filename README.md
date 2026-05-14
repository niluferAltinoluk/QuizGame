# Quiz Game - iOS Application (Swift)

A simple and interactive quiz application built with **Swift** and **UIKit**. The app challenges users with general knowledge questions and tracks their high scores using local storage.

---

##  Features
*   **Dynamic Question Loading:** Questions and multiple-choice answers are managed dynamically.
*   **Randomized Answer Placement:** The correct answer's button position is randomized for each question using `arc4random_uniform`.
*   **Persistent Scoring:** Uses `UserDefaults` to save and display the user's last score on the home screen.
*   **Smooth Navigation:** Seamless transitions between the main menu and the quiz detail screen.
*   **User Interface:** Rounded buttons and a clean layout using Auto Layout and Storyboards.

---

## Technical Structure

### 1. View Controllers
*   **`ViewController.swift`**: The entry point of the app. It displays the last saved score fetched from `UserDefaults`.
*   **`DetailViewController.swift`**: The core logic of the game.
    *   Handles the question array and answer verification.
    *   Manages the game state (current question index, score calculation).
    *   Implements the `nextQuestion()` logic to update the UI.

### 2. Data Management
*   **UserDefaults**: Used for lightweight data persistence.
    ```swift
    // Saving the score
    defaults.set(String(score), forKey: "score")
    // Fetching the score
    let score = UserDefaults.standard.string(forKey: "score") ?? "0"


###  3. Game Logic Flow
* Answer Verification: Checks the sender.tag of the pressed button against the rightAnswer variable.

* UI Updates: Dynamically assigns titles to buttons based on the randomized correct answer position.

* Session Management: Once all questions are answered, the app saves the score and dismisses the quiz view to return to the main menu.

---

###  How to Run
* Clone the repository to your local machine.

* Open QuizGame.xcodeproj in Xcode.

* Select an iOS Simulator (e.g., iPhone 15).

* Press Cmd + R to build and run the application.

### Developer Note:
* This project was created as a demonstration of basic iOS development concepts including IBOutlets, IBActions, View Lifecycle (viewWillAppear), and data persistence.
