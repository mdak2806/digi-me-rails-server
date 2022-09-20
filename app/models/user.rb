class User < ApplicationRecord

    has_secure_password
    # belongs_to :pet, optional: true
    has_one :pet

end
