platform :ios, '13.0'
use_frameworks!

target 'AVDemo' do
  project 'AVDemo'
  supports_swift_versions '>= 5.0'
  pod 'Debugo'
  pod 'DebugTool', :git => 'https://github.com/dclcs/DebugTool.git', :branch => 'main', :tag => '0.0.3',:dev_env => 'dev'

  pod 'KFAVKit', :git => 'https://github.com/dclcs/KFAVKit.git', :branch => 'main', :tag => '0.0.1', :dev_env => 'beta'
  pod 'ToyImageLoader', :git => 'https://github.com/dclcs/ToyImageLoader.git', :branch => 'main', :tag => '0.0.3',:dev_env => 'beta'
#  pod 'DictResult', :git => 'https://github.com/dclcs/DictResult.git', :branch => 'master', :tag => '0.0.1', :dev_env => 'dev'

#  wepie 的你画我猜
  

  pod 'ZYSDK', :git => 'https://github.com/dclcs/ZYSDK.git', :branch => 'master', :tag => '0.0.2', :dev_env => 'dev'
  pod 'YDSimulInterprete', :git => 'https://github.com/dclcs/YDSimulInterprete.git', :branch => 'master', :tag => '0.0.2', :dev_env => 'dev'
  
#  pod 'YDSDUI', :git => 'https://github.com/dclcs/YDSDUI.git', :branch => 'main', :tag => '0.0.3', :dev_env => 'dev'
#  pod 'YDCollectionKit', :git => 'https://github.com/dclcs/YDCollectionKit.git', :branch => 'main', :tag => '0.0.4', :dev_env => 'dev'
  pod 'ListViewCellExposureLog', :path => '../ListViewCellExposureLog/'
  
  pod 'NimbusKit-AttributedLabel'
  pod 'YYImage', :path => '../YYImage/'
  pod 'YYWebImage', :path => '../YYWebImage/'
  pod 'YYCache', :path => '../YYCache/'
  pod 'Palette', :git => 'https://github.com/galandezzz/ios-Palette.git'
  pod 'ReactiveCocoa', :path => '../ReactiveCocoa/'
  pod 'YDCommon', :path => '../YDCommon/'
  pod 'SwViewCapture' ,:path => '../SwViewCapture/'
  pod 'YDDFrameExtension', :path => '../YDDFrameExtension/'
  pod 'NIMSDK', :path => '../NIMSDK'
  pod 'YDTransSimultaneous', :path => '../YDTransSimultaneous/'
  pod 'YDVoiceDetection', :path => '../YDVoiceDetection'
  pod 'YDASR', :path => '../YDASR'
  pod 'YDLanguageEngine', :path => '../YDLanguageEngine'
#  pod 'YDOfflineASR', :path => '../YDOfflineASR'
#  pod 'YDOmpFramework', :path => '../YDOmpFramework'
  pod 'ScreenRecordSocket', :path => '../ScreenRecordSocket'
#  pod 'YD_VAD_LID', :path => '../YD_VAD_LID'
#  pod 'YDTransOldFile', :path => '../YDTransOldFile/'
#  pod 'XBase', :path => '../XBase'
#  pod 'Three20Navigator', :path => '../Three20Navigator'
#  pod 'MBProgressHUDWrapper' , :path => '../MBProgressHUDWrapper'
#  pod 'iFlyMSC', :path => '../iFlyMSC'
  pod 'XLabel' , :path => '../XLabel'
end

post_install do |installer|
    installer.generated_projects.each do |project|
        project.targets.each do |target|
            target.build_configurations.each do |config|
                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
            end
        end
    end
end
