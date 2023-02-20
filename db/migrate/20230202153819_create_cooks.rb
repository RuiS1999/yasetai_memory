class CreateCooks < ActiveRecord::Migration[6.1]
  def change
    create_table :cooks do |t|
      t.references  :user,          null: false, foreign_key: true
      t.string      :menu,          null: false
      t.text        :introduction,  null: false
      t.text        :food_staff,    null: false
      t.text        :recipe,        null: false
      t.integer     :time,          null: false
      t.integer     :serving,       null: false

      t.timestamps
    end
  end
end
