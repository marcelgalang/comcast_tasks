class CreateOranges < ActiveRecord::Migration[5.1]
  def change
    create_table :oranges do |t|

      t.timestamps
    end
  end
end
