class CreateWritingcomments < ActiveRecord::Migration
  def change
    create_table :writingcomments do |t|
      t.integer :writing_id
      t.text :body

      t.timestamps

    end
  end
end
