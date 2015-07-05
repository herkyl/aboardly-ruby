require 'aboardly'

aboardly = Aboardly.new('api_key', 'api_secret')
puts aboardly.customers.upsert('customer_id', { name: 'test name', email: 'foo@bar.com' })
puts aboardly.events.create('customer_id', 'test_event')
