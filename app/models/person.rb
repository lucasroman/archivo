class Person < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :steps, dependent: :destroy

	validates :name, presence: true, length: { minimum: 3 }
	validates :dni, presence: true, length: { minimum: 8 }

	#before_action :authenticate_person!
	
end
