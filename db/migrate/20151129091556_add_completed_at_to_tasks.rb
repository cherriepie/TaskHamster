class AddCompletedAtToTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :completed_at, :datetime
  	add_column :tasks, :deadline, :datetime
  end
end
