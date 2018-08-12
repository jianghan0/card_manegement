class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.references :user, foreign_key: true
      t.references :company, foreign_key: true
      t.string :department
      t.string :title

      t.timestamps
    end
  end
end
