module ByRobot
  class Request
    
    BASEURL = "http://api.byrobot.cn"
    
    def self.check_required_params(params, names)
      missing_params = names.map(&:to_s) - params.keys.map(&:to_s)
      warn("Warn: missing required option: #{missing_params.join(',')}") if missing_params.size > 0
    end

    def self.sign(sign_message)
      digest = OpenSSL::Digest.new('sha1')
      sign = Base64.encode64 OpenSSL::HMAC.digest(digest, ByRobot.app_secret, sign_message)
    end

    def self.headers
      headers = {
        content_type: :json, 
        accept: :json,
        'AcceptCharset': 'utf-8',
        'contentType': 'utf-8',
        datetime: Time.now.utc.strftime('%a, %d %b %Y %H:%M:%S GMT'), 
        appkey: ByRobot.app_key
      }
      str = headers[:appkey] + "\n" + headers[:datetime]
      headers[:sign] = sign(str)
      headers
    end

    def self.get(action, params)
      JSON.parse RestClient.get("#{BASEURL}/#{action}", headers.merge({params: params}))
    end

    def self.post(action, params)
      JSON.parse RestClient.post("#{BASEURL}/#{action}", params.to_json, headers)
    end

  end
end