Gem::Specification.new do |spec|
  spec.name          = "aboardly"
  spec.version       = "0.2"
  spec.date          = Time.now
  spec.authors       = ["Martin Wong"]
  spec.email         = ["info@aboardly.com"]
  spec.summary       = 'Aboardly Client for Ruby applications'
  spec.description   = 'IFTTT for automated customer emailing'
  spec.homepage      = 'http://www.aboardly.com/'
  spec.license       = 'MIT'

  spec.files         = ['lib/aboardly.rb']
  spec.files        += Dir.glob('lib/aboardly/*.rb')

  spec.add_dependency 'httparty', '~> 0.13'
end
