class Contact < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	belongs_to :gender
	mount_uploader :picture, PictureUploader
	
	validates :category_id, presence: true
	validates :gender_id,	presence: true
	
end
