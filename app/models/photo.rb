class Photo < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, 
	:url => '/gallery_images/:user_id/:style/:filename.:extension',
	:use_timestamp => false,
    :path => ':rails_root/public:url', 
	:styles => { :large => "700x700>", :medium => "400x400>",:small => "200x200", :thumb => "100x100" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
