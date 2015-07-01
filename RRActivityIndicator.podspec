Pod::Spec.new do |s|
  s.name         = "RRActivityIndicator"
  s.version      = "1.0.0"
  s.summary      = "Custom iOS activityIndicator for a rotate image"
  s.homepage     = "https://github.com/liubin1777/RRActivityIndicator"
  s.license      = "MIT"
  s.authors      = { 'tangjr' => 'binliu1777@gmail.com'}
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/liubin1777/RRActivityIndicator.git", :tag => s.version }
  s.source_files = 'RRActivityIndicator', 'RRActivityIndicator/*.{h,m}'
  s.requires_arc = true
end
