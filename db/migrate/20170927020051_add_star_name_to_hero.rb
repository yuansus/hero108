class AddStarNameToHero < ActiveRecord::Migration[5.0]
  def change
    add_column :heros,:star_name,:string
  end
end
