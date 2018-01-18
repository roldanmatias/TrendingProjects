target ‘TrendingProjects’ do
  use_frameworks!
  pod 'ReactiveCocoa', '~> 7.0'
  pod 'Alamofire', '~> 4.0.1'
  pod 'AlamofireObjectMapper', '~> 4.0.0'
  pod 'Kingfisher'
  
  post_install do |installer|
      installer.pods_project.targets.each do |target|
          target.build_configurations.each do |config|
              config.build_settings['SWIFT_VERSION'] = '3.0'
          end
      end
  end

end
