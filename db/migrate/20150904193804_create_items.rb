class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :barcode
      t.integer :department_id
      t.boolean :checked_out, null: false, default: false
      t.datetime :checked_out_last
      t.string :checked_out_to
      t.datetime :returned_last
      t.integer :processed_by_id
      t.timestamps null: false
    end

    add_index :items, :processed_by_id
    add_index :items, :department_id
  end
end
