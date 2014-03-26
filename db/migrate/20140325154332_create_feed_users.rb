class CreateFeedUsers < ActiveRecord::Migration
  def change
    create_table :feed_users do |t|
    	t.references :user, null: false
    	t.references :feed, null: false

      t.timestamps
    end
  end
end
