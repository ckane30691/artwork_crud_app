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

require 'test_helper'

class ArtworkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
