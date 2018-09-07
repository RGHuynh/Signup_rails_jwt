require 'jwt'

class Auth
    
    def self.issue(payload)
        return JWT.encode(payload, auth_secret, 'HS256')
    end

    def self.decode(token)
    end

    def self.auth_secret
        Rails.application.secrets.secret_key_base
    end
end