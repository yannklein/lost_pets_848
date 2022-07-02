class Pet < ApplicationRecord
  SPECIES =  ['dog', 'cat', 'bird', 'pokemon']
  GENDER = ['Male', 'Female', 'Non-binary']
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def days_ago
    (Date.today - self.found_on).to_i
  end
end
