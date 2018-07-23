#
# Be sure to run `pod lib lint NYFaceRecognitionKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'NYFaceRecognitionKit'
    s.version          = '0.1.2'
    s.summary          = 'A short description of NYFaceRecognitionKit.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://github.com/niyaoyao/NYFaceRecognitionKit'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'nycode.jn@gmail.com' => 'nycode.jn@gmail.com' }
    s.source           = { :git => 'https://github.com/niyaoyao/NYFaceRecognitionKit.git', :tag => s.version.to_s }
    s.social_media_url = 'https://weibo.com/nyidea'
    
    s.ios.deployment_target = '8.0'
    
    s.source_files = ['NYFaceRecognitionKit/Classes/**/*', 'NYFaceRecognitionKit/Libraries/DLibKit/dlib/**/*.h']
    s.private_header_files = 'NYFaceRecognitionKit/Libraries/DLibKit/dlib/**/*.h'
    s.vendored_library = 'NYFaceRecognitionKit/Libraries/DLibKit/libdlib.a'
    #s.resource_bundles = {
    #  'NYFaceRecognitionKit' => ['NYFaceRecognitionKit/Libraries/DLibKit/shape_predictor_68_face_landmarks.dat']
    #}
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'CoreMedia', 'Accelerate', 'UIKit'
    # s.dependency 'AFNetworking', '~> 2.3'
    
    s.xcconfig = {
        'GCC_PREPROCESSOR_DEFINITIONS' => 'DLIB_JPEG_SUPPORT DLIB_NO_GUI_SUPPORT DLIB_USE_BLAS NDEBUG DLIB_USE_LAPACK',
        
        'OTHER_CFLAGS' => '-DDLIB_JPEG_SUPPORT -DDLIB_NO_GUI_SUPPORT -DNDEBUG -DDLIB_USE_BLAS -DDLIB_USE_LAPACK'
    }
    s.libraries = 'c++'
    
    s.pod_target_xcconfig = {
        #'SDKROOT' => 'iphoneos',
        #'ONLY_ACTIVE_ARCH' => 'YES',
        #'ARCHS' => 'arm64',
        'VALID_ARCHS' => 'arm64'
    }
end

