require 'enumerated_attribute'

class BannerItem < ActiveRecord::Base
  before_create :initialize_position
  
  scope :visible, lambda { where('visibility = "visible"') }
  default_scope :order => "position ASC"

  enum_attr :visibility, %w(^visible hidden)
  attr_accessible :name, :link, :visibility, :alt, :icon, :position
  
  has_attached_file :icon,
    :storage => :s3,
    :s3_credentials => "config/aws.yml",
    :styles => { :mini => '120x30>', :thumb => '240x60>', :normal => '960x240>' },
    :default_style => :mini,
    :url => '/banner_icons/:id/:style/:basename.:extension',
    :path => 'images/banner_icons/:id/:style/:basename.:extension',
    :default_url => '/assets/default_banner_icon.png'
   
  validates :name, :link, :presence => true
  validates_attachment_presence :icon
  validate :no_icon_errors
  
  # if there are errors from the plugin, then add a more meaningful message
  def no_icon_errors
    unless icon.errors.empty?
      # uncomment this to get rid of the less-than-useful interrim messages
      # errors.clear
      errors.add :icon, "Paperclip returned errors for file '#{icon_file_name}' - check ImageMagick installation or image source file."
      false
    end
  end

  private
    
    def initialize_position
      last = BannerItem.last
      self.position = last ? last.position + 1 || 0 : 0
    end
end
