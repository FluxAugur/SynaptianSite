module Refinery
  module Developers
    class Developer < Refinery::Core::BaseModel
      self.table_name = 'refinery_developers'

      attr_accessible :name, :title, :email, :bio, :position, :avatar

      acts_as_indexed :fields => [:name, :title, :email, :bio]

      validates :name, :presence => true, :uniqueness => true
      has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "110x110>" }, :default_url => "/images/:style/missing.png"
    end
  end
end
