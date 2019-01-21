# encoding: utf-8
module ByRobot
  class Company
    
    def self.get_companys(params={})
      Request.get('/openapi/v1/company/getCompanys', params)
    end
    
    def self.get_phones(params={})
      Request.check_required_params(params, %w(companyId))
      Request.get('openapi/v1/company/getPhones', params)
    end
    
    def self.get_robots(params={})
      Request.check_required_params(params, %w(companyId))
      Request.get('openapi/v1/company/getRobots', params)
    end
    
  end
end