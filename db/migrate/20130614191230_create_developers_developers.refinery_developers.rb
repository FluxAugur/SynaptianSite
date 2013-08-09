# This migration comes from refinery_developers (originally 1)
class CreateDevelopersDevelopers < ActiveRecord::Migration

  def up
    create_table :refinery_developers do |t|
      t.string :name
      t.string :title
      t.string :email
      t.text :bio
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-developers"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/developers/developers"})
    end

    drop_table :refinery_developers

  end

end
