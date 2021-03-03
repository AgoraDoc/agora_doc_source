
<!DOCTYPE html
  SYSTEM "about:legacy-compat">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:whc="http://www.oxygenxml.com/webhelp/components" xml:lang="zh-cn" lang="zh-cn" whc:version="22.0">
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><meta charset="UTF-8" /><meta name="copyright" content="(C) 版权 2021" /><meta name="DC.rights.owner" content="(C) 版权 2021" /><meta name="DC.type" content="reference" /><meta name="description" content="视频观测器。" /><meta name="DC.subject" content="IVideoFrameObserver, VideoFrame, VIDEO_FRAME_TYPE, VIDEO_OBSERVER_POSITION, onCaptureVideoFrame, onPreEncodeVideoFrame, onRenderVideoFrame, getVideoFormatPreference, getRotationApplied, getMirrorApplied, getSmoothRenderingEnabled, getObservedFramePosition, isMultipleChannelFrameWanted, onRenderVideoFrameEx" /><meta name="keywords" content="IVideoFrameObserver, VideoFrame, VIDEO_FRAME_TYPE, VIDEO_OBSERVER_POSITION, onCaptureVideoFrame, onPreEncodeVideoFrame, onRenderVideoFrame, getVideoFormatPreference, getRotationApplied, getMirrorApplied, getSmoothRenderingEnabled, getObservedFramePosition, isMultipleChannelFrameWanted, onRenderVideoFrameEx" /><meta name="indexterms" content="onCaptureVideoFrame, onPreEncodeVideoFrame, onRenderVideoFrame, getVideoFormatPreference, getRotationApplied, getMirrorApplied, getSmoothRenderingEnabled, getObservedFramePosition, isMultipleChannelFrameWanted, onRenderVideoFrameEx" /><meta name="DC.format" content="HTML5" /><meta name="DC.identifier" content="class_ivideoframeobserver" />        
      <title>IVideoFrameObserver</title><!--  Generated with Oxygen version 23.0, build number 2020121702.  --><meta name="wh-path2root" content="../" /><meta name="wh-toc-id" content="class_ivideoframeobserver-d4991e19014" /><meta name="wh-source-relpath" content="API/class_ivideoframeobserver.dita" /><meta name="wh-out-relpath" content="API/class_ivideoframeobserver.aspx" />
    <!-- Latest compiled and minified Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="../oxygen-webhelp/lib/bootstrap/css/bootstrap.min.css" />
    
    <link rel="stylesheet" href="../oxygen-webhelp/lib/jquery-ui/jquery-ui.min.css" />
    
    <!-- Template default styles  -->
    <link rel="stylesheet" type="text/css" href="../oxygen-webhelp/app/topic-page.css?buildId=2020121702" />
    
    
    <script type="text/javascript" src="../oxygen-webhelp/lib/jquery/jquery-3.5.1.min.js"><!----></script>
    
    <script data-main="../oxygen-webhelp/app/topic-page.js" src="../oxygen-webhelp/lib/requirejs/require.js"></script>
<link rel="stylesheet" type="text/css" href="../oxygen-webhelp/template/cobalt.css?buildId=2020121702" /></head>

    <body class="wh_topic_page frmBody">
        <a href="#wh_topic_body" class="sr-only sr-only-focusable">跳转到主要内容</a>
        <!-- EXM-36950 - Expand the args.hdr parameter here -->
        
        
        
        <header class="navbar navbar-default wh_header" whc:version="23.0">
    <div class="container-fluid">
        <div class="wh_header_flex_container navbar-nav navbar-expand-md navbar-dark">
   <div class="wh_logo_and_publication_title_container">
       <div class="wh_logo_and_publication_title">
  
  <!--
 This component will be generated when the next parameters are specified in the transformation scenario:
 'webhelp.logo.image' and 'webhelp.logo.image.target.url'.
 See: http://oxygenxml.com/doc/versions/17.1/ug-editor/#topics/dita_webhelp_output.html.
  -->
  
  <div class=" wh_publication_title "></div>
  
       </div>
       
       <!-- The menu button for mobile devices is copied in the output only when the 'webhelp.show.top.menu' parameter is set to 'yes' -->
       <button type="button" data-target="#wh_top_menu_and_indexterms_link" id="wh_menu_mobile_button" data-toggle="collapse" class="navbar-toggler collapsed wh_toggle_button" aria-expanded="false" aria-label="切换菜单" aria-controls="wh_top_menu_and_indexterms_link">
  <span class="navbar-toggler-icon"></span>
       </button>
   </div>

   <div class="wh_top_menu_and_indexterms_link collapse navbar-collapse" id="wh_top_menu_and_indexterms_link">
       
       <nav class=" wh_top_menu " aria-label="Menu Container"><ul xmlns:xhtml="http://www.w3.org/1999/xhtml" role="menubar" aria-label="Menu"><li role="menuitem" aria-haspopup="true" aria-expanded="false" class="has-children"><span id="tocId-d4991e13735-mi" data-tocid="tocId-d4991e13735" data-state="not-ready" class=" topicref "><span class="title"><a href="../API/rtc_api_overview.aspx">C++ API Reference for All Platforms</a></span></span></li></ul></nav>
       <div class=" wh_indexterms_link "><a href="../indexTerms.aspx" title="索引" aria-label="转到索引术语页"><span>索引</span></a></div>
       
   </div>
        </div>
    </div>
