class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.integer :product_id
      t.string :name
      t.string :description
      t.string :video
      t.string :img

      t.timestamps
    end
  end
end
