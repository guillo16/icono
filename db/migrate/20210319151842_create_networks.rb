class CreateNetworks < ActiveRecord::Migration[5.2]
  def change
    create_table :networks do |t|
      t.string :title
      t.string :photo
      t.string :content

      t.timestamps
    end
  end
end
