project.name = "KatanaUI"

katana = target do |target|
    target.name = "KatanaUI"
    target.platform = :ios
    target.deployment_target = 9.0
    target.language = :swift
    target.type = :framework
    target.include_files = [
        "KatanaUI/Core/**/*.swift",
        "KatanaUI/Extensions/**/*.swift",
        "KatanaUI/Plastic/**/*.swift"
    ]

    target.all_configurations.each do |configuration|
        configuration.settings["INFOPLIST_FILE"] = "KatanaUI/Info.plist"
        configuration.settings["PRODUCT_NAME"] = "KatanaUI"
	    configuration.settings["SWIFT_VERSION"] = "4.0"
    end

    target.headers_build_phase do |phase|
        phase.public << "KatanaUI/Katana.h"
    end

    unit_tests_for target do |unit_test|
        unit_test.linked_targets = [target]
        unit_test.include_files = [
            "KatanaTests/Animations/**/*.swift",
            "KatanaTests/Core/**/*.swift",
            "KatanaTests/Extensions/**/*.swift",
            "KatanaTests/NodeDescriptions/**/*.swift",
            "KatanaTests/Plastic/**/*.swift"
        ]

        unit_test.all_configurations.each do |configuration|
            configuration.settings["INFOPLIST_FILE"] = "KatanaTests/Info.plist"
	        configuration.settings["SWIFT_VERSION"] = "4.0"
        end
    end

    target.scheme(target.name)
end


# Katana Elements iOS Framework target
katana_elements = target do |target|
    target.name = "KatanaElements"
    target.platform = :ios
    target.deployment_target = 9.0
    target.language = :swift
    target.type = :framework
    target.linked_targets = [katana]
    target.include_files = [
        "KatanaElements/**/*.swift"
    ]

    target.all_configurations.each do |configuration|
        configuration.settings["INFOPLIST_FILE"] = "KatanaElements/Info.plist"
        configuration.settings["PRODUCT_NAME"] = "KatanaElements"
	    configuration.settings["SWIFT_VERSION"] = "4.0"
    end

    target.headers_build_phase do |phase|
        phase.public << "KatanaElements/KatanaElements.h"
    end

    target.scheme(target.name)
end

# iOS Demo target
demo = target do |target|
    target.name = "Demo"
    target.platform = :ios
    target.language = :swift
    target.deployment_target = 9.0
    target.type = :application
    target.linked_targets = [katana, katana_elements]
    
    target.include_files = [
        "Demo/**/*.swift",
        "Demo/LaunchScreen.storyboard",
    ]

    target.all_configurations.each do |configuration|
        configuration.product_bundle_identifier = "com.bendingspoons.Demo"
        configuration.settings["INFOPLIST_FILE"] = "Demo/Info.plist"
        configuration.settings["PRODUCT_NAME"] = "Demo"
	    configuration.settings["SWIFT_VERSION"] = "4.0"
    end

    target.scheme(target.name)
end