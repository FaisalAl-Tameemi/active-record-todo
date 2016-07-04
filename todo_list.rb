require 'active_record'

class TodoList < ActiveRecord::Base
  has_many :todos

  # @description: adds a new todo item to the DB under this list
  def create_list_item(text)
    # TODO: implement
  end

  # @description: returns a percentage completion based on all tasks within this list
  def completion_percentage
  	# TODO: implement
  end

  # CLASS METHODS
  class << self

    # @description: creates a new instance of TodoList in the DB and returns it
    # @hint: can we use what AR provides out of the box for this?
    def new_list(title)
      # TODO: implement
    end

    # @description: finds a todo list from the DB by its title
    # @hint: can we use what AR provides out of the box for this?
    def find_list_by_title(query)
      # TODO: implement
    end

  end
end
