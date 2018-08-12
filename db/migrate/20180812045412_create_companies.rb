class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name, null: false, limit: 32
      t.string :address, null: false

      t.timestamps
    end
  end
end
