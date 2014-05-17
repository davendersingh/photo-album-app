json.set! :files do
  json.array! [@photo] do |invoice|
    json.name invoice.image_file_name
    json.size invoice.image_file_size
    json.url invoice.image.url(:original)
    json.delete_url photo_path(@photo)
    json.delete_type "DELETE"
  end
end