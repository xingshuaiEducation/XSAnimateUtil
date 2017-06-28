Pod::Spec.new do |s|
s.name         = "XSAnimateUtil"
s.version      = "0.0.1"
s.summary      = '项目基本动画的封装'
s.homepage     = "https://github.com/xingshuaiEducation/XSAnimateUtil"
s.license      = 'MIT'
s.author       = {'suxx' => '13751882497.com'}
s.source       = { :git => 'https://github.com/xingshuaiEducation/XSAnimateUtil.git'}
s.platform     = :ios, '8.0'
s.requires_arc = true                   #是否使用ARC，如果指定具体文件，则具体的问题使用ARC
s.source_files = 'XSAnimateUtil/**/*.{h,m}'
#s.resources    = 'XSBreakthroughtModule/Resource/*.{png}'
#s.frameworks = 'AFNetworking'
#s.dependency = 'AFNetworking'
end
