class CreateSubOrdinates < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_ordinates do |t|
      t.string :name
      t.integer :manager_id

      t.timestamps
    end
  end
end
