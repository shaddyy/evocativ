class Workout < ActiveRecord::Base
	validates :body, presence: true

	validates :date, presence: true

	validates :log, presence: true
end
