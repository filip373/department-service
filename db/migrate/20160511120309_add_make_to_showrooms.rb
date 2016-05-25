class AddMakeToShowrooms < ActiveRecord::Migration
  def change
    add_column :showrooms, :make, :string
  end
end
