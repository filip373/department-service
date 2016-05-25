class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :title
      t.string :description
      t.datetime :due_date
      t.references :showroom, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
