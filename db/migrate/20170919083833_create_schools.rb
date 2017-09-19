class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.text :desc
      t.string :phone
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
