class CreateJoinTableAuthorPaper < ActiveRecord::Migration[6.0]
  def change
    create_join_table :authors, :papers do |t|
      t.index [:author_id, :paper_id]
    end
  end
end
