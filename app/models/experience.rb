class Experience < ApplicationRecord
  belongs_to :user

  CATEGORIES = ["Cinéma", "Théâtre", "Voix", "Publicité", "Animation"]

  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :title, presence: true
  validates :rule, presence: true
  validates :director, presence: true, unless: :animation_or_advertising?

  def animation_or_advertising?
    self.category == "Animation" || self.category == "Publicité"
  end
end
