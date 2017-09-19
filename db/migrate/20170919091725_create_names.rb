class CreateNames < ActiveRecord::Migration[5.0]
  def change
    create_table :names do |t|
      t.string :first
      t.string :middle
      t.string :last
      t.integer :teacher_id

      t.timestamps
    end
  end
end
