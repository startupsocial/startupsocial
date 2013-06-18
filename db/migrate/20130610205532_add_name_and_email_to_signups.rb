class AddNameAndEmailToSignups < ActiveRecord::Migration
  def change
  	add_column :signups, :name, :string
  	add_column :signups, :email, :string
  end
end
