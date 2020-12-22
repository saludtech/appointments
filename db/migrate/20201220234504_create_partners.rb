class CreatePartners < ActiveRecord::Migration[6.1]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :last_name
      t.string :second_last_name
      t.string :rut
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
