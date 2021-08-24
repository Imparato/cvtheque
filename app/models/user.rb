class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  HAIR = ["Blond", "Brun", "Châtain", "Roux", "Gris", "Blanc"]
  EYES = ["Bleu", "Vert", "Marron", "Gris"]

  validates :first_name, presence: true, length: { minimum: 3 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :phone_number, presence: true, format: { with: /\A0\d( *\d{2}){4}/ }
  validates :address, presence: true
  validates :birthday, presence: true
  validates :hair_color, inclusion: { in: HAIR }
  validates :eyes_color, inclusion: { in: EYES }
  validates :size, numericality: { only_integer: true }
  validates :weight, numericality: { only_integer: true }
  validates :linkedin_url, format: { with: /\Ahttps:\/\/www.linkedin.com\/in\// }
  validates :facebook_url, format: { with: /\Ahttps:\/\/www.facebook.com\// }
  validates :twitter_url, format: { with: /\Ahttps:\/\/www.twitter.com\// }
  validates :instagram_url, format: { with: /\Ahttps:\/\/www.instagram.com\// }
end
