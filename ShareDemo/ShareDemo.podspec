
Pod::Spec.new do |s|


  s.name         = "ShareDemo"
  s.version      = "0.0.1"
  s.summary      = "A short description of ShareDemo."

  s.description  = <<-DESC
                   DESC

  s.homepage     = "http://EXAMPLE/ShareDemo"

  s.license      = "MIT (example)"


  s.source       = { :git => "https://github.com/hanwp123456/WPShareKit.git", :tag => "0.0.1" }

  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

    s.subspec 'QQ' do |spec|
    spec.source_files = "ShareDemo/SocialLibraries/QQ/*.{h}"
    spec.public_header_files = "ShareDemo/SocialLibraries/QQ/*{h}"
    spec.vendored_libraries = "ShareDemo/SocialLibraries/QQ/libSocialQQ.a"
    spec.resource_bundles = "ShareDemo/SocialLibraries/QQ/TencentOpenApi_IOS_Bundle.bundle"
    spec.vendored_frameworks = 'ShareDemo/SocialLibraries/QQ/TencentOpenAPI.framework'
    end

s.subspec 'QQ' do |spec|
spec.source_files = "ShareDemo/SocialLibraries/QQ/*.{h}"
spec.public_header_files = "ShareDemo/SocialLibraries/QQ/*{h}"
spec.vendored_libraries = "ShareDemo/SocialLibraries/QQ/libSocialQQ.a"
spec.resource_bundles = "ShareDemo/SocialLibraries/QQ/TencentOpenApi_IOS_Bundle.bundle"
spec.vendored_frameworks = 'ShareDemo/SocialLibraries/QQ/TencentOpenAPI.framework'
end

s.subspec 'Sina' do |spec|
spec.source_files = "ShareDemo/SocialLibraries/Sina/*.{h}"
spec.public_header_files = "ShareDemo/SocialLibraries/Sina/*{h}"
spec.vendored_libraries = "ShareDemo/SocialLibraries/Sina/libWeiboSDK.a","ShareDemo/SocialLibraries/Sina/libSocialSina.a"
spec.resource_bundles = "ShareDemo/SocialLibraries/Sina/WeiboSDK.bundle"
end

s.subspec 'WeChat' do |spec|
spec.source_files = "ShareDemo/SocialLibraries/WeChat/*.{h}"
spec.public_header_files = "ShareDemo/SocialLibraries/WeChat/*{h}"
spec.vendored_libraries = "ShareDemo/SocialLibraries/WeChat/libWeChatSDK.a","ShareDemo/SocialLibraries/WeChat/libSocialWeChat.a"
end


s.subspec 'UMSocialCore' do |spec|
spec.vendored_frameworks = 'ShareDemo/UMSocialSDK/UMSocialCore.framework'
end

s.subspec 'UMSocialNetwork' do |spec|
spec.vendored_frameworks = 'ShareDemo/UMSocialSDK/UMSocialNetwork.framework'
end

end
