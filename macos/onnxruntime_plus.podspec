#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint onnxruntime_plus.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'onnxruntime_plus'
  s.version          = '1.4.2'
  s.summary          = 'Flutter FFI plugin for ONNX Runtime.'
  s.description      = <<-DESC
Flutter FFI plugin for ONNX Runtime.
                       DESC
  s.homepage         = 'https://github.com/Masum-MSNR/onnxruntime_plus'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Masum MSNR' => 'support@users.noreply.github.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'onnxruntime_plus/Sources/onnxruntime_plus/**/*'
  s.dependency       'FlutterMacOS'
  s.vendored_libraries = '*.dylib'
  s.platform         = :osx, '10.14'
  s.static_framework = true
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end