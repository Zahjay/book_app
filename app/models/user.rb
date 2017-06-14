class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end


#  invoke  active_record
#       create    db/migrate/20170613232057_devise_create_users.rb
#       create    app/models/user.rb
#       invoke    test_unit
#       create      test/models/user_test.rb
#       create      test/fixtures/users.yml
#       insert    app/models/user.rb
#        route  devise_for :users