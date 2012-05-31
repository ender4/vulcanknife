Spree::Product.class_eval do
  enum_attr :availability, %w{^available available_in_store_only not_currently_available}
  attr_accessible :availability
  
  def self.active_with_variants
    active.includes(:variants_including_master)
  end
  
  def self.v_like_any(scope, fields, values)
    where_str = fields.map { |field| Array.new(values.size, "#{field} #{LIKE} ?").join(' OR ') }.join(' OR ')
    scope.where([where_str, values.map { |value| "%#{value}%" } * fields.size].flatten)
  end
end
