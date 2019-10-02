class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :price
      t.string :color, default: ''
      t.string :work_type
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
