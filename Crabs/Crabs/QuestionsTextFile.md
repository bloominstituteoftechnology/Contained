#  Questions

What is controller containment and what does it offer developers?

    Container view controllers are a way to combine the content from multiple view controllers into a single user interface. Container view controllers are most often used to facilitate navigation and to create new user interface types based on existing content. Examples of container view controllers in UIKit include UINavigationController, UITabBarController, and UISplitViewController, all of which facilitate navigation between different parts of your user interface.


What is the difference between navigation and tab controllers? Under what circumstances do you use each one?

    A navigation controller is a container view controller that defines a stack-based scheme for navigating hierarchical content.
    
    A tab controller is a container view controller that manages a radio-style selection interface, where the selection determines which child view controller to display.
    The tab bar interface displays tabs at the bottom of the window for selecting between the different modes and for displaying the views for that mode.

Name at least one Apple-supplied iOS application that uses each container class and explain how they're used in each app.

    The clock app uses tab controllers to switch between stop watch, alarm, clock, and timer. 
    Contacts app uses navigation controllers
