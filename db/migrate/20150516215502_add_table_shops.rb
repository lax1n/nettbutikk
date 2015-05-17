class AddTableShops < ActiveRecord::Migration
  def change
    create_table(:shops) do |t|
      t.string :name,          null: false, default: ""
      t.string :title,         null: false, default: "Shop Title"
      t.string :owner,         null: false, default: "John Doe"
    end

    add_index :shops, :name,                 unique: true
  end
end
