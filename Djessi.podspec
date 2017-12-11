Pod::Spec.new do |s|
  s.name             = 'Djessi'
  s.version          = '0.1.0'
  s.summary          = 'Djessi is lightweight reactive framework based on smart key paths.'

  s.description      = <<-DESC
Djessi is reactive abstraction over NSObject based on [smart key paths](https://github.com/apple/swift-evolution/blob/master/proposals/0161-key-paths.md) & defines lightweight reactive objects for your models.
                       DESC

  s.homepage         = 'https://github.com/AGStarz/Djessi'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AGStarz' => 'agafonov.vasya.93@gmail.com' }
  s.source           = { :git => 'https://github.com/AGStarz/Djessi', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Djessi/Classes/**/*'

  s.frameworks = 'Foundation'
end
