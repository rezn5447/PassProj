class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string  :comment
      t.add_foreign_key :comments, :commanders

      t.timestamps
  end
end
