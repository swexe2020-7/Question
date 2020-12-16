class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.string :hennshin
      t.integer :home_id
      t.datetime :tdate
      t.timestamps
    end
  end
end
