

Pod::Spec.new do |s|


  s.name         = "HJArchitecture"
  s.version      = "0.0.1"
  s.summary      = "Base FMWK to make beautiful apps！"

  s.description  = <<-DESC
                   You can use it to implement your app base framework,eg.
                   UIBase/DataBase/ControllerBase/VMBase and so on.
                   DESC

  s.homepage     = "https://github.com/jixuhui/HJArchitecture"

  s.license      = "MIT"

  s.author             = { "jixuhui" => "hubbertji@163.com" }
  s.platform     = :ios, "7.0"

  s.ios.deployment_target = "7.0"

  s.source       = { :git => "https://github.com/jixuhui/HJArchitecture.git", :tag => "0.0.1" }

  s.source_files  = "HJArchitecture/", "**/*.{h,m}"
  s.exclude_files = "HJArchitecture/Exclude"

  s.requires_arc = true

  s.dependency 'AFNetworking'
  s.dependency 'MJRefresh'

end
