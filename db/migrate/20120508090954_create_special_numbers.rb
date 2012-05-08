class CreateSpecialNumbers < ActiveRecord::Migration
  def change
    create_table :special_numbers do |t|
      t.integer :special

      t.timestamps
    end
  end
end
