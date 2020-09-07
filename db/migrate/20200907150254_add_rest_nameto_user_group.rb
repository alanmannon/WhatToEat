class AddRestNametoUserGroup < ActiveRecord::Migration[6.0]
  def change
    add_column :user_groups, :restaurant_name, :string
  end
end
