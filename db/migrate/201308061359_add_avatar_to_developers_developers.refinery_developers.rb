# This migration comes from refinery_developers (originally 1)
class AddAvatarToDevelopersDevelopers < ActiveRecord::Migration

  def self.up
    add_attachment :refinery_developers, :avatar
  end

  def self.down
    remove_attachment :refinery_developers, :avatar
  end

end
