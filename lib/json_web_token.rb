module JsonWebToken
    def self.encode(payload, exp = 24.hours.from_now)
      payload[:exp] = exp.to_i
      JWT.encode(payload, Rails.application.secrets&.secret_key_base[0] || Rails.application.credentials&.secret_key_base)
    end
  
    def self.decode(token)
      body = JWT.decode(token, Rails.application.secrets&.secret_key_base[0] || Rails.application.credentials&.secret_key_base)[0]
      HashWithIndifferentAccess.new body
    rescue
      nil
    end
  
   
  private
    def secret_key
      Rails.application.secrets&.secret_key_base[0] || Rails.application.credentials&.secret_key_base
    end
end