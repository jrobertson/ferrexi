Gem::Specification.new do |s|
  s.name = 'ferrexi'
  s.version = '0.1.1'
  s.summary = 'A wrapper over the Ferrum gem to return a Rexle document.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/ferrexi.rb']
  s.add_runtime_dependency('rexle', '~> 1.5', '>=1.5.4')
  s.signing_key = '../privatekeys/ferrexi.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/ferrexi'
end
