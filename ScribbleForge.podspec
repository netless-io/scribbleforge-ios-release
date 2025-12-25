Pod::Spec.new do |s|
    s.name             = 'ScribbleForge'
    s.version          = '1.1.0'
    s.summary          = 'Interacetive whiteboard SDK.'
    s.description      = 'Next generation Interacetive whiteboard SDK.'
    s.homepage         = 'https://github.com/netless-io/scribble-forge-release'
    s.author           = { 'vince' => 'zjxuyunshi@gmail.com' }
    s.platform         = :ios, '11.0'
    s.swift_versions   = '5.0'
    s.source = {  :http => "https://github.com/netless-io/scribbleforge-ios-release/releases/download/1.1.0/Build.zip" }
  
    s.subspec 'Basic' do |s|
      s.vendored_frameworks = 'Build/ScribbleForgeCore.xcframework'
    end
  
    s.subspec 'AgoraRtmKit2.2.x' do |s|
      s.vendored_frameworks = 'Build/ScribbleForge.xcframework'
      s.dependency 'AgoraRtm/RtmKit', '~> 2.2.2'
      s.dependency 'ScribbleForge/Basic'
    end
  
    s.subspec 'AgoraRtm_OC_Special_RtmKit' do |s|
      s.vendored_frameworks = 'Build/ScribbleForge.xcframework'
      s.dependency 'AgoraRtm_OC_Special/RtmKit', '~> 2.2.6.3'
      s.dependency 'ScribbleForge/Basic'
    end

    s.subspec 'AgoraRtm2.2.x' do |s|
      s.vendored_frameworks = 'Build/ScribbleForge.xcframework'
      s.dependency 'AgoraRtm', '~> 2.2.2'
      s.dependency 'ScribbleForge/Basic'
    end
   
    s.default_subspec = 'AgoraRtm2.2.x'
  end