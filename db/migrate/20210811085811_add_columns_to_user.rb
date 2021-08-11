class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
    add_column :users, :birthday, :datetime
    add_column :users, :size, :integer
    add_column :users, :weight, :integer
    add_column :users, :hair_color, :string
    add_column :users, :eyes_color, :string
    add_column :users, :linkedin_url, :string
    add_column :users, :facebook_url, :string
    add_column :users, :twitter_url, :string
    add_column :users, :instagram_url, :string
  end
end
