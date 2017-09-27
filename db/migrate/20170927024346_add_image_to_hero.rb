class AddImageToHero < ActiveRecord::Migration[5.0]
  def change
    add_column :heros,:image,:string
  end
end
