class CreateCraftings < ActiveRecord::Migration
  def change
    create_table :craftings do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
