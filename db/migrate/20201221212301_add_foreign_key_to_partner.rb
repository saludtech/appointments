class AddForeignKeyToPartner < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :partners, :professions
  end
end
