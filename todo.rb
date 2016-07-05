require 'active_record'
require 'pry'

class Todo < ActiveRecord::Base
  # relationships
  belongs_to :todo_list

  # validations
  validates :text, :status, presence: true

  # @description: toggles the status of a given item
  def toggle_status
    self.status = !self.status
    save!
  end

end
