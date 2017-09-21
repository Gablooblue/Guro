class CreateJoinTableTeacherSubject < ActiveRecord::Migration[5.0]
    def change
	create_join_table :teachers, :subjects do |t|
	    t.index [:teacher_id, :subject_id]
	end
    end
end
