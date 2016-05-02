class Contact < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	belongs_to :gender
end
