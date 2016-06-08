class Tutorial < ActiveRecord::Base
	belongs_to :tutorial_category
	belongs_to :tutorial_level

	validates 	:title, 	presence: true,
							length: { minimum: 5 }
end
