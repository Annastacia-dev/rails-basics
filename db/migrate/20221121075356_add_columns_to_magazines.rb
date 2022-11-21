class AddColumnsToMagazines < ActiveRecord::Migration[7.0]
  def change
    add_column :magazines, :title, :string
    add_column :magazines, :category, :string
  end
end
