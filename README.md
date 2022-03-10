# flutter_library

A Flutter App that follows the Widgets of the Week to build an app that uses every widget introduced in the series.

As of March, 2022, there are 120 widgets presented in the series.

Code comments will be meticulously added to create a visual library of Flutter widgets.

For the learning process, many common options will be changed in each widget, mostly to showcase the things that can 
be done.

Each widget will be housed in its own file, to make things more readable and tidy. Some widgets will, awkwardly, be 
placed in spacing and/or sizing widgets.

#1 DropdownButton
Pretty clear name. Uses a list to create a dropdown menu, and is controlled by a simple setState function to change 
the value. Can be modified to do much more important things, of course.

Issues: After the dropdown opens, and is closed, there's an awkward highlight around the button that is unattractive.
Cheats: Put the DropdownButton inside a FractionallySizedBox because the button was too cramped for my liking.

#2 Baseline
A simple layout widget that changes the positioning of items inside it to the bottom of the widget, opposed to the 
default, which is the top of the widget.

Issues: None, except that this is a difficult widget to show because it doesn't do much.
Cheats: Put it inside a sized box with a border to show that the text is, in fact, at the bottom.

#3 GestureDetector
A very versatile widget to check for an impressive amount of different gestures from the user.

Issues: Hard to show just how many different gestures this widget can detect.
Cheats: Put inside a container with an icon to show the instant effect of the gesture on more than just the test 
inside the detector.