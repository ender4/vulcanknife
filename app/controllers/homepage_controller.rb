class Spree::HomepageController < Spree::BaseController
  helper 'spree/products'

  def show
    @taxonomies = Spree::Taxonomy.all
    @banner_items = BannerItem.visible
  end

end
