require 'rest-client'
require 'digest/sha1'
require "by_robot/version"
require 'by_robot/request'
require 'by_robot/company'
require 'by_robot/task'
module ByRobot
  class << self
    attr_accessor :app_key, :app_secret
  end
end
