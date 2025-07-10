Pod::Spec.new do |s|
    s.name             = 'ScribbleForge'
    s.version          = '1.0.0-alpha.2'
    s.license          = { :type => 'MIT', :text => 'Copyright netless 2024' }
    s.summary          = 'Interacetive whiteboard SDK.'
    s.description      = 'Next generation Interacetive whiteboard SDK.'
    s.homepage         = 'https://github.com/netless-io/scribble-forge-release'
    s.author           = { 'vince' => 'zjxuyunshi@gmail.com' }
    s.platform         = :ios, '11.0'
    s.swift_versions   = '5.0'
    s.source = {  :http => "https://github.com/netless-io/scribbleforge-ios-release/releases/download/1.0.0-alpha.2/Build.zip" }
  
    s.subspec 'Basic' do |s|
      s.vendored_frameworks = 'Build/ScribbleForge.xcframework'
      s.dependency 'NTLBridge', '3.2.0'
      s.dependency 'RxSwift'
      s.dependency 'NTLMessagePacker', '0.4.8'
    end
  
    s.subspec 'Basic-XCode13' do |s|
      s.vendored_frameworks = 'Build/xcode13-build/ScribbleForge.xcframework'
      s.dependency 'NTLBridge'
      s.dependency 'RxSwift', '6.2.0'
      s.dependency 'NTLMessagePacker', '0.4.8'
    end
  
    s.subspec 'AgoraRtm2.1.x' do |s|
      s.dependency 'AgoraRtm_iOS', '~> 2.1.12'
      s.dependency 'ScribbleForge/Basic'
    end
  
    s.subspec 'AgoraRtmKit2.2.x' do |s|
      s.dependency 'AgoraRtm/RtmKit', '~> 2.2.2'
      s.dependency 'ScribbleForge/Basic'
    end
  
    s.subspec 'AgoraRtm2.2.x' do |s|
      s.dependency 'AgoraRtm', '~> 2.2.2'
      s.dependency 'ScribbleForge/Basic'
    end
  
    s.subspec 'AgoraSpecial' do |s|
      s.dependency 'AgoraRtm/RtmKit', '~> 2.2.2'
      s.dependency 'ScribbleForge/Basic-XCode13'
    end
   
    s.default_subspec = 'AgoraRtm2.1.x'
  end