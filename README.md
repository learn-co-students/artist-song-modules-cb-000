# Refactoring with Modules

## Objectives

1. Recognize "code smells" that indicate the need for refactoring.
2. Use modules to refactor away repetitious code.

## Overview

In this lab, we have an `Artist` class and a `Song` class. `Artist`s have many songs and an individual instance of the `Song` class belongs to an `Artist`. `Artist`s and `Song`s also have some familiar class methods that keep track of all of the instances of the class, count those instances and clear or reset them.

Open up the `lib` directory and spend some time reviewing the code in `artist.rb` and `song.rb`. Keep reading the code until you feel you understand what each method is doing.

Notice that there are behaviors that are shared between both of the these classes. For example, both classes have `.count` and `.reset_all` class methods. Consequently, both classes have *the same exact code*. As programmers, you may recall, we are lazy. We don't like to repeat ourselves. We like to keep it DRY (Don't Repeat Yourself). In this lab, we'll be identifying repetition and building modules to extract it out. Then, we'll use the `extend` and `include` keywords to lend the functionality of our modules to our `Artist` and `Song` classes.


## Instructions

### A Note on Refactoring Practices

We use TDD (test-driven development) for a reason. We write tests to define the desired behavior of our program so that we can write clean, beautiful code. Such code usually *isn't* the code you write the first time around. The code you first write is the code that makes your program *work*, the code that gets those tests passing. Then, we refactor our code to make it clean, DRY, and easy to understand. This is where our tests come in. If we write thorough tests that cover all of the aspects of our code's desired behavior. We can *first* write code that passes those tests and *then* break our code, fail our tests, write better code and pass our tests again.

This is called the **red, green, refactor** pattern. First tests fail, then you write bad code to get them to pass, *then* you refactor that bad code into good code. In this lab, you'll start by running the test suite. You'll see that all of the tests pass. Then, we'll break that code in order to refactor it, write better code and get our tests passing again. Remember, don't be afraid of broken code! Broken code is the status quo in programming. Your job is often to break something to make it better. Embrace broken code.

### Step 1: Class Methods

First, run the test suite. Wow, we're passing all of our tests! Okay, now let go of those passing tests because we are about to break our code.

The first area of refactoring we'll be attacking are the class methods. Notice that both the `Song` and `Artist` class have `.count`, `reset_all` and `find_by_name` class methods. Instead of repeating the same exact code in both classes, let's extract these class methods into a module that we can *extend* into the classes.

Ready to break your code? Comment out the `.reset_all`, `.count` and `.find_by_name` methods in the `Song` and `Artist` class. Run your test suite. Phew! Okay, we did it. That wasn't so bad, was it?

#### The `Memorable` Module

Let's define our module. Create a file called `memorable.rb`. Open up that file and define a module:

```ruby
module Memorable
end
```

Inside here, define your `reset_all`, `count` and `find_by_name` methods. Remember to add `require_relative '../lib/memorable.rb'` to your `Artist` and `Song` class files.

Once you define the three class methods mentioned above inside of the `Memorable` module, use the `extend` keyword to extend those methods, as class methods, into both the `Artist` and `Song` class. Refer to the previous code along exercise for help.

Now you're ready to run you test suite again. Get all those tests back to passing before you move on. Once your tests are passing, make sure you delete the commented-out `reset_all`, `count` and `find_by_name` class methods from your `Song` and `Artist` class. You don't need them anymore.

#### The `find_by_name` Method

Before we build the module to house this method, let's talk a bit about this method. In an upcoming unit, we'll be introducing databases. You'll learn how to connect your Ruby programs to a database and use that database to store information––even Ruby objects! Moving forward through this course, you'll be building web applications that are connected to databases that store user's information and the information pertinent to the app. Let's think about a common example:

Let's say your working on an app that serves as online store, connecting users to everything from books to movies to shoes to stereo equipment, you name it. We'll call this app "Nile" (definitely not inspired by another online market-place named after a famous river). Such an application needs to store the items it has for sale as well as the information of the user who logs in to go shopping. Consequently, every time a user logs in, or searches for an item, or purchases an item. We have to *retrieve information from a database*. One of the most common ways you'll be doing that is to use methods like `find_by_name` or `find_by_email` or `find_by_product_id` or...you get the idea. We'll be learning much, much more about this later. Here, we're building a simple `find_by_name` method that introspects on a class's `.all` class method and extracts the instance of the class with a certain name.

Okay, back to you're regularly scheduled programming:


### Step 2: Instance Methods

Let's go back to our `Song` and `Artist` class and take a look at another example of repetition. This time with instance methods. The `#to_param` instance method is repeated in the `Song` and `Artist` class. Another great candidate for refactoring!

Go ahead and comment out the `#to_param` method in both the `Song` and `Artist` class. Run your test suite again and see those broken tests!

Okay, now we're ready to define our module.

#### The `Paramable` Module

Create a new file called `paramable.rb`. Define your module here:

```ruby
module Paramable
end
```

Build the `#to_param` method inside your module and use the `include` keyword to include the `Paramable` module in both the `Song` and `Artist` class. Once you get your tests passing again, go ahead and delete the commented-out `to_param` method from the `Song` and `Artist` classes.

<a href='https://learn.co/lessons/artist-song-modules' data-visibility='hidden'>View this lesson on Learn.co</a>
