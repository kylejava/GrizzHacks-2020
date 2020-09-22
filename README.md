# Elementovate - GrizzHacks 2020 (Awarded Best Education Hack)

Mobile application that helps students gain more use out of the periodic table

Devpost: https://devpost.com/software/elementovate?ref_content=user-portfolio&ref_feature=in_progress

## Inspiration
I wanted to build an application that I would/would've personally used, as well as find an audience that would use it as well. I remember when I was taking science classes back in middle school and high school, it was very tedious to me having to look up certain elements on the periodic table, and when I did find the element I was looking for, all I could see in that tiny little box were the element's atomic number, name, and mass. Some periodic table's did come with legends that would show which group every single element belonged to, but most of them did not. I wanted to find a way as taking a simple tool like the periodic table and finding a new way to make it easier for students to look up and find information about a certain element. 
## What it does
Elementovate is a mobile application that helps students learn the periodic table as well as use it as a tool for studying for future tests. It allows users to browse through a list of all the elements in the periodic table, and when an element is selected it brings up another screen with a box containing that particular element's name, symbol, atomic number, and atomic mass. When pressed, the box flips over showing more information about that particular element, like which group it was in, the state it is in, the year it was discovered, etc. Another key feature that the user can do is practice for quizzes or exams by choosing a selection of activities, like inputting the right name of the element when given its symbol and atomic number, choosing the right group that contains a certain element, and inputting the standard state for a certain element. 
## How I built it
I built this app using a mobile UI framework called Flutter, and utilized an external package for animations. I used Android Studio to build my app. I needed data for each element and I was able to find it in a JSON file on a GitHub repository called 'periodic-table-api' and then I was able to display different data for different elements on my app.
## Challenges I ran into
I was unable to find an API online that I could send requests to , but I did find the repository mentioned earlier which helped me out a lot. Another challenge was trying to structure the widgets in my Flutter app in order for me to create a certain screen layout that I had envisioned. I was unable to implement stuff that I wanted to due to time constraint. I also worked alone on this project so it was hard to gather every little detail at the beginning and had to start implementing things as I coded the project.
## Accomplishments that I'm proud of
I am really proud of the fact that I was able to build a mobile Flutter app in a short amount of time. I remember trying to make a simple to-do list app and it would take me a couple weeks just to build it. I entered this hackathon as a test for myself to see how far and how much I could do in a small amount of time as well as working on my own. 
## What I learned
I learned how to make each element box a different color depending on what group it was in. I also learned how to utilize and make different outcomes with inputted user data. 
## What's next for Elementovate
In the future, I want to build a search function that will allow the user to search up any element they want so they do not have to search for it by scrolling through the list. I also want to implement a legend that describes which color belongs to which group. I want to have different difficulties for the activities as well as have the user decide if they want to do the activity with a sorted list of elements or an unsorted list of elements. 

## Services
flip_card 0.4.4
- Link: https://pub.dev/packages/flip_card

periodic-table-api
- Link: https://github.com/neelpatel05/periodic-table-api
