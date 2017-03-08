#
# Be sure to run `pod lib lint CellRegistration.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CellRegistration'
  s.version          = '1.0.1'
  s.summary          = 'UITableView and UICollectionView extensions that allows to auto-register cells and extends both with simplified interfaces for dequeuing'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
UITableView and UICollectionView extensions that allows to auto-register cells and extends both with simplified interfaces for dequeuing.
                       DESC

  s.homepage         = 'https://github.com/grzegorzkrukowski/CellRegistration'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Grzegorz Krukowski' => 'grkrukowski@gmail.com' }
  s.source           = { :git => 'https://github.com/grzegorzkrukowski/CellRegistration.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CellRegistration/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CellRegistration' => ['CellRegistration/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
