module ApplicationHelper
  def vulcan_title
=begin
    result = "Vulcan Knife"
    if @product
      result = "#{result} - #{@product.name}"
    elsif @taxon
      result = "#{result} - #{@taxon.name}"
    elsif @page 
      if @page.meta_title
        result = "#{result} - #{@page.meta_title}"
      else
        result = "#{result} - #{@page.title}"
      end
    end
    result
=end
    suffix = accurate_title
    suffix.blank? ? "Vulcan Knife" : "Vulcan Knife - #{suffix}"
  end

  def load_banner_data
    @banner_name = 'Products'
    @banner_image = 'store/default-banner-bg.jpg'
    
    if @taxon.present?
      @banner_name = raw @taxon.name
      @banner_description = @taxon.description
      if @taxon.icon?
        @banner_image = @taxon.icon.url(:normal, false)
      end
    elsif @product_group.present?
      @banner_name = @product_group.name
      if FileTest.exists?(Rails.root.join "app/assets/images/store/taxon/#{@product_group.permalink}-bg.jpg")
        @banner_image = "store/taxon/#{@product_group.permalink}-bg.jpg"
      end
    end
  end  
end