</header>
        
        <div class=" wh_search_input "><form id="searchForm" method="get" role="search" action="../search.aspx"><div><input type="search" placeholder="搜索 " class="wh_search_textfield" id="textToSearch" name="searchQuery" aria-label="搜索查询" required="required" /><button type="submit" class="wh_search_button" aria-label="搜索"><span class="search_input_text">搜索</span></button></div></form></div>
        
        <div class="container-fluid" id="wh_topic_container">
   <div class="row">

       <nav class="wh_tools d-print-none navbar-expand-md" aria-label="Tools">
  <div data-tooltip-position="bottom" class=" wh_breadcrumb "><ol xmlns:html="http://www.w3.org/1999/xhtml" class="d-print-none"><li><span class="home"><a href="../index.aspx"><span>主页</span></a></span></li><li><span class="topicref"><span class="title"><a href="../API/rtc_api_overview.aspx">C++ API Reference for All Platforms</a></span></span></li><li class="active"><span class="topicref" data-id="class_ivideoframeobserver"><span class="title"><a href="../API/class_ivideoframeobserver.aspx#class_ivideoframeobserver"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideoframeobserver.html#class_ivideoframeobserver"><span class="ph">IVideoFrameObserver</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">视频观测器。</span></p></span></span></span></li></ol></div>

  <div class="wh_right_tools">
      <button class="wh_hide_highlight" aria-label="切换搜索突出显示" title="切换搜索突出显示"></button>
      <button class="webhelp_expand_collapse_sections" data-next-state="collapsed" aria-label="折叠截面" title="折叠截面"></button>
      <div class=" wh_navigation_links "><span id="topic_navigation_links" class="navheader"></span></div>
      <div class=" wh_print_link print d-none d-md-inline-block "><button onClick="window.print()" title="打印此页" aria-label="打印此页"></button></div>
      
      <!-- Expand/Collapse publishing TOC 
  The menu button for mobile devices is copied in the output only when the publication TOC is available
      -->
      <button type="button" data-target="#wh_publication_toc" id="wh_toc_button" data-toggle="collapse" class="custom-toggler navbar-toggler collapsed wh_toggle_button navbar-light" aria-expanded="false" aria-label="Toggle publishing table of content" aria-controls="wh_publication_toc">
 <span class="navbar-toggler-icon"></span>
      </button>
  </div>
       </nav>
   </div>

   <div class="wh_content_area">
       <div class="row">
  
      <nav id="wh_publication_toc" class="collapse col-lg-3 col-md-3 col-sm-12 d-md-block d-print-none" aria-label="Table of Contents Container">
 <div class=" wh_publication_toc " data-tooltip-position="right"><ul role="tree" aria-label="Table of Contents"><span class="expand-button-action-labels"><span id="button-expand-action" aria-label="Expand"></span><span id="button-collapse-action" aria-label="Collapse"></span><span id="button-pending-action" aria-label="Pending"></span></span><li role="treeitem" aria-expanded="true"><span data-tocid="tocId-d4991e13735" class="topicref" data-state="expanded"><span role="button" tabindex="0" aria-labelledby="button-collapse-action tocId-d4991e13735-link" class="wh-expand-btn"></span><span class="title"><a href="../API/rtc_api_overview.aspx" id="tocId-d4991e13735-link">C++ API Reference for All Platforms</a></span></span><ul role="group" class="navbar-nav nav-list"><li role="treeitem"><span data-tocid="api-title-d4991e13736" class="topicref" data-id="api-title" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/rtc_api_overview.aspx" id="api-title-d4991e13736-link">API Overview</a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">声网通过全球部署的虚拟网络，提供可以灵活搭配的 API 组合，提供质量可靠的实时音视频通信。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_rtcengine-d4991e13748" class="topicref" data-id="class_rtcengine" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_irtcengine.aspx#class_rtcengine" id="class_rtcengine-d4991e13748-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_irtcengine.html#class_rtcengine"><span class="ph">IRtcEngine</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">Agora Native SDK 的基础接口类，包含应用程序调用的主要方法。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ichannel-d4991e15906" class="topicref" data-id="class_ichannel" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ichannel.aspx#class_ichannel" id="class_ichannel-d4991e15906-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ichannel.html#class_ichannel"><span class="ph">IChannel</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">调用 <a href="../API/class_irtcengine.html#api_createChannel" class="xref"><span class="keyword">createChannel</span></a> 创建一个 <span class="keyword apiname">IChannel</span> 对象。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ichanneleventhandler-d4991e16473" class="topicref" data-id="class_ichanneleventhandler" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ichanneleventhandler.aspx#class_ichanneleventhandler" id="class_ichanneleventhandler-d4991e16473-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ichanneleventhandler.html#class_ichanneleventhandler"><span class="ph">IChannelEventHandler</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph"><span class="keyword apiname">IChannelEventHandler</span> 接口类用于 SDK 向 app 发送 <a href="../API/class_ichannel.html#class_ichannel" class="xref"><span class="keyword">IChannel</span></a> 频道的回调事件通知。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_imediaengine-d4991e16949" class="topicref" data-id="class_imediaengine" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_imediaengine.aspx#class_imediaengine" id="class_imediaengine-d4991e16949-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_imediaengine.html#class_imediaengine"><span class="ph">IMediaEngine</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph"><span class="keyword apiname">IMediaEngine</span> 类。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ipacketobserver-d4991e17061" class="topicref" data-id="class_ipacketobserver" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ipacketobserver.aspx#class_ipacketobserver" id="class_ipacketobserver-d4991e17061-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ipacketobserver.html#class_ipacketobserver"><span class="ph">IPacketObserver</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">IPacketObserver 定义。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_iaudiodevicemanager-d4991e17126" class="topicref" data-id="class_iaudiodevicemanager" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_iaudiodevicemanager.aspx#class_iaudiodevicemanager" id="class_iaudiodevicemanager-d4991e17126-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_iaudiodevicemanager.html#class_iaudiodevicemanager"><span class="ph">IAudioDeviceManager</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">音频设备管理方法。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_iaudiodevicecollection-d4991e17443" class="topicref" data-id="class_iaudiodevicecollection" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_iaudiodevicecollection.aspx#class_iaudiodevicecollection" id="class_iaudiodevicecollection-d4991e17443-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_iaudiodevicecollection.html#class_iaudiodevicecollection"><span class="ph">IAudioDeviceCollection</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">IAudioDeviceCollection 类。你可以通过该接口类获取音频设备相关的信息。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideosource-d4991e17560" class="topicref" data-id="class_ivideosource" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideosource.aspx#class_ivideosource" id="class_ivideosource-d4991e17560-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideosource.html#class_ivideosource"><span class="ph">IVideoSource</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">IVideoSource 类，可以设置自定义的视频源。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideoframeconsumer-d4991e17664" class="topicref" data-id="class_ivideoframeconsumer" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideoframeconsumer.aspx#class_ivideoframeconsumer" id="class_ivideoframeconsumer-d4991e17664-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideoframeconsumer.html#class_ivideoframeconsumer"><span class="ph">IVideoFrameConsumer</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph"><span class="keyword apiname">IVideoFrameConsumer</span> 类，用于让 SDK 接收你采集的视频帧。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideodevicemanager-d4991e17692" class="topicref" data-id="class_ivideodevicemanager" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideodevicemanager.aspx#class_ivideodevicemanager" id="class_ivideodevicemanager-d4991e17692-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideodevicemanager.html#class_ivideodevicemanager"><span class="ph">IVideoDeviceManager</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">视频设备管理方法。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideodevicecollection-d4991e17788" class="topicref" data-id="class_ivideodevicecollection" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideodevicecollection.aspx#class_ivideodevicecollection" id="class_ivideodevicecollection-d4991e17788-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideodevicecollection.html#class_ivideodevicecollection"><span class="ph">IVideoDeviceCollection</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">IVideoDeviceCollection 类。你可以通过该接口类获取视频设备相关的信息。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_rtcengineeventhandler-d4991e17857" class="topicref" data-id="class_rtcengineeventhandler" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_irtcengineeventhandler.aspx#class_rtcengineeventhandler" id="class_rtcengineeventhandler-d4991e17857-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_irtcengineeventhandler.html#class_rtcengineeventhandler"><span class="ph">IRtcEngineEventHandler</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph"><span class="keyword apiname">IRtcEngineEventHandler</span> 接口类用于 SDK 向 app 发送回调事件通知，app 通过继承该接口类的方法获取 SDK的事件通知。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_iaudioframeobserver-d4991e18897" class="topicref" data-id="class_iaudioframeobserver" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_iaudioframeobserver.aspx#class_iaudioframeobserver" id="class_iaudioframeobserver-d4991e18897-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_iaudioframeobserver.html#class_iaudioframeobserver"><span class="ph">IAudioFrameObserver</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">语音观测器。</span></p></span></span></span></li><li role="treeitem" class="active"><span data-tocid="class_ivideoframeobserver-d4991e19014" class="topicref" data-id="class_ivideoframeobserver" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideoframeobserver.aspx#class_ivideoframeobserver" id="class_ivideoframeobserver-d4991e19014-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideoframeobserver.html#class_ivideoframeobserver"><span class="ph">IVideoFrameObserver</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">视频观测器。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_imetadataobserver-d4991e19199" class="topicref" data-id="class_imetadataobserver" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_imetadataobserver.aspx#class_imetadataobserver" id="class_imetadataobserver-d4991e19199-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_imetadataobserver.html#class_imetadataobserver"><span class="ph">IMetadataObserver</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">Metadata 观测器。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="datatype-d4991e19289" class="topicref" data-id="datatype" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/rtc_api_data_type.aspx#datatype" id="datatype-d4991e19289-link">类型定义</a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">本页列出 <span class="ph">Windows</span> API 所有的类型定义。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="错误码和警告码-d4991e20757" class="topicref" data-id="错误码和警告码" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/error_rtc.aspx" id="错误码和警告码-d4991e20757-link">错误码和警告码</a></span></span></li></ul></li></ul></div>
      </nav>
  
  
  <div class="col-lg-7 col-md-9 col-sm-12" id="wh_topic_body">
      <div class=" wh_topic_content body "><main role="main"><article role="article" aria-labelledby="ariaid-title1"><article class="nested0" aria-labelledby="ariaid-title1" id="class_ivideoframeobserver">
    <h1 class="- topic/title title topictitle1" id="ariaid-title1"><a href="class_ivideoframeobserver.aspx#class_ivideoframeobserver"><span class="- topic/ph ph">IVideoFrameObserver</span></a></h1>
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="class_ivideoframeobserver__shortdesc">视频观测器。</span></p>
        <section class="- topic/section section">
   <p class="- topic/p p">你可以调用 <a class="- topic/xref xref" href="class_imediaengine.aspx#api_registervideoframeobserver" title="注册视频观测器对象。"><span class="- topic/keyword keyword">registerVideoFrameObserver</span></a> 注册或取消注册 <span class="+ topic/keyword pr-d/apiname keyword apiname">IVideoFrameObserver</span> 视频观测器。</p>
        </section>
    </div>
