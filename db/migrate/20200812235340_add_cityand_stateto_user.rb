class AddCityandStatetoUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :city_name, :string
    add_column :users, :state_code, :string
  end
end
