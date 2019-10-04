class AddPicNumToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :pic_num, :integer, default: ''
  end
end
