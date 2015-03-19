Pod::Spec.new do |s|
  s.name         = "Simperium"
  s.version      = "0.7.9"
  s.summary      = "Simperium libraries."
  s.description  = "Simperium is a simple way for developers to move data as it changes, instantly and automatically."
  s.homepage     = "https://github.com/Simperium/simperium-ios"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Simperium" => "contact@simperium.com" }

  # s.source     = { :git => "https://github.com/Simperium/simperium-ios.git", :tag => "v{s.version}" }
  s.source       = { :git => "https://github.com/Simperium/simperium-ios.git", :branch => "develop" }

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'

  s.source_files = 'Simperium/*.{h,m}', 'External/JRSwizzle/*', 'External/SPReachability/*', 'External/SocketRocket/*', 'External/SSKeychain/*'
  s.osx.source_files = 'Simperium-OSX/**/*.{h,m}'

  s.osx.exclude_files = 'Simperium/SPAuthenticationViewController.{h,m}', 'Simperium/SPTOSViewController.{h,m}', 'Simperium/SPAuthenticationButton.{h,m}'

  # If you do not explicitly set the list of public header files,
  # all headers of source_files will be made public.
  #
  # s.public_header_files = 'Simperium/**/*.h'

  # Specify a list of frameworks that the application needs to link
  # against for this Pod to work.
  #
  # s.framework  = 'SomeFramework'
  s.ios.frameworks = 'Security', 'MobileCoreServices', 'CoreData', 'CFNetwork', 'SystemConfiguration', 'Foundation', 'UIKit', 'CoreGraphics'

  # Specify a list of libraries that the application needs to link
  # against for this Pod to work.
  #
  # s.library   = 'iconv'
  # s.libraries = 'iconv', 'xml2'

  s.requires_arc = true

  # If you need to specify any other build settings, add them to the
  # xcconfig hash.
  #
  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

  # Finally, specify any Pods that this Pod depends on.
  #
  s.dependency 'Google-Diff-Match-Patch'
end
