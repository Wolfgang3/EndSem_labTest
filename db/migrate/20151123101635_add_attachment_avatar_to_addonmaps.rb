class AddAttachmentAvatarToAddonmaps < ActiveRecord::Migration
  def self.up
    change_table :addonmaps do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :addonmaps, :avatar
  end
end
