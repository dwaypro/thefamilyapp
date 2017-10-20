class Family < ApplicationRecord
	has_many :users
	has_many :posts
	has_many :messages
end
