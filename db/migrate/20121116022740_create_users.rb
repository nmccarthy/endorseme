class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.integer :uid
      t.string :full_name
      t.string :title

      t.timestamps
    end
  end
end
