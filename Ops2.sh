#!/bin/bash
# Install whois on your kali

# Add to your bash script a sixth option that calls a function to:
function runcommands() {
    # Take a user input string. Presumably the string is a domain name such as Google.com.
    echo "enter a domian name"
    read name
    # Run whois against a user input string.
    {
     whois $name  
    # Run dig against the user input string.
            dig $name 
    # Run host against the user input string.
            host $name
    # Run nslookup against the user input string.
        nslookup $name




    } > "file.txt"
    



    
}
runcommands 
# Output the results to a single .txt file and open it with your favorite text editor.

# For this challenge you must use at least one variable and one function.