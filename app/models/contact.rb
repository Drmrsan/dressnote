class Contact < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	belongs_to :gender
	mount_uploader :picture, PictureUploader
	
	validates :name, :mobnum, :category_id, :gender_id, 	presence: true
	validates_uniqueness_of :name, :mobnum

	validate  :picture_size
	

	def self.search(search)
		if search
			where("name LIKE ?","%#{search}%")
		else
			all
		end
	end

  private

    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end

	
end
