class Strategy < ActiveRecord::Base
	has_and_belongs_to_many :authors
	has_many :tips
end
