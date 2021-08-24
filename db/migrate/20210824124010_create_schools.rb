class CreateSchools < ActiveRecord::Migration[6.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :city
      t.datetime :start_year
      t.datetime :end_year
      t.text :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
