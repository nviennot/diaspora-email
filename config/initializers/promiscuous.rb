Promiscuous.configure do |config|
  config.publisher_exchange   = 'diaspora-email'
  config.subscriber_exchanges = ['diaspora']
  config.logger = Logger.new(STDERR).tap { |l| l.level = 0 }
  config.instrumentation_file = '/tmp/instrumentation.log'
  config.redis_url            = 'redis://localhost:7778/'

  # config.subscriber_threads   = 1
  # config.subscriber_latch     = true
end
