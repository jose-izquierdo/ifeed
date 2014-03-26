class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :name, null: false
      t.references :category
      t.string :description
      t.string :url


      t.timestamps
    end
  end
end
