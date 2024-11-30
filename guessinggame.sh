#!/bin/bash

function guess_files {
    local correct_guess=$(ls | wc -l)
    local user_guess=0

    while [[ $user_guess -ne $correct_guess ]]; do
        read -p "How many files are in the current directory? " user_guess
        
        if [[ $user_guess -lt $correct_guess ]]; then
            echo "Too low! Try again."
        elif [[ $user_guess -gt $correct_guess ]]; then
            echo "Too high! Try again."
        else
            echo "Congratulations! You guessed it right!"
        fi
    done
}

guess_files

