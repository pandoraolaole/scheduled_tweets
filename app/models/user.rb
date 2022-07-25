#email: string
#password_digest:string

#password:string virtual
#password_comfirmation:string virtual


class User < ApplicationRecord
    has_secure_password #pwd and pwdconfirmation in db
    validates :email, presence:true, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message:"must be a valid email"}
end
