Pod::Spec.new do |s|
  s.name         = "DDUnitConverter"
  s.version      = "1.0.1"
  s.summary      = "A simple library for converting a value from one unit to another."
  s.homepage     = "https://github.com/davedelong/DDUnitConverter"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Dave DeLong" => "davedelong@me.com" }
  s.ios.deployment_target = '4.0'
  s.osx.deployment_target = '10.6'
  s.source       = { :git => "https://github.com/andris-lejasmeiers/DDUnitConverter.git", :tag => "1.0.1" }
  s.source_files  = 'DDUnitConverter/**/*.{h,m}'
  s.requires_arc = false
end