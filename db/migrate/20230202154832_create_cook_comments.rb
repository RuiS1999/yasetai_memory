class CreateCookComments < ActiveRecord::Migration[6.1]
  def change
    create_table :cook_comments do |t|
      t.references  :user,    null: false, foreign_key: true
      t.references  :cook,    null: false, foreign_key: true
      t.text        :comment, null: false

      t.timestamps
    end
  end
end
