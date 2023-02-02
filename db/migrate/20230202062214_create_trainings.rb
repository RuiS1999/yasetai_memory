class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.references  :user,        null: false, foreign_key: true
      t.string      :menu,        null: false
      t.integer     :weight
      t.integer     :time
      t.integer     :rep
      t.integer     :set
      t.datetime    :start_time,  null: false

      t.timestamps
    end
  end
end