<article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title2" id="class_videoframe">
    <h2 class="- topic/title title topictitle2" id="ariaid-title2"><a href="class_ivideoframeobserver.aspx#class_videoframe"><span class="- topic/ph ph">VideoFrame</span></a></h2>
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="class_videoframe__shortdesc"><span class="+ topic/keyword pr-d/apiname keyword apiname">VideoFrame</span> 定义。</span></p>
        <section class="- topic/section section" id="class_videoframe__prototype">
   <div class="- topic/p p">
       <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">struct</strong> VideoFrame {
  VIDEO_FRAME_TYPE type;
  <strong class="hl-keyword">int</strong> width;
  <strong class="hl-keyword">int</strong> height;
  <strong class="hl-keyword">int</strong> yStride;
  <strong class="hl-keyword">int</strong> uStride;
  <strong class="hl-keyword">int</strong> vStride;
  <strong class="hl-keyword">void</strong>* yBuffer;
  <strong class="hl-keyword">void</strong>* uBuffer;
  <strong class="hl-keyword">void</strong>* vBuffer;
  <strong class="hl-keyword">int</strong> rotation;
  int64_t renderTimeMs;
  <strong class="hl-keyword">int</strong> avsync_type;
};</pre>
   </div>
        </section>
        <section class="- topic/section section" id="class_videoframe__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">视频数据的格式为 YUV420。缓冲区给出的是指向指针的指针，但接口使用者不能修改缓冲区的指针，只能修改缓冲区的内容。</p>
        </section>
        <section class="- topic/section section" id="class_videoframe__parameters"><h3 class="- topic/title title sectiontitle">
       属性
       
       
       
       
       
   </h3>
   
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">type</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">视频帧类型，详见 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#enum_videoframetype" title="视频帧类型。"><span class="- topic/keyword keyword">VIDEO_FRAME_TYPE</span></a>。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">width</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">视频像素宽度。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">height</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">视频像素高度。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">yStride</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">YUV 数据中的 Y 缓冲区的行跨度。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">uStride</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">YUV 数据中的 U 缓冲区的行跨度。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">vStride</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">YUV 数据中的 V 缓冲区的行跨度。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">yBuffer</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">指向 YUV 数据中的 Y 缓冲区指针的指针。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">uBuffer</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">指向 YUV 数据中的 U 缓冲区指针的指针。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">vBuffer</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">指向 YUV 数据中的 V 缓冲区指针的指针。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">rotation</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">在渲染视频前设置该帧的顺时针旋转角度，目前支持 0 度、90 度、180 度，和 270 度。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">renderTimeMs</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">外部音频帧的时间戳。该参数为必填。你可以使用该时间戳还原音频帧顺序；在有视频的场景中（包含使用外部视频源的场景），该参数可以帮助实现音视频同步。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">avsync_type</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">保留参数。</dd>
       
   </dl>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title3" id="enum_videoframetype">
    <h2 class="- topic/title title topictitle2" id="ariaid-title3"><a href="class_ivideoframeobserver.aspx#enum_videoframetype"><span class="- topic/ph ph">VIDEO_FRAME_TYPE</span></a></h2>
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="enum_videoframetype__shortdesc">视频帧类型。</span></p>
        <section class="- topic/section section" id="enum_videoframetype__parameters"><h3 class="- topic/title title sectiontitle">枚举值</h3>
   
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm"><span class="- topic/ph ph">FRAME_TYPE_YUV420</span></dt>
  <dd class="+ topic/dd pr-d/pd dd pd">0: YUV420。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm"><span class="- topic/ph ph">FRAME_TYPE_YUV422</span></dt>
  <dd class="+ topic/dd pr-d/pd dd pd">1: YUV422。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm"><span class="- topic/ph ph">FRAME_TYPE_RGBA</span></dt>
  <dd class="+ topic/dd pr-d/pd dd pd">2: RGBA。</dd>
       
   </dl>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title4" id="enum_videoobserverposition">
    <h2 class="- topic/title title topictitle2" id="ariaid-title4"><a href="class_ivideoframeobserver.aspx#enum_videoobserverposition"><span class="- topic/ph ph">VIDEO_OBSERVER_POSITION</span></a></h2>
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="enum_videoobserverposition__shortdesc">视频观测位置。</span></p>
        <section class="- topic/section section" id="enum_videoobserverposition__parameters"><h3 class="- topic/title title sectiontitle">枚举值</h3>
   
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm"><span class="- topic/ph ph">POSITION_POST_CAPTURER</span></dt>
  <dd class="+ topic/dd pr-d/pd dd pd">1: 本地采集视频数据后的位置，对应 <span class="+ topic/keyword pr-d/apiname keyword apiname">onCaptureVideoFrame</span> 回调。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm"><span class="- topic/ph ph">POSITION_PRE_RENDERER</span></dt>
  <dd class="+ topic/dd pr-d/pd dd pd">2: 接收远端发送视频前的位置，对应 <span class="+ topic/keyword pr-d/apiname keyword apiname">onRenderVideoFrame</span> 回调。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm"><span class="- topic/ph ph">POSITION_PRE_ENCODER</span></dt>
  <dd class="+ topic/dd pr-d/pd dd pd">4: 本地视频编码前的位置，对应 <span class="+ topic/keyword pr-d/apiname keyword apiname">onPreEncodeVideoFrame</span> 回调。</dd>
       
   </dl>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title5" id="api_oncapturevideoframe">
    <h2 class="- topic/title title topictitle2" id="ariaid-title5"><a href="class_ivideoframeobserver.aspx#api_oncapturevideoframe"><span class="- topic/ph ph">onCaptureVideoFrame</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_oncapturevideoframe__shortdesc">获取本地摄像头采集到的视频数据。</span></p><section class="- topic/section section" id="api_oncapturevideoframe__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">bool</strong> onCaptureVideoFrame(VideoFrame&amp; videoFrame) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_oncapturevideoframe__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">成功注册视频数据观测器后，SDK 会在捕捉到每个视频帧时触发该回调。你可以在回调中获取本地摄像头采集到的视频数据，然后根据场景需要，对视频数据进行前处理。</p>
   <p class="- topic/p p">完成前处理后，你可以在该回调中，传入处理后的视频数据将其发送回 SDK。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">如果你获取到的视频数据类型为 RGBA，Agora 不支持将处理后的 RGBA 数据通过该回调再发送回 SDK。</li>
  <li class="- topic/li li">此处获取的视频数据未经过前处理，如水印、裁剪、旋转和美颜等。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_oncapturevideoframe__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">videoFrame</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">视频帧数据，详见 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#class_videoframe" title="VideoFrame 定义。"><span class="- topic/keyword keyword">VideoFrame</span></a>。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_oncapturevideoframe__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <div class="- topic/p p">如果视频前处理失败，是否忽略该帧视频：<ul class="- topic/ul ul">
  <li class="- topic/li li"><span class="- topic/ph ph">true</span>：不忽略。</li>
  <li class="- topic/li li"><span class="- topic/ph ph">false</span>：忽略，则该帧数据不再发送回 SDK。</li>
       </ul></div>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title6" id="api_onpreencodevideoframe">
    <h2 class="- topic/title title topictitle2" id="ariaid-title6"><a href="class_ivideoframeobserver.aspx#api_onpreencodevideoframe"><span class="- topic/ph ph">onPreEncodeVideoFrame</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_onpreencodevideoframe__shortdesc">获取本地视频编码前的视频数据。</span></p><section class="- topic/section section" id="api_onpreencodevideoframe__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">bool</strong> onPreEncodeVideoFrame(VideoFrame&amp; videoFrame) { <strong class="hl-keyword">return</strong> <strong class="hl-keyword">true</strong>; }</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_onpreencodevideoframe__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl since">
       
  <dt class="- topic/dt dt dlterm">自从</dt>
  <dd class="- topic/dd dd">v3.0.0</dd>
       
   </dl>
   <p class="- topic/p p">成功注册视频数据观测器后，SDK 会在捕捉到每个视频帧时触发该回调。你可以在回调中获取编码前的视频数据，然后根据场景需要，对视频数据进行处理。</p>
   <p class="- topic/p p">完成处理后，你可以在该回调中，传入处理后的视频数据将其发送回 SDK。</p>
        </section>
        <section class="- topic/section section" id="api_onpreencodevideoframe__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">videoFrame</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">视频帧数据，详见 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#class_videoframe" title="VideoFrame 定义。"><span class="- topic/keyword keyword">VideoFrame</span></a>。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_onpreencodevideoframe__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <div class="- topic/p p">如果视频前处理失败，是否忽略该帧视频：<ul class="- topic/ul ul" id="api_onpreencodevideoframe__ul_pgt_png_s4b">
  <li class="- topic/li li"><span class="- topic/ph ph">true</span>：不忽略。</li>
  <li class="- topic/li li"><span class="- topic/ph ph">false</span>：忽略，则该帧数据不再发送回 SDK。</li>
       </ul></div>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title7" id="api_onrendervideoframe">
    <h2 class="- topic/title title topictitle2" id="ariaid-title7"><a href="class_ivideoframeobserver.aspx#api_onrendervideoframe"><span class="- topic/ph ph">onRenderVideoFrame</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_onrendervideoframe__shortdesc">获取远端发送的视频数据。</span></p><section class="- topic/section section" id="api_onrendervideoframe__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">bool</strong> onRenderVideoFrame(<strong class="hl-keyword">unsigned</strong> <strong class="hl-keyword">int</strong> uid, VideoFrame&amp; videoFrame) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_onrendervideoframe__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl since">
       
  <dt class="- topic/dt dt dlterm">自从</dt>
  <dd class="- topic/dd dd">v3.0.0</dd>
       
   </dl>
   <p class="- topic/p p">成功注册视频数据观测器后，SDK 会在捕捉到每个视频帧时触发该回调。你可以在回调中获取远端发送的视频数据，然后根据场景需要，对视频数据进行处理。</p>
   <p class="- topic/p p">完成处理后，你可以在该回调中，传入处理后的视频数据将其发送回 SDK。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 如果你获取到的视频数据类型为 RGBA，Agora 不支持将处理后的 RGBA 数据通过该回调再发送回 SDK。</div>
        </section>
        <section class="- topic/section section" id="api_onrendervideoframe__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm"><span class="- topic/ph ph">uid</span></dt>
  <dd class="+ topic/dd pr-d/pd dd pd">发送该帧视频的远端用户 ID。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">videoFrame</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">视频帧数据，详见 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#class_videoframe" title="VideoFrame 定义。"><span class="- topic/keyword keyword">VideoFrame</span></a>。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_onrendervideoframe__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <div class="- topic/p p">如果视频前处理失败，是否忽略该帧视频：<ul class="- topic/ul ul" id="api_onrendervideoframe__ul_pgt_png_s4b">
  <li class="- topic/li li"><span class="- topic/ph ph">true</span>：不忽略。</li>
  <li class="- topic/li li"><span class="- topic/ph ph">false</span>：忽略，则该帧数据不再发送回 SDK。</li>
       </ul></div>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title8" id="api_getvideoformatpreference">
    <h2 class="- topic/title title topictitle2" id="ariaid-title8"><a href="class_ivideoframeobserver.aspx#api_getvideoformatpreference"><span class="- topic/ph ph">getVideoFormatPreference</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_getvideoformatpreference__shortdesc">请求视频数据格式。</span></p><section class="- topic/section section" id="api_getvideoformatpreference__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> VIDEO_FRAME_TYPE getVideoFormatPreference() { <strong class="hl-keyword">return</strong> FRAME_TYPE_YUV420; }</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_getvideoformatpreference__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">如果你想获取 420 格式以外的视频数据，需要在调用 <a class="- topic/xref xref" href="class_imediaengine.aspx#api_registervideoframeobserver" title="注册视频观测器对象。"><span class="- topic/keyword keyword">registerVideoFrameObserver</span></a> 方法时注册该回调。
       成功注册视频数据观测器后，SDK 会在捕捉到每个视频帧时触发该回调，你需要在该回调返回值中设置期望的视频数据格式。</p>
        </section>
        <section class="- topic/section section" id="api_getvideoformatpreference__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <div class="- topic/p p">设置 SDK 输出的原始数据格式 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#enum_videoframetype" title="视频帧类型。"><span class="- topic/keyword keyword">VIDEO_FRAME_TYPE</span></a>：<ul class="- topic/ul ul" id="api_getvideoformatpreference__ul_chl_tpg_s4b">
  <li class="- topic/li li"><span class="+ topic/keyword pr-d/apiname keyword apiname">FRAME_TYPE_YUV420</span> (0)：（默认） YUV420 格式。</li>
  <li class="- topic/li li"><span class="+ topic/keyword pr-d/apiname keyword apiname">FRAME_TYPE_RGBA</span> (2)： RGBA 格式。</li>
       </ul></div>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title9" id="api_getrotationapplied">
    <h2 class="- topic/title title topictitle2" id="ariaid-title9"><a href="class_ivideoframeobserver.aspx#api_getrotationapplied"><span class="- topic/ph ph">getRotationApplied</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_getrotationapplied__shortdesc">设置视频数据旋转。</span></p><section class="- topic/section section" id="api_getrotationapplied__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">bool</strong> getRotationApplied() { <strong class="hl-keyword">return</strong> <strong class="hl-keyword">false</strong>; }</pre>   
  </div>
        </section>
        <section class="- topic/section section note" id="api_getrotationapplied__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">如果你希望获取的视频数据已根据 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#class_videoframe" title="VideoFrame 定义。"><span class="- topic/keyword keyword">VideoFrame</span></a> 中的旋转信息 <span class="+ topic/keyword pr-d/parmname keyword parmname">rotation</span> 进行旋转，需要在调用 <a class="- topic/xref xref" href="class_imediaengine.aspx#api_registervideoframeobserver" title="注册视频观测器对象。"><span class="- topic/keyword keyword">registerVideoFrameObserver</span></a> 方法时注册该回调。成功注册视频数据观测器后，SDK 会在捕捉到每个视频帧时触发该回调，你需要在该回调的返回值中设置是否对采集到的视频数据进行旋转。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 该功能仅支持 RGBA 格式的视频数据。</div>
        </section>
        <section class="- topic/section section" id="api_getrotationapplied__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <div class="- topic/p p">设置 SDK 输出视频数据时是否作旋转处理：<ul class="- topic/ul ul">
  <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 旋转。</li>
  <li class="- topic/li li"><span class="- topic/ph ph">false</span>: （默认）不旋转。</li>
       </ul></div>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title10" id="api_getmirrorapplied">
    <h2 class="- topic/title title topictitle2" id="ariaid-title10"><a href="class_ivideoframeobserver.aspx#api_getmirrorapplied"><span class="- topic/ph ph">getMirrorApplied</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_getmirrorapplied__shortdesc">设置视频数据旋转。</span></p><section class="- topic/section section" id="api_getmirrorapplied__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">bool</strong> getMirrorApplied() { <strong class="hl-keyword">return</strong> <strong class="hl-keyword">false</strong>; }</pre>   
  </div>
        </section>
        <section class="- topic/section section note" id="api_getmirrorapplied__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">如果你希望获取的视频数据为原始视频的镜像，需要在调用 <a class="- topic/xref xref" href="class_imediaengine.aspx#api_registervideoframeobserver" title="注册视频观测器对象。"><span class="- topic/keyword keyword">registerVideoFrameObserver</span></a> 方法时注册该回调。成功注册视频数据观测器后，SDK 会在捕捉到每个视频帧时触发该回调，你需要在该回调的返回值中设置是否对原始视频数据作镜像处理。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 该功能仅支持 RGBA 格式的视频数据。</div>
        </section>
        <section class="- topic/section section" id="api_getmirrorapplied__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <div class="- topic/p p">设置 SDK 输出视频数据时是否作镜像处理：<ul class="- topic/ul ul">
  <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 镜像。</li>
  <li class="- topic/li li"><span class="- topic/ph ph">false</span>: （默认）不镜像。</li>
       </ul></div>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title11" id="api_getsmoothrenderingenabled">
    <h2 class="- topic/title title topictitle2" id="ariaid-title11"><a href="class_ivideoframeobserver.aspx#api_getsmoothrenderingenabled"><span class="- topic/ph ph">getSmoothRenderingEnabled</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_getsmoothrenderingenabled__shortdesc">设置获取的视频帧是否平滑输出。</span></p><section class="- topic/section section" id="api_getsmoothrenderingenabled__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">bool</strong> getSmoothRenderingEnabled(){ <strong class="hl-keyword">return</strong> <strong class="hl-keyword">false</strong>; }</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_getsmoothrenderingenabled__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl since">
       
  <dt class="- topic/dt dt dlterm">自从</dt>
  <dd class="- topic/dd dd">v3.0.0</dd>
       
   </dl>
   <p class="- topic/p p">如果你希望从 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#api_onrendervideoframe" title="获取远端发送的视频数据。"><span class="- topic/keyword keyword">onRenderVideoFrame</span></a> 获取的视频帧出帧时间间隔更均匀，可以在调用 <a class="- topic/xref xref" href="class_imediaengine.aspx#api_registervideoframeobserver" title="注册视频观测器对象。"><span class="- topic/keyword keyword">registerVideoFrameObserver</span></a> 方法时注册该回调，并将该回调的返回值设为 <span class="- topic/ph ph">true</span>。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">该回调需要在加入频道前注册。</li>
  <li class="- topic/li li">该回调适用于对获取的视频帧处理后自渲染的场景，不适用于处理后传回 SDK 的场景。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_getsmoothrenderingenabled__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <div class="- topic/p p">设置是否对获取的视频帧平滑处理：
       <ul class="- topic/ul ul">
  <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 平滑处理。</li>
  <li class="- topic/li li"><span class="- topic/ph ph">false</span>: （默认）不平滑处理。</li>
       </ul></div>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title12" id="api_getobservedframeposition">
    <h2 class="- topic/title title topictitle2" id="ariaid-title12"><a href="class_ivideoframeobserver.aspx#api_getobservedframeposition"><span class="- topic/ph ph">getObservedFramePosition</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_getobservedframeposition__shortdesc">设置视频观测位置。</span></p><section class="- topic/section section" id="api_getobservedframeposition__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> uint32_t getObservedFramePosition() { <strong class="hl-keyword">return</strong> <strong class="hl-keyword">static_cast</strong>&lt;uint32_t&gt;(POSITION_POST_CAPTURER | POSITION_PRE_RENDERER); }</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_getobservedframeposition__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
       <dl class="- topic/dl dl since">
  
      <dt class="- topic/dt dt dlterm">自从</dt>
      <dd class="- topic/dd dd">v3.0.1</dd>
  
       </dl>
   <div class="- topic/p p">成功注册视频数据观测器后，SDK 会在每个特定的视频帧处理节点通过该回调来判断是否触发 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#api_oncapturevideoframe" title="获取本地摄像头采集到的视频数据。"><span class="- topic/keyword keyword">onCaptureVideoFrame</span></a>、 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#api_onrendervideoframe" title="获取远端发送的视频数据。"><span class="- topic/keyword keyword">onRenderVideoFrame</span></a> 和
       <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#api_onpreencodevideoframe" title="获取本地视频编码前的视频数据。"><span class="- topic/keyword keyword">onPreEncodeVideoFrame</span></a> 回调，供你观测本地采集视频数据、远端发送的视频数据以及编码前的视频数据。你可以根据场景需求，通过修改
       <span class="+ topic/keyword pr-d/apiname keyword apiname">getObservedFramePosition</span> 的返回值，设置你需要观测的某个或多个位置：
       <ul class="- topic/ul ul"><li class="- topic/li li">
      <span class="+ topic/keyword pr-d/apiname keyword apiname">POSITION_POST_CAPTURER</span>(1
      &lt;&lt; 0)，本地采集视频数据后的位置，对应 <span class="+ topic/keyword pr-d/apiname keyword apiname">onCaptureVideoFrame</span> 回调。</li>
       <li class="- topic/li li">
      <span class="+ topic/keyword pr-d/apiname keyword apiname">POSITION_PRE_RENDERER</span>(1 &lt;&lt; 1)，接收远端发送视频前的位置，对应
 <span class="+ topic/keyword pr-d/apiname keyword apiname">onRenderVideoFrame</span> 回调。</li>
       <li class="- topic/li li">
      <span class="+ topic/keyword pr-d/apiname keyword apiname">POSITION_PRE_ENCODER</span>(1 &lt;&lt; 2)，本地视频编码前的位置，对应
 <span class="+ topic/keyword pr-d/apiname keyword apiname">onPreEncodeVideoFrame</span> 回调。</li>
   </ul></div>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul" id="api_getobservedframeposition__ul_rkl_wmg_s4b">
  <li class="- topic/li li">观测多个位置时，需要使用 '|' （或）运算符。</li>
  <li class="- topic/li li">该回调默认观测 <span class="+ topic/keyword pr-d/apiname keyword apiname">POSITION_POST_CAPTURER</span>(1 &lt;&lt; 0) 和 <span class="+ topic/keyword pr-d/apiname keyword apiname">POSITION_PRE_RENDERER</span>(1 &lt;&lt; 1)。</li>
  <li class="- topic/li li">为降低设备耗能，你可以根据实际需求适当减少观测位置。</li>
       </ul>
   </div>
   
        </section>
        <section class="- topic/section section" id="api_getobservedframeposition__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <p class="- topic/p p">设置观测位置的 bit mask: <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#enum_videoobserverposition" title="视频观测位置。"><span class="- topic/keyword keyword">VIDEO_OBSERVER_POSITION</span></a>。</p>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title13" id="api_ivideoframeobserver_ismultiplechannelframewanted">
    <h2 class="- topic/title title topictitle2" id="ariaid-title13"><a href="class_ivideoframeobserver.aspx#api_ivideoframeobserver_ismultiplechannelframewanted"><span class="- topic/ph ph">isMultipleChannelFrameWanted</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ivideoframeobserver_ismultiplechannelframewanted__shortdesc">多频道场景下，设置是否获取多个频道的视频数据。</span></p><section class="- topic/section section" id="api_ivideoframeobserver_ismultiplechannelframewanted__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">bool</strong> isMultipleChannelFrameWanted() { <strong class="hl-keyword">return</strong> <strong class="hl-keyword">false</strong>; }</pre>
  </div>
        </section>
        <section class="- topic/section section" id="api_ivideoframeobserver_ismultiplechannelframewanted__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
       <dl class="- topic/dl dl since">
  
      <dt class="- topic/dt dt dlterm">自从</dt>
      <dd class="- topic/dd dd">v3.0.1</dd>
  
       </dl>
   <p class="- topic/p p">成功注册视频观测器后，SDK 会在捕捉到每个视频帧的时候触发该回调。</p>
   <p class="- topic/p p">在多频道场景下，如果你希望从多个频道获取视频数据，则需要将该回调的返回值设为 <span class="- topic/ph ph">true</span>。 成功设置后，SDK 会触发 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#api_onrendervideoframeex" title="获取各频道的视频播放数据。"><span class="- topic/keyword keyword">onRenderVideoFrameEx</span></a> 回调，向你发送接收的远端视频帧，并报告该视频帧来自哪个频道。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul" id="api_ivideoframeobserver_ismultiplechannelframewanted__ul_a3x_jjg_s4b">
  <li class="- topic/li li">一旦你将该回调的返回值设为 <span class="- topic/ph ph">true</span>，则 SDK 只触发 <span class="+ topic/keyword pr-d/apiname keyword apiname">onRenderVideoFrameEx</span> 来返回接收到的混音前的视频数据。 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#api_onrendervideoframe" title="获取远端发送的视频数据。"><span class="- topic/keyword keyword">onRenderVideoFrame</span></a> 将不会被触发。在多频道场景下，我们建议你将该回调的返回值设为 <span class="- topic/ph ph">true</span>。</li>
  <li class="- topic/li li">如果你将该回调的返回值设为 <span class="- topic/ph ph">false</span>，则 SDK 只触发 <span class="+ topic/keyword pr-d/apiname keyword apiname">onRenderVideoFrame</span> 来返回接收到的视频数据。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ivideoframeobserver_ismultiplechannelframewanted__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul" id="api_ivideoframeobserver_ismultiplechannelframewanted__ul_vcm_qjg_s4b">
       <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 获取多个频道的视频帧。</li>
       <li class="- topic/li li"><span class="- topic/ph ph">false</span>: 不获取多个频道的视频帧。</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title14" id="api_onrendervideoframeex">
    <h2 class="- topic/title title topictitle2" id="ariaid-title14"><a href="class_ivideoframeobserver.aspx#api_onrendervideoframeex"><span class="- topic/ph ph">onRenderVideoFrameEx</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_onrendervideoframeex__shortdesc">获取各频道的视频播放数据。</span></p><section class="- topic/section section" id="api_onrendervideoframeex__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">bool</strong> onRenderVideoFrameEx(<strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong> *channelId, <strong class="hl-keyword">unsigned</strong> <strong class="hl-keyword">int</strong> uid, VideoFrame&amp; videoFrame) { <strong class="hl-keyword">return</strong> <strong class="hl-keyword">true</strong>; }</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_onrendervideoframeex__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">成功注册视频观测器后，如果你将 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#api_ivideoframeobserver_ismultiplechannelframewanted" title="多频道场景下，设置是否获取多个频道的视频数据。"><span class="- topic/keyword keyword">isMultipleChannelFrameWanted</span></a> 的返回值设为 <span class="- topic/ph ph">true</span>，则 SDK 会在捕捉到各频道内的视频数据时，触发该回调，将视频数据发送给你。</p>
   <p class="- topic/p p">获取该回调中的视频数据后，你可以根据场景需要，对视频数据进行美颜、滤镜等后处理，然后将处理后的视频数据再通过该回调的 <span class="+ topic/keyword pr-d/parmname keyword parmname">videoFrame</span> 参数发送回 SDK。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 该回调不支持将处理后的 RGBA 格式的视频数据发送回 SDK。</div>
        </section>
        <section class="- topic/section section" id="api_onrendervideoframeex__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm"><span class="- topic/ph ph">channelId</span></dt>
  <dd class="+ topic/dd pr-d/pd dd pd">该视频帧所在的频道名。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm"><span class="- topic/ph ph">uid</span></dt>
  <dd class="+ topic/dd pr-d/pd dd pd">发送该帧视频的用户 ID。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">videoFrame</dt>
  <dd class="+ topic/dd pr-d/pd dd pd"><a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#class_videoframe" title="VideoFrame 定义。"><span class="- topic/keyword keyword">VideoFrame</span></a></dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_onrendervideoframeex__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <div class="- topic/p p">如果对该视频帧的后处理失败，是否将其发送回 SDK：<ul class="- topic/ul ul" id="api_onrendervideoframeex__ul_mg4_vsg_s4b">
  <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 发送</li>
  <li class="- topic/li li"><span class="- topic/ph ph">false</span>: 不发送</li>
       </ul></div>
        </section></div>
