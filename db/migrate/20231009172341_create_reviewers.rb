class CreateReviewers < ActiveRecord::Migration[6.1]
  def change
    create_table :reviewers do |b|
      b.string :name
      b.timestamps
    end
  end
end
