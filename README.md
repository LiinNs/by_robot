# BYAI

ByRobot/BYAI Server SDK in Ruby.

## API文档
- 官方文档(https://api.byrobot.cn/doc/v2)
- 官方网站(https://www.byai.com)

## API接口

### Company
- get_companys 获取绑定公司列表接口
- get_phones 获取公司的主叫电话列表接口
- get_robots 获取公司的机器人话术列表接口

### Task
- create_task 创建任务接口
- start 启动任务接口
- pause 暂停任务接口
- stop 停止任务接口
- delete 删除任务
- import_task_customer 向任务中导入客户接口
- update 修改任务
- call 单次电话外呼
- single_call_by_mobile 根据手机号进行单次电话外呼
- get_tasks 获取任务列表接口
- get_task_detail 获取任务详情接口
- query_done_task_phones 获取已经完成任务电话号码接口
- not_dialed_customer_list 获取任务未开始的电话列表
- phone_log_info 获取一个通话的详情接口

### 例子
```ruby

ByRobot.app_key = "abc"
ByRobot.app_secret = "abc"
ByRobot::Company.get_companys
ByRobot::Task.get_tasks(companyId: 111)

```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'by_robot'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install by_robot

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/liuliang/by_robot. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

