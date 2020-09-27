class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.string :photo

      t.timestamps
    end
  end
end
