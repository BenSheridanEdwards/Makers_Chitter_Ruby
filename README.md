
### [Makers Academy](http://www.makersacademy.com) - Week 4 Weekend Project

Chitter Challenge 
-

[Outline](#Outline) | [Task](#Task) | [Installation Instructions](#Installation) | [Feature Tests](#Feature_Tests) | [User Stories](#Story) | [Objects & Methods](#Methods) |


## <a name="Outline">Outline</a>
 
Build a Twitter clone in Ruby! 

## <a name="Task">The Task</a>

We are going to write a small Twitter clone that will allow the users to post messages to a public stream.

## <a name="Installation">Installation Instructions</a>

Clone the repository from github then change directory into it.

```
$ git clone git@github.com:BenSheridanEdwards/Makers_Chitter_Ruby.git
$ cd Makers_Chitter_Ruby
```
Load dependencies with bundle.
```
$ gem install bundle
$ bundle
```

### To set up the database

Connect to `psql` and create the `Chitter` and `Chitter_test` databases:

```
CREATE DATABASE "Chitter";
CREATE DATABASE "Chitter_test";
```

To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:	### To run the Bookmark Manager app:

```	```
rackup -p 4567
```	```


To view bookmarks, navigate to `localhost:3000/chitter`.


## <a name="Feature_Tests">Feature Tests (How it works)</a>


## <a name="Story">User Stories</a>

```
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep.
```


## <a name="Methods">Objects & Methods</a>
-


### Object


| Methods        | Description                                            |
|----------------|--------------------------------------------------------|
| | |
  