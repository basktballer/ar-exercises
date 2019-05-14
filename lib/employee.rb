class Employee < ActiveRecord::Base
  
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}

  # before_create :set_password
  # after_create :set_password
  before_save :set_password

  private
    def set_password
      
      # after create
      # emp = Employee.where(id: self.id)
      # emp.update(password: ('a'..'z').to_a.shuffle[0,8].join)
      
      # before create
      self.password = ('a'..'z').to_a.shuffle[0,8].join
    end
end