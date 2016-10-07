class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.add_foreign_key :clips, :MVPs

      t.timestamps
  end
end
