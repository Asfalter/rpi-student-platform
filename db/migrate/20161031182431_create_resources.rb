class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.references :course, foreign_key: true
      t.string :title
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
