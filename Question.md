Question: 
What is controller containment and what does it offer developers?

Answer:
View controller containment allows you to embed one view controller inside another, which can simplify and organize your code.


Question:
What is the difference between navigation and tab controllers? Under what circumstances do you use each one?

Answer:
A Navigation Controller is a special kind of view controller that manages a stack of view controllers and their corresponding views. It's an ideal way to display heirarchical data. The Navigation Controller is always initialized with a root view controller; this will be the starting view at the bottom of the stack.
UITabBarController is another UIViewController subclass. While navigation controllers manage a stack of related view controllers, tab bar controllers manage an array of view controllers that have no explicit relation to one another.
UITabBarControllers & UINavigationControllers are the main controllers for iOS Development.They are a great way to navigate between a set of your ViewControllers. The iOS Clock app is a perfect example of using UITabBarController as the main way to control the app.

Question:
Name at least one Apple-supplied iOS application that uses each container class and explain how they're used in each app.

The iOS Clock app 
