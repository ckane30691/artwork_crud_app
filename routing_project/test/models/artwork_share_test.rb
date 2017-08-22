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

require 'test_helper'

class ArtworkShareTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
