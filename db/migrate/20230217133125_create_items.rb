

class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :part_number
      t.string :description

      t.timestamps
    end
  end
end
