require 'active_record'

class Todo < ActiveRecord::Base
  belongs_to :todo_list

end
