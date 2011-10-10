class ActiveModelBase
  include ActiveModel::Validations
  include ActiveModel::Conversion


  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value) rescue nil
    end
  end

  def persisted?
    false
  end
end
