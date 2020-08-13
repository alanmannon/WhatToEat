class LocationToInteger < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :location, :string
    add_column :users, :location, :integer
  end
end
