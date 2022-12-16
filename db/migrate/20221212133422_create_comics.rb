class CreateComics < ActiveRecord::Migration[7.0]
  def change
    create_table :comics do |t|
      t.string :hero
      t.string :heroine
      t.string :villain
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
