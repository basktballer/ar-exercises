class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validate :carries_mens_and_or_womens_apparel
  
  def carries_mens_and_or_womens_apparel
    if mens_apparel.present? || womens_apparel.present? 
      if (mens_apparel == false && womens_apparel == false)
        errors.add(:mens_apparel, "Men and womens apparel can't both be false")
        errors.add(:womens_apparel, "Men and womens apparel can't both be false")
      end
    else
      errors.add(:mens_apparel, "Men and womens apparel can't both be undefined")
      errors.add(:womens_apparel, "Men and womens apparel can't both be undefined")
    end    
  end
end