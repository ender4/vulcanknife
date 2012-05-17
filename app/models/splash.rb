class Splash < ActiveRecord::Base
  attr_accessible :name, :description, :display_type, :position, :visible
  
  default_scope :order => "position ASC"
  
  validates_presence_of :name, :description, :display_type
  
  scope :visible, where(:visible => true)


  before_save :update_positions
  
  def initialize(*args)
    super(*args)
    last_splash = Splash.last
    self.position = last_splash ? last_splash.position + 1 : 0
  end
  
  private
  
    def update_positions
      unless new_record?
        return unless prev_position = Splash.find(self.id).position
        if prev_position > self.position
          Splash.update_all("position = position + 1", ["? <= position AND position < ?", self.position, prev_position])
        elsif prev_position < self.position
          Splash.update_all("position = position - 1", ["? < position AND position <= ?", prev_position, self.position])
        end
     end    
   end
end
