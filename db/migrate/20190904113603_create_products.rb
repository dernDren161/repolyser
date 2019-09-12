class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :beginner
      t.string :intermediate
      t.string :advanced
      t.timestamps
    end
  end
end
