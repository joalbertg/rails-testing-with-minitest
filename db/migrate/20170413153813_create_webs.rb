class CreateWebs < ActiveRecord::Migration[5.0]
  def change
    create_table :webs do |t|
      t.string :name
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
