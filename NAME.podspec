
Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.cocoapods_version = '1.1.1'
  s.summary          = 'A short description of ${POD_NAME}.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/${USER_NAME}/${POD_NAME}'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { :git => 'https://github.com/${USER_NAME}/${POD_NAME}.git', :tag => "v#{s.version}" }
  s.ios.deployment_target = '8.0'
  s.source_files = '${POD_NAME}/Classes/**/*'
  s.resource = '${POD_NAME}/Assets/**/*.{xib,xcassets}'

  # s.dependency 'AFNetworking', '~> 2.3'

  s.public_header_files = 'Pod/Classes/**/*.h'
  
  s.pod_target_xcconfig = { 'GCC_WARN_ABOUT_RETURN_TYPE' => 'YES_ERROR','CC_WARN_UNINITIALIZED_AUTOS' => 'YES_AGGRESSIVE','CLANG_WARN_DIRECT_OBJC_ISA_USAGE' => 'YES_ERROR', 'CLANG_WARN_OBJC_ROOT_CLASS' => 'YES_ERROR', 'CLANG_WARN_DOCUMENTATION_COMMENTS' => 'YES' }
end
