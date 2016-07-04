require 'active_record'
require 'pp'
# require the models for the todo list app
require_relative './todo_list'
require_relative './todo'

# @description: connect to a database, postgres is used below
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  username: 'faisal', # change this depending on your postgresql user configs
  database: 'active_record_todo'
)

class App

  def initialize
    # TODO: implement
  end

  # @description: starts a REPL to add/search/delete/update todos in the DB
  def run
    while true
      puts '** Welcome to the Active Record Todo App **'
      puts 'Please enter a command:'
      cmd = gets.chomp
      case cmd
      when 'q'
        break
      when 'other_command'
        # TODO: implement other commands
      end
    end
  end

end

# initialize a new app and call the run method
App.new.run
