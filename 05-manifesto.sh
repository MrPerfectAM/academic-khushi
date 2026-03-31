#!/bin/bash
# Author: Khushi (24BCY10380)
# Purpose: Open Source Manifesto Generator

echo "================================================================================"
echo "                   Vlc AUDIT - MANIFESTO GENERATOR                "
echo "================================================================================"

echo "Please answer the following questions to generate your open-source manifesto:"
read -p "What is your name? " name
read -p "What is your favorite open-source project? " project
read -p "What do you think is the most important aspect of open-source software? " aspect

echo "My name is $name, and I believe in the power of open-source software. My favorite project is $project, which demonstrates the values of $aspect. I will continue to support and contribute to the open-source community, promoting the principles of software freedom and collaboration." > $name.txt

echo "Your manifesto has been generated and saved to $name.txt"

echo "================================================================================"