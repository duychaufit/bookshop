class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :phone
      t.string :image

      t.timestamps null: false
    end
  end
end
