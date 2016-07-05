module DBConfig

  # @description: a method which returns a DB connect from Active Record
  def connect
    ActiveRecord::Base.establish_connection(
      adapter: 'postgresql',
      username: 'faisal', # change this depending on your postgresql user configs
      database: 'active_record_todo'
    )
  end

  # @description: a class method to build the database schema
  def build_schema
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
