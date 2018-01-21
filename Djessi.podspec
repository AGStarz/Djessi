Pod::Spec.new do |s|
  s.name             = 'Djessi'
  s.version          = '0.3.4'
  s.summary          = 'Djessi is lightweight reactive framework based on smart key paths.'

  s.description      = <<-DESC
Djessi is reactive abstraction over NSObject based on [smart key paths](https://github.com/apple/swift-evolution/blob/master/proposals/0161-key-paths.md) & defines lightweight reactive objects for your models.
                       DESC

  s.homepage         = 'https://github.com/AGStarz/Djessi.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AGStarz' => 'agafonov.vasya.93@gmail.com' }
  s.source           = { :git => 'https://github.com/AGStarz/Djessi.git', :tag => s.version.to_s }
  s.requires_arc     = true

  s.ios.deployment_target = '8.0'

  s.subspec 'Core' do |core|
    core.source_files = 'Source/Core/**/*'
    core.framework = 'Foundation'
  end

  s.subspec 'ReactiveExtensions' do |rx|
    rx.ios.source_files = 'Source/ReactiveExtensions/ReactiveExtension.swift', 'Source/ReactiveExtensions/iOS/**/*'
    rx.ios.frameworks = 'Foundation', 'UIKit'

    rx.dependency 'Djessi/Core'
  end

  s.default_subspecs = 'Core', 'ReactiveExtensions'
end
