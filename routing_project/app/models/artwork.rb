# == Schema Information
#
# Table name: artworks
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
	validates :title, uniqueness: { scope: :artist_id,
    message: "User cannot two pieces with the same title" }

	belongs_to :artist,
		primary_key: :id,
		foreign_key: :artist_id,
		class_name: :User

	has_many :shared_viewers,
	  through: :artist,
		source: :viewers
end
