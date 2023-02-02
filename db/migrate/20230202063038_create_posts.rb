class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references  :user,  null: false, foreign_key: true
      t.text        :body,  null: false
      t.text        :hash_body

      t.timestamps
    end
  end
end
