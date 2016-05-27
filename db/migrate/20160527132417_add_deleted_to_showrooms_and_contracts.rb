class AddDeletedToShowroomsAndContracts < ActiveRecord::Migration
  def change
    add_column :showrooms, :deleted, :bool, default: false
    add_column :contracts, :deleted, :bool, default: false
  end
end
