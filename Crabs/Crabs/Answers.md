#  Answers (to Questions)

## What is controller containment and what does it offer developers?

Controller containment refers to the concept of embedding a set of view controllers within another, special view controller (such as a navigation controller or a tab bar controller) for the purposes of more cleanly organizing app content and facilitating easy navigation between different parts of the app.

## What is the difference between navigation and tab controllers? Under what circumstances do you use each one?

A navigation controller is used for navigating through a stack of views, usually from less detailed to more detailed. This is useful for navigating through a hierarchy of information. A tab bar controller is used for navigating the flat, top-level areas of an app. Apple's HIG advises using 2-5 tabs in the app, and only having one tab bar that navigates between the top-most levels of the app.


## Name at least one Apple-supplied iOS application that uses each container class and explain how they're used in each app.

The Settings app utilizes a Navigation controller, with each cell of each table navigating further down into a stack of more detailed views.

The Phone app utilizes a Tab Bar controller, with tabs for Favorites, Recent( call)s, Contacts, Keypad, and Voicemail. 
