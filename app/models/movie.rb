class Movie < ActiveRecord::Base
	searchkick
	belongs_to :user
	has_many :reviews, dependent: :destroy
	mount_uploader :image, ImageUploader


	def self.search(search)
	  if search.present?
	    where('title LIKE ?', "%#{search}%")
	  else
	    where(id: search)
	  end
	end
end
