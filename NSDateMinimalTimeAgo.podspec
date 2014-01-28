Pod::Spec.new do |s|
  s.name         = "NSDateMinimalTimeAgo"
  s.version      = "0.1.0"
  s.summary      = "A short description of NSDateMinimalTimeAgo."
  s.description  = <<-DESC
                    An optional longer description of NSDateMinimalTimeAgo

                    * Markdown format.
                    * Don't worry about the indent, we strip it!
                   DESC
  s.homepage     = "https://github.com/joshdholtz/NSDate-MinimalTimeAgo"
  s.license      = 'MIT'
  s.author       = { "Josh Holtz" => "josh@rokkincat.com" }
  s.source       = { :git => "https://github.com/joshdholtz/NSDate-MinimalTimeAgo.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '5.0'
  s.requires_arc = true

  s.public_header_files = 'Classes/*.h'
  s.source_files = 'Classes/*
end
