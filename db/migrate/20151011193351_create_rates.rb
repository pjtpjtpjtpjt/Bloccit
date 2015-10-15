class CreateRates < ActiveRecord::Migration
  
  
  def change
     create_table :rate do |t|
       t.integer :rating_id
       t.integer :topic_id
       t.references :rating, index: true
       t.references :topic, index: true
       t.references :post, index: true

       t.references :ratable, polymorphic: true, index: true
 
       t.timestamps null: false
     end
     add_foreign_key :rate, :ratings
     add_foreign_key :rate, :topics
     add_foreign_key :rate, :posts
   end
  
end