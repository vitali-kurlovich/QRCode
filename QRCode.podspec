#
#  Be sure to run `pod spec lint QRCode.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "QRCode"
  s.version      = "1.0.4"
  s.summary      = "Simple QR-code generator writen in Swift"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = "QR-code generator writen in Swift based on https://github.com/kazuhikoarase/qrcode-generator"

  s.homepage     = "https://github.com/vitali-kurlovich/QRCode"
  s.screenshots  = "https://github.com/vitali-kurlovich/QRCode/blob/master/ScreenShot.png?raw=true"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #

  #s.license      = "MIT"
   s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "Vitali Kurlovich" => "vitalikurlovich@gmail.com" }
  # Or just: s.author    = "Vitali Kurlovich"
  # s.authors            = { "Vitali Kurlovich" => "vitalikurlovich@gmail.com" }
  # s.social_media_url   = "http://twitter.com/Vitali Kurlovich"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  # s.platform     = :ios, "9.0"

  #  When using multiple platforms
   s.ios.deployment_target = "9.0"
   s.osx.deployment_target = "10.9"
  # s.watchos.deployment_target = "2.0"
   s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/vitali-kurlovich/QRCode.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

 s.source_files = "QRCode/Sources/**/*.{h,swift}"
 s.ios.source_files   = 'QRCode/QRCodeiOS/**/*.{h,swift}'


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

   s.osx.frameworks = 'Foundation'
   s.ios.frameworks = 'UIKit', 'Foundation'
   s.tvos.frameworks = 'Foundation'


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

   s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
