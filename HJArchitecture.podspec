Pod::Spec.new do |s|

  s.name         = "HJArchitecture"
  s.version      = "1.0.3"
  s.summary      = "Base FMWK to make beautiful apps！"

  s.description  = <<-DESC
                   Groups the project,and you will see more clear,so you can use it more easyly.
                   DESC

  s.homepage     = "https://github.com/jixuhui/HJArchitecture"

  s.license      = "MIT"

  s.author       = { "jixuhui" => "hubbertji@163.com" }

  s.platform     = :ios, "7.0"

  s.ios.deployment_target = "7.0"

  s.source       = { :git => "https://github.com/jixuhui/HJArchitecture.git", :tag => "1.0.3" }

  s.requires_arc = true
  
  s.source_files = 'HJArchitecture','*.{h}'

  s.subspec 'common' do |cm|
  cm.source_files = 'HJArchitecture','common/**/*.{h,m}'
  end

  s.subspec 'task' do |tk|
  tk.source_files = 'HJArchitecture','task/**/*.{h,m}'
  end

  s.subspec 'service' do |ser|
  ser.source_files = 'HJArchitecture','service/**/*.{h,m}'
  ser.dependency 'HJArchitecture/task'
  ser.dependency 'HJArchitecture/common'
  ser.dependency 'AFNetworking'
  end

  s.subspec 'dataSource' do |ds|
  ds.source_files = 'HJArchitecture','dataSource/**/*.{h,m}'
  ds.dependency 'HJArchitecture/task'
  ds.dependency 'HJArchitecture/service'
  end

  s.subspec 'dataController' do |dc|
  dc.source_files = 'HJArchitecture','dataController/**/*.{h,m}'
  dc.dependency 'HJArchitecture/dataSource'
  dc.dependency 'HJArchitecture/common'
  dc.dependency 'MJRefresh'

  end

  s.frameworks = 'UIKit'
  
  s.resource_bundles = {
    'HJArchitecture' => ['resources/*.png']
  }

end
