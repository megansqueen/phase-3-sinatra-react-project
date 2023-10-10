class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |v|
      v.string :body
      v.integer :likes
      v.integer :ride_id
      v.timestamps
    end
  end
end
