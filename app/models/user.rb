class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  has_many :workouts
  has_one :gym
  belongs_to :role
  belongs_to :gym
  
  attr_accessible :email, :password, :password_confirmation, :role_id
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  
  def role_symbols
    [role.name.downcase.to_sym]
  end
  
  def get_role
    self.role.name.downcase
  end
  
  def is_client?
    self.get_role.eql? 'client'
  end
  
  def is_coach?
    self.get_role.eql? 'coach'
  end
  
  def is_owner?
    self.get_role.eql? 'owner'
  end
end
