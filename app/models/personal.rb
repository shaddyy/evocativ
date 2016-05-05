class Personal < ActiveRecord::Base
	validates :title, presence: true
end
