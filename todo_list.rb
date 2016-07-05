require 'active_record'
require 'pry'

class TodoList < ActiveRecord::Base
  # relationships
  has_many :todos, dependent: :destroy

  # validations
  validates :title, presence: true

  # @description: adds a new todo item to the DB under this list
  def create_list_item(text)
    todos.create(text: text, status: false)
  end

  # @description: returns a percentage completion based on all tasks within this list
  def completion_percentage
  	(todos.where(status: true).length / todos.all.length.to_f)*100
  end

  # CLASS METHODS
  class << self

    # @description: creates a new instance of TodoList in the DB and returns it
    # @hint: can we use what AR provides out of the box for this?
    #        what value does doing it this way provide? can this value be obtained in another way?
    def new_list(title)
      # TODO: implement
    end

    # @description: finds a todo list from the DB by its title
    # @hint: can we use what AR provides out of the box for this?
    #        what value does doing it this way provide?
    def find_list_by_title(query)
      TodoList.where("title LIKE '%#{query}%'")
    end

  end
end
