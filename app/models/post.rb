class Post < ActiveRecord::Base
  has_attached_file :image, styles: { :thumb => "800x300#" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]},
                                  :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                                  :url => "/system/:attachment/:id/:style/:filename"
end
