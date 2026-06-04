#
# Be sure to run `pod lib lint MoneyHash.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MoneyHashPaymentTest'
  s.version          = '4.0.21-beta.6'
  s.summary          = 'Accept online payments using MoneyHash.'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }


  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description      = <<-DESC
  MoneyHash is a Super-API infrastructure for payment orchestration and revenue operations in emerging markets. We provide a single integration to your network of pay-in and pay-out providers, and various other services that you can utilize and combine to build a unique custom payment stack. Our core features include:
  
  1. A single API/SDK integration for Pay-in & Pay-out
  2. Unified checkout embed compatible with all integrated providers
  3. Orchestration and routing capabilities to allow for optimal transaction routes and to increase authorization rates
  4. Micro-services to extend your stack capabilities such as subscription management, invoicing, and payment links
  5. PCI-compliant card vault to store and tokenize sensitive customer and card information
  6. Central dashboard for unified stack controls and transaction reporting
  
  You can learn more about us by visiting www.moneyhash.io
                        DESC
  
  s.homepage         = 'https://github.com/MoneyHash/moneyhash-ios-pod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MoneyHash' => 'a.s.elzeiny@moneyhash.io' }
  s.source           = { :git => 'https://github.com/MoneyHash/moneyhash-pod-test.git', :tag => s.version.to_s }
  s.social_media_url = 'https://www.linkedin.com/company/moneyhash/'
  
  s.ios.deployment_target = '14.0'
  
#  s.source_files = 'MoneyHash/Classes/**/*'
s.vendored_frameworks = 'MoneyHash.xcframework', 'MoneyHashShared.xcframework'
s.dependency 'MoneyHashCoreTest', '2.0.2-beta.3'


end
