Spree::Image.class_eval do
  attachment_definitions[:attachment][:storage] = :s3
  attachment_definitions[:attachment][:s3_credentials] = "config/aws.yml"
  attachment_definitions[:attachment][:path] = 'images/products/:id/:style/:basename.:extension'
end
