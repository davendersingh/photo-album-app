Paperclip.interpolates :user_id do |attachment, style|
  "user_#{attachment.instance.user_id}"
end