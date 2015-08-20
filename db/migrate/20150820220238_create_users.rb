class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :photo_50
      t.string :photo_orig
      t.string :url

      t.timestamps null: false
    end
  end
end
