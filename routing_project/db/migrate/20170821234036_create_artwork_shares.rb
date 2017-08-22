class CreateArtworkShares < ActiveRecord::Migration[5.1]
  def change
    create_table :artwork_shares do |t|
      t.string :viewer_id, null: false
      t.string :artist_id, null: false
      t.timestamps
    end

    add_index :artwork_shares, [:viewer_id, :artist_id], unique: true
    add_index :artwork_shares, :viewer_id
    add_index :artwork_shares, :artist_id
  end
end
