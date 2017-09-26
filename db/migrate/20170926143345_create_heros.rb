class CreateHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :alias
      t.text :profile
      t.integer :rank

      t.timestamps
    end
  end
end
