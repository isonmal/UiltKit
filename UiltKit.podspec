#
# Be sure to run `pod lib lint UiltKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UiltKit'
  s.version          = '0.0.1'
  s.summary          = 'Tool library.'

  s.description      = <<-DESC
TODO: A tool library of development.
                       DESC
                       
  s.platform     = :ios, "9.0"

  s.homepage         = 'https://github.com/isonmal/UiltKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'isonmal' => '726616682@qq.com' }
  s.source           = { :git => 'https://github.com/isonmal/UiltKit.git', :tag => s.version.to_s }
  
  s.subspec 'Validate' do |validate|
      validate.source_files  = 'UiltKit/Classes/*.swift'
      
  end
  
end
