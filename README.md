# 🎲 Number Guessing Game  

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![License: MIT](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Project%20Status-Completed-blue?style=for-the-badge)

---

## 🚀 Overview  

This project is a **Bash-based number guessing game** with a **PostgreSQL database** backend to track user statistics.  
Users can guess a randomly generated number between 1 and 1000, and the game provides hints until the correct number is guessed.

The Bash script `number_guess.sh` interacts with the database to store users, their games, and the number of guesses, allowing returning users to see their best game and total games played.

---

## 🗂️ Database Structure  

The database consists of two tables:

- **`users`** – Stores user information, including a unique `user_id` and `username`.  
- **`games`** – Records each game played by a user, with `game_id`, `user_id` (foreign key), and number of `guesses`.  

---

## 🔗 Relationships  

- `users.user_id` → `games.user_id` (one-to-many)  

---

## ⚙️ Installation  

Clone the repository:

```bash
git clone https://github.com/<your-username>/Build-a-Number-Guessing-Game.git
cd Build-a-Number-Guessing-Game


Create the database and tables:

psql --username=freecodecamp --dbname=postgres -f number_guess.sql


Make the script executable:

chmod +x number_guess.sh
```

##  🧰 Usage

Run the game:

./number_guess.sh


Behavior:

Prompt for username →

New user: Welcome, <username>! It looks like this is your first time here.

Returning user: Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses.

Prompt for guesses →

Correct guess: You guessed it in <number_of_guesses> tries. The secret number was <secret_number>. Nice job!

Incorrect guess: Hints are provided: It's higher than that, guess again: or It's lower than that, guess again:

Non-integer input: That is not an integer, guess again:

##  📁 Files
File	Description
number_guess.sql	Database schema for users and games tables
number_guess.sh	Bash script implementing the number guessing game
README.md	Project documentation
##  🧠 Learning Objectives

Practice PostgreSQL table creation, primary/foreign keys, and queries

Track user statistics with Bash and PostgreSQL integration

Handle user input and validation in Bash

Apply conditional logic for dynamic gameplay feedback

##  🧻 License

This project is released under the MIT License.
You’re free to use, modify, and distribute it for personal or educational purposes.