class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :imgur_id
      t.date :posted_on
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
