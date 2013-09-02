class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, :description
      t.datetime :start_date
      t.datetime :end_date, :remind_at
      t.timestamps
    end
  end
end
