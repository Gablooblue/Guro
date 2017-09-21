class CreateJoinTableTeacherSubject < ActiveRecord::Migration[5.0]
    def change
	create_join_table :professors , :subjects do |t|
	    t.index [:professor_id, :subject_id]
	end
    end
end
