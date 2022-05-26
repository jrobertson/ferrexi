Gem::Specification.new do |s|
  s.name = 'ferrexi'
  s.version = '0.2.0'
  s.summary = 'A wrapper over the Ferrum gem to return a Rexle document.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/ferrexi.rb']
  s.add_runtime_dependency('ferrum', '~> 0.7', '>=0.7')
  s.add_runtime_dependency('nokorexi', '~> 0.7', '>=0.7.0')
  s.signing_key = '../privatekeys/ferrexi.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/ferrexi'
end
