class CreateShowrooms < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'

    create_table :showrooms, id: :uuid do |t|
      t.string :name
      t.string :address
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
