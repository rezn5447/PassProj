class CreateMvps < ActiveRecord::Migration
  def change
    create_table :mvps do |t|
      t.string  :title
      t.string  :first_name
      t.string  :nick_name
      t.string  :last_name
      t.string  :kills
      t.integer :commander_id
      t.attachment :image
      t.timestamps(null: false)
    end
  end

  def self.up
    add_attachment :mvps, :image
  end

  def self.down
    remove_attachment :mvps, :image
  end
end
