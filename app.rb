require 'active_record'
require 'pp'
require 'pry'
# require the models for the todo list app
require_relative './todo_list'
require_relative './todo'
require_relative './db_config'

class App
  # include db config module to connect to postgres
  include DBConfig

  def initialize
    # @description: connect to the DB according to configs
    @conn = connect
    build_schema
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

end

# initialize a new app and call the run method
App.new.run
