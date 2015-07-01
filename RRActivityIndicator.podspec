Pod::Spec.new do |s|
  s.name     = 'RRActivityIndicator'
  s.version  = '1.0.0'
  s.author   = { 'robinliu' => 'binliu1777@gmail.com' }
  s.homepage = 'https://github.com/liubin1777/RRActivityIndicator'
  s.summary  = 'custom activity indicator for image'
  s.license  = 'MIT'
  s.source   = { :git => 'https://github.com/liubin1777/RRActivityIndicator.git', :tag => s.version.to_s }
  s.source_files = 'RRActivityIndicator/*.{h,m}'
  s.platform = :ios
  s.ios.deployment_target = '7.0'
  s.requires_arc = true
end