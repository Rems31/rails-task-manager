class AddDefaultToCompletedInTasks < ActiveRecord::Migration[7.1]
  def change
    change_column_default :tasks, :completed, false
    Task.where(completed: nil).update_all(completed: false)
  end
end
