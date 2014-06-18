![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")

#BEWD - Starting to code. 

###Bernard Kravitz

bernie@gowatchit.com | @bjk

---


##Agenda

*	What is Web Development?
*	Bash Commands
* Ruby code
* Homework (n0000000)

---

## Tools
### Sublime Text

If you haven't already, download it!
http://www.sublimetext.com

---

##Work Like a Developer
###Integrate into the developer community

* Choose the right OS, editors, & tools for your projects.
* Leverage the online community's vast libraries and documentation.
* Spread the knowledge you gain, and give back to the community when you can.
* Take pride & and joy in what you work on.
* Be efficient:
  * Use the keyboard as much as possible
  * If you find yourself doing the same thing repeatedly, automate it

---

##The Command Line
###What is it?

* Everything in UNIX is a program. The shell is a program. The shell commands are a program. 

* The command line is a terminal giving you direct access to your operating system. You can enter simple commands to perform a variety of functions.

* Everything in UNIX is a program. The shell is a program. The shell commands are a program. 

Many of the tasks we need to carry out (such as committing our code) are best performed in the command line.

---

##The Command Line
###How do I start?

For Macs:

* Open the "Terminal" app
* For a better experience, download and install "iTerm 2", which is a replacement app that is slightly better.


For Windows:

* Open the "Command Prompt" application
* For a better experience, try "Console" (http://sourceforge.net/projects/console/)

---

##The Command Line
###Why are we using it?

* In order to learn Ruby without Rails, we must learn how to run Ruby programs on their own.
* To do so, we can simply create "stand-alone" Ruby applications.
* A stand-alone Ruby app consists of one or more Ruby files (files that have a .rb extension)
* Once you have written a Ruby file, you can run the file by typing:
	* ```ruby file.rb``` (this would run a Ruby file named file.rb)
* This is the basis of how we will be writing and testing our Ruby applications in the initial portion of this course

---



![GeneralAssemb.ly](../../assets/ICL_icons/Code_along_icon_md.png)
##Command Line Basics


---

## Code Time!

---

##Ruby
###A programming language

* An open source programming language
* Easy to read and natural to write
* Created by Yukihiro Matsumoto (aka Matz) with the goal of building a language FOR developers
* Regularly maintained and evolved (recently reached version 2.0.0)

<div style="text-align:center;">
  <img src="../../assets/ruby/ruby_img.png" />
</div>

---

##Rails
###A web application framework

* Open source web application framework that is built in Ruby
* Allows you to create web applications that query a database.
* Created by DHH (David Heinemer Hansson) to simplify the task of building web applications, with the help of _conventions_

<div style="text-align:center;">
  <img src="../../assets/rails/dhh.jpg" style="margin-right:20px;"/>
  <img src="../../assets/rails/rails.png" />
</div>


---


##Ruby & Rails
###Ruby first.

* It will be easier to navigate a Rails project once we have a basic understanding of Ruby.
* We will first teach you how to write simple Ruby scripts as stand-alone applications
* Once we have become familiarized with Ruby, we will start building Rails applications (which are essentially groups of Ruby script files that work together)

---

##Computational Thinking
###What does it mean to program?

"Learning about “for” loops is not learning to program, any more than learning about pencils is learning to draw."

 –Bret Victor, Learnable Programming

---

##Programming Fundamentals
* In order to start writing our own Ruby programs, we need to learn some of the basic fundamental tools
* Specifically, we need to learn:
  * Variables
  * Methods
  * Conditions
* We will first learn the basics on their own, and then try to apply our skills in a simple interactive Ruby script

---


##Saving Values
### Using Variables

* We can tell our program to remember values for us to use later on
* The action of saving a value to memory is called **assignment**
* The entity we use to store the value is called a **variable**
* The action of getting the value from a variable is called **accessing** the variable
* We will use all the above techniques to store values into variables, and generate new values using existing variables

---


##Variables
###Storing Values

```
  >> name = "Steven"
   => "Steven"
  >> age = 2013 - 1983
   => age # 30
```
---

##Data Types

* The types of different values we support include numbers, text, and other more complex ones we'll see in the future
* Ruby has its own names for these:

```
    1           #Fixnum
    1.99          #Float
    'Hi! String here!'    #String
    "I'm a string tool"   #String
```
---


![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Code_along_icon_md.png)
##Variables

Let's learn how to assign and access simple integer and string variables

---


##Saving Code
###Using Methods

* The same way we can store VALUES in memory by using variables…
* We can store CODE in memory by using methods.
* In other words, we can train the program to 'remember' a set of commands, and give that set of tasks a command name
* Then, we can call that command by name and the program will perform those tasks

---

##Math in Ruby
###Ruby Arithmetic Operators

![Ruby Arithmetic](../../assets/ruby/ruby_arithmetic.jpg)

---


![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Code_along_icon_md.png)
##Methods

Let's learn how to call simple methods, and how to declare our own methods.

---

##Methods
###Recap

* Methods let us train the program to 'remember' a set of code to perform later
* Making a new method is called **declaring** a method
* Declaring a method does NOT run the method immediately
* If the method takes in variables to use while it is doing its tasks, those are called **parameters**

---


##More Data Types
###Booleans 

* Besides strings and integers, Ruby also has a Boolean data type
* A boolean is a simple value that is either ```true``` or ```false```
* When different data types are compared to each other, the result of that comparison is a boolean result (e.g. 5 < 7 => true)

---


##Boolean
###Logic Operators


![](../../assets/ruby/logic_operators.png)


---

![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Code_along_icon_md.png)
##Booleans

---


##Variables & Data Types
###Recap 

Data Types

* Number
* Float (number with decimals)
* String
* Booleans

Variables

* Store values
* Can be passed to methods as parameters

---

##Conditional Logic
###Decision Time 

It's either TRUE or FALSE (like booleans)

If you are greater than 18 
you are an adult

  if age > 18
    puts "You are an adult"
  end

---


##Conditional Logic
###Multiple Conditions


  guess = 7 
  if guess > 5
    puts "Too high!"
  elseif guess < 5
    puts "Too Low!"
  else
    puts "You've guessed my hidden digit!"
  end

---

##Conditional Logic
###Multiple Conditions

![truth_table](../../assets/ruby/truth_table.png)

---

![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Exercise_icon_md.png)
##Lab Time
*   Conditional Teddit

---


## Homework
###Secret Number

Let's see a demo of Secret Number

* HW 1 - Secret Number
  * Secret number is a game we will incrementally build for homework during the Ruby portion of the course. 
    Players must guess a secret number and your program will provide feedback. 
---

## Homework

*	Review command line. 
* Practice creating a few directories, and opening them in sublime. 
* Create your first blog entry. (tumblr or medium are great places)

### Extra credit

* Download ruby koans (http://rubykoans.com)
* Make one or two stand alone ruby programs. 


---
