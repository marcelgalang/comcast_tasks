class CreateApples < ActiveRecord::Migration[5.1]
  def change
    create_table :apples do |t|

      t.timestamps
    end
  end
end
