class Project < ActiveRecord::Base
	has_many :tasks

	def completed_tasks
		Task.where(:project_id => self.id).where('completed_at IS NOT NULL').count
	end

	def open_tasks
		Task.where(:project_id => self.id).where('completed_at IS NULL').count
	end

	def overdue_tasks
		Task.where(:project_id => self.id).where('completed_at IS NULL').where('deadline >?', Date.today).count
	end

end
