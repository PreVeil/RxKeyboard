Pod::Spec.new do |s|
  s.name             = 'RxKeyboard'
  s.version          = '0.7.1'
  s.summary          = 'Reactive Keyboard in iOS'
  s.homepage         = 'https://github.com/RxSwiftCommunity/RxKeyboard'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Suyeol Jeon' => 'devxoul@gmail.com' }
  s.source           = { :git => 'https://github.com/RxSwiftCommunity/RxKeyboard.git',
                         :tag => s.version.to_s }
  s.frameworks       = 'UIKit', 'Foundation'
  s.requires_arc     = true

  s.subspec 'Core' do |core|
    core.source_files = 'Sources/RxKeyboard/RxKeyboard.swift'
  end

  s.subspec 'Interactive' do |interactive|
    interactive.source_files = 'Sources/RxKeyboard/RxKeyboardInteractive.swift'
  end

  s.dependency 'RxSwift', '>= 4.0.0'
  s.dependency 'RxCocoa', '>= 4.0.0'

  s.ios.deployment_target = '8.0'
end
