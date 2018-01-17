#
# Be sure to run `pod lib lint SuedstadtLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SuedstadtLibrary'
  s.version          = '0.1.0'
  s.summary          = 'Suedstadt-api-wrapper'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.homepage         = 'https://github.com/topcoderinc/Suedstadt-api-wrapper'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'TopCoder'
  s.source           = { :git => 'https://github.com/topcoderinc/Suedstadt-api-wrapper.git' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'SuedstadtLibrary/**/*'
  
  # s.resource_bundles = {
  #   'SomeLib' => ['SomeLib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SwiftyJSON'
  s.dependency 'Alamofire'
end
