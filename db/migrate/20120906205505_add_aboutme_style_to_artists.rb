class AddAboutmeStyleToArtists < ActiveRecord::Migration
  class Artist < ActiveRecord::Base
  end
  def change
    add_column :artists, :aboutme, :string
    add_column :artists, :style, :string
    Artist.reset_column_information
  end
end
