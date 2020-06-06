class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :name
      t.text :body
      t.float :value

      t.timestamps
    end
  end
end
