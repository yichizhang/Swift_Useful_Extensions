Pod::Spec.new do |s|
  s.name         = "SwiftWithSanity"
  s.version      = "0.0.1"
  s.summary      = "A few extensions to help Swift programmers stay sane"
  s.homepage     = "https://github.com/yichizhang/" + s.name
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Yichi Zhang" => "zhang-yi-chi@hotmail.com" }
  s.source       = {
    :git => "https://github.com/yichizhang/" + s.name + ".git",
    :tag => s.version.to_s
  }

  s.platform     = :ios, '7.0'

  s.source_files = 'Source/*'
  
  s.framework  = 'Foundation', 'UIKit'

end
