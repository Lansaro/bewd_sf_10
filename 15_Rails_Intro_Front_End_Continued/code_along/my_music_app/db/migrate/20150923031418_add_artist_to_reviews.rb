class AddArtistToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :artist, polymorphic: true, index: true
  end
end
