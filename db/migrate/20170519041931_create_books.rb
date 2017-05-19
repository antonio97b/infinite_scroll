class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.datetime :pub_date
      t.string :summary

      t.timestamps
    end
  end
end
