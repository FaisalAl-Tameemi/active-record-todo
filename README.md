
# Active Record TodoList Example

The goal for this exercise is to complete the code required in order to have a full functional todo app (i.e. actually saves stuff in the DB) that we can interact with via the Terminal.

To achieve this, we will have to build a REPL which listens to a command from the terminal and executes the code needed. The starter code for the REPL and the app can be found in `./app.rb`, running this file should run the app and the REPL.

The code for interacting with the database must be placed within the models. For example, if we want to search a certain todo list by the title, that would be a class method within the TodoList class.

### To keep this app simple, we will use 2 classes:

1. `TodoList`: an active record model which deals with todo lists in the database. This includes adding a todo item to a certain list or even search all lists by a text query. A *TodoList* can have multiple todos.

2. `Todo`: an active record model which deals with a singular todo item in the database. This includes search an item by a title. The properties of a todo item are `text` and `status`. Todo instances must belong to a TodoList.


### The app should allow a user (terminal for now) to do the following:

1. Show all todo lists.
2. Show all items for a given todo list.
3. Show a given list's total progress (percentage completion of all items within list)
4. Add a new todo item to a given list.
5. Mark a todo item as completed.
6. Create a new todo list.

**Remember:** Each of the objectives listed above must have their own REPL commands. And the `app.rb` shouldn't include any database specific logic, rather should leverage code within the two classes used instead.

### Here's an overview of the setup steps:

1. Make sure you have `postgres` installed.
2. Install the required gems on your machine (see `./Gemfile`).
3. Run `bundle install` to ensure that you have the required gems for the app.
4. Create a database called `active_record_todo` in your local Postgres installation.
5. Edit the database connection code in `app.rb` on line 9. Specifiy the correct username used in your Postgres installation.
6. Run the `app.rb` file to make sure that you've connected correctly. If it runs the REPL and you see a welcome message, you're good to go.
