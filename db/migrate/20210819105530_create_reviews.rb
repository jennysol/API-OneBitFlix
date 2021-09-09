class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :description
      t.references :reviewable, polymorphic: true
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
