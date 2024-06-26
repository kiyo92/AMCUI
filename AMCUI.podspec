#
# Be sure to run `pod lib lint AMCUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AMCUI'
  s.version          = '0.2.8'
  s.summary          = 'A short description of AMCUI.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/kiyo92/AMCUI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kiyo92' => 'joao_marcus92@hotmail.com' }
  s.source           = { :git => 'git@github.com:kiyo92/AMCUI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '14.0'
  s.swift_version = '5.0'

  s.source_files = 'AMCUI/**/*'
  #s.exclude_files = 'AMCUI/**/*.{png,json}'

  #s.resource_bundles = {
    #'AMCUIResources' => ['AMCUI/**/*.{storyboard,xib,xcassets,json,png, jpg, jpeg, plist}']
  #}

  s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'lottie-ios'
end
