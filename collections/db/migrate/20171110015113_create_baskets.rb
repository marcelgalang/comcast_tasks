class CreateBaskets < ActiveRecord::Migration[5.1]
  def change
    create_table :baskets do |t|
      t.integer :capacity
      t.integer :fill_rate

      t.timestamps
    end
  end
end
