class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role_type


  def autogenerate_franchise_login(franchise)
		first_half = franchise.email.split("@")[0]
		random_number = rand.to_s[2..5]
		password = first_half+random_number

		puts "=======#{first_half.inspect}====="
		puts "=======#{random_number.inspect}====="
		puts "=======#{password.inspect}====="

		return password
	end
end
