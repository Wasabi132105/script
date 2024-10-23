#!/bin/bash

# input filename
echo "Please enter the file name:"
# get filename
read filename

# Check filename
if [ -f "$filename" ]; then
    # input text in filename
    echo "Enter the text to search for:"
    read text
    
    # put the text in /home/yuchenxue/Desktop/project2/textfile/pattern.txt
    grep -i "$text" "$filename" > /home/yuchenxue/Desktop/project2/textfile/pattern.txt
    
    # already save
    echo "Matching lines have been saved to pattern.txt"
else
    # If file doesn't exist, display error message
    echo "File not found."
fi