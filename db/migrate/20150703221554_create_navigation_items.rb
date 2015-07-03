class CreateNavigationItems < ActiveRecord::Migration
  def change
    create_table :navigation_items do |t|
      t.references :navigation_item, index: true, foreign_key: true
      t.references :page, index: true, foreign_key: true
      t.string :title
      t.string :link

      t.timestamps null: false
    end
  end
end