</article></article></article></main></div>
      
      
      
      
  </div>
  
      <nav role="navigation" id="wh_topic_toc" aria-label="On this page" class="col-lg-2 d-none d-lg-block navbar d-print-none"> 
 <div class=" wh_topic_toc "><div class="wh_topic_label">在本页上</div><ul><li class="topic-item"><a href="#class_videoframe" data-tocid="class_videoframe"><a href="class_ivideoframeobserver.aspx#class_videoframe"><span class="- topic/ph ph">VideoFrame</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#class_videoframe__detailed_desc" data-tocid="class_videoframe__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#class_videoframe__parameters" data-tocid="class_videoframe__parameters">
       属性
       
       
       
       
       
   </a></div></li></ul></li><li class="topic-item"><a href="#enum_videoframetype" data-tocid="enum_videoframetype"><a href="class_ivideoframeobserver.aspx#enum_videoframetype"><span class="- topic/ph ph">VIDEO_FRAME_TYPE</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#enum_videoframetype__parameters" data-tocid="enum_videoframetype__parameters">枚举值</a></div></li></ul></li><li class="topic-item"><a href="#enum_videoobserverposition" data-tocid="enum_videoobserverposition"><a href="class_ivideoframeobserver.aspx#enum_videoobserverposition"><span class="- topic/ph ph">VIDEO_OBSERVER_POSITION</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#enum_videoobserverposition__parameters" data-tocid="enum_videoobserverposition__parameters">枚举值</a></div></li></ul></li><li class="topic-item"><a href="#api_oncapturevideoframe" data-tocid="api_oncapturevideoframe"><a href="class_ivideoframeobserver.aspx#api_oncapturevideoframe"><span class="- topic/ph ph">onCaptureVideoFrame</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_oncapturevideoframe__prototype" data-tocid="api_oncapturevideoframe__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_oncapturevideoframe__detailed_desc" data-tocid="api_oncapturevideoframe__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_oncapturevideoframe__parameters" data-tocid="api_oncapturevideoframe__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_oncapturevideoframe__return_values" data-tocid="api_oncapturevideoframe__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_onpreencodevideoframe" data-tocid="api_onpreencodevideoframe"><a href="class_ivideoframeobserver.aspx#api_onpreencodevideoframe"><span class="- topic/ph ph">onPreEncodeVideoFrame</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_onpreencodevideoframe__prototype" data-tocid="api_onpreencodevideoframe__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_onpreencodevideoframe__detailed_desc" data-tocid="api_onpreencodevideoframe__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_onpreencodevideoframe__parameters" data-tocid="api_onpreencodevideoframe__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_onpreencodevideoframe__return_values" data-tocid="api_onpreencodevideoframe__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_onrendervideoframe" data-tocid="api_onrendervideoframe"><a href="class_ivideoframeobserver.aspx#api_onrendervideoframe"><span class="- topic/ph ph">onRenderVideoFrame</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_onrendervideoframe__prototype" data-tocid="api_onrendervideoframe__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_onrendervideoframe__detailed_desc" data-tocid="api_onrendervideoframe__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_onrendervideoframe__parameters" data-tocid="api_onrendervideoframe__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_onrendervideoframe__return_values" data-tocid="api_onrendervideoframe__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_getvideoformatpreference" data-tocid="api_getvideoformatpreference"><a href="class_ivideoframeobserver.aspx#api_getvideoformatpreference"><span class="- topic/ph ph">getVideoFormatPreference</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_getvideoformatpreference__prototype" data-tocid="api_getvideoformatpreference__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_getvideoformatpreference__detailed_desc" data-tocid="api_getvideoformatpreference__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_getvideoformatpreference__return_values" data-tocid="api_getvideoformatpreference__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_getrotationapplied" data-tocid="api_getrotationapplied"><a href="class_ivideoframeobserver.aspx#api_getrotationapplied"><span class="- topic/ph ph">getRotationApplied</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_getrotationapplied__prototype" data-tocid="api_getrotationapplied__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_getrotationapplied__detailed_desc" data-tocid="api_getrotationapplied__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_getrotationapplied__return_values" data-tocid="api_getrotationapplied__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_getmirrorapplied" data-tocid="api_getmirrorapplied"><a href="class_ivideoframeobserver.aspx#api_getmirrorapplied"><span class="- topic/ph ph">getMirrorApplied</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_getmirrorapplied__prototype" data-tocid="api_getmirrorapplied__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_getmirrorapplied__detailed_desc" data-tocid="api_getmirrorapplied__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_getmirrorapplied__return_values" data-tocid="api_getmirrorapplied__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_getsmoothrenderingenabled" data-tocid="api_getsmoothrenderingenabled"><a href="class_ivideoframeobserver.aspx#api_getsmoothrenderingenabled"><span class="- topic/ph ph">getSmoothRenderingEnabled</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_getsmoothrenderingenabled__prototype" data-tocid="api_getsmoothrenderingenabled__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_getsmoothrenderingenabled__detailed_desc" data-tocid="api_getsmoothrenderingenabled__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_getsmoothrenderingenabled__return_values" data-tocid="api_getsmoothrenderingenabled__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_getobservedframeposition" data-tocid="api_getobservedframeposition"><a href="class_ivideoframeobserver.aspx#api_getobservedframeposition"><span class="- topic/ph ph">getObservedFramePosition</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_getobservedframeposition__prototype" data-tocid="api_getobservedframeposition__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_getobservedframeposition__detailed_desc" data-tocid="api_getobservedframeposition__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_getobservedframeposition__return_values" data-tocid="api_getobservedframeposition__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ivideoframeobserver_ismultiplechannelframewanted" data-tocid="api_ivideoframeobserver_ismultiplechannelframewanted"><a href="class_ivideoframeobserver.aspx#api_ivideoframeobserver_ismultiplechannelframewanted"><span class="- topic/ph ph">isMultipleChannelFrameWanted</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ivideoframeobserver_ismultiplechannelframewanted__prototype" data-tocid="api_ivideoframeobserver_ismultiplechannelframewanted__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ivideoframeobserver_ismultiplechannelframewanted__detailed_desc" data-tocid="api_ivideoframeobserver_ismultiplechannelframewanted__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ivideoframeobserver_ismultiplechannelframewanted__return_values" data-tocid="api_ivideoframeobserver_ismultiplechannelframewanted__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_onrendervideoframeex" data-tocid="api_onrendervideoframeex"><a href="class_ivideoframeobserver.aspx#api_onrendervideoframeex"><span class="- topic/ph ph">onRenderVideoFrameEx</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_onrendervideoframeex__prototype" data-tocid="api_onrendervideoframeex__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_onrendervideoframeex__detailed_desc" data-tocid="api_onrendervideoframeex__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_onrendervideoframeex__parameters" data-tocid="api_onrendervideoframeex__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_onrendervideoframeex__return_values" data-tocid="api_onrendervideoframeex__return_values">返回值</a></div></li></ul></li></ul></div>
      </nav>
  
       </div>
   </div>
        </div> 
        <footer class="navbar navbar-default wh_footer" whc:version="23.0">
  <div class=" footer-container mx-auto ">
    
   Generated by <a class="oxyFooter" href="http://www.oxygenxml.com/xml_webhelp.html" target="_blank">
   &lt;oXygen/&gt; XML WebHelp
   </a>
        
  </div>
</footer>
        
        <div id="go2top" class="d-print-none">
   <span class="oxy-icon oxy-icon-up"></span>
        </div>
        
        <!-- The modal container for images -->
        <div id="modal_img_large" class="modal">
   <span class="close oxy-icon oxy-icon-remove"></span>
   <!-- Modal Content (The Image) -->
   <img class="modal-content" id="modal-img" alt="" />
   <!-- Modal Caption (Image Text) -->
   <div id="caption"></div>
        </div>
        
        
    </body>
</html>