class Resource < ActiveModelBase
  attr_accessor :url, :file

  validate :content_type
  validate :file_size

  validates_format_of :url, :allow_blank => true, :with => /^https?:\/\/.+\.(png|jpg|jpeg|gif|webp|bmp)$/

  def content_type
    return unless file.present?

    allow_content = ['image/png','image/jpeg','image/jpg','image/gif','image/webp','image/bmp']
    unless allow_content.include?(self.file.content_type)
      errors.add(:file, "invalid")
    end
  end

  def file_size
    return unless file.present?

    if self.file.size > 1024*730
      errors.add(:file, "too large ( max 730KB )")
    end
  end
end
