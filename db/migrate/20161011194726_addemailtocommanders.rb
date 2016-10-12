class Addemailtocommanders < ActiveRecord::Migration
  def change
    add_column :commanders, :email, :string
  end
end
