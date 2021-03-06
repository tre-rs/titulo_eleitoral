# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'titulo_eleitoral/version'

Gem::Specification.new do |spec|
  spec.name          = 'titulo_eleitoral'
  spec.version       = TituloEleitoral::VERSION
  spec.authors       = ['Eduardo de O. Hernandes']
  spec.email         = ['eduardodeoh@gmail.com']
  spec.summary       = %q{Validação do número de inscrição do título eleitoral.}
  spec.description   = %q{Valida o número de inscrição do título eleitoral conforme resolução 21.538 (14/10/2003) do TSE, artigo 12. A verificação também pode ser feita através do site: http://www.tse.jus.br/eleitor/servicos/situacao-eleitoral/consulta-por-titulo}
  spec.homepage      = 'https://github.com/eduardodeoh/titulo_eleitoral'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'pry'
end
