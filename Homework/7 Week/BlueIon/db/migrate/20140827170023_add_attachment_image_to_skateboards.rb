class AddAttachmentImageToSkateboards < ActiveRecord::Migration
  def self.up
    add_attachment :skateboards, :image
  end

  def self.down
    remove_attachment :skateboards, :image
  end
end
