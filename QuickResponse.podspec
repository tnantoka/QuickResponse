Pod::Spec.new do |s|
  s.name         = "QuickResponse"
  s.version      = "0.0.1"
  s.summary      = "A simple QR code generator."
  s.description  = <<-DESC
                   A simple QR code generator for iOS.
                   DESC
  s.homepage     = "https://github.com/tnantoka/QuickResponse"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "tnantoka" => "tnantoka@bornneet.com" }
  s.social_media_url   = "https://twitter.com/tnantoka"

  s.ios.deployment_target = "9.2"

  s.source       = { :git => "https://github.com/tnantoka/QuickResponse.git", :tag => "v#{s.version}" }

  s.source_files  = "QuickResponse/*.{h,m,swift}"
  s.public_header_files = "QuickResponse/*.h"

  s.framework  = "Foundation"
end
