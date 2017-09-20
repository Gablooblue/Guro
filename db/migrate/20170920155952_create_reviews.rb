class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :score
      t.integer :professor_id
      t.text :desc

      t.timestamps
    end
  end
end
