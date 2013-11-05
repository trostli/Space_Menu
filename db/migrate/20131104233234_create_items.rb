class CreateItems < ActiveRecord::Migration
  def up
    create_table :items do |t|
      t.belongs_to :menu
      t.string :name
      t.integer :price
      t.string :description

      t.timestamps
    end
  end

  def down
    drop_table :items
  end
end
