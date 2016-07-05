# require 'active_record'
require 'pp'
require 'pry'

# ActiveRecord::Base.establish_connection(
#   adapter: 'postgresql',
#   username: 'faisal', # change this depending on your postgresql user configs
#   database: 'active_record_todo'
# )

class App

  def initialize
    # TODO: implement
    puts "A new app has been initialized"
  end

  def run
    # TODO: implement
    puts "App is running..."
    puts "Not to do yet :("
  end

end

# initialize a new app and call the run method
App.new.run
