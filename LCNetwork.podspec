#
# Be sure to run `pod lib lint LCNetwork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LCNetwork'
  s.version          = '0.1.0'
  s.summary          = 'Easy network for ios'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/conglv/LCNetwork'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Lê Công' => 'conglv@nal.vn' }
  s.source           = { :git => 'https://github.com/conglv/LCNetwork.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'LCNetwork/Classes/**/*'
  s.frameworks = 'UIKit'
  s.dependency 'AFNetworking', '~> 3.0'
end
