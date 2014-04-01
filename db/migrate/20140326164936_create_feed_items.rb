class CreateFeedItems < ActiveRecord::Migration
  def change
    create_table :feed_items do |t|
      t.string :title
      t.string :summary, limit: 10000
      t.string :url
      t.date :published_at
      t.references :feed

      t.timestamps
    end
  end
end
