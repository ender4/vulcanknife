module SkuSearch
  extend ActiveSupport::Concern

  included do
    alias :spree_get_base_scope :get_base_scope
    alias :spree_get_products_conditions_for :get_products_conditions_for
    def get_base_scope
      custom_get_base_scope
    end
    def get_products_conditions_for(base_scope, query)
      custom_get_products_conditions_for(base_scope, query)
    end
  end

  module InstanceMethods
    def custom_get_base_scope
      base_scope = Spree::Product.active_with_variants
      base_scope = base_scope.in_taxon(taxon) unless taxon.blank?
      base_scope = get_products_conditions_for(base_scope, keywords) unless keywords.blank?
      base_scope = base_scope.on_hand unless Spree::Config[:show_zero_stock_products]
      base_scope = add_search_scopes(base_scope)
      base_scope
    end
    
    def custom_get_products_conditions_for(base_scope, query)
      base_scope.v_like_any(base_scope, ["#{Spree::Product.table_name}.name", "#{Spree::Product.table_name}.description", "#{Spree::Variant.table_name}.sku"], query.split)
    end
  end
end

Spree::Core::Search::Base.send(:include, SkuSearch)

