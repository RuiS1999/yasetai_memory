class CreateCookFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :cook_favorites do |t|
      t.references  :user,  null: false, foreign_key: true
      t.references  :cook,  null: false, foreign_key: true

      t.timestamps
    end
  end
end
