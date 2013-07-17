class CreateSublinks < ActiveRecord::Migration
  def change
    create_table :sublinks do |t|
      t.integer :sub_id
      t.integer :link_id

      t.timestamps
    end
  end
end
