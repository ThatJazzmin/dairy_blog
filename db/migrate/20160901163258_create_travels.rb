class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
