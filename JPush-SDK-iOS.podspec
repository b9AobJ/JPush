#
#  Be sure to run `pod spec lint JPush.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = 'JPush-SDK-iOS'
  s.version      = '1.8.3.1'
  s.summary      = 'JPush SDK for iOS'

  s.description  = <<-DESC
                  极光推送（JPush）是一个端到端的推送服务，使得服务器端消息能够及时地推送到终端用户手机上，让开发者积极地保持与用户的连接，从而提高用户活跃度、提高应用的留存率。
                   DESC

  s.homepage     = 'https://github.com/wanyakun/JPush'

  s.license      = 'MIT'
  s.author             = { 'JPush' => 'support@jpush.cn' }

  s.platform     = :ios, '5.0'
  s.source       = { :git => 'https://github.com/wanyakun/JPush.git', :tag => s.version.to_s  }


  s.source_files  = 'lib/*.h'
  s.vendored_library = 'lib/*.a'


  s.frameworks = 'CFNetwork', 'CoreFoundation', 'CoreTelephony', 'SystemConfiguration', 'CoreGraphics', 'Foundation', 'UIKit', 'Security'

  s.xcconfig = { 'OTHER_LDFLAGS' => '/usr/lib/libz.dylib' }

end
