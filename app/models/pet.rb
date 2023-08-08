class Pet < ApplicationRecord
  # associations?
  # validations
  SPECIES = ['dog', 'cat', 'praying mantis', 'rock', 'fish', 'bird']
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - date).to_i
  end
end

# Pet.species

# pet = Pet.new
# pet.found_days_ago
