class CreateFeedUsers < ActiveRecord::Migration
  def change
    create_table :feed_users do |t|

      t.timestamps
    end
  end
end
