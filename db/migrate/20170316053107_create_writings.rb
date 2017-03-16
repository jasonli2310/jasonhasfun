class CreateWritings < ActiveRecord::Migration
  def change
    create_table :writings do |t|
      t.text :body
      t.string :title
      t.integer :user_id

      t.timestamps

    end
  end
end
