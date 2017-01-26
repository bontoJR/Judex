Pod::Spec.new do |s|

  s.name                  = "Judex"
  s.version               = "0.1.0"
  s.summary               = "A battery included App Review Manager for iOS and macOS in Swift"
  s.description           = <<-DESC
                            A battery included App Review Manager for iOS and macOS in Swift.
                            * 100% Swift (3.0)
                            * Support for iOS and macOS
                            * Flexible
                            * Configurable at Runtime
                            * Inbludes Default Localizations for more than 30 Languages
                            * Simple Installation
                            DESC
  s.homepage              = "https://github.com/bontoJR/Judex"
  s.social_media_url      = 'https://twitter.com/bontoJR'
  s.authors               = { 'Junior B.' => 'junior@bonto.ch' }
  s.source                = { :git => 'https://github.com/bontoJR/Judex.git', :tag => s.version }

  s.license               = { :type => "MIT", :file => "LICENSE" }
  
  s.source_files          = "Judex/*.swift"
  s.resources             = "Judex/Judex.bundle"
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.requires_arc          = true
  
end