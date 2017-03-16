class CreateInmails < ActiveRecord::Migration
  def change
    create_table :inmails do |t|
      t.text :body
      t.string :name
      t.integer :user_id
      t.string :email
      t.text :subject

      t.timestamps

    end
  end
end
