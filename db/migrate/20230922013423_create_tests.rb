class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :title
      t.date :testdate

      t.timestamps
    end
  end
end
