#!/bin/bash

# Simple Password Generator

echo "Welcome to simple password generator"

sleep 1

echo "Please enter the length of the password:"
read PASS_LENGTH

# Génère 5 mots de passe
for p in $(seq 1 5); do
    openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done
