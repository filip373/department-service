class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts, id: :uuid do |t|
      t.string :title
      t.string :description
      t.datetime :due_date
      t.uuid :showroom_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
