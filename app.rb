require 'active_record'
require 'pp'
require 'pry'
# require the models for the todo list app
require_relative './todo_list'
require_relative './todo'

class App

  def initialize
    # @description: connect to a database, postgres is used below
    @conn = App.connect
    App.build_schema
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
      when 'pry'
        binding.pry
      end
    end
    # when REPL is over, disconnect from DB
    ActiveRecord::Base.remove_connection(@conn)
  end

  # @description: a method which returns a DB connect from Active Record
  def self.connect
    ActiveRecord::Base.establish_connection(
      adapter: 'postgresql',
      username: 'faisal', # change this depending on your postgresql user configs
      database: 'active_record_todo'
    )
  end

  # @description: a class method to build the database schema
  def self.build_schema
    ActiveRecord::Schema.define do
      # create the todo lists table
      create_table :todo_lists, force: true do |table|
        table.string :title
      end

      # create the todo items table
      create_table :todos, force: true do |table|
        table.text :text
        table.boolean :status
        table.integer :todo_list_id
      end
    end
  end

end

# initialize a new app and call the run method
App.new.run
