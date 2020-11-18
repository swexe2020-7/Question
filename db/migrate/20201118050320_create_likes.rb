class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.user :belongs_to
      t.message :belongs_to

      t.timestamps
    end
  end
end
