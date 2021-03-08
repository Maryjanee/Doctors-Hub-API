class AddPhotoColumnToDoctorsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :photo, :string, null: true
  end
end
