class CreatePostHashes < ActiveRecord::Migration[6.1]
  def change
    create_table :post_hashes do |t|
      t.references  :post,    null: false, foreign_key: true
      t.references  :hashtag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
