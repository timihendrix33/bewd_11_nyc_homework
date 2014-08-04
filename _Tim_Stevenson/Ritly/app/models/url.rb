class Url < ActiveRecord::Base

def self.new_with_hash(params)
	hash = SecureRandom.urlsafe_base64(8)
	Url.new(params.merge(hash_code:hash))
end

end
