class Tutorial < ActiveRecord::Base
	belongs_to :tutorial_category

	validates 	:title, 	presence: true,
							length: { minimum: 5 }
end
