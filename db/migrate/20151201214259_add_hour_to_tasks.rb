class AddHourToTasks < ActiveRecord::Migration
  def change
	add_column :tasks, :reported_hour, :decimal, :precision => 10, :scale => 2
  end
end
