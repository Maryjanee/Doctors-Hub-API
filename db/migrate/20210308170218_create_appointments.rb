class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      add_reference :users, foreign_key: true
      t.date :date
      t.string :city

      t.timestamps
    end
  end
end
