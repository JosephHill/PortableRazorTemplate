<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="4451" systemVersion="13A461" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" initialViewController="vXZ-lx-hvc">
    <dependencies>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="3676"/>
    </dependencies>
    <scenes>
        <!--class Prefix:identifier View Controller-->
        <scene sceneID="ufC-wZ-h7g">
            <objects>
                <viewController id="vXZ-lx-hvc" customClass="RootViewController" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="kh9-bI-dsS">
                        <rect key="frame" x="0.0" y="0.0" width="320" height="568"/>
                        <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                        <color key="backgroundColor" white="1" alpha="1" colorSpace="custom" customColorSpace="calibratedWhite"/>
                        <subviews>
                            <webView contentMode="scaleToFill" id="1" translatesAutoresizingMaskIntoConstraints="NO">
                                <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="calibratedRGB"/>
                            </webView>
                        </subviews>
                        <constraints>
                            <constraint firstItem="1" firstAttribute="leading" secondItem="kh9-bI-dsS" secondAttribute="leading" type="user" id="2"/>
                            <constraint firstItem="1" firstAttribute="top" secondItem="kh9-bI-dsS" secondAttribute="top" constant="20" type="user" id="6"/>
                            <constraint firstItem="kh9-bI-dsS" firstAttribute="trailing" secondItem="1" secondAttribute="trailing" type="user" id="8"/>
                            <constraint firstItem="kh9-bI-dsS" firstAttribute="bottom" secondItem="1" secondAttribute="bottom" type="user" id="9"/>
                        </constraints>
                    </view>
                    <connections>
                        <outlet property="webView" destination="1" id="name-outlet-1"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="x5A-6p-PRh" sceneMemberID="firstResponder"/>
            </objects>
        </scene>
    </scenes>
    <simulatedMetricsContainer key="defaultSimulatedMetrics">
        <simulatedStatusBarMetrics key="statusBar"/>
        <simulatedOrientationMetrics key="orientation"/>
        <simulatedScreenMetrics key="destination" type="retina4"/>
    </simulatedMetricsContainer>
    <resources>
        <image name="Default-568h@2x.png" width="640" height="1136"/>
    </resources>
</document>
