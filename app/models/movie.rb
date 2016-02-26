class Movie < ActiveRecord::Base
	belongs_to :user
	has_many :reviews
	mount_uploader :image, ImageUploader

	def self.search(search)
	  if search.present?
	    where('title LIKE ?', "%#{search}%")
	  else
	    wehre(true)
	  end
	end
end
