Pod::Spec.new do |s|
  s.name             = 'HYDateKit'
  s.version          = '0.0.1'
  s.summary          = 'HYDateKit'
  s.description      = <<-DESC
iOS的日期工具库
                       DESC
  s.homepage         = 'https://github.com/oceanfive/HYDateKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'oceanfive' => '849638313@qq.com' }
  s.source           = { :git => 'https://github.com/oceanfive/HYDateKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '7.0'
  s.source_files = 'HYDateKit/Classes/**/*'
  s.frameworks = 'UIKit'
end
