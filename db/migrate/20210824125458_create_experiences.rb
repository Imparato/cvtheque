class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :category
      t.string :title
      t.string :director
      t.string :rule
      t.text :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
