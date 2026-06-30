#!/bin/bash

validate_age() {
    local age=$1

if [[ ! $age =~ ^[0-9]+$ ]]; then
    echo "Invalid age. please provide a numeric value."
    return 1
fi

if (( age < 18 )); then 
    echo "Sorry you must be 18 years old"
    return 1
fi

echo "Congratulations! you are eligible"
return 0
}

echo "Please enter your age:"
read user_age

validate_age "$user_age"
exit_code=$?

if (( exit_code != 0 )); then 
    echo "Input validation failed"
else
    echo "Validation Passed!"
fi

# Explanation : 
Lines 3-18: The function (a reusable tool)
You define a function called validate_age think of it like a machine you build first, that just sits there waiting to be used. It does three things:

Takes the age you give it ($1 = first thing passed in)
Checks if it's actually a number — if not, complains and stops
Checks if it's under 18 — if so, complains and stops
If both checks pass, says "Congratulations!"

Lines 20-21: Asking the user
The script prompts you to type your age and stores whatever you type into user_age

Line 23: Using the function
Now you actually run the machine you built, passing in what the user typed — validate_age "$user_age"

Line 24: Remembering the result
$? in bash always holds the exit code of the last command that ran — basically did it succeed (0) or fail (1). You save that into exit_code

Lines 26-30: Reacting to the result
If exit_code wasn't 0 (meaning something failed), print "Input validation failed". Otherwise print "Validation Passed!"
That's the whole flow — build the tool, ask the user, use the tool.