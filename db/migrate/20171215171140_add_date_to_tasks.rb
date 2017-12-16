class AddDateToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :task_date, :date
  end
end
