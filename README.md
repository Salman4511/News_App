# News App

A Flutter application that fetches and displays news articles using the NewsAPI. Users can view news articles, see article details, and manage a list of favorite articles.

## Project Structure
```
lib/
├── main.dart
├── models/
│   └── article_model.dart
├── views/
│   ├── news_screen.dart
│   ├── favorites_screen.dart
│   └── article_detail_screen.dart
├── widgets/
│   ├── news_card.dart
│   ├── favorite_button.dart
│   └── app_bar.dart
├── controllers/
│   └── news_controller.dart
├── utils
|   └── constants 
└── services/
    └── api_service.dart
```

## Architecture

- **MVC (Model-View-Controller)**
  - **Model**: Represents the data and business logic.
  - **View**: UI components and user interactions.
  - **Controller**: Manages the logic and updates the view and model accordingly.

## Usage

- **News Screen:** Displays a list of news articles fetched from the NewsAPI.
- **Favorites Screen:** Shows a list of favorite articles.
- **Article Detail Screen:** Provides detailed information about an article and allows toggling the favorite status.

## Features

- Fetch news articles from the NewsAPI.
- Display articles with authors, titles, and publication dates.
- Mark articles as favorites using a sliding action.
- View detailed information about each article.
- #### images and long description is not in API response so the image is same for all

## Screenshots

<img src="https://github.com/user-attachments/assets/a6facdb1-f73e-4024-9e9c-77e12c64bfaa" alt="" width="300px">
<img src="https://github.com/user-attachments/assets/e1c74deb-1eee-4889-8882-62da6dfdc1bf" alt="" width="300px">
<img src="https://github.com/user-attachments/assets/9fd4e1fc-e87c-4896-aa9b-ccfca5cd9df2" alt="" width="300px">
<img src="https://github.com/user-attachments/assets/ff6231ca-4802-47ba-8734-81c000296d14" alt="" width="300px">


## Setup

1. **Clone the repository:**

    ```bash
    git clone <repository-url>
    ```

2. **Navigate to the project directory:**

    ```bash
    cd news_app
    ```

3. **Install dependencies:**

    ```bash
    flutter pub get
    ```

4. **Run the application:**

    ```bash
    flutter run
    ```


