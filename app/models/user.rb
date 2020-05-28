class User < ActiveRecord::Base
    has_secure_password

    validates :username, length: { minimum: 2 }
    validates :balance, numericality: { greater_than: -0.01 }

    def initialize(attributes=nil)
        attr_with_defaults = {balance: 0}.merge(attributes)
        super(attr_with_defaults)
      end
end
