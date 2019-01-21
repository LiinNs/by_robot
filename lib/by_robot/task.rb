# encoding: utf-8
module ByRobot
  class Task
    
    def self.create_task(params={})
      Request.check_required_params(params, %w(companyId taskName taskType startDate userPhoneIds sceneDefId robotDefId sceneRecordId callType))
      Request.post('/openapi/v1/task/createTask', params)
    end
    
    def self.start(params={})
      Request.check_required_params(params, %w(taskId))
      Request.post('openapi/v1/task/start', params)
    end
    
    def self.pause(params={})
      Request.check_required_params(params, %w(taskId))
      Request.post('openapi/v1/task/pause', params)
    end
    
    def self.stop(params={})
      Request.check_required_params(params, %w(taskId))
      Request.post('openapi/v1/task/stop', params)
    end
    
    def self.delete(params={})
      Request.check_required_params(params, %w(taskId))
      Request.post('openapi/v1/task/delete', params)
    end
    
    def self.import_task_customer(params={})
      Request.check_required_params(params, %w(companyId taskId customerInfoList))
      Request.post('openapi/v1/task/importTaskCustomer', params)
    end
    
    def self.update(params={})
      Request.check_required_params(params, %w(companyId taskId taskName taskType userPhoneIds callType concurrencyQuota))
      Request.post('openapi/v1/task/update', params)
    end
    
    def self.call(params={})
      Request.check_required_params(params, %w(customerId mobile companyId sceneDefId sceneRecordId robotDefId))
      Request.post('openapi/v1/task/call', params)
    end
    
    def self.single_call_by_mobile(params={})
      Request.check_required_params(params, %w(mobile companyId sceneDefId sceneRecordId robotDefId))
      Request.post('openapi/v1/task/singleCallByMobile', params)
    end
    
    def self.get_tasks(params={})
      Request.check_required_params(params, %w(companyId))
      Request.get('openapi/v1/task/getTasks', params)
    end
    
    def self.get_task_detail(params={})
      Request.check_required_params(params, %w(companyId taskId))
      Request.get('openapi/v1/task/getTaskDetail', params)
    end
    
    def self.query_done_task_phones(params={})
      Request.check_required_params(params, %w(callJobId))
      Request.post('openapi/v1/task/queryDoneTaskPhones', params)
    end
    
    def self.not_dialed_customer_list(params={})
      Request.check_required_params(params, %w(taskId))
      Request.post('openapi/v1/task/notDialedCustomerList', params)
    end
    
    def self.phone_log_info(params={})
      Request.check_required_params(params, %w(callInstanceId))
      Request.get('openapi/v1/task/phoneLogInfo', params)
    end
    
  end
end