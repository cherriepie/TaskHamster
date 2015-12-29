class Project < ActiveRecord::Base
	belongs_to :user
	has_many :tasks

	validates :name, :presence => true

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
