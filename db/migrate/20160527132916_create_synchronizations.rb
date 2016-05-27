class CreateSynchronizations < ActiveRecord::Migration
  def change
    create_table :synchronizations do |t|
      t.datetime :date
      t.integer :created
      t.integer :updated

      t.timestamps null: false
    end
  end
end
