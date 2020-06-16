#Questions for Challenge

###Q: What is controller containment and what does it offer developers?
When one view controller places another view controller inside of it. It's super helpful in preventing VCs from becoming too big. Break up the VC logic.

###Q: What is the difference between navigation and tab controllers? Under what circumstances do you use each one?
Navigation controllers gives you a prebuilt way for the user to navigate through UIViewControllers. It allows users add new views on top of the current view and then give the user a way to pop those views off to get back to the first view.

Tab controllers also the user to switch between many different Views quickly, but not necessarily in a heirarchy and not necessarily with a segue.

Generally, if there is a heirarchy to the app, i.e. that you have to move down into views and then back out of them, a navigation controller is best. If the app requires a few different views, but not a lot of heirarchy, a tab controller is best.

###Q: Name at least one Apple-supplied iOS application that uses each container class and explain how they're used in each app.

Tab controller - phone uses the tab bar controller. It uses the tabs to give you accessibility into favorites, recents, contacts, keypad, and voicemail. 

safari uses navigation controllers to go backwards and forwards on websites, to share data, and to add pages to reading list
