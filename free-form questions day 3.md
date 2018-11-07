## What is controller containment and what does it offer developers?

According to [Apple's archived documentation](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/ImplementingaContainerViewController.html):

> Container view controllers are a way to combine the content from multiple view controllers into a single user interface. Container view controllers are most often used to facilitate navigation and to create new user interface types based on existing content. Examples of container view controllers in UIKit include UINavigationController, UITabBarController, and UISplitViewController, all of which facilitate navigation between different parts of your user interface.

Basically it can help wrangle multiple views in an organized structure that allows the developer to better control how much the user can interact with differnt views within their app. 

## What is the difference between navigation and tab controllers? Under what circumstances do you use each one?

- tab bar controller
    - used to organize and present multiple view controllers at once
- navigation controller
    - slides things into place
    - back buttons help you return to things

The former is typically used to navigate to different sections of an app, while the latter is used to switch views within a section/tab. 

## Name at least one Apple-supplied iOS application that uses each container class and explain how they're used in each app.

Apple Music appears to use a tab bar controller at the bottom and based on what the user clicks on, it leads them to a different view, with the option to go back. The tabs that the app has allow as user to switch between their library, recommendations, radio, search, etc. The navigation controller helps connect views, but only the navigation item at the top is used to switch to a previous view.