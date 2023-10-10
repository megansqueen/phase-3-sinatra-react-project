class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |r|
      r.text :image
      r.string :name
      r.string :park
      r.timestamp :created_at
      r.timestamp :updated_at
    end
  end
end
