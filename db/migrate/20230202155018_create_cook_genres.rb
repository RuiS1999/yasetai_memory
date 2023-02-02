class CreateCookGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :cook_genres do |t|
      t.references  :cook,    null: false, foreign_key: true
      t.references  :genre,   null: false, foreign_key: true

      t.timestamps
    end
  end
end
