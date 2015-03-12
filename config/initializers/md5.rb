require 'digest/sha1'
module Devise
  module Encryptable
    module Encryptors
      class Md5 < Base
        def self.digest(password, stretches, salt, pepper)
          #str = [password, salt].flatten.compact.join
          #Digest::MD5.hexdigest(str)
          str = [ENV['NAMAK'],password].flatten.compact.join
          Digest::SHA1.hexdigest(str)
        end
      end
    end
  end
end