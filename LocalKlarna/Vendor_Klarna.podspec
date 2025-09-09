Pod::Spec.new do |s|
    s.name         = "Vendor_Klarna"
    s.version      = "2.7.3"
    s.summary      = "Klarna Mobile SDK for iOS"
    s.description  = <<-DESC
    Klarna Mobile SDK for iOS apps.
    DESC
    s.homepage     = "https://github.com/klarna/klarna-mobile-sdk"
    s.license      = { :type => "Apache License, Version 2.0", :text => "https://raw.githubusercontent.com/klarna/klarna-mobile-sdk/refs/heads/master/LICENSE" }
    s.author       = { "Klarna Mobile SDK Team" => "mobile.sdk@klarna.com" }
    s.platform     = :ios, "10.0"
    s.source       = { :git => 'git@gitlab.com:your-path-here/mobile/ios-klarna-sdk.git', :tag => s.version.to_s }
    s.requires_arc = true
    s.swift_version = "6.0"
    s.subspec 'full' do |sb|
        sb.vendored_frameworks = [
            "KlarnaCore.xcframework",
            "KlarnaMobileSDK.xcframework"
        ]
    end
    s.subspec 'basic' do |sb|
        sb.vendored_frameworks = [
            "KlarnaCore.xcframework",
            "KlarnaMobileSDK.xcframework"
        ]
    end
    s.default_subspec = 'basic'
end
