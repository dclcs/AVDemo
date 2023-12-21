platform :ios, '13.0'

target 'AVDemo' do
  project 'AVDemo'
  pod 'Debugo'
  pod 'KFAVKit', :git => 'https://github.com/dclcs/KFAVKit.git', :branch => 'main', :tag => '0.0.1',:dev_env => 'dev'
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
