Pod::Spec.new do |s|
  s.name         = "FLAD"
  s.version      = "2.8.3.4.1"
  s.summary      = "Mobile App Aggregation Ad SDK of Fanlian SDK for iOS."
  s.description  = <<-DESC
            Fanlian SDK is an advertising aggregation SDK that allows you to monetize iOS applications through Mediatom advertising.
                   DESC
  s.homepage     = "https://www.mediatom.cn/dockingdocs/detail?id=70"
  s.license      = { :type => "MIT" }
  s.author       = 'Lurich'
  
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '11.0'
  s.static_framework = true
  s.requires_arc = true
  s.swift_versions = '5.1'
  
  s.frameworks   = 'AssetsLibrary', 'MapKit', 'JavaScriptCore', 'StoreKit', 'MobileCoreServices', 'WebKit', 'MediaPlayer', 'CoreMedia', 'AVFoundation', 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreMotion', 'Security', 'QuartzCore', 'CoreGraphics', 'SafariServices', 'UIKit', 'Foundation', 'AppTrackingTransparency', 'DeviceCheck', 'CoreML'
  s.libraries    = 'c++', 'c++abi', 'resolv', 'xml2', 'bz2', 'z', 'iconv', 'sqlite3'
  
  s.xcconfig =   { 'OTHER_LDFLAGS' => ['-lObjC']}
  s.pod_target_xcconfig =   { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i' }
  
  s.source = { :http => "https://github.com/QianChengWuXian/Funlink/releases/download/#{s.version}/FLAD.zip" }

  s.default_subspecs = 'FLAdSaas'

  s.subspec 'FLAdSaas' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.vendored_frameworks = 'FLAD/FLAdSaas.xcframework'
  end
  
  s.subspec 'FLAdCsjAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'Ads-CN/BUAdSDK'
    ss.dependency 'Ads-CN/CSJMediation'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdCsjAdapter.xcframework'
  end
  
  s.subspec 'FLAdGdtAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'GDTMobSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdGdtAdapter.xcframework'
  end
  
  s.subspec 'FLAdKsAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'KSAdSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdKsAdapter.xcframework'
  end
  
  s.subspec 'FLAdJztAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'JADYun'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdJztAdapter.xcframework'
  end
  
  s.subspec 'FLAdBaiduAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'BaiduMobAdSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdBaiduAdapter.xcframework'
  end
  
  s.subspec 'FLAdBeiziAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'BeiZiSDK-iOS/BeiZiSDK-iOS'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdBeiziAdapter.xcframework'
  end
  
  s.subspec 'FLAdTbAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'TanxSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdTbAdapter.xcframework'
  end
  
  s.subspec 'FLAdSigmobAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'SigmobAd-iOS'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdSigmobAdapter.xcframework'
  end
  
  s.subspec 'FLAdTmAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'TianmuSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdTmAdapter.xcframework'
  end
  
  s.subspec 'FLAdHrAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'HRAdSDK/HR'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdHrAdapter.xcframework'
  end
  
  s.subspec 'FLAdKdxfAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'YDKdxfSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdKdxfAdapter.xcframework'
  end
  
  s.subspec 'FLAdZyAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'OctopusSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdZyAdapter.xcframework'
  end
  
  s.subspec 'FLAdLyAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'YDLySDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdLyAdapter.xcframework'
  end
  
  s.subspec 'FLAdMtgAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MintegralAdSDK/All', '7.6.3'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdMtgAdapter.xcframework'
  end
  
  s.subspec 'FLAdMcTool' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdMcTool.xcframework'
  end
  
   s.subspec 'FLAdQmAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'QMAdSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdQmAdapter.xcframework'
  end
  
  s.subspec 'FLAdDmAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'DomobSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdDmAdapter.xcframework'
  end

  s.subspec 'FLAdPTGAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'PTGAdFramework'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdPTGAdapter.xcframework'
  end

end
