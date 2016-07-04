require 'active_record'

class Todo < ActiveRecord::Base
  belongs_to :todo_list

  # @description: toggles the status of a given item
  def toggle_status
    # TODO: implement
  end

end
