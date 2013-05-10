<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="2.0" toolsVersion="3084" systemVersion="12D78" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" initialViewController="Vbw-p0-rcj">
    <dependencies>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="2083"/>
    </dependencies>
    <scenes>
        <!--Third Custom Table View Controller - HP-->
        <scene sceneID="sjU-0A-i4l">
            <objects>
                <tableViewController id="Vbw-p0-rcj" customClass="MDThirdCustomTableViewController" sceneMemberID="viewController">
                    <tableView key="view" opaque="NO" clipsSubviews="YES" clearsContextBeforeDrawing="NO" contentMode="scaleToFill" alwaysBounceVertical="YES" dataMode="static" style="plain" separatorStyle="none" rowHeight="200" sectionHeaderHeight="22" sectionFooterHeight="22" id="GTQ-0N-31u">
                        <rect key="frame" x="0.0" y="20" width="320" height="548"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                        <sections>
                            <tableViewSection id="Gha-zd-fGx">
                                <cells>
                                    <tableViewCell contentMode="scaleToFill" selectionStyle="none" hidesAccessoryWhenEditing="NO" indentationLevel="1" indentationWidth="0.0" rowHeight="480" id="EB8-6d-ZeZ">
                                        <rect key="frame" x="0.0" y="0.0" width="320" height="480"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <view key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center">
                                            <rect key="frame" x="0.0" y="0.0" width="320" height="479"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                            <subviews>
                                                <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="Sba-jY-wAk" customClass="MDCustomScoreView">
                                                    <subviews>
                                                        <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="cOi-0C-ThV">
                                                            <fontDescription key="fontDescription" type="boldSystem" pointSize="15"/>
                                                            <state key="normal" image="menu_icon.png">
                                                                <color key="titleColor" red="0.19607843459999999" green="0.30980393290000002" blue="0.52156865600000002" alpha="1" colorSpace="calibratedRGB"/>
                                                                <color key="titleShadowColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            </state>
                                                            <state key="highlighted">
                                                                <color key="titleColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            </state>
                                                            <connections>
                                                                <segue destination="QJl-YI-VVk" kind="modal" modalTransitionStyle="coverVertical" id="9sF-sT-RJZ"/>
                                                            </connections>
                                                        </button>
                                                        <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="EAT" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="tfO-tu-TIL">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstAttribute="height" constant="32" id="2Iy-m2-LZa"/>
                                                            </constraints>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="12"/>
                                                            <color key="textColor" red="1" green="1" blue="1" alpha="1" colorSpace="calibratedRGB"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                        <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="WEDNESDAY, MAY 8, 2013" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="6yy-qz-lfd">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstAttribute="height" constant="32" id="9RP-JN-ZC8"/>
                                                            </constraints>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="16"/>
                                                            <color key="textColor" red="1" green="1" blue="1" alpha="1" colorSpace="calibratedRGB"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                        <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="Hello John !" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="DMU-iJ-R2V">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="16"/>
                                                            <color key="textColor" red="1" green="1" blue="1" alpha="1" colorSpace="calibratedRGB"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                        <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="50" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="dIU-LA-of9">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstAttribute="width" constant="53" id="WBY-kJ-Fry"/>
                                                            </constraints>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="12"/>
                                                            <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                        <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="70" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="9PO-BN-iAO">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstAttribute="width" constant="53" id="pX1-a2-1wZ"/>
                                                            </constraints>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="12"/>
                                                            <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                        <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="90" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="MIE-zW-BAc">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstAttribute="width" constant="53" id="LtC-gw-Gcm"/>
                                                                <constraint firstAttribute="height" constant="32" id="jZP-8t-YqI"/>
                                                            </constraints>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="12"/>
                                                            <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                        <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="MOVE" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="nCk-D2-A9M">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="12"/>
                                                            <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                        <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="SLEEP" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="kLa-ox-mgw">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="12"/>
                                                            <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                        <imageView clipsSubviews="YES" userInteractionEnabled="NO" contentMode="scaleToFill" image="star.png" translatesAutoresizingMaskIntoConstraints="NO" id="zzt-8H-FYx">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstAttribute="height" constant="36" id="LjS-iV-RWr"/>
                                                                <constraint firstAttribute="width" constant="38" id="Zhx-dd-rhI"/>
                                                            </constraints>
                                                        </imageView>
                                                        <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="3" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="39Z-bS-PUG">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstAttribute="height" constant="32" id="lpe-cn-xJj"/>
                                                                <constraint firstAttribute="width" constant="53" id="qcZ-jK-Fe6"/>
                                                            </constraints>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="12"/>
                                                            <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                        <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="100%" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="For-M2-c3n">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstAttribute="width" constant="130" id="Bmw-Ka-9R5"/>
                                                                <constraint firstAttribute="height" constant="80" id="rWK-9L-uoA"/>
                                                            </constraints>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="48"/>
                                                            <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                        <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="MOVE" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="NXo-0Y-9ue">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstAttribute="height" constant="80" id="3OH-c8-WEJ"/>
                                                                <constraint firstAttribute="width" constant="161" id="zEM-SA-Fa0"/>
                                                            </constraints>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="48"/>
                                                            <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                        <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="TODAY'S GOAL: 10000 STEPS" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="Voz-Lj-1SQ">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstAttribute="width" constant="300" id="9nq-Di-LKt"/>
                                                            </constraints>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="16"/>
                                                            <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                        <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="2V3-Tc-798" customClass="MDCustomDrawEatScoreBarView">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                        </view>
                                                        <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="Jw8-T0-59J" customClass="MDCustomDrawScoreView">
                                                            <subviews>
                                                                <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="75%" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="yyY-B6-pGz">
                                                                    <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                                    <constraints>
                                                                        <constraint firstAttribute="height" constant="80" id="MPc-8k-pr6"/>
                                                                        <constraint firstAttribute="width" constant="100" id="UyF-Kr-Az0"/>
                                                                    </constraints>
                                                                    <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="48"/>
                                                                    <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                                    <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                                </label>
                                                            </subviews>
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstItem="yyY-B6-pGz" firstAttribute="centerX" secondItem="Jw8-T0-59J" secondAttribute="centerX" type="default" id="Vgd-9Z-Jgg"/>
                                                                <constraint firstItem="yyY-B6-pGz" firstAttribute="top" secondItem="Jw8-T0-59J" secondAttribute="top" constant="80" id="vSI-bj-WWb"/>
                                                            </constraints>
                                                        </view>
                                                        <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="wAR-sa-wt5" customClass="MDCustomDrawMoveScoreBarView">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                        </view>
                                                        <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="h0D-hY-HTr" customClass="MDCustomDrawSleepScoreBarView">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                        </view>
                                                    </subviews>
                                                    <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                    <constraints>
                                                        <constraint firstAttribute="trailing" secondItem="9PO-BN-iAO" secondAttribute="trailing" constant="49" id="09L-fA-eXL"/>
                                                        <constraint firstItem="kLa-ox-mgw" firstAttribute="trailing" secondItem="9PO-BN-iAO" secondAttribute="trailing" type="default" id="0gT-Qp-s11"/>
                                                        <constraint firstItem="wAR-sa-wt5" firstAttribute="trailing" secondItem="Sba-jY-wAk" secondAttribute="trailing" type="default" id="16N-y2-rUW"/>
                                                        <constraint firstItem="For-M2-c3n" firstAttribute="leading" secondItem="Sba-jY-wAk" secondAttribute="leading" constant="195" id="1wM-3n-I2V"/>
                                                        <constraint firstItem="cOi-0C-ThV" firstAttribute="top" secondItem="Sba-jY-wAk" secondAttribute="top" constant="5" id="3JP-F1-bdi"/>
                                                        <constraint firstItem="For-M2-c3n" firstAttribute="top" secondItem="Sba-jY-wAk" secondAttribute="top" constant="240" id="5Bm-9J-gy1"/>
                                                        <constraint firstItem="h0D-hY-HTr" firstAttribute="trailing" secondItem="Sba-jY-wAk" secondAttribute="trailing" type="default" id="7MK-z4-Evh"/>
                                                        <constraint firstAttribute="trailing" secondItem="39Z-bS-PUG" secondAttribute="trailing" constant="3" id="AnP-Ua-yhD"/>
                                                        <constraint firstItem="2V3-Tc-798" firstAttribute="leading" secondItem="Sba-jY-wAk" secondAttribute="leading" type="default" id="Arz-k9-GDV"/>
                                                        <constraint firstItem="dIU-LA-of9" firstAttribute="baseline" secondItem="MIE-zW-BAc" secondAttribute="baseline" type="default" id="CbO-Xg-Cwg"/>
                                                        <constraint firstItem="nCk-D2-A9M" firstAttribute="top" secondItem="tfO-tu-TIL" secondAttribute="top" type="default" id="GRA-ce-6nc"/>
                                                        <constraint firstAttribute="trailing" secondItem="dIU-LA-of9" secondAttribute="trailing" constant="91" id="Hry-1U-mgT"/>
                                                        <constraint firstItem="tfO-tu-TIL" firstAttribute="trailing" secondItem="MIE-zW-BAc" secondAttribute="trailing" type="default" id="Hs0-0a-jyP"/>
                                                        <constraint firstItem="nCk-D2-A9M" firstAttribute="trailing" secondItem="dIU-LA-of9" secondAttribute="trailing" type="default" id="I9n-om-RN0"/>
                                                        <constraint firstItem="Jw8-T0-59J" firstAttribute="leading" secondItem="Sba-jY-wAk" secondAttribute="leading" type="default" id="Jmd-1d-W7s"/>
                                                        <constraint firstItem="h0D-hY-HTr" firstAttribute="top" secondItem="DMU-iJ-R2V" secondAttribute="bottom" constant="8" symbolic="YES" type="default" id="Mkq-Xs-dS2"/>
                                                        <constraint firstItem="dIU-LA-of9" firstAttribute="leading" secondItem="nCk-D2-A9M" secondAttribute="leading" type="default" id="N5i-Xh-ddr"/>
                                                        <constraint firstAttribute="bottom" secondItem="h0D-hY-HTr" secondAttribute="bottom" constant="100" id="NNb-kY-3qX"/>
                                                        <constraint firstItem="Voz-Lj-1SQ" firstAttribute="bottom" secondItem="NXo-0Y-9ue" secondAttribute="bottom" type="default" id="Oj7-4N-LDN"/>
                                                        <constraint firstItem="2V3-Tc-798" firstAttribute="bottom" secondItem="wAR-sa-wt5" secondAttribute="bottom" type="default" id="QPW-wj-3L0"/>
                                                        <constraint firstItem="wAR-sa-wt5" firstAttribute="leading" secondItem="Sba-jY-wAk" secondAttribute="leading" type="default" id="RNw-hf-Fqa"/>
                                                        <constraint firstAttribute="bottom" secondItem="MIE-zW-BAc" secondAttribute="bottom" constant="35" id="ROT-61-B3W"/>
                                                        <constraint firstItem="MIE-zW-BAc" firstAttribute="leading" secondItem="Sba-jY-wAk" secondAttribute="leading" constant="135" id="U9M-UW-GtK"/>
                                                        <constraint firstItem="Jw8-T0-59J" firstAttribute="trailing" secondItem="Sba-jY-wAk" secondAttribute="trailing" type="default" id="WP1-qt-wZy"/>
                                                        <constraint firstItem="h0D-hY-HTr" firstAttribute="bottom" secondItem="2V3-Tc-798" secondAttribute="bottom" type="default" id="YSb-2T-4MR"/>
                                                        <constraint firstItem="6yy-qz-lfd" firstAttribute="trailing" secondItem="Sba-jY-wAk" secondAttribute="trailing" type="default" id="a69-Cn-tGH"/>
                                                        <constraint firstItem="9PO-BN-iAO" firstAttribute="leading" secondItem="kLa-ox-mgw" secondAttribute="leading" type="default" id="aIe-5E-cyc"/>
                                                        <constraint firstItem="2V3-Tc-798" firstAttribute="top" secondItem="DMU-iJ-R2V" secondAttribute="bottom" constant="8" symbolic="YES" type="default" id="cne-0G-s8j"/>
                                                        <constraint firstItem="h0D-hY-HTr" firstAttribute="top" secondItem="Sba-jY-wAk" secondAttribute="top" constant="60" id="dVP-0f-vDp"/>
                                                        <constraint firstItem="h0D-hY-HTr" firstAttribute="leading" secondItem="Sba-jY-wAk" secondAttribute="leading" type="default" id="dgH-q8-oow"/>
                                                        <constraint firstItem="6yy-qz-lfd" firstAttribute="leading" secondItem="Sba-jY-wAk" secondAttribute="leading" type="default" id="ePI-MO-MVZ"/>
                                                        <constraint firstItem="tfO-tu-TIL" firstAttribute="baseline" secondItem="nCk-D2-A9M" secondAttribute="baseline" type="default" id="eTB-2J-xwc"/>
                                                        <constraint firstAttribute="bottom" secondItem="tfO-tu-TIL" secondAttribute="bottom" constant="9" id="ed6-Aj-YXc"/>
                                                        <constraint firstItem="39Z-bS-PUG" firstAttribute="centerY" secondItem="zzt-8H-FYx" secondAttribute="centerY" type="default" id="erR-YP-fIB"/>
                                                        <constraint firstItem="tfO-tu-TIL" firstAttribute="leading" secondItem="MIE-zW-BAc" secondAttribute="leading" type="default" id="fKg-D3-Rxp"/>
                                                        <constraint firstItem="Voz-Lj-1SQ" firstAttribute="leading" secondItem="NXo-0Y-9ue" secondAttribute="leading" type="default" id="gad-uc-pW7"/>
                                                        <constraint firstItem="6yy-qz-lfd" firstAttribute="top" secondItem="Sba-jY-wAk" secondAttribute="top" type="default" id="iN6-B9-fDa"/>
                                                        <constraint firstAttribute="bottom" secondItem="zzt-8H-FYx" secondAttribute="bottom" constant="20" symbolic="YES" type="default" id="nDN-SD-nc0"/>
                                                        <constraint firstItem="kLa-ox-mgw" firstAttribute="top" secondItem="nCk-D2-A9M" secondAttribute="top" type="default" id="oYy-4g-QmM"/>
                                                        <constraint firstItem="2V3-Tc-798" firstAttribute="trailing" secondItem="Sba-jY-wAk" secondAttribute="trailing" type="default" id="pB6-mm-qzC"/>
                                                        <constraint firstItem="DMU-iJ-R2V" firstAttribute="top" secondItem="Sba-jY-wAk" secondAttribute="top" constant="20" symbolic="YES" type="default" id="rBk-ob-bup"/>
                                                        <constraint firstItem="DMU-iJ-R2V" firstAttribute="trailing" secondItem="Sba-jY-wAk" secondAttribute="trailing" type="default" id="rl3-9u-sQL"/>
                                                        <constraint firstItem="dIU-LA-of9" firstAttribute="baseline" secondItem="9PO-BN-iAO" secondAttribute="baseline" type="default" id="sKo-1K-Udt"/>
                                                        <constraint firstItem="kLa-ox-mgw" firstAttribute="baseline" secondItem="nCk-D2-A9M" secondAttribute="baseline" type="default" id="u3I-ax-o3K"/>
                                                        <constraint firstItem="wAR-sa-wt5" firstAttribute="top" secondItem="DMU-iJ-R2V" secondAttribute="bottom" constant="8" symbolic="YES" type="default" id="ufF-fW-SKU"/>
                                                        <constraint firstItem="h0D-hY-HTr" firstAttribute="bottom" secondItem="Jw8-T0-59J" secondAttribute="bottom" type="default" id="v1E-vK-VVC"/>
                                                        <constraint firstItem="NXo-0Y-9ue" firstAttribute="leading" secondItem="Sba-jY-wAk" secondAttribute="leading" constant="15" id="vXl-06-f6j"/>
                                                        <constraint firstAttribute="trailing" secondItem="zzt-8H-FYx" secondAttribute="trailing" constant="10" id="vjp-x8-E7e"/>
                                                        <constraint firstItem="NXo-0Y-9ue" firstAttribute="top" secondItem="Sba-jY-wAk" secondAttribute="top" constant="50" id="wSQ-YE-Xgz"/>
                                                        <constraint firstItem="MIE-zW-BAc" firstAttribute="top" secondItem="dIU-LA-of9" secondAttribute="top" type="default" id="wYG-a4-d73"/>
                                                        <constraint firstItem="DMU-iJ-R2V" firstAttribute="leading" secondItem="Sba-jY-wAk" secondAttribute="leading" type="default" id="wdj-nb-b8c"/>
                                                        <constraint firstItem="Jw8-T0-59J" firstAttribute="top" secondItem="DMU-iJ-R2V" secondAttribute="bottom" constant="8" symbolic="YES" type="default" id="wv5-m5-gZb"/>
                                                        <constraint firstItem="cOi-0C-ThV" firstAttribute="leading" secondItem="Sba-jY-wAk" secondAttribute="leading" constant="5" id="xSo-aV-FZL"/>
                                                        <constraint firstItem="dIU-LA-of9" firstAttribute="top" secondItem="9PO-BN-iAO" secondAttribute="top" type="default" id="zvM-tJ-Yzj"/>
                                                    </constraints>
                                                </view>
                                                <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="uy4-qV-KwY">
                                                    <fontDescription key="fontDescription" type="boldSystem" pointSize="15"/>
                                                    <state key="normal" image="plate.png">
                                                        <color key="titleColor" red="0.19607843459999999" green="0.30980393290000002" blue="0.52156865600000002" alpha="1" colorSpace="calibratedRGB"/>
                                                        <color key="titleShadowColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                    </state>
                                                    <state key="highlighted">
                                                        <color key="titleColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                    </state>
                                                    <connections>
                                                        <outletCollection property="gestureRecognizers" destination="6ly-mw-ohn" appends="YES" id="HUz-Vk-ASP"/>
                                                    </connections>
                                                </button>
                                                <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="2" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="DkD-dW-dW5">
                                                    <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                    <constraints>
                                                        <constraint firstAttribute="width" constant="53" id="CLZ-O3-aE6"/>
                                                        <constraint firstAttribute="height" constant="32" id="a5S-I0-RHw"/>
                                                    </constraints>
                                                    <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="12"/>
                                                    <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                    <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                </label>
                                                <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="5" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="CiH-xj-Z4m">
                                                    <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                    <constraints>
                                                        <constraint firstAttribute="height" constant="32" id="HpO-90-bjH"/>
                                                        <constraint firstAttribute="width" constant="53" id="J6h-Kv-zct"/>
                                                    </constraints>
                                                    <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="12"/>
                                                    <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                    <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                </label>
                                                <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="4RZ-Do-QfB">
                                                    <constraints>
                                                        <constraint firstAttribute="height" constant="44" id="WWe-Wm-dAL"/>
                                                    </constraints>
                                                    <fontDescription key="fontDescription" type="boldSystem" pointSize="15"/>
                                                    <state key="normal" image="water.png">
                                                        <color key="titleColor" red="0.19607843459999999" green="0.30980393290000002" blue="0.52156865600000002" alpha="1" colorSpace="calibratedRGB"/>
                                                        <color key="titleShadowColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                    </state>
                                                    <state key="highlighted">
                                                        <color key="titleColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                    </state>
                                                    <connections>
                                                        <outletCollection property="gestureRecognizers" destination="fci-0X-IZW" appends="YES" id="rAU-7n-xAB"/>
                                                    </connections>
                                                </button>
                                                <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" adjustsImageWhenHighlighted="NO" adjustsImageWhenDisabled="NO" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="vRv-c2-wQc">
                                                    <constraints>
                                                        <constraint firstAttribute="width" constant="150" id="zdb-Ug-AwL"/>
                                                    </constraints>
                                                    <fontDescription key="fontDescription" type="boldSystem" pointSize="15"/>
                                                    <state key="normal">
                                                        <color key="titleColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                        <color key="titleShadowColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                    </state>
                                                    <state key="highlighted">
                                                        <color key="titleColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                    </state>
                                                    <connections>
                                                        <outletCollection property="gestureRecognizers" destination="jUx-58-nM3" appends="YES" id="ELN-qR-tNb"/>
                                                    </connections>
                                                </button>
                                            </subviews>
                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                        </view>
                                        <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                        <constraints>
                                            <constraint firstAttribute="bottom" secondItem="4RZ-Do-QfB" secondAttribute="bottom" constant="16" id="4SQ-0P-J46"/>
                                            <constraint firstItem="vRv-c2-wQc" firstAttribute="leading" secondItem="EB8-6d-ZeZ" secondAttribute="leading" constant="115" id="6tE-cG-F63"/>
                                            <constraint firstItem="Sba-jY-wAk" firstAttribute="top" secondItem="EB8-6d-ZeZ" secondAttribute="top" type="default" id="7eB-XE-jnP"/>
                                            <constraint firstItem="Sba-jY-wAk" firstAttribute="leading" secondItem="EB8-6d-ZeZ" secondAttribute="leading" type="default" id="80x-6Y-Vg1"/>
                                            <constraint firstItem="vRv-c2-wQc" firstAttribute="bottom" secondItem="4RZ-Do-QfB" secondAttribute="bottom" type="default" id="CCp-zo-Vza"/>
                                            <constraint firstItem="uy4-qV-KwY" firstAttribute="leading" secondItem="4RZ-Do-QfB" secondAttribute="trailing" constant="8" symbolic="YES" type="default" id="Idr-mf-TYw"/>
                                            <constraint firstItem="DkD-dW-dW5" firstAttribute="leading" secondItem="EB8-6d-ZeZ" secondAttribute="leading" constant="59" id="KpB-x4-ImD"/>
                                            <constraint firstItem="4RZ-Do-QfB" firstAttribute="baseline" secondItem="uy4-qV-KwY" secondAttribute="baseline" type="default" id="RBy-53-eMx"/>
                                            <constraint firstItem="Sba-jY-wAk" firstAttribute="trailing" secondItem="EB8-6d-ZeZ" secondAttribute="trailing" type="default" id="RZS-Q8-RQ1"/>
                                            <constraint firstAttribute="bottom" secondItem="CiH-xj-Z4m" secondAttribute="bottom" constant="18" id="V8O-6o-VgO"/>
                                            <constraint firstAttribute="bottom" secondItem="DkD-dW-dW5" secondAttribute="bottom" constant="21" id="ZRn-Pb-dNA"/>
                                            <constraint firstItem="Sba-jY-wAk" firstAttribute="bottom" secondItem="EB8-6d-ZeZ" secondAttribute="bottom" type="default" id="a2m-eg-avr"/>
                                            <constraint firstItem="4RZ-Do-QfB" firstAttribute="leading" secondItem="EB8-6d-ZeZ" secondAttribute="leading" constant="20" type="default" id="pQ9-Rb-xsu"/>
                                            <constraint firstItem="CiH-xj-Z4m" firstAttribute="centerX" secondItem="4RZ-Do-QfB" secondAttribute="centerX" type="default" id="xAg-xk-B7f"/>
                                            <constraint firstAttribute="bottom" secondItem="uy4-qV-KwY" secondAttribute="bottom" constant="17" id="yE6-kQ-cmb"/>
                                            <constraint firstItem="4RZ-Do-QfB" firstAttribute="top" secondItem="vRv-c2-wQc" secondAttribute="top" type="default" id="zOO-7e-Uaq"/>
                                        </constraints>
                                        <connections>
                                            <outletCollection property="gestureRecognizers" destination="Vj0-gE-DPV" appends="YES" id="59P-p0-C7f"/>
                                        </connections>
                                    </tableViewCell>
                                    <tableViewCell contentMode="scaleToFill" selectionStyle="none" hidesAccessoryWhenEditing="NO" indentationLevel="1" indentationWidth="0.0" rowHeight="200" id="cQo-yW-USR">
                                        <rect key="frame" x="0.0" y="480" width="320" height="200"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <view key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center">
                                            <rect key="frame" x="0.0" y="0.0" width="320" height="199"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                            <subviews>
                                                <view alpha="0.60000000000000009" contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="za2-aQ-JN9" customClass="MDCustomCorrView">
                                                    <subviews>
                                                        <label hidden="YES" opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="ALL" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="Yo8-Xe-jW4">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstAttribute="width" constant="50" id="1bz-J3-Aam"/>
                                                                <constraint firstAttribute="height" constant="30" id="V83-db-LnT"/>
                                                            </constraints>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="18"/>
                                                            <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                    </subviews>
                                                    <color key="backgroundColor" white="0.0" alpha="1" colorSpace="calibratedWhite"/>
                                                    <constraints>
                                                        <constraint firstItem="Yo8-Xe-jW4" firstAttribute="top" secondItem="za2-aQ-JN9" secondAttribute="top" constant="3" id="Ogw-UY-Jad"/>
                                                        <constraint firstItem="Yo8-Xe-jW4" firstAttribute="leading" secondItem="za2-aQ-JN9" secondAttribute="leading" constant="3" id="k2h-Xt-x9M"/>
                                                    </constraints>
                                                </view>
                                            </subviews>
                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                        </view>
                                        <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                        <constraints>
                                            <constraint firstItem="za2-aQ-JN9" firstAttribute="top" secondItem="cQo-yW-USR" secondAttribute="top" type="default" id="9Wg-ge-3Tq"/>
                                            <constraint firstItem="za2-aQ-JN9" firstAttribute="trailing" secondItem="cQo-yW-USR" secondAttribute="trailing" type="default" id="JuH-mv-aES"/>
                                            <constraint firstItem="za2-aQ-JN9" firstAttribute="bottom" secondItem="cQo-yW-USR" secondAttribute="bottom" type="default" id="a5Z-98-iL7"/>
                                            <constraint firstItem="za2-aQ-JN9" firstAttribute="leading" secondItem="cQo-yW-USR" secondAttribute="leading" type="default" id="fBb-Pr-C6N"/>
                                        </constraints>
                                    </tableViewCell>
                                    <tableViewCell contentMode="scaleToFill" selectionStyle="none" hidesAccessoryWhenEditing="NO" indentationLevel="1" indentationWidth="0.0" rowHeight="200" id="TUr-gD-2Q3">
                                        <rect key="frame" x="0.0" y="680" width="320" height="200"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <view key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center">
                                            <rect key="frame" x="0.0" y="0.0" width="320" height="199"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                            <subviews>
                                                <view alpha="0.60000000000000009" contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="mtS-Bp-t4X" customClass="MDCustomSleepView">
                                                    <subviews>
                                                        <label hidden="YES" opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="SLEEP" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="W7H-RM-KkV">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstAttribute="height" constant="30" id="CWG-tR-emy"/>
                                                                <constraint firstAttribute="width" constant="80" id="YlE-eF-3gk"/>
                                                            </constraints>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="18"/>
                                                            <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                        <imageView userInteractionEnabled="NO" contentMode="scaleToFill" image="sleep_azumio_small.png" translatesAutoresizingMaskIntoConstraints="NO" id="tHO-fH-cRv"/>
                                                        <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="detailDisclosure" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="511-U9-LRo">
                                                            <fontDescription key="fontDescription" type="boldSystem" pointSize="15"/>
                                                            <state key="normal">
                                                                <color key="titleColor" red="0.19607843459999999" green="0.30980393290000002" blue="0.52156865600000002" alpha="1" colorSpace="calibratedRGB"/>
                                                                <color key="titleShadowColor" cocoaTouchSystemColor="scrollViewTexturedBackgroundColor"/>
                                                            </state>
                                                            <state key="highlighted">
                                                                <color key="titleColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            </state>
                                                            <connections>
                                                                <segue destination="ztr-Wx-jQM" kind="modal" id="nzO-P7-LEw"/>
                                                            </connections>
                                                        </button>
                                                    </subviews>
                                                    <color key="backgroundColor" white="0.0" alpha="1" colorSpace="calibratedWhite"/>
                                                    <constraints>
                                                        <constraint firstItem="tHO-fH-cRv" firstAttribute="bottom" secondItem="mtS-Bp-t4X" secondAttribute="bottom" type="default" id="6rp-hd-swk"/>
                                                        <constraint firstItem="tHO-fH-cRv" firstAttribute="trailing" secondItem="mtS-Bp-t4X" secondAttribute="trailing" type="default" id="A3O-TY-U7i"/>
                                                        <constraint firstItem="tHO-fH-cRv" firstAttribute="top" secondItem="mtS-Bp-t4X" secondAttribute="top" type="default" id="HNY-uN-sGI"/>
                                                        <constraint firstItem="W7H-RM-KkV" firstAttribute="baseline" secondItem="511-U9-LRo" secondAttribute="baseline" type="default" id="Oq5-aU-Jxn"/>
                                                        <constraint firstItem="tHO-fH-cRv" firstAttribute="leading" secondItem="mtS-Bp-t4X" secondAttribute="leading" type="default" id="SW8-ne-qAt"/>
                                                        <constraint firstItem="W7H-RM-KkV" firstAttribute="leading" secondItem="mtS-Bp-t4X" secondAttribute="leading" constant="3" id="pzL-tM-86m"/>
                                                        <constraint firstAttribute="trailing" secondItem="511-U9-LRo" secondAttribute="trailing" constant="9" id="vjv-fz-3Od"/>
                                                        <constraint firstItem="511-U9-LRo" firstAttribute="top" secondItem="mtS-Bp-t4X" secondAttribute="top" constant="6" id="zhI-bq-s93"/>
                                                    </constraints>
                                                </view>
                                            </subviews>
                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                        </view>
                                        <color key="backgroundColor" red="0.19607843459999999" green="0.30980393290000002" blue="0.52156865600000002" alpha="1" colorSpace="calibratedRGB"/>
                                        <constraints>
                                            <constraint firstItem="mtS-Bp-t4X" firstAttribute="leading" secondItem="TUr-gD-2Q3" secondAttribute="leading" type="default" id="DRQ-It-nFQ"/>
                                            <constraint firstItem="mtS-Bp-t4X" firstAttribute="trailing" secondItem="TUr-gD-2Q3" secondAttribute="trailing" type="default" id="WXe-au-MMG"/>
                                            <constraint firstItem="mtS-Bp-t4X" firstAttribute="top" secondItem="TUr-gD-2Q3" secondAttribute="top" type="default" id="nhW-Uy-4oH"/>
                                            <constraint firstItem="mtS-Bp-t4X" firstAttribute="bottom" secondItem="TUr-gD-2Q3" secondAttribute="bottom" type="default" id="rBE-m5-Hui"/>
                                        </constraints>
                                    </tableViewCell>
                                    <tableViewCell contentMode="scaleToFill" selectionStyle="none" hidesAccessoryWhenEditing="NO" indentationLevel="1" indentationWidth="0.0" rowHeight="200" id="mRd-uL-SM7">
                                        <rect key="frame" x="0.0" y="880" width="320" height="200"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <view key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center">
                                            <rect key="frame" x="0.0" y="0.0" width="320" height="199"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                            <subviews>
                                                <view alpha="0.60000000000000009" contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="SHo-9w-V1k" customClass="MDCustomMoveView">
                                                    <subviews>
                                                        <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="MOVE" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="MRy-Mj-PGc">
                                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                            <constraints>
                                                                <constraint firstAttribute="height" constant="30" id="FmE-vc-zag"/>
                                                                <constraint firstAttribute="width" constant="80" id="KYO-RT-cd5"/>
                                                            </constraints>
                                                            <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="18"/>
                                                            <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                        </label>
                                                    </subviews>
                                                    <color key="backgroundColor" white="0.0" alpha="1" colorSpace="calibratedWhite"/>
                                                    <gestureRecognizers/>
                                                    <constraints>
                                                        <constraint firstItem="MRy-Mj-PGc" firstAttribute="top" secondItem="SHo-9w-V1k" secondAttribute="top" constant="3" id="pjT-D0-GUm"/>
                                                        <constraint firstItem="MRy-Mj-PGc" firstAttribute="leading" secondItem="SHo-9w-V1k" secondAttribute="leading" constant="3" id="zW8-46-VpG"/>
                                                    </constraints>
                                                    <connections>
                                                        <outletCollection property="gestureRecognizers" destination="mad-Bi-iSo" appends="YES" id="skt-xH-gia"/>
                                                    </connections>
                                                </view>
                                            </subviews>
                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                        </view>
                                        <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                        <constraints>
                                            <constraint firstItem="SHo-9w-V1k" firstAttribute="trailing" secondItem="mRd-uL-SM7" secondAttribute="trailing" type="default" id="P8M-Im-fpw"/>
                                            <constraint firstItem="SHo-9w-V1k" firstAttribute="top" secondItem="mRd-uL-SM7" secondAttribute="top" type="default" id="St9-gP-zht"/>
                                            <constraint firstItem="SHo-9w-V1k" firstAttribute="leading" secondItem="mRd-uL-SM7" secondAttribute="leading" type="default" id="sHT-Lz-3fN"/>
                                            <constraint firstItem="SHo-9w-V1k" firstAttribute="bottom" secondItem="mRd-uL-SM7" secondAttribute="bottom" type="default" id="uRM-fm-l30"/>
                                        </constraints>
                                    </tableViewCell>
                                    <tableViewCell contentMode="scaleToFill" selectionStyle="none" hidesAccessoryWhenEditing="NO" indentationLevel="1" indentationWidth="0.0" rowHeight="320" id="jMI-d5-aye">
                                        <rect key="frame" x="0.0" y="1080" width="320" height="320"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <view key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center">
                                            <rect key="frame" x="0.0" y="0.0" width="320" height="319"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                            <subviews>
                                                <view alpha="0.60000000000000009" contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="0qz-e6-XMo" customClass="MDCustomEatView">
                                                    <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                </view>
                                                <imageView userInteractionEnabled="NO" contentMode="scaleToFill" image="circle_of_loved_ones.png" translatesAutoresizingMaskIntoConstraints="NO" id="xSc-vb-maA"/>
                                                <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" text="SHARE" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="vHy-s3-NmH">
                                                    <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                                    <constraints>
                                                        <constraint firstAttribute="width" constant="80" id="RcF-7d-25G"/>
                                                        <constraint firstAttribute="height" constant="30" id="doa-kP-AQq"/>
                                                    </constraints>
                                                    <fontDescription key="fontDescription" name="Helvetica-Bold" family="Helvetica" pointSize="18"/>
                                                    <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                    <color key="highlightedColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                </label>
                                            </subviews>
                                            <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                        </view>
                                        <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                                        <constraints>
                                            <constraint firstItem="0qz-e6-XMo" firstAttribute="bottom" secondItem="jMI-d5-aye" secondAttribute="bottom" type="default" id="62d-Tq-m4P"/>
                                            <constraint firstItem="xSc-vb-maA" firstAttribute="top" secondItem="jMI-d5-aye" secondAttribute="top" type="default" id="9By-qa-zIZ"/>
                                            <constraint firstItem="xSc-vb-maA" firstAttribute="leading" secondItem="jMI-d5-aye" secondAttribute="leading" type="default" id="HvH-u4-Pq2"/>
                                            <constraint firstItem="vHy-s3-NmH" firstAttribute="leading" secondItem="jMI-d5-aye" secondAttribute="leading" constant="3" id="JiR-l1-J07"/>
                                            <constraint firstItem="0qz-e6-XMo" firstAttribute="leading" secondItem="jMI-d5-aye" secondAttribute="leading" type="default" id="Nkg-rY-utq"/>
                                            <constraint firstItem="0qz-e6-XMo" firstAttribute="top" secondItem="jMI-d5-aye" secondAttribute="top" type="default" id="b5W-3E-7Av"/>
                                            <constraint firstItem="0qz-e6-XMo" firstAttribute="trailing" secondItem="jMI-d5-aye" secondAttribute="trailing" type="default" id="hnh-Mj-72w"/>
                                            <constraint firstItem="vHy-s3-NmH" firstAttribute="top" secondItem="jMI-d5-aye" secondAttribute="top" constant="5" id="vwz-FI-3yL"/>
                                        </constraints>
                                    </tableViewCell>
                                </cells>
                            </tableViewSection>
                        </sections>
                        <connections>
                            <outlet property="dataSource" destination="Vbw-p0-rcj" id="Loo-mV-ysU"/>
                            <outlet property="delegate" destination="Vbw-p0-rcj" id="Kc7-N1-g7p"/>
                        </connections>
                    </tableView>
                    <tabBarItem key="tabBarItem" title="HP" image="second.png" id="RPZ-WF-Dw8"/>
                    <connections>
                        <outlet property="bvGoal" destination="Voz-Lj-1SQ" id="4AI-zP-59g"/>
                        <outlet property="bvScore" destination="For-M2-c3n" id="CYC-ju-D1X"/>
                        <outlet property="bvTitle" destination="NXo-0Y-9ue" id="cJi-ow-dEo"/>
                        <outlet property="eatScoreBarView" destination="2V3-Tc-798" id="8oG-7B-0tw"/>
                        <outlet property="moveScoreBarView" destination="wAR-sa-wt5" id="3N0-um-J0D"/>
                        <outlet property="scoreCell" destination="EB8-6d-ZeZ" id="fTz-he-SDx"/>
                        <outlet property="scoreHGraphView" destination="Jw8-T0-59J" id="w1z-Qs-KY5"/>
                        <outlet property="scoreView" destination="Sba-jY-wAk" id="aj1-Ux-4ms"/>
                        <outlet property="sleepScoreBarView" destination="h0D-hY-HTr" id="lS3-Kp-j9m"/>
                        <outlet property="svDate" destination="6yy-qz-lfd" id="9a3-Ia-0Hu"/>
                        <outlet property="svEatScore" destination="MIE-zW-BAc" id="ouo-6A-UJq"/>
                        <outlet property="svGreeting" destination="DMU-iJ-R2V" id="Z1c-gM-Gev"/>
                        <outlet property="svMoveScore" destination="dIU-LA-of9" id="KgV-sf-lUS"/>
                        <outlet property="svScore" destination="yyY-B6-pGz" id="84g-TI-Ncs"/>
                        <outlet property="svSleepScore" destination="9PO-BN-iAO" id="SXq-cT-klu"/>
                        <outlet property="svStarImg" destination="zzt-8H-FYx" id="aOq-5U-C7q"/>
                        <outlet property="svStars" destination="39Z-bS-PUG" id="tuT-cf-1BZ"/>
                        <outlet property="svVeggieIcon" destination="uy4-qV-KwY" id="4VL-ef-16l"/>
                        <outlet property="svVeggieLeft" destination="DkD-dW-dW5" id="9cZ-X6-ZmR"/>
                        <outlet property="svWaterIcon" destination="4RZ-Do-QfB" id="htP-50-jZE"/>
                        <outlet property="svWaterLeft" destination="CiH-xj-Z4m" id="rGo-qG-msn"/>
                    </connections>
                </tableViewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="5u6-v5-tAp" userLabel="First Responder" sceneMemberID="firstResponder"/>
                <tapGestureRecognizer id="mad-Bi-iSo">
                    <connections>
                        <segue destination="ztr-Wx-jQM" kind="modal" id="CQv-yI-rzr"/>
                    </connections>
                </tapGestureRecognizer>
                <pongPressGestureRecognizer allowableMovement="10" minimumPressDuration="0.5" id="6ly-mw-ohn">
                    <connections>
                        <action selector="veggieConsumed:" destination="Vbw-p0-rcj" id="9ag-32-SWO"/>
                    </connections>
                </pongPressGestureRecognizer>
                <pongPressGestureRecognizer allowableMovement="10" minimumPressDuration="0.5" id="fci-0X-IZW">
                    <connections>
                        <action selector="waterConsumed:" destination="Vbw-p0-rcj" id="Dy8-jV-N8b"/>
                    </connections>
                </pongPressGestureRecognizer>
                <swipeGestureRecognizer direction="left" id="jUx-58-nM3">
                    <connections>
                        <action selector="summaryChartSwiped:" destination="Vbw-p0-rcj" id="TfA-Or-SAm"/>
                    </connections>
                </swipeGestureRecognizer>
                <swipeGestureRecognizer direction="left" id="Vj0-gE-DPV">
                    <connections>
                        <segue destination="cCY-NK-VaB" kind="modal" modalTransitionStyle="flipHorizontal" id="1yf-sb-gBM"/>
                    </connections>
                </swipeGestureRecognizer>
            </objects>
            <point key="canvasLocation" x="84" y="-65"/>
        </scene>
        <!--First View Controller-->
        <scene sceneID="93V-9y-gx8">
            <objects>
                <viewController id="cCY-NK-VaB" customClass="MDFirstViewController" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="61s-kb-bNc">
                        <rect key="frame" x="0.0" y="20" width="320" height="548"/>
                        <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                        <subviews>
                            <imageView userInteractionEnabled="NO" contentMode="scaleToFill" image="md_friend_mockup.png" translatesAutoresizingMaskIntoConstraints="NO" id="cYs-e6-JFa"/>
                        </subviews>
                        <color key="backgroundColor" white="1" alpha="1" colorSpace="custom" customColorSpace="calibratedWhite"/>
                        <constraints>
                            <constraint firstItem="cYs-e6-JFa" firstAttribute="top" secondItem="61s-kb-bNc" secondAttribute="top" type="default" id="ByD-aL-xIf"/>
                            <constraint firstItem="cYs-e6-JFa" firstAttribute="leading" secondItem="61s-kb-bNc" secondAttribute="leading" type="default" id="L84-zW-z2h"/>
                            <constraint firstItem="cYs-e6-JFa" firstAttribute="bottom" secondItem="61s-kb-bNc" secondAttribute="bottom" type="default" id="ZVB-mu-5dd"/>
                        </constraints>
                        <connections>
                            <outletCollection property="gestureRecognizers" destination="DbJ-4E-gwy" appends="YES" id="Rp2-nr-lve"/>
                        </connections>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="Fr7-Of-szv" userLabel="First Responder" sceneMemberID="firstResponder"/>
                <swipeGestureRecognizer direction="right" id="DbJ-4E-gwy">
                    <connections>
                        <action selector="returnFromSegue:" destination="cCY-NK-VaB" id="NAW-xF-NAf"/>
                    </connections>
                </swipeGestureRecognizer>
            </objects>
            <point key="canvasLocation" x="593" y="-63"/>
        </scene>
        <!--View Controller-->
        <scene sceneID="fXV-O0-q0P">
            <objects>
                <viewController id="ztr-Wx-jQM" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="j6k-I4-y0m">
                        <rect key="frame" x="0.0" y="20" width="320" height="548"/>
                        <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                        <subviews>
                            <imageView userInteractionEnabled="NO" contentMode="scaleToFill" image="sleep-azumio.PNG" translatesAutoresizingMaskIntoConstraints="NO" id="QEY-lr-XBh">
                                <constraints>
                                    <constraint firstAttribute="height" constant="567" id="Dok-PJ-gck"/>
                                </constraints>
                            </imageView>
                            <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="R8X-ef-jrq">
                                <constraints>
                                    <constraint firstAttribute="width" constant="67" id="1dY-Fb-MX5"/>
                                    <constraint firstAttribute="height" constant="34" id="fgu-z2-qnJ"/>
                                </constraints>
                                <fontDescription key="fontDescription" type="boldSystem" pointSize="15"/>
                                <state key="normal" title="Back">
                                    <color key="titleColor" red="0.19607843459999999" green="0.30980393290000002" blue="0.52156865600000002" alpha="1" colorSpace="calibratedRGB"/>
                                    <color key="titleShadowColor" white="0.5" alpha="1" colorSpace="calibratedWhite"/>
                                </state>
                                <state key="highlighted">
                                    <color key="titleColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                </state>
                                <connections>
                                    <segue destination="Vbw-p0-rcj" kind="modal" id="uf9-Tg-BAf"/>
                                </connections>
                            </button>
                            <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="VCC-Xe-fN1">
                                <constraints>
                                    <constraint firstAttribute="width" constant="85" id="U96-BN-G2C"/>
                                </constraints>
                                <fontDescription key="fontDescription" type="boldSystem" pointSize="15"/>
                                <state key="normal" title="Share">
                                    <color key="titleColor" red="0.19607843459999999" green="0.30980393290000002" blue="0.52156865600000002" alpha="1" colorSpace="calibratedRGB"/>
                                    <color key="titleShadowColor" white="0.5" alpha="1" colorSpace="calibratedWhite"/>
                                </state>
                                <state key="highlighted">
                                    <color key="titleColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                </state>
                                <connections>
                                    <segue destination="Itd-Tr-IkZ" kind="modal" id="jgD-dq-U4c"/>
                                </connections>
                            </button>
                        </subviews>
                        <color key="backgroundColor" white="1" alpha="1" colorSpace="custom" customColorSpace="calibratedWhite"/>
                        <constraints>
                            <constraint firstItem="VCC-Xe-fN1" firstAttribute="bottom" secondItem="R8X-ef-jrq" secondAttribute="bottom" type="default" id="7kY-qA-fiv"/>
                            <constraint firstItem="QEY-lr-XBh" firstAttribute="trailing" secondItem="j6k-I4-y0m" secondAttribute="trailing" type="default" id="9iK-dz-gEl"/>
                            <constraint firstAttribute="bottom" secondItem="R8X-ef-jrq" secondAttribute="bottom" constant="91" id="InI-nM-xww"/>
                            <constraint firstAttribute="trailing" secondItem="VCC-Xe-fN1" secondAttribute="trailing" constant="25" id="Ly3-dF-7Nc"/>
                            <constraint firstItem="R8X-ef-jrq" firstAttribute="leading" secondItem="j6k-I4-y0m" secondAttribute="leading" constant="69" id="hD2-O1-YZU"/>
                            <constraint firstItem="QEY-lr-XBh" firstAttribute="bottom" secondItem="j6k-I4-y0m" secondAttribute="bottom" type="default" id="iMI-Ur-2Jm"/>
                            <constraint firstItem="VCC-Xe-fN1" firstAttribute="top" secondItem="R8X-ef-jrq" secondAttribute="top" type="default" id="rcM-x5-OiX"/>
                            <constraint firstItem="QEY-lr-XBh" firstAttribute="leading" secondItem="j6k-I4-y0m" secondAttribute="leading" type="default" id="w61-kf-rai"/>
                        </constraints>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="XOi-1r-qtF" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="-368" y="-63"/>
        </scene>
        <!--Second View Controller-->
        <scene sceneID="vvV-eM-4aS">
            <objects>
                <viewController id="QJl-YI-VVk" customClass="MDSecondViewController" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="qfF-Rp-xLf">
                        <rect key="frame" x="0.0" y="20" width="320" height="548"/>
                        <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                        <subviews>
                            <imageView userInteractionEnabled="NO" contentMode="scaleToFill" image="md_settings_mockup.png" translatesAutoresizingMaskIntoConstraints="NO" id="1LV-U2-kmC"/>
                        </subviews>
                        <color key="backgroundColor" white="1" alpha="1" colorSpace="custom" customColorSpace="calibratedWhite"/>
                        <constraints>
                            <constraint firstItem="1LV-U2-kmC" firstAttribute="leading" secondItem="qfF-Rp-xLf" secondAttribute="leading" type="default" id="3vQ-uK-MYg"/>
                            <constraint firstItem="1LV-U2-kmC" firstAttribute="top" secondItem="qfF-Rp-xLf" secondAttribute="top" type="default" id="WQu-2H-2s7"/>
                        </constraints>
                        <connections>
                            <outletCollection property="gestureRecognizers" destination="HjV-Ei-wS5" appends="YES" id="vlT-U4-py7"/>
                        </connections>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="Mmj-6p-kSV" userLabel="First Responder" sceneMemberID="firstResponder"/>
                <swipeGestureRecognizer direction="right" id="HjV-Ei-wS5">
                    <connections>
                        <action selector="returnFromSegue:" destination="QJl-YI-VVk" id="YgJ-nH-tgy"/>
                    </connections>
                </swipeGestureRecognizer>
            </objects>
            <point key="canvasLocation" x="593" y="617"/>
        </scene>
        <!--View Controller-->
        <scene sceneID="EBk-Gt-9We">
            <objects>
                <viewController id="Itd-Tr-IkZ" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="NbF-XK-eMX">
                        <rect key="frame" x="0.0" y="20" width="320" height="548"/>
                        <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                        <subviews>
                            <imageView userInteractionEnabled="NO" contentMode="scaleToFill" image="sleep_azumio_share.png" translatesAutoresizingMaskIntoConstraints="NO" id="XMt-FG-Tu6">
                                <constraints>
                                    <constraint firstAttribute="height" constant="550" id="rFf-RX-osJ"/>
                                </constraints>
                            </imageView>
                            <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="pTH-kI-vWh">
                                <constraints>
                                    <constraint firstAttribute="width" constant="163" id="MJV-Qy-Cgb"/>
                                </constraints>
                                <fontDescription key="fontDescription" type="boldSystem" pointSize="15"/>
                                <state key="normal" title="Share">
                                    <color key="titleColor" red="0.19607843459999999" green="0.30980393290000002" blue="0.52156865600000002" alpha="1" colorSpace="calibratedRGB"/>
                                    <color key="titleShadowColor" white="0.5" alpha="1" colorSpace="calibratedWhite"/>
                                </state>
                                <state key="highlighted">
                                    <color key="titleColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                </state>
                                <connections>
                                    <segue destination="ztr-Wx-jQM" kind="modal" id="QqJ-QO-D23"/>
                                </connections>
                            </button>
                        </subviews>
                        <color key="backgroundColor" white="1" alpha="1" colorSpace="custom" customColorSpace="calibratedWhite"/>
                        <constraints>
                            <constraint firstItem="XMt-FG-Tu6" firstAttribute="leading" secondItem="NbF-XK-eMX" secondAttribute="leading" type="default" id="024-U2-Ix9"/>
                            <constraint firstItem="XMt-FG-Tu6" firstAttribute="trailing" secondItem="NbF-XK-eMX" secondAttribute="trailing" type="default" id="AEO-55-1eN"/>
                            <constraint firstAttribute="trailing" secondItem="pTH-kI-vWh" secondAttribute="trailing" constant="20" symbolic="YES" type="default" id="RPM-H9-RqO"/>
                            <constraint firstItem="pTH-kI-vWh" firstAttribute="top" secondItem="NbF-XK-eMX" secondAttribute="top" constant="210" id="nCe-m5-kgT"/>
                            <constraint firstItem="XMt-FG-Tu6" firstAttribute="top" secondItem="NbF-XK-eMX" secondAttribute="top" type="default" id="wmp-CI-jfJ"/>
                        </constraints>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="yWV-wR-AbZ" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="-801" y="-63"/>
        </scene>
    </scenes>
    <resources>
        <image name="circle_of_loved_ones.png" width="320" height="320"/>
        <image name="md_friend_mockup.png" width="320" height="569"/>
        <image name="md_settings_mockup.png" width="320" height="548"/>
        <image name="menu_icon.png" width="40" height="40"/>
        <image name="plate.png" width="48" height="48"/>
        <image name="second.png" width="30" height="30"/>
        <image name="sleep-azumio.PNG" width="640" height="960"/>
        <image name="sleep_azumio_share.png" width="631" height="899"/>
        <image name="sleep_azumio_small.png" width="573" height="279"/>
        <image name="star.png" width="43" height="41"/>
        <image name="water.png" width="38" height="36"/>
    </resources>
    <classes>
        <class className="MDCustomCorrView" superclassName="UIView">
            <source key="sourceIdentifier" type="project" relativePath="./Classes/MDCustomCorrView.h"/>
        </class>
        <class className="MDCustomDrawEatScoreBarView" superclassName="UIView">
            <source key="sourceIdentifier" type="project" relativePath="./Classes/MDCustomDrawEatScoreBarView.h"/>
        </class>
        <class className="MDCustomDrawMoveScoreBarView" superclassName="UIView">
            <source key="sourceIdentifier" type="project" relativePath="./Classes/MDCustomDrawMoveScoreBarView.h"/>
        </class>
        <class className="MDCustomDrawScoreView" superclassName="UIView">
            <source key="sourceIdentifier" type="project" relativePath="./Classes/MDCustomDrawScoreView.h"/>
        </class>
        <class className="MDCustomDrawSleepScoreBarView" superclassName="UIView">
            <source key="sourceIdentifier" type="project" relativePath="./Classes/MDCustomDrawSleepScoreBarView.h"/>
        </class>
        <class className="MDCustomEatView" superclassName="UIView">
            <source key="sourceIdentifier" type="project" relativePath="./Classes/MDCustomEatView.h"/>
        </class>
        <class className="MDCustomMoveView" superclassName="UIView">
            <source key="sourceIdentifier" type="project" relativePath="./Classes/MDCustomMoveView.h"/>
        </class>
        <class className="MDCustomScoreView" superclassName="UIView">
            <source key="sourceIdentifier" type="project" relativePath="./Classes/MDCustomScoreView.h"/>
        </class>
        <class className="MDCustomSleepView" superclassName="UIView">
            <source key="sourceIdentifier" type="project" relativePath="./Classes/MDCustomSleepView.h"/>
        </class>
        <class className="MDFirstViewController" superclassName="UIViewController">
            <source key="sourceIdentifier" type="project" relativePath="./Classes/MDFirstViewController.h"/>
            <relationships>
                <relationship kind="action" name="returnFromSegue:" candidateClass="UISwipeGestureRecognizer"/>
            </relationships>
        </class>
        <class className="MDSecondViewController" superclassName="UIViewController">
            <source key="sourceIdentifier" type="project" relativePath="./Classes/MDSecondViewController.h"/>
            <relationships>
                <relationship kind="action" name="returnFromSegue:" candidateClass="UISwipeGestureRecognizer"/>
            </relationships>
        </class>
        <class className="MDThirdCustomTableViewController" superclassName="UITableViewController">
            <source key="sourceIdentifier" type="project" relativePath="./Classes/MDThirdCustomTableViewController.h"/>
            <relationships>
                <relationship kind="action" name="summaryChartSwiped:" candidateClass="UISwipeGestureRecognizer"/>
                <relationship kind="action" name="veggieConsumed:" candidateClass="UILongPressGestureRecognizer"/>
                <relationship kind="action" name="waterConsumed:" candidateClass="UILongPressGestureRecognizer"/>
                <relationship kind="outlet" name="bvGoal" candidateClass="UILabel"/>
                <relationship kind="outlet" name="bvScore" candidateClass="UILabel"/>
                <relationship kind="outlet" name="bvTitle" candidateClass="UILabel"/>
                <relationship kind="outlet" name="eatScoreBarView" candidateClass="MDCustomDrawEatScoreBarView"/>
                <relationship kind="outlet" name="moveScoreBarView" candidateClass="MDCustomDrawMoveScoreBarView"/>
                <relationship kind="outlet" name="scoreCell" candidateClass="UITableViewCell"/>
                <relationship kind="outlet" name="scoreHGraphView" candidateClass="MDCustomDrawScoreView"/>
                <relationship kind="outlet" name="scoreView" candidateClass="MDCustomScoreView"/>
                <relationship kind="outlet" name="sleepScoreBarView" candidateClass="MDCustomDrawSleepScoreBarView"/>
                <relationship kind="outlet" name="svDate" candidateClass="UILabel"/>
                <relationship kind="outlet" name="svEatScore" candidateClass="UILabel"/>
                <relationship kind="outlet" name="svGreeting" candidateClass="UILabel"/>
                <relationship kind="outlet" name="svMoveScore" candidateClass="UILabel"/>
                <relationship kind="outlet" name="svScore" candidateClass="UILabel"/>
                <relationship kind="outlet" name="svSleepScore" candidateClass="UILabel"/>
                <relationship kind="outlet" name="svStarImg" candidateClass="UIImageView"/>
                <relationship kind="outlet" name="svStars" candidateClass="UILabel"/>
                <relationship kind="outlet" name="svVeggieIcon" candidateClass="UIButton"/>
                <relationship kind="outlet" name="svVeggieLeft" candidateClass="UILabel"/>
                <relationship kind="outlet" name="svWaterIcon" candidateClass="UIButton"/>
                <relationship kind="outlet" name="svWaterLeft" candidateClass="UILabel"/>
            </relationships>
        </class>
        <class className="NSLayoutConstraint" superclassName="NSObject">
            <source key="sourceIdentifier" type="project" relativePath="./Classes/NSLayoutConstraint.h"/>
        </class>
    </classes>
    <simulatedMetricsContainer key="defaultSimulatedMetrics">
        <simulatedStatusBarMetrics key="statusBar"/>
        <simulatedOrientationMetrics key="orientation"/>
        <simulatedScreenMetrics key="destination" type="retina4"/>
    </simulatedMetricsContainer>
    <inferredMetricsTieBreakers>
        <segue reference="nzO-P7-LEw"/>
    </inferredMetricsTieBreakers>
</document>