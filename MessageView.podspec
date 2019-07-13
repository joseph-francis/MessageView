Pod::Spec.new do |spec|

spec.name         = "MessageView"
spec.version      = "0.0.1"
spec.summary      = "A message view for displaying info to the user or for app tour"

spec.description  = <<-DESC
This CocoaPods library will help you make a message box inspired view which can be used for app tour or any specific feature information to the user.
DESC

spec.homepage     = "https://github.com/joseph-francis/MessageView"
spec.license      = { :type => "MIT", :file => "LICENSE" }
spec.author       = { "Joseph Francis" => "josephfrancis100@gmail.com" }

spec.ios.deployment_target = "12.1"
spec.swift_version = "4.2"

spec.source        = { :git => "https://github.com/joseph-francis/MessageView.git", :tag => "#{spec.version}" }
spec.source_files  = "MessageView/**/*.{h,m,swift}"

end
