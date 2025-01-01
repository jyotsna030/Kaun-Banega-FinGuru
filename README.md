# Kaun Banega FinGuru

A gamified financial literacy app inspired by popular quiz shows like KBC and Millionaire. Make learning about finance and economics fun and rewarding!

---

## Inspiration

The idea comes from the universal appeal of quiz games like KBC, where people not only test their knowledge but also earn rewards. We decided to bring this excitement into the world of financial literacy, making complex topics like budgeting, savings, and investment fun and accessible for everyone.

---

## What it Does

Kaun Banega FinGuru is an interactive quiz app focused on financial literacy:

- **Quiz Format:** 15 questions divided into 3 difficulty levels: Easy, Medium, and Difficult.
- **Scoring:** Earn points for every correct answer (Easy: 10, Medium: 20, Difficult: 30).
- **Rewards:** Redeem goodies based on your score.
- **Lifelines:**
  1. **Ask AI:** Get a real-world explanation of the concept.
  2. **50:50:** Eliminate two wrong options.
  3. **Skip Question:** Move to the next question without answering.
- **Real-Time Feedback:** Wrong answers terminate the quiz, displaying your score and learning outcomes.

---

## How We Built It

### Tech Stack

1. **Frontend:** Flutter
   - Responsive UI built with custom widgets.
   - State management using Provider for dynamic interactions.

2. **Backend:** Firebase
   - Firestore: Real-time database for storing questions, user data, scores, and rewards.
   - Authentication: Secure login/signup using Firebase Authentication.
   - Cloud Functions: Handles advanced logic like lifeline updates and scoring.

3. **AI Integration:** OpenAI API for lifelines like "Ask AI".
4. **Design:** Figma for prototyping and creating UI assets.
5. **Version Control:** GitHub for collaborative development and version tracking.

---

## Features

1. **Dynamic Quiz:** Fetches questions from Firestore, categorized by difficulty.
2. **Interactive Lifelines:** Helps users with tough questions, enhancing learning.
3. **Reward System:** Redeem points for goodies displayed in the app.
4. **Educational Feedback:** Provides real-world explanations for wrong answers.
5. **Gamified Learning:** Combines education and entertainment seamlessly.

---

## Challenges We Faced

1. Managing app state dynamically for quiz progress and lifeline usage.
2. Implementing real-time Firestore queries for questions and rewards.
3. Designing an intuitive UI for both beginners and experienced users.
4. Building it solo, which required balancing coding, design, and testing.

---

## Accomplishments

- Successfully created a fully functional prototype in Flutter.
- Integrated Firebase Firestore for real-time data.
- Developed AI-powered lifelines for enhanced learning.
- Designed a user-friendly and visually appealing app.

---

## What We Learned

- Effective use of Firebase for backend management.
- Building scalable applications using Flutter.
- Importance of user experience in educational apps.
- Integrating AI for simplifying complex concepts.

---

## What's Next for Kaun Banega FinGuru?

1. Adding multiplayer mode for a competitive edge.
2. Introducing more financial topics like taxes, loans, and crypto.
3. Expanding the rewards system to include sponsorships and partnerships.
4. Localization support to make it accessible in multiple languages.

---

## How to Run the Project

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/kaun-banega-finguru.git
   ```

2. Open the project in your preferred IDE (e.g., VSCode, Android Studio).

3. Add your Firebase credentials to the `google-services.json` file (Android) and `GoogleService-Info.plist` (iOS).

4. Run the project:

   ```bash
   flutter run
   ```

---

## Screenshots

### Splash Screen
![Splash Screen](https://github.com/jyotsna030/Kaun-Banega-FinGuru/blob/main/assets/images/Shares%20are.png)

### How it works
![How it works](https://github.com/jyotsna030/Kaun-Banega-FinGuru/blob/main/assets/images/Shares%20are%20(2).png)

### Screens
![Screens](https://github.com/jyotsna030/Kaun-Banega-FinGuru/blob/main/assets/images/Shares%20are%20(4).png)

### Screens
![Screens](https://github.com/jyotsna030/Kaun-Banega-FinGuru/blob/main/assets/images/Shares%20are%20(5).png)

### Features
![Features](https://github.com/jyotsna030/Kaun-Banega-FinGuru/blob/main/assets/images/Shares%20are%20(3).png)

### FlowChart
![Screens](https://github.com/jyotsna030/Kaun-Banega-FinGuru/blob/main/assets/images/KBF_Flowchart.png)

---

## Demo Video

[Click Here to Watch the Demo](https://example.com/demo-video)

Or embed the video directly:

```markdown
[![Watch the Demo](https://img.youtube.com/vi/your_video_id/0.jpg)](https://www.youtube.com/watch?v=your_video_id)
```

---

## Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
