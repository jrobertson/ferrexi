Gem::Specification.new do |s|
  s.name = 'ferrexi'
  s.version = '0.1.0'
  s.summary = 'A wrapper over the Ferrum gem to return a Rexle document.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/ferrexi.rb']
  s.signing_key = '../privatekeys/ferrexi.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/ferrexi'
end
