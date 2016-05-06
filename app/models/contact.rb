class Contact < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	belongs_to :gender
	mount_uploader :picture, PictureUploader
	
	validates :name, :mobnum, :category_id, :gender_id, 	presence: true
	validates_uniqueness_of :name, :mobnum

	
end
