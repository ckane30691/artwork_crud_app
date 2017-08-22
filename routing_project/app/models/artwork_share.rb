# == Schema Information
#
# Table name: artwork_shares
#
#  id         :integer          not null, primary key
#  viewer_id  :string           not null
#  artist_id  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArtworkShare < ApplicationRecord

	belongs_to :artist,
	  primary_key: :id,
		foreign_key: :artist_id,
		class_name: :User

	belongs_to :viewer,
	  primary_key: :id,
		foreign_key: :viewer_id,
		class_name: :User

	has_many :artworks,
	  through: :artist,
		source: :artworks
end
