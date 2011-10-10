class Resource < ActiveModelBase
  attr_accessor :url, :file

  validate :content_type
  validate :file_size

  def content_type
    allow_content = ['image/png','image/jpeg','image/jpg','image/gif','image/webp','image/bmp']
    unless allow_content.include?(self.file.content_type)
      errors.add(:file, "invalid")
    end
  end

  def file_size
    if self.file.size > 1024*730
      errors.add(:file, "too large")
    end
  end
end
