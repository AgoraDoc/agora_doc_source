
<!DOCTYPE html
  SYSTEM "about:legacy-compat">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:whc="http://www.oxygenxml.com/webhelp/components" xml:lang="zh-cn" lang="zh-cn" whc:version="22.0">
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><meta charset="UTF-8" /><meta name="copyright" content="(C) 版权 2021" /><meta name="DC.rights.owner" content="(C) 版权 2021" /><meta name="DC.type" content="reference" /><meta name="description" content="调用 createChannel 创建一个 IChannel 对象。" /><meta name="DC.subject" content="IChannel, release, setChannelEventHandler, joinChannel, joinChannelWithUserAccount, leaveChannel, getConnectionState, setClientRole1, setClientRole2, publish, unpublish, channelId, renewToken, setEncryptionSecret, setEncryptionMode, enableEncryption, registerPacketObserver, registerMediaMetadataObserver, setRemoteUserPriority, setRemoteVoicePosition, setRemoteRenderMode, setDefaultMuteAllRemoteAudioStreams, setDefaultMuteAllRemoteVideoStreams, muteAllRemoteAudioStreams, adjustUserPlaybackSignalVolume, muteRemoteAudioStream, muteAllRemoteVideoStreams, muteRemoteVideoStream, setRemoteVideoStreamType, setRemoteDefaultVideoStreamType, createDataStream, sendStreamMessage, addPublishStreamUrl, removePublishStreamUrl, setLiveTranscoding, addInjectStreamUrl, removeInjectStreamUrl, startChannelMediaRelay, updateChannelMediaRelay, stopChannelMediaRelay, getCallId" /><meta name="keywords" content="IChannel, release, setChannelEventHandler, joinChannel, joinChannelWithUserAccount, leaveChannel, getConnectionState, setClientRole1, setClientRole2, publish, unpublish, channelId, renewToken, setEncryptionSecret, setEncryptionMode, enableEncryption, registerPacketObserver, registerMediaMetadataObserver, setRemoteUserPriority, setRemoteVoicePosition, setRemoteRenderMode, setDefaultMuteAllRemoteAudioStreams, setDefaultMuteAllRemoteVideoStreams, muteAllRemoteAudioStreams, adjustUserPlaybackSignalVolume, muteRemoteAudioStream, muteAllRemoteVideoStreams, muteRemoteVideoStream, setRemoteVideoStreamType, setRemoteDefaultVideoStreamType, createDataStream, sendStreamMessage, addPublishStreamUrl, removePublishStreamUrl, setLiveTranscoding, addInjectStreamUrl, removeInjectStreamUrl, startChannelMediaRelay, updateChannelMediaRelay, stopChannelMediaRelay, getCallId" /><meta name="indexterms" content="release, setChannelEventHandler, joinChannel, joinChannelWithUserAccount, leaveChannel, getConnectionState, setClientRole1, setClientRole2, publish, unpublish, channelId, renewToken, setEncryptionSecret, setEncryptionMode, enableEncryption, registerPacketObserver, registerMediaMetadataObserver, setRemoteUserPriority, setRemoteVoicePosition, setRemoteRenderMode, setDefaultMuteAllRemoteAudioStreams, setDefaultMuteAllRemoteVideoStreams, muteAllRemoteAudioStreams, adjustUserPlaybackSignalVolume, muteRemoteAudioStream, muteAllRemoteVideoStreams, muteRemoteVideoStream, setRemoteVideoStreamType, setRemoteDefaultVideoStreamType, createDataStream, createDataStream, sendStreamMessage, addPublishStreamUrl, removePublishStreamUrl, setLiveTranscoding, addInjectStreamUrl, removeInjectStreamUrl, startChannelMediaRelay, updateChannelMediaRelay, stopChannelMediaRelay, getCallId" /><meta name="DC.format" content="HTML5" /><meta name="DC.identifier" content="class_ichannel" />        
      <title>IChannel</title><!--  Generated with Oxygen version 23.0, build number 2020121702.  --><meta name="wh-path2root" content="../" /><meta name="wh-toc-id" content="class_ichannel-d4991e15906" /><meta name="wh-source-relpath" content="API/class_ichannel.dita" /><meta name="wh-out-relpath" content="API/class_ichannel.aspx" />
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
  <div data-tooltip-position="bottom" class=" wh_breadcrumb "><ol xmlns:html="http://www.w3.org/1999/xhtml" class="d-print-none"><li><span class="home"><a href="../index.aspx"><span>主页</span></a></span></li><li><span class="topicref"><span class="title"><a href="../API/rtc_api_overview.aspx">C++ API Reference for All Platforms</a></span></span></li><li class="active"><span class="topicref" data-id="class_ichannel"><span class="title"><a href="../API/class_ichannel.aspx#class_ichannel"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ichannel.html#class_ichannel"><span class="ph">IChannel</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">调用 <a href="../API/class_irtcengine.html#api_createChannel" class="xref"><span class="keyword">createChannel</span></a> 创建一个 <span class="keyword apiname">IChannel</span> 对象。</span></p></span></span></span></li></ol></div>

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
 <div class=" wh_publication_toc " data-tooltip-position="right"><ul role="tree" aria-label="Table of Contents"><span class="expand-button-action-labels"><span id="button-expand-action" aria-label="Expand"></span><span id="button-collapse-action" aria-label="Collapse"></span><span id="button-pending-action" aria-label="Pending"></span></span><li role="treeitem" aria-expanded="true"><span data-tocid="tocId-d4991e13735" class="topicref" data-state="expanded"><span role="button" tabindex="0" aria-labelledby="button-collapse-action tocId-d4991e13735-link" class="wh-expand-btn"></span><span class="title"><a href="../API/rtc_api_overview.aspx" id="tocId-d4991e13735-link">C++ API Reference for All Platforms</a></span></span><ul role="group" class="navbar-nav nav-list"><li role="treeitem"><span data-tocid="api-title-d4991e13736" class="topicref" data-id="api-title" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/rtc_api_overview.aspx" id="api-title-d4991e13736-link">API Overview</a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">声网通过全球部署的虚拟网络，提供可以灵活搭配的 API 组合，提供质量可靠的实时音视频通信。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_rtcengine-d4991e13748" class="topicref" data-id="class_rtcengine" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_irtcengine.aspx#class_rtcengine" id="class_rtcengine-d4991e13748-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_irtcengine.html#class_rtcengine"><span class="ph">IRtcEngine</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">Agora Native SDK 的基础接口类，包含应用程序调用的主要方法。</span></p></span></span></span></li><li role="treeitem" class="active"><span data-tocid="class_ichannel-d4991e15906" class="topicref" data-id="class_ichannel" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ichannel.aspx#class_ichannel" id="class_ichannel-d4991e15906-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ichannel.html#class_ichannel"><span class="ph">IChannel</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">调用 <a href="../API/class_irtcengine.html#api_createChannel" class="xref"><span class="keyword">createChannel</span></a> 创建一个 <span class="keyword apiname">IChannel</span> 对象。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ichanneleventhandler-d4991e16473" class="topicref" data-id="class_ichanneleventhandler" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ichanneleventhandler.aspx#class_ichanneleventhandler" id="class_ichanneleventhandler-d4991e16473-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ichanneleventhandler.html#class_ichanneleventhandler"><span class="ph">IChannelEventHandler</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph"><span class="keyword apiname">IChannelEventHandler</span> 接口类用于 SDK 向 app 发送 <a href="../API/class_ichannel.html#class_ichannel" class="xref"><span class="keyword">IChannel</span></a> 频道的回调事件通知。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_imediaengine-d4991e16949" class="topicref" data-id="class_imediaengine" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_imediaengine.aspx#class_imediaengine" id="class_imediaengine-d4991e16949-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_imediaengine.html#class_imediaengine"><span class="ph">IMediaEngine</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph"><span class="keyword apiname">IMediaEngine</span> 类。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ipacketobserver-d4991e17061" class="topicref" data-id="class_ipacketobserver" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ipacketobserver.aspx#class_ipacketobserver" id="class_ipacketobserver-d4991e17061-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ipacketobserver.html#class_ipacketobserver"><span class="ph">IPacketObserver</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">IPacketObserver 定义。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_iaudiodevicemanager-d4991e17126" class="topicref" data-id="class_iaudiodevicemanager" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_iaudiodevicemanager.aspx#class_iaudiodevicemanager" id="class_iaudiodevicemanager-d4991e17126-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_iaudiodevicemanager.html#class_iaudiodevicemanager"><span class="ph">IAudioDeviceManager</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">音频设备管理方法。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_iaudiodevicecollection-d4991e17443" class="topicref" data-id="class_iaudiodevicecollection" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_iaudiodevicecollection.aspx#class_iaudiodevicecollection" id="class_iaudiodevicecollection-d4991e17443-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_iaudiodevicecollection.html#class_iaudiodevicecollection"><span class="ph">IAudioDeviceCollection</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">IAudioDeviceCollection 类。你可以通过该接口类获取音频设备相关的信息。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideosource-d4991e17560" class="topicref" data-id="class_ivideosource" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideosource.aspx#class_ivideosource" id="class_ivideosource-d4991e17560-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideosource.html#class_ivideosource"><span class="ph">IVideoSource</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">IVideoSource 类，可以设置自定义的视频源。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideoframeconsumer-d4991e17664" class="topicref" data-id="class_ivideoframeconsumer" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideoframeconsumer.aspx#class_ivideoframeconsumer" id="class_ivideoframeconsumer-d4991e17664-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideoframeconsumer.html#class_ivideoframeconsumer"><span class="ph">IVideoFrameConsumer</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph"><span class="keyword apiname">IVideoFrameConsumer</span> 类，用于让 SDK 接收你采集的视频帧。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideodevicemanager-d4991e17692" class="topicref" data-id="class_ivideodevicemanager" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideodevicemanager.aspx#class_ivideodevicemanager" id="class_ivideodevicemanager-d4991e17692-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideodevicemanager.html#class_ivideodevicemanager"><span class="ph">IVideoDeviceManager</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">视频设备管理方法。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideodevicecollection-d4991e17788" class="topicref" data-id="class_ivideodevicecollection" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideodevicecollection.aspx#class_ivideodevicecollection" id="class_ivideodevicecollection-d4991e17788-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideodevicecollection.html#class_ivideodevicecollection"><span class="ph">IVideoDeviceCollection</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">IVideoDeviceCollection 类。你可以通过该接口类获取视频设备相关的信息。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_rtcengineeventhandler-d4991e17857" class="topicref" data-id="class_rtcengineeventhandler" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_irtcengineeventhandler.aspx#class_rtcengineeventhandler" id="class_rtcengineeventhandler-d4991e17857-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_irtcengineeventhandler.html#class_rtcengineeventhandler"><span class="ph">IRtcEngineEventHandler</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph"><span class="keyword apiname">IRtcEngineEventHandler</span> 接口类用于 SDK 向 app 发送回调事件通知，app 通过继承该接口类的方法获取 SDK的事件通知。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_iaudioframeobserver-d4991e18897" class="topicref" data-id="class_iaudioframeobserver" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_iaudioframeobserver.aspx#class_iaudioframeobserver" id="class_iaudioframeobserver-d4991e18897-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_iaudioframeobserver.html#class_iaudioframeobserver"><span class="ph">IAudioFrameObserver</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">语音观测器。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideoframeobserver-d4991e19014" class="topicref" data-id="class_ivideoframeobserver" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideoframeobserver.aspx#class_ivideoframeobserver" id="class_ivideoframeobserver-d4991e19014-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideoframeobserver.html#class_ivideoframeobserver"><span class="ph">IVideoFrameObserver</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">视频观测器。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_imetadataobserver-d4991e19199" class="topicref" data-id="class_imetadataobserver" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_imetadataobserver.aspx#class_imetadataobserver" id="class_imetadataobserver-d4991e19199-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_imetadataobserver.html#class_imetadataobserver"><span class="ph">IMetadataObserver</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">Metadata 观测器。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="datatype-d4991e19289" class="topicref" data-id="datatype" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/rtc_api_data_type.aspx#datatype" id="datatype-d4991e19289-link">类型定义</a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">本页列出 <span class="ph">Windows</span> API 所有的类型定义。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="错误码和警告码-d4991e20757" class="topicref" data-id="错误码和警告码" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/error_rtc.aspx" id="错误码和警告码-d4991e20757-link">错误码和警告码</a></span></span></li></ul></li></ul></div>
      </nav>
  
  
  <div class="col-lg-7 col-md-9 col-sm-12" id="wh_topic_body">
      <div class=" wh_topic_content body "><main role="main"><article role="article" aria-labelledby="ariaid-title1"><article class="nested0" aria-labelledby="ariaid-title1" id="class_ichannel">
    <h1 class="- topic/title title topictitle1" id="ariaid-title1"><a href="class_ichannel.aspx#class_ichannel"><span class="- topic/ph ph">IChannel</span></a></h1>
    <p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="class_ichannel__shortdesc">调用 <a class="- topic/xref xref" href="class_irtcengine.aspx#api_createChannel" title="创建并获取一个 IChannel 对象。"><span class="- topic/keyword keyword">createChannel</span></a> 创建一个 <span class="+ topic/keyword pr-d/apiname keyword apiname">IChannel</span> 对象。</span></p>
<article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title2" id="api_ichannel_release">
    <h2 class="- topic/title title topictitle2" id="ariaid-title2"><a href="class_ichannel.aspx#api_ichannel_release"><span class="- topic/ph ph">release</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_release__shortdesc">销毁 <a class="- topic/xref xref" href="class_ichannel.aspx#class_ichannel" title="调用 createChannel 创建一个 IChannel 对象。"><span class="- topic/keyword keyword">IChannel</span></a> 对象。</span></p><section class="- topic/section section" id="api_ichannel_release__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">
       <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> release() = <span class="hl-number">0</span>;</pre>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_release__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul" id="api_ichannel_release__ul_ztq_2rb_t4b">
       <li class="- topic/li li">0: 方法调用成功。</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败。<ul class="- topic/ul ul" id="api_ichannel_release__ul_igw_frb_t4b">
      <li class="- topic/li li"><code class="+ topic/ph pr-d/codeph ph codeph">ERR_NOT_INITIALIZED</code>(7): SDK 尚未初始化，就调用其 API。请确认在调用 API
 之前已创建 <span class="+ topic/keyword pr-d/apiname keyword apiname">IChannel</span> 对象并完成初始化。</li>
  </ul></li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title3" id="api_ichannel_setchanneleventhandler">
    <h2 class="- topic/title title topictitle2" id="ariaid-title3"><a href="class_ichannel.aspx#api_ichannel_setchanneleventhandler"><span class="- topic/ph ph">setChannelEventHandler</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_setchanneleventhandler__shortdesc">设置 <a class="- topic/xref xref" href="class_ichannel.aspx#class_ichannel" title="调用 createChannel 创建一个 IChannel 对象。">IChannel</a> 对象的事件句柄。</span></p><section class="- topic/section section" id="api_ichannel_setchanneleventhandler__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setChannelEventHandler(IChannelEventHandler *channelEh) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setchanneleventhandler__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">你可以通过设置的事件句柄监听本 <a class="- topic/xref xref" href="class_ichannel.aspx#class_ichannel" title="调用 createChannel 创建一个 IChannel 对象。"><span class="- topic/keyword keyword">IChannel</span></a> 对象对应频道的事件，并接收频道中用户视频信息等。</p>
        </section>
        <section class="- topic/section section" id="api_ichannel_setchanneleventhandler__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">channelEh</dt>
  <dd class="+ topic/dd pr-d/pd dd pd"><span class="+ topic/keyword pr-d/apiname keyword apiname">IChannel</span> 对象的事件句柄。详见 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#class_ichanneleventhandler" title="IChannelEventHandler 接口类用于 SDK 向 app 发送 IChannel 频道的回调事件通知。"><span class="- topic/keyword keyword">IChannelEventHandler</span></a>。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_setchanneleventhandler__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0(ERR_OK) 方法调用成功。</li>
       <li class="- topic/li li">&lt; 0 方法调用失败。 </li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title4" id="api_ichannel_joinchannel">
    <h2 class="- topic/title title topictitle2" id="ariaid-title4"><a href="class_ichannel.aspx#api_ichannel_joinchannel"><span class="- topic/ph ph">joinChannel</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_joinchannel__shortdesc">通过 UID 加入频道。</span></p><section class="- topic/section section" id="api_ichannel_joinchannel__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> joinChannel(<strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong>* token,
 <strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong>* info,
 uid_t uid,
 <strong class="hl-keyword">const</strong> ChannelMediaOptions&amp; options) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_joinchannel__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">该方法与 <a class="- topic/xref xref" href="class_irtcengine.aspx#class_rtcengine" title="Agora Native SDK 的基础接口类，包含应用程序调用的主要方法。"><span class="- topic/keyword keyword">IRtcEngine</span></a> 类下的 <span class="+ topic/keyword pr-d/apiname keyword apiname">joinChannel</span> 方法有以下区别：</p>
   <table class="- topic/table table" id="api_ichannel_joinchannel__table_diff" data-ofbid="api_ichannel_joinchannel__table_diff"><caption></caption><colgroup><col /><col /></colgroup><tbody class="- topic/tbody tbody">
      <tr class="- topic/row">
 <td class="- topic/entry entry colsep-0 rowsep-0"><span class="+ topic/keyword pr-d/apiname keyword apiname">IChannel::joinChannel</span></td>
 <td class="- topic/entry entry colsep-0 rowsep-0"><span class="+ topic/keyword pr-d/apiname keyword apiname">IRtcEngine::joinChannel</span></td>
      </tr>
      <tr class="- topic/row">
 <td class="- topic/entry entry colsep-0 rowsep-0">无 <span class="+ topic/keyword pr-d/parmname keyword parmname">channelId</span> 参数。因为创建 <a class="- topic/xref xref" href="class_ichannel.aspx#class_ichannel" title="调用 createChannel 创建一个 IChannel 对象。"><span class="- topic/keyword keyword">IChannel</span></a> 对象时已指定了 <span class="+ topic/keyword pr-d/parmname keyword parmname">channelId</span>。 </td>
 <td class="- topic/entry entry colsep-0 rowsep-0">需要填入可以标识频道的 <span class="+ topic/keyword pr-d/parmname keyword parmname">channelId</span>。 </td>
      </tr>
      <tr class="- topic/row">
 <td class="- topic/entry entry colsep-0 rowsep-0">通过创建多个 <span class="+ topic/keyword pr-d/apiname keyword apiname">IChannel</span> 对象，并调用相应对象的 <span class="+ topic/keyword pr-d/apiname keyword apiname">joinChannel</span> 方法，实现同时加入多个频道。 </td>
 <td class="- topic/entry entry colsep-0 rowsep-0">只允许加入一个频道。 </td>
      </tr>
      <tr class="- topic/row">
 <td class="- topic/entry entry colsep-0 rowsep-0">通过该方法加入频道后，SDK 默认不发布本地音视频流到本频道，需要调用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_publish" title="将本地音视频流发布到本频道。"><span class="- topic/keyword keyword">publish</span></a> 方法进行发布。 </td>
 <td class="- topic/entry entry colsep-0 rowsep-0">通过该方法加入频道后，SDK 默认将音视频流发布到本频道。 </td>
      </tr>
  </tbody></table>
   <p class="- topic/p p">用户成功加入频道后，默认订阅频道内所有其他用户的音频流和视频流，因此产生用量并影响计费。如果想取消订阅，可以通过调用相应的 <code class="+ topic/ph pr-d/codeph ph codeph">mute</code> 方法实现。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">该方法不支持相同的用户重复加入同一个频道。</li>
  <li class="- topic/li li">我们建议不同频道中使用不同的 UID。</li>
  <li class="- topic/li li">如果想要从不同的设备同时接入同一个频道，请确保每个设备上使用的 UID 是不同的。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_joinchannel__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">token</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">在服务端生成的用于鉴权的动态密钥。详见<a class="- topic/xref xref" href="https://docs.agora.io/cn/Interactive%20Broadcast/token_server?platform=Windows" target="_blank" rel="external noopener">从服务端生成 Token</a>。</p>
 <div class="- topic/note note note note_note warning"><span class="note__title">注：</span>  请务必确保用于生成 token 的 App ID 和 <a class="- topic/xref xref" href="class_irtcengine.aspx#api_initialize" title="初始化 Agora SDK 服务。"><span class="- topic/keyword keyword">initialize</span></a> 方法初始化引擎时用的是同一个 App ID。 </div>
      </dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm"><span class="- topic/ph ph">info</span></dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">(非必选项) 预留参数。</p>
  </dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm"><span class="- topic/ph ph">uid</span></dt>
  <dd class="+ topic/dd pr-d/pd dd pd">用户 ID，32 位无符号整数。建议设置范围：1 到 2<sup class="+ topic/ph hi-d/sup ph sup">32</sup>-1，并保证唯一性。如果不指定（即设为 0），SDK 会自动分配一个，并在 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onjoinchannelsuccess" title="成功加入频道回调。"><span class="- topic/keyword keyword">onJoinChannelSuccess</span></a> 回调中返回，App 层必须记住该返回值并维护，SDK 不对该返回值进行维护。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">options</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">频道媒体设置选项。详见 <a class="- topic/xref xref" href="rtc_api_data_type.aspx#class_channelmediaoptions"><span class="- topic/keyword keyword">ChannelMediaOptions</span></a>。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_joinchannel__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0(ERR_OK) 方法调用成功。</li>
       <li class="- topic/li li">&lt; 0 方法调用失败。 <ul class="- topic/ul ul">
  <li class="- topic/li li">-2(ERR_INVALID_ARGUMENT): 参数无效。</li>
  <li class="- topic/li li">-3(ERR_NOT_READY): SDK 初始化失败，请尝试重新初始化 SDK。</li>
  <li class="- topic/li li">-5(ERR_REFUSED): 调用被拒绝。可能有如下两个原因： <ul class="- topic/ul ul">
      <li class="- topic/li li">已经创建了一个同名的 <a class="- topic/xref xref" href="class_ichannel.aspx#class_ichannel" title="调用 createChannel 创建一个 IChannel 对象。"><span class="- topic/keyword keyword">IChannel</span></a> 频道。</li>
      <li class="- topic/li li">已经通过 <span class="+ topic/keyword pr-d/apiname keyword apiname">IChannel</span> 加入了一个频道，并在该 <span class="+ topic/keyword pr-d/apiname keyword apiname">IChannel</span> 频道中发布了音视频流。</li></ul></li>
  <li class="- topic/li li">-7(ERR_NOT_INITIALIZED): SDK 尚未初始化，就调用该方法。请确认在调用 API 之前已经创建 <a class="- topic/xref xref" href="class_irtcengine.aspx#class_rtcengine" title="Agora Native SDK 的基础接口类，包含应用程序调用的主要方法。"><span class="- topic/keyword keyword">IRtcEngine</span></a> 对象并完成初始化。</li>
       </ul></li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title5" id="api_ichannel_joinchannelwithuseraccount">
    <h2 class="- topic/title title topictitle2" id="ariaid-title5"><a href="class_ichannel.aspx#api_ichannel_joinchannelwithuseraccount"><span class="- topic/ph ph">joinChannelWithUserAccount</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_joinchannelwithuseraccount__shortdesc">通过 User Account 加入频道。</span></p><section class="- topic/section section" id="api_ichannel_joinchannelwithuseraccount__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> joinChannelWithUserAccount(<strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong>* token,
       <strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong>* userAccount,
       <strong class="hl-keyword">const</strong> ChannelMediaOptions&amp; options) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_joinchannelwithuseraccount__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">该方法与 <a class="- topic/xref xref" href="class_irtcengine.aspx#class_rtcengine" title="Agora Native SDK 的基础接口类，包含应用程序调用的主要方法。"><span class="- topic/keyword keyword">IRtcEngine</span></a> 类下的 <span class="+ topic/keyword pr-d/apiname keyword apiname">joinChannelWithUserAccount</span> 方法有以下区别：</p>
   <table class="- topic/table table" id="api_ichannel_joinchannelwithuseraccount__table_diff" data-ofbid="api_ichannel_joinchannelwithuseraccount__table_diff"><caption></caption><colgroup><col /><col /></colgroup><tbody class="- topic/tbody tbody">
      <tr class="- topic/row">
 <td class="- topic/entry entry colsep-0 rowsep-0"><span class="+ topic/keyword pr-d/apiname keyword apiname">IChannel::joinChannelWithUserAccount</span></td>
 <td class="- topic/entry entry colsep-0 rowsep-0"><span class="+ topic/keyword pr-d/apiname keyword apiname">IRtcEngine::joinChannelWithUserAccount</span></td>
      </tr>
      <tr class="- topic/row">
 <td class="- topic/entry entry colsep-0 rowsep-0">无 <span class="+ topic/keyword pr-d/parmname keyword parmname">channelId</span> 参数。因为创建 <a class="- topic/xref xref" href="class_ichannel.aspx#class_ichannel" title="调用 createChannel 创建一个 IChannel 对象。"><span class="- topic/keyword keyword">IChannel</span></a> 对象时已指定了 <span class="+ topic/keyword pr-d/parmname keyword parmname">channelId</span>。 </td>
 <td class="- topic/entry entry colsep-0 rowsep-0">需要填入可以标识频道的 <span class="+ topic/keyword pr-d/parmname keyword parmname">channelId</span>。 </td>
      </tr>
      <tr class="- topic/row">
 <td class="- topic/entry entry colsep-0 rowsep-0">通过创建多个 <span class="+ topic/keyword pr-d/apiname keyword apiname">IChannel</span> 对象，并调用相应对象的 <span class="+ topic/keyword pr-d/apiname keyword apiname">joinChannelWithUserAccount</span> 方法，实现同时加入多个频道。 </td>
 <td class="- topic/entry entry colsep-0 rowsep-0">只允许加入一个频道。 </td>
      </tr>
      <tr class="- topic/row">
 <td class="- topic/entry entry colsep-0 rowsep-0">通过该方法加入频道后，SDK 默认不发布本地音视频流到本频道，需要调用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_publish" title="将本地音视频流发布到本频道。"><span class="- topic/keyword keyword">publish</span></a> 方法进行发布。 </td>
 <td class="- topic/entry entry colsep-0 rowsep-0">通过该方法加入频道后，SDK 默认将音视频流发布到本频道。 </td>
      </tr>
  </tbody></table>
   <p class="- topic/p p">用户成功加入频道后，默认订阅频道内所有其他用户的音频流和视频流，因此产生用量并影响计费。如果想取消订阅，可以通过调用相应的 <code class="+ topic/ph pr-d/codeph ph codeph">mute</code> 方法实现。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">该方法不支持相同的用户重复加入同一个频道。</li>
  <li class="- topic/li li">我们建议不同频道中使用不同的 user account。</li>
  <li class="- topic/li li">如果想要从不同的设备同时接入同一个频道，请确保每个设备上使用的 user account 是不同的。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_joinchannelwithuseraccount__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">token</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">在服务端生成的用于鉴权的动态密钥。详见<a class="- topic/xref xref" href="https://docs.agora.io/cn/Interactive%20Broadcast/token_server?platform=Windows" target="_blank" rel="external noopener">从服务端生成 Token</a>。</p>
 <div class="- topic/note note note note_note warning"><span class="note__title">注：</span>  请务必确保用于生成 token 的 App ID 和 <a class="- topic/xref xref" href="class_irtcengine.aspx#api_initialize" title="初始化 Agora SDK 服务。"><span class="- topic/keyword keyword">initialize</span></a> 方法初始化引擎时用的是同一个 App ID。 </div>
      </dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">userAccount</dt>
  <dd class="+ topic/dd pr-d/pd dd pd"><div class="- topic/p p">用户 User Account。该参数为必填，最大不超过 255 字节，不可填 <span class="- topic/ph ph">NULL</span>。请确保注册的 User Account
 的唯一性。以下为支持的字符集范围（共 89 个字符）：<ul class="- topic/ul ul">
     <li class="- topic/li li">26 个小写英文字母 a-z</li>
     <li class="- topic/li li">26 个大写英文字母 A-Z</li>
     <li class="- topic/li li">10 个数字 0-9</li>
     <li class="- topic/li li">空格</li>
     <li class="- topic/li li">"!"、"#"、"$"、"%"、"&amp;"、"("、")"、"+"、"-"、":"、";"、"&lt;"、"="、"."、"&gt;"、"?"、"@"、"["、"]"、"^"、"_"、"{"、"}"、"|"、"~"、","</li>
 </ul></div></dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">options</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">频道媒体设置选项。详见 <a class="- topic/xref xref" href="rtc_api_data_type.aspx#class_channelmediaoptions"><span class="- topic/keyword keyword">ChannelMediaOptions</span></a>。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_joinchannelwithuseraccount__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0(ERR_OK) 方法调用成功。</li>
       <li class="- topic/li li">&lt; 0 方法调用失败。 <ul class="- topic/ul ul">
  <li class="- topic/li li">-2(ERR_INVALID_ARGUMENT): 参数无效。</li>
  <li class="- topic/li li">-3(ERR_NOT_READY): SDK 初始化失败，请尝试重新初始化 SDK。</li>
  <li class="- topic/li li">-5(ERR_REFUSED): 调用被拒绝。可能有如下两个原因： <ul class="- topic/ul ul">
      <li class="- topic/li li">已经创建了一个同名的 <a class="- topic/xref xref" href="class_ichannel.aspx#class_ichannel" title="调用 createChannel 创建一个 IChannel 对象。"><span class="- topic/keyword keyword">IChannel</span></a> 频道。</li>
      <li class="- topic/li li">已经通过 <span class="+ topic/keyword pr-d/apiname keyword apiname">IChannel</span> 加入了一个频道，并在该 <span class="+ topic/keyword pr-d/apiname keyword apiname">IChannel</span> 频道中发布了音视频流。</li></ul></li>
  <li class="- topic/li li">-7(ERR_NOT_INITIALIZED): SDK 尚未初始化，就调用该方法。请确认在调用 API 之前已经创建 <a class="- topic/xref xref" href="class_irtcengine.aspx#class_rtcengine" title="Agora Native SDK 的基础接口类，包含应用程序调用的主要方法。"><span class="- topic/keyword keyword">IRtcEngine</span></a> 对象并完成初始化。</li>
       </ul></li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title6" id="api_ichannel_leavechannel">
    <h2 class="- topic/title title topictitle2" id="ariaid-title6"><a href="class_ichannel.aspx#api_ichannel_leavechannel"><span class="- topic/ph ph">leaveChannel</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_leavechannel__shortdesc">离开频道。</span></p><section class="- topic/section section" id="api_ichannel_leavechannel__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> leaveChannel() = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_leavechannel__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">离开频道，即挂断或退出通话。该方法会把会话相关的所有资源释放掉。该方法是异步操作，调用返回时并没有真正退出频道。</p>
   <p class="- topic/p p">调用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_joinchannel" title="通过 UID 加入频道。"><span class="- topic/keyword keyword">joinChannel</span></a> 后，必须调用 <span class="+ topic/keyword pr-d/apiname keyword apiname">leaveChannel</span> 结束通话，否则无法开始下一次通话。</p>
   <p class="- topic/p p">不管当前是否在通话中，都可以调用 <span class="+ topic/keyword pr-d/apiname keyword apiname">leaveChannel</span>，没有副作用。</p>
   <p class="- topic/p p">成功调用该方法离开频道后，本地会触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onleavechannel" title="离开频道回调。"><span class="- topic/keyword keyword">onLeaveChannel</span></a> 回调；通信场景下的用户和直播场景下的主播离开频道后，远端会触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onuseroffline" title="远端用户（通信场景）/主播（直播场景）离开当前频道回调。"><span class="- topic/keyword keyword">onUserOffline</span></a> 回调。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">如果你调用了 <span class="+ topic/keyword pr-d/apiname keyword apiname">leaveChannel</span> 后立即调用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_release" title="销毁 IChannel 对象。"><span class="- topic/keyword keyword">release</span></a> 方法，SDK 将无法触发 <span class="+ topic/keyword pr-d/apiname keyword apiname">onLeaveChannel</span> 回调。</li>
  <li class="- topic/li li">如果你在旁路推流过程中调用了 <span class="+ topic/keyword pr-d/apiname keyword apiname">leaveChannel</span> 方法，SDK 将自动调用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_removepublishstreamurl" title="删除旁路推流地址。"><span class="- topic/keyword keyword">removePublishStreamUrl</span></a> 方法。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0(ERR_OK): 方法调用成功。</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败。
       <ul class="- topic/ul ul">
  <li class="- topic/li li">-1(ERR_FAILED): 一般性的错误（未明确归类）。</li>
  <li class="- topic/li li">-2(ERR_INVALID_ARGUMENT): 参数无效。</li>
  <li class="- topic/li li">-3(ERR_NOT_INITIALIZED): SDK 尚未初始化。</li>
       </ul></li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title7" id="api_ichannel_getconnectionstate">
    <h2 class="- topic/title title topictitle2" id="ariaid-title7"><a href="class_ichannel.aspx#api_ichannel_getconnectionstate"><span class="- topic/ph ph">getConnectionState</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_getconnectionstate__d505e15">获取当前网络连接状态。</span></p><section class="- topic/section section" id="api_ichannel_getconnectionstate__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> CONNECTION_STATE_TYPE getConnectionState() = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_getconnectionstate__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">该方法在加入频道前后都能调用。</p>
        </section>
        <section class="- topic/section section" id="api_ichannel_getconnectionstate__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <p class="- topic/p p">当前网络连接的状态。详见 <a class="- topic/xref xref" href="rtc_api_data_type.aspx#enum_connectionstatetype" title="网络连接状态。"><span class="- topic/keyword keyword">CONNECTION_STATE_TYPE</span></a>。</p>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title8" id="api_ichannel_setclientrole1">
    <h2 class="- topic/title title topictitle2" id="ariaid-title8"><a href="class_ichannel.aspx#api_ichannel_setclientrole1"><span class="- topic/ph ph">setClientRole1</span></a>[1/2]</h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_setclientrole1__d102e16">设置直播场景下的用户角色。</span></p><section class="- topic/section section" id="api_ichannel_setclientrole1__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setClientRole(CLIENT_ROLE_TYPE role) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setclientrole1__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">在加入频道前和加入频道后均可调用该方法设置用户角色。</p>
   <p class="- topic/p p">如果你在加入频道后调用该方法切换用户角色，调用成功后，本地会触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onclientrolechanged" title="直播场景下用户角色已切换回调。"><span class="- topic/keyword keyword">onClientRoleChanged</span></a> 回调；远端会触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onuserjoined" title="远端用户（通信场景）/主播（直播场景）加入当前频道回调。"><span class="- topic/keyword keyword">onUserJoined</span></a> 或 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onuseroffline" title="远端用户（通信场景）/主播（直播场景）离开当前频道回调。"><span class="- topic/keyword keyword">onUserOffline</span></a>(USER_OFFLINE_BECOME_AUDIENCE) 回调。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 该方法仅适用于直播场景。</div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setclientrole1__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">role</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">直播场景里的用户角色。详见 <a class="- topic/xref xref" href="rtc_api_data_type.aspx#enum_clientroletype" title="直播场景里的用户角色。"><span class="- topic/keyword keyword">CLIENT_ROLE_TYPE</span></a>。</p>
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_setclientrole1__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0(ERR_OK): 方法调用成功。</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败。
  <ul class="- topic/ul ul">
      <li class="- topic/li li">-1(ERR_FAILED): 一般性的错误（未明确归类）。</li>
 <li class="- topic/li li">-2(ERR_INALID_ARGUMENT): 参数无效。</li>
 <li class="- topic/li li">-7(ERR_NOT_INITIALIZED): SDK 尚未初始化。</li>
  </ul>
       </li>
   </ul>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title9" id="api_ichannel_setclientrole2">
    <h2 class="- topic/title title topictitle2" id="ariaid-title9"><a href="class_ichannel.aspx#api_ichannel_setclientrole2"><span class="- topic/ph ph">setClientRole2</span></a>[2/2]</h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_setclientrole2__d101e16">设置直播场景下的用户角色和级别。</span></p><section class="- topic/section section" id="api_ichannel_setclientrole2__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setClientRole(CLIENT_ROLE_TYPE role, <strong class="hl-keyword">const</strong> ClientRoleOptions&amp; options) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setclientrole2__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl since">
       
  <dt class="- topic/dt dt dlterm">自从</dt>
  <dd class="- topic/dd dd">v3.2.0</dd>
       
   </dl>
   <p class="- topic/p p">在加入频道前和加入频道后均可调用该方法设置用户角色。</p>
   <div class="- topic/p p">如果你在加入频道后调用该方法成功切换用户角色，SDK 会触发以下回调：<ul class="- topic/ul ul">
       <li class="- topic/li li">本地触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onclientrolechanged" title="直播场景下用户角色已切换回调。"><span class="- topic/keyword keyword">onClientRoleChanged</span></a> 回调。</li>
       <li class="- topic/li li">远端触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onuserjoined" title="远端用户（通信场景）/主播（直播场景）加入当前频道回调。"><span class="- topic/keyword keyword">onUserJoined</span></a> 或 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onuseroffline" title="远端用户（通信场景）/主播（直播场景）离开当前频道回调。"><span class="- topic/keyword keyword">onUserOffline</span></a> 回调。</li>
   </ul></div>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
       <li class="- topic/li li">该方法仅在频道场景为直播（<a class="- topic/xref xref" href="class_irtcengine.aspx#api_setchannelprofile" title="设置频道场景。"><span class="- topic/keyword keyword">setChannelProfile</span></a> 中 <span class="+ topic/keyword pr-d/parmname keyword parmname">profile</span> 设为 <span class="- topic/ph ph">CHANNEL_PROFILE_LIVE_BROADCASTING</span>）时生效。</li>
       <li class="- topic/li li">该方法与 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_setclientrole1" title="设置直播场景下的用户角色。"><span class="- topic/keyword keyword">setClientRole1</span></a>[1/2] 的区别在于，该方法还支持设置用户级别。
  <ul class="- topic/ul ul">
 <li class="- topic/li li">用户角色（<span class="+ topic/keyword pr-d/parmname keyword parmname">role</span>）确定用户在 SDK
     层的权限，包含是否可以发送流、是否可以接收流、是否可以推流到 CDN 等。</li>
 <li class="- topic/li li">用户级别（<span class="+ topic/keyword pr-d/parmname keyword parmname">level</span>）需要与角色结合使用，确定用户在其权限范围内，可以操作和享受到的服务级别。例如对于观众，选择接收低延时还是超低延时的视频流。不同的级别会影响计费。</li>
      </ul>
       </li>
       </ul>
       </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setclientrole2__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">role</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">直播场景中的用户角色。详见 <a class="- topic/xref xref" href="rtc_api_data_type.aspx#enum_clientroletype" title="直播场景里的用户角色。">CLIENT_ROLE_TYPE</a>。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">options</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">用户具体设置，包含用户级别。详见 <a class="- topic/xref xref" href="rtc_api_data_type.aspx#class_clientroleoptions" title="用户角色具体设置。">ClientRoleOptions</a>。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_setclientrole2__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0(ERR_OK): 方法调用成功。</li>
       <li class="- topic/li li">&lt;0: 方法调用失败。
       <ul class="- topic/ul ul">
  <li class="- topic/li li">-1(ERR_FAILED): 一般性的错误（未明确归类）。</li>
  <li class="- topic/li li">-2(ERR_INVALID_ARGUMENT): 参数无效。</li>
  <li class="- topic/li li">-7(ERR_NOT_INITALIZED): SDK 尚未初始化。</li>
       </ul></li>
   </ul>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title10" id="api_ichannel_publish">
    <h2 class="- topic/title title topictitle2" id="ariaid-title10"><a href="class_ichannel.aspx#api_ichannel_publish"><span class="- topic/ph ph">publish</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_publish__shortdesc">将本地音视频流发布到本频道。</span></p><section class="- topic/section section" id="api_ichannel_publish__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> publish() = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_publish__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <div class="- topic/p p">该方法的调用需满足以下要求，否则 SDK 会返回 -5(ERR_REFUSED) : <ul class="- topic/ul ul">
  <li class="- topic/li li">该方法仅支持将音视频流发布到当前 <a class="- topic/xref xref" href="class_ichannel.aspx#class_ichannel" title="调用 createChannel 创建一个 IChannel 对象。"><span class="- topic/keyword keyword">IChannel</span></a> 类所对应的频道。</li>
  <li class="- topic/li li">直播场景下，该方法仅适用于角色为主播的用户。你可以调用该 <span class="+ topic/keyword pr-d/apiname keyword apiname">IChannel</span> 类下的 <span class="+ topic/keyword pr-d/apiname keyword apiname">setClientRole1</span> 方法设置用户角色。</li>
  <li class="- topic/li li">SDK 只支持用户同一时间在一个频道发布一路音视频流。详情请参考进阶功能《多频道管理》。</li>
       </ul></div>
        </section>
        <section class="- topic/section section" id="api_ichannel_publish__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul" id="api_ichannel_publish__ul_ymd_fdd_t4b">
       <li class="- topic/li li">0: 方法调用成功。</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败。<ul class="- topic/ul ul">
      <li class="- topic/li li">-5(ERR_REFUSED): 调用被拒绝。</li>
  </ul></li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title11" id="api_ichannel_unpublish">
    <h2 class="- topic/title title topictitle2" id="ariaid-title11"><a href="class_ichannel.aspx#api_ichannel_unpublish"><span class="- topic/ph ph">unpublish</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_unpublish__shortdesc">停止将本地音视频流发布到本频道。</span></p><section class="- topic/section section" id="api_ichannel_unpublish__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> unpublish() = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_unpublish__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">如果当前 IChannel 频道没有发布音视频流，调用该方法后 SDK 会返回 -5(ERR_REFUSED)。</p>
        </section>
        <section class="- topic/section section"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul" id="api_ichannel_unpublish__d88e74">
       <li class="- topic/li li">0: 方法调用成功。</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败。<ul class="- topic/ul ul">
      <li class="- topic/li li">-5(ERR_REFUSED): 调用被拒绝。</li>
  </ul></li>
   </ul>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title12" id="api_ichannel_channelId">
    <h2 class="- topic/title title topictitle2" id="ariaid-title12"><a href="class_ichannel.aspx#api_ichannel_channelId"><span class="- topic/ph ph">channelId</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_channelId__shortdesc">获取当前频道的频道名。</span></p><section class="- topic/section section" id="api_ichannel_channelId__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong> *channelId() = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_channelId__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul" id="api_ichannel_channelId__ul_yyr_3gd_t4b">
       <li class="- topic/li li">方法调用成功，返回当前频道的频道名。</li>
       <li class="- topic/li li">方法调用失败，返回空字符串 <code class="+ topic/ph pr-d/codeph ph codeph">""</code>。</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title13" id="api_ichannel_renewtoken">
    <h2 class="- topic/title title topictitle2" id="ariaid-title13"><a href="class_ichannel.aspx#api_ichannel_renewtoken"><span class="- topic/ph ph">renewToken</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_renewtoken__d191e15">更新 Token。</span></p>
        <section class="- topic/section section" id="api_ichannel_renewtoken__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
   
   <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> renewToken(<strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong>* token) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_renewtoken__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <div class="- topic/p p">该方法用于更新 Token。如果启用了 Token 机制，过一段时间后使用的 Token 会失效。以下两种情况下，app 应重新获取 Token，然后调用
       renewToken 更新 Token，否则 SDK 无法和服务器建立连接： <ul class="- topic/ul ul">
  <li class="- topic/li li">发生 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_ontokenprivilegewillexpire" title="Token 服务即将过期回调。"><span class="- topic/keyword keyword">onTokenPrivilegeWillExpire</span></a> 回调时。</li>
  <li class="- topic/li li"><a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onconnectionstatechanged" title="网络连接状态已改变回调。"><span class="- topic/keyword keyword">onConnectionStateChanged</span></a> 回调报告 <span class="+ topic/keyword pr-d/apiname keyword apiname">CONNECTION_CHANGED_TOKEN_EXPIRED</span>(9) 时。</li>
       </ul></div>
        </section>
        <section class="- topic/section section" id="api_ichannel_renewtoken__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">token</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">新的 Token。</dd>
       
   </dl>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title14" id="api_ichannel_setencryptionsecret">
    <h2 class="- topic/title title topictitle2" id="ariaid-title14"><a href="class_ichannel.aspx#api_ichannel_setencryptionsecret"><span class="- topic/ph ph">setEncryptionSecret</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_setencryptionsecret__d268e15">启用内置加密，并设置数据加密密码。</span></p><section class="- topic/section section" id="api_ichannel_setencryptionsecret__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setEncryptionSecret(<strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong>* secret) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setencryptionsecret__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl deprecated">
       
  <dt class="- topic/dt dt dlterm">弃用：</dt>
  <dd class="- topic/dd dd">该方法自 v3.1.0 起废弃。请改用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_enableencryption" title="开启或关闭内置加密。"><span class="- topic/keyword keyword">enableEncryption</span></a> 方法。</dd>
       
   </dl>
   <p class="- topic/p p">在加入频道之前，App 需调用该方法指定 <span class="+ topic/keyword pr-d/parmname keyword parmname">secret</span> 来启用内置的加密功能，同一频道内的所有用户应设置相同的 <span class="+ topic/keyword pr-d/parmname keyword parmname">secret</span>。当用户离开频道时，该频道的 <span class="+ topic/keyword pr-d/parmname keyword parmname">secret</span> 会自动清除。如果未指定 <span class="+ topic/keyword pr-d/parmname keyword parmname">secret</span> 或将 <span class="+ topic/keyword pr-d/parmname keyword parmname">secret</span> 设置为空，则无法激活加密功能。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">请不要在旁路推流时调用此方法。</li>
  <li class="- topic/li li">为保证最佳传输效果，请确保加密后的数据大小不超过原始数据大小 + 16 字节。16 字节是 AES 通用加密模式下最大填充块大小。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setencryptionsecret__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">secret</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">加密密码。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_setencryptionsecret__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败</li>
   </ul>
        </section>
        </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title15" id="api_ichannel_setencryptionmode">
    <h2 class="- topic/title title topictitle2" id="ariaid-title15"><a href="class_ichannel.aspx#api_ichannel_setencryptionmode"><span class="- topic/ph ph">setEncryptionMode</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_setencryptionmode__d278e15">启用内置的加密方案。</span></p><section class="- topic/section section" id="api_ichannel_setencryptionmode__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setEncryptionMode(<strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong>* encryptionMode) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setencryptionmode__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl deprecated">
       
  <dt class="- topic/dt dt dlterm">弃用：</dt>
  <dd class="- topic/dd dd">该方法自 v3.1.0 起废弃。请改用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_enableencryption" title="开启或关闭内置加密。"><span class="- topic/keyword keyword">enableEncryption</span></a> 方法。</dd>
       
   </dl>
   <p class="- topic/p p">Agora Video SDK 支持内置加密方案，默认支持 AES-128-XTS。如需采用其他加密方案，可以调用本方法。同一频道内的所有用户必须设置相同的加密方式和 <span class="+ topic/keyword pr-d/parmname keyword parmname">secret</span> 才能进行通话。关于这几种加密方式的区别，请参考 AES 加密算法的相关资料。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 在调用本方法前，请先调用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_setencryptionsecret" title="启用内置加密，并设置数据加密密码。"><span class="- topic/keyword keyword">setEncryptionSecret</span></a> 启用内置加密功能。</div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setencryptionmode__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">encryptionMode</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <div class="- topic/p p">加密模式：<ul class="- topic/ul ul">
     <li class="- topic/li li">"<code class="+ topic/ph pr-d/codeph ph codeph">aes-128-xts</code>": 128 位 AES 加密，XTS 模式；</li>
     <li class="- topic/li li">"<code class="+ topic/ph pr-d/codeph ph codeph">aes-128-ecb</code>": 128 位 AES 加密，ECB 模式；</li>
     <li class="- topic/li li">"<code class="+ topic/ph pr-d/codeph ph codeph">aes-256-xts</code>": 256 位 AES 加密，XTS 模式；</li>
     <li class="- topic/li li">"": 设置为空字符串时，默认使用加密方式 "<code class="+ topic/ph pr-d/codeph ph codeph">aes-128-xts</code>"。</li>
 </ul>
      </div>
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_setencryptionmode__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败</li>
   </ul>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title16" id="api_ichannel_enableencryption">
    <h2 class="- topic/title title topictitle2" id="ariaid-title16"><a href="class_ichannel.aspx#api_ichannel_enableencryption"><span class="- topic/ph ph">enableEncryption</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_enableencryption__d134e15">开启或关闭内置加密。</span></p><section class="- topic/section section" id="api_ichannel_enableencryption__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> enableEncryption(<strong class="hl-keyword">bool</strong> enabled, <strong class="hl-keyword">const</strong> EncryptionConfig&amp; config) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_enableencryption__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl since">
       
  <dt class="- topic/dt dt dlterm">自从</dt>
  <dd class="- topic/dd dd">v3.1.0</dd>
       
   </dl>
   <p class="- topic/p p">在安全要求较高的场景下，Agora 建议你在加入频道前，调用本方法开启内置加密。</p>
   <p class="- topic/p p">同一频道内所有用户必须使用相同的加密模式和密钥。一旦所有用户都离开频道，该频道的加密密钥会自动清除。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">如果开启了内置加密，则不能使用 RTMP/RTMPS 推流功能。</li>
  <li class="- topic/li li">Agora 支持 4 种加密模式。除 <code class="+ topic/ph pr-d/codeph ph codeph">SM4_128_ECB</code> 模式外，其他加密模式都需要在集成 Android 或 iOS SDK 时，额外添加加密库文件。详见《媒体流加密》。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_enableencryption__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">enabled</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <div class="- topic/p p">是否开启内置加密：
 <ul class="- topic/ul ul">
     <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 开启</li>
     <li class="- topic/li li"><span class="- topic/ph ph">false</span>: 关闭</li>
 </ul>
      </div>
  </dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">config</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">配置内置加密模式和密钥。详见 <a class="- topic/xref xref" href="rtc_api_data_type.aspx#class_encryptionconfig" title="配置内置加密模式和密钥。"><span class="- topic/keyword keyword">EncryptionConfig</span></a>。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_enableencryption__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败 <ul class="- topic/ul ul">
      <li class="- topic/li li">-2(<code class="+ topic/ph pr-d/codeph ph codeph">ERR_INVALID_ARGUMENT</code>): 调用了无效的参数。需重新指定参数。</li>
      <li class="- topic/li li">-4(<code class="+ topic/ph pr-d/codeph ph codeph">ERR_NOT_SUPPORTED</code>):
 设置的加密模式不正确或加载外部加密库失败。需检查枚举值是否正确或重新加载外部加密库。</li>
      <li class="- topic/li li">-7(<code class="+ topic/ph pr-d/codeph ph codeph">ERR_NOT_INITIALIZED</code>): SDK 尚未初始化。需在调用 API 之前已创建 <a class="- topic/xref xref" href="class_irtcengine.aspx#class_rtcengine" title="Agora Native SDK 的基础接口类，包含应用程序调用的主要方法。"><span class="- topic/keyword keyword">IRtcEngine</span></a> 对象并完成初始化。</li>
  </ul>
       </li>
   </ul>
        </section>
        </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title17" id="api_ichannel_registerpacketobserver">
    <h2 class="- topic/title title topictitle2" id="ariaid-title17"><a href="class_ichannel.aspx#api_ichannel_registerpacketobserver"><span class="- topic/ph ph">registerPacketObserver</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_registerpacketobserver__d41e15">注册数据包观测器。</span></p><section class="- topic/section section" id="api_ichannel_registerpacketobserver__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> registerPacketObserver(IPacketObserver* observer) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_registerpacketobserver__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">该方法注册数据包观测器 (Packet Observer)。在 Agora SDK 发送/接收（语音、视频）网络包时，会回调 <a class="- topic/xref xref" href="class_ipacketobserver.aspx#class_ipacketobserver" title="IPacketObserver 定义。"><span class="- topic/keyword keyword">IPacketObserver</span></a> 定义的接口，App 可用此接口对数据做处理，例如加解密。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">处理后发送到网络的包大小不应超过 1200 字节，否则有可能发送失败。</li>
  <li class="- topic/li li">若需调用此方法，需确保接收端和发送端都调用此方法，否则会出现未定义行为（例如音频无声或视频黑屏）。</li>
  <li class="- topic/li li">若在直播场景下使用 CDN 推流、录制或储存，Agora 不建议调用此方法。</li>
  <li class="- topic/li li">你需要在加入频道前调用该方法。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_registerpacketobserver__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">observer</dt>
  <dd class="+ topic/dd pr-d/pd dd pd"><a class="- topic/xref xref" href="class_ipacketobserver.aspx#class_ipacketobserver" title="IPacketObserver 定义。"><span class="- topic/keyword keyword">IPacketObserver</span></a> 。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_registerpacketobserver__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title18" id="api_ichannel_registermediametadataobserver">
    <h2 class="- topic/title title topictitle2" id="ariaid-title18"><a href="class_ichannel.aspx#api_ichannel_registermediametadataobserver"><span class="- topic/ph ph">registerMediaMetadataObserver</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_registermediametadataobserver__d450e15">注册媒体 metadata 观测器用于接收或发送 metadata。</span></p><section class="- topic/section section" id="api_ichannel_registermediametadataobserver__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> registerMediaMetadataObserver(IMetadataObserver *observer, IMetadataObserver::METADATA_TYPE type) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_registermediametadataobserver__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">请在 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_joinchannel" title="通过 UID 加入频道。"><span class="- topic/keyword keyword">joinChannel</span></a> 前调用该方法。</li>
  <li class="- topic/li li">该方法仅适用于直播场景。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_registermediametadataobserver__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">observer</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      指向已注册的 metadata 观测器的指针。详见 <a class="- topic/xref xref" href="class_imetadataobserver.aspx#class_imetadataobserver" title="Metadata 观测器。"><span class="- topic/keyword keyword">IMetadataObserver</span></a>。
  </dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">type</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">用户希望在观测器中使用的 METADATA 类型 。目前仅支持 <span class="+ topic/keyword pr-d/apiname keyword apiname">VIDEO_METADATA</span> 。详见 <a class="- topic/xref xref" href="class_imetadataobserver.aspx#enum_metadatatype" title="观测器的 Metadata 类型。当前仅支持视频类型的 Metadata 。"><span class="- topic/keyword keyword">METADATA_TYPE</span></a>。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_registermediametadataobserver__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0：方法调用成功。</li>
       <li class="- topic/li li">&lt; 0：方法调用失败。</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title19" id="api_ichannel_setremoteuserpriority">
    <h2 class="- topic/title title topictitle2" id="ariaid-title19"><a href="class_ichannel.aspx#api_ichannel_setremoteuserpriority"><span class="- topic/ph ph">setRemoteUserPriority</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_setremoteuserpriority__d246e15">设置远端用户流的优先级。</span></p><section class="- topic/section section" id="api_ichannel_setremoteuserpriority__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setRemoteUserPriority(uid_t uid, PRIORITY_TYPE userPriority) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremoteuserpriority__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">设置远端用户的优先级。如果将某个用户的优先级设为高，那么发给这个用户的音视频流的优先级就会高于其他用户。弱网下 SDK 会优先保证高优先级用户收到的流的质量。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">目前 Agora SDK 仅允许将一名远端用户设为高优先级。</li>
  <li class="- topic/li li">该方法需要在加入频道前调用。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremoteuserpriority__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">uid</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">远端用户的 ID。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">userPriority</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">远端用户的需求优先级。详见: <span class="+ topic/keyword pr-d/apiname keyword apiname">PRIORITY_TYPE</span> 。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremoteuserpriority__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败</li>
   </ul>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title20" id="api_ichannel_setremotevoiceposition">
    <h2 class="- topic/title title topictitle2" id="ariaid-title20"><a href="class_ichannel.aspx#api_ichannel_setremotevoiceposition"><span class="- topic/ph ph">setRemoteVoicePosition</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_setremotevoiceposition__d286e15">设置远端用户的语音位置。</span></p><section class="- topic/section section" id="api_ichannel_setremotevoiceposition__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setRemoteVoicePosition(uid_t uid, <strong class="hl-keyword">double</strong> pan, <strong class="hl-keyword">double</strong> gain) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremotevoiceposition__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">设置远端用户声音的空间位置和音量，方便本地用户听声辨位。</p>
   <p class="- topic/p p">通过调用该接口设置远端用户声音出现的位置，左右声道的声音差异会产生声音的方位感，从而判断出远端用户的实时位置。在多人在线游戏场景，如吃鸡游戏中，该方法能有效增加游戏角色的方位感，模拟真实场景。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">使用该方法需要在加入频道前调用 <a class="- topic/xref xref" href="class_irtcengine.aspx#api_enablesoundpositionindication" title="开启/关闭远端用户的语音立体声。"><span class="- topic/keyword keyword">enableSoundPositionIndication</span></a> 开启远端用户的语音立体声。</li>
  <li class="- topic/li li">为获得最佳听觉体验，我们建议使用该方法时使用立体声外放。</li>
  <li class="- topic/li li">该方法需要在加入频道后调用。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremotevoiceposition__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">uid</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">远端用户的 ID</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">pan</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">设置远端用户声音的空间位置，取值范围为 [-1.0,1.0]:
      <ul class="- topic/ul ul">
 <li class="- topic/li li">(默认）0.0: 声音出现在正前方。</li>
 <li class="- topic/li li">-1.0: 声音出现在左边。</li>
 <li class="- topic/li li">1.0: 声音出现在右边。</li>
      </ul>
  </dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">gain</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">设置远端用户声音的音量，取值范围为 [0.0,100.0]，默认值为 100.0，表示该用户的原始音量。取值越小，则音量越低。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremotevoiceposition__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败</li>
   </ul>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title21" id="api_ichannel_setremoterendermode">
    <h2 class="- topic/title title topictitle2" id="ariaid-title21"><a href="class_ichannel.aspx#api_ichannel_setremoterendermode"><span class="- topic/ph ph">setRemoteRenderMode</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_setremoterendermode__d342e16">更新远端视图显示模式。</span></p><section class="- topic/section section" id="api_ichannel_setremoterendermode__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setRemoteRenderMode(uid_t userId, RENDER_MODE_TYPE renderMode, VIDEO_MIRROR_MODE_TYPE mirrorMode) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremoterendermode__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl since">
       
  <dt class="- topic/dt dt dlterm">自从</dt>
  <dd class="- topic/dd dd">v3.0.0</dd>
       
   </dl>
   <p class="- topic/p p">初始化远端用户视图后，你可以调用该方法更新远端用户视图在本地显示时的渲染和镜像模式。该方法只影响本地用户看到的视频画面。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">请在调用 <a class="- topic/xref xref" href="class_irtcengine.aspx#api_setupremotevideo" title="初始化远端用户视图。"><span class="- topic/keyword keyword">setupRemoteVideo</span></a> 方法初始化远端视图后，调用该方法。</li>
  <li class="- topic/li li">你可以在通话中多次调用该方法，多次更新远端用户视图的显示模式。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremoterendermode__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">userId</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">远端用户 ID。</p>
  </dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">renderMode</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">远端用户视图的渲染模式，详见 <a class="- topic/xref xref" href="rtc_api_data_type.aspx#enum_rendermodetype" title="视频显示模式。"><span class="- topic/keyword keyword">RENDER_MODE_TYPE</span></a>。</p>
  </dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">mirrorMode</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">远端用户视图的镜像模式，详见 <a class="- topic/xref xref" href="rtc_api_data_type.aspx#enum_videomirrormodetype" title="镜像模式类型。"><span class="- topic/keyword keyword">VIDEO_MIRROR_MODE_TYPE</span></a>。</p>
      <div class="- topic/note note note note_note"><span class="note__title">注：</span> 默认关闭远端用户的镜像模式。</div>
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremoterendermode__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0：方法调用成功。</li>
       <li class="- topic/li li">&lt;0：方法调用失败。</li>
   </ul>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title22" id="api_ichannel_setdefaultmuteallremoteaudiostreams">
    <h2 class="- topic/title title topictitle2" id="ariaid-title22"><a href="class_ichannel.aspx#api_ichannel_setdefaultmuteallremoteaudiostreams"><span class="- topic/ph ph">setDefaultMuteAllRemoteAudioStreams</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_setdefaultmuteallremoteaudiostreams__d384e15">默认取消或恢复订阅远端用户的音频流。</span></p><section class="- topic/section section" id="api_ichannel_setdefaultmuteallremoteaudiostreams__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setDefaultMuteAllRemoteAudioStreams(<strong class="hl-keyword">bool</strong> mute) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setdefaultmuteallremoteaudiostreams__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl deprecated">
       
  <dt class="- topic/dt dt dlterm">弃用：</dt>
  <dd class="- topic/dd dd">该方法自 v3.3.0 起废弃。</dd>
       
   </dl>
   <p class="- topic/p p">该方法需要在加入频道后调用。调用成功后，本地用户取消或恢复订阅调用时刻之后加入频道的远端用户。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <p class="- topic/p p">取消订阅音频流后，如果需要恢复订阅频道内的远端，可以进行如下操作：</p>
       <ul class="- topic/ul ul">
  <li class="- topic/li li">如果需要恢复订阅单个用户的音频流，调用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_muteremoteaudiostream" title="取消或恢复订阅指定远端用户的音频流。"><span class="- topic/keyword keyword">muteRemoteAudioStream</span></a> (<span class="- topic/ph ph">false</span>)，并指定你想要订阅的远端用户 ID。</li>
  <li class="- topic/li li">如果想恢复订阅多个用户的音频流，则需要多次调用 <span class="+ topic/keyword pr-d/apiname keyword apiname">muteRemoteAudioStream</span> (<span class="- topic/ph ph">false</span>)。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setdefaultmuteallremoteaudiostreams__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">mute</dt>
  <dd class="+ topic/dd pr-d/pd dd pd"><p class="- topic/p p">是否默认取消订阅远端用户的音频流：</p>
      <ul class="- topic/ul ul">
 <li class="- topic/li li"><span class="- topic/ph ph">true</span>：默认取消订阅。</li>
 <li class="- topic/li li"><span class="- topic/ph ph">false</span>：（默认）默认订阅。</li>
      </ul>
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_setdefaultmuteallremoteaudiostreams__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li"> &lt; 0: 方法调用失败</li>
   </ul>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title23" id="api_ichannel_setdefaultmuteallremotevideostreams">
    <h2 class="- topic/title title topictitle2" id="ariaid-title23"><a href="class_ichannel.aspx#api_ichannel_setdefaultmuteallremotevideostreams"><span class="- topic/ph ph">setDefaultMuteAllRemoteVideoStreams</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_setdefaultmuteallremotevideostreams__d127e15">设置是否默认停止接收视频流。</span></p><section class="- topic/section section" id="api_ichannel_setdefaultmuteallremotevideostreams__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setDefaultMuteAllRemoteVideoStreams(<strong class="hl-keyword">bool</strong> mute) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setdefaultmuteallremotevideostreams__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl deprecated">
       
  <dt class="- topic/dt dt dlterm">弃用：</dt>
  <dd class="- topic/dd dd">该方法自 v3.3.0 起废弃。</dd>
       
   </dl>
   <p class="- topic/p p">该方法在加入频道前后都可调用。如果在加入频道后调用 <span class="+ topic/keyword pr-d/apiname keyword apiname">setDefaultMuteAllRemoteVideoStreams</span>(<span class="- topic/ph ph">true</span>)，会接收不到设置后加入频道的用户的视频流。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <p class="- topic/p p">取消订阅视频流后，如果需要恢复订阅频道内的远端，可以进行如下操作：</p>
       <ul class="- topic/ul ul">
  <li class="- topic/li li">如果需要恢复订阅单个用户的视频流，调用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_muteremotevideostream" title="取消或恢复订阅指定远端用户的视频流。"><span class="- topic/keyword keyword">muteRemoteVideoStream</span></a> (<span class="- topic/ph ph">false</span>)，并指定你想要订阅的远端用户 ID。</li>
  <li class="- topic/li li">如果想恢复订阅多个用户的视频流，则需要多次调用 <span class="+ topic/keyword pr-d/apiname keyword apiname">muteRemoteVideoStream</span>
 (<span class="- topic/ph ph">false</span>)。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setdefaultmuteallremotevideostreams__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">mute</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <div class="- topic/p p">
 <ul class="- topic/ul ul">
     <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 默认停止接收所有远端视频；</li>
     <li class="- topic/li li"><span class="- topic/ph ph">false</span>: 默认接收所有远端视频（默认）。</li>
 </ul>
      </div>
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_setdefaultmuteallremotevideostreams__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败</li>
   </ul>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title24" id="api_ichannel_muteallremoteaudiostreams">
    <h2 class="- topic/title title topictitle2" id="ariaid-title24"><a href="class_ichannel.aspx#api_ichannel_muteallremoteaudiostreams"><span class="- topic/ph ph">muteAllRemoteAudioStreams</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_muteallremoteaudiostreams__d105e15">取消或恢复订阅所有远端用户的音频流。</span></p><section class="- topic/section section" id="api_ichannel_muteallremoteaudiostreams__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> muteAllRemoteAudioStreams(<strong class="hl-keyword">bool</strong> mute) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_muteallremoteaudiostreams__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">自 v3.3.0 起，成功调用该方法后，本地用户会取消或恢复订阅所有远端用户的音频流，包括在调用该方法后加入频道的用户的音频流。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">该方法需要在加入频道后调用。</li>
  <li class="- topic/li li">该方法的推荐设置详见《设置订阅状态》。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_muteallremoteaudiostreams__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">mute</dt>
  <dd class="+ topic/dd pr-d/pd dd pd"><p class="- topic/p p">是否取消订阅所有远端用户的音频流。</p>
      <ul class="- topic/ul ul">
 <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 取消订阅。</li>
 <li class="- topic/li li"><span class="- topic/ph ph">false</span>:（默认）订阅。</li>
      </ul>
  </dd>
       
   </dl>
        </section> 
        <section class="- topic/section section" id="api_ichannel_muteallremoteaudiostreams__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li"> &lt; 0: 方法调用失败</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title25" id="api_ichannel_adjustuserplaybacksignalvolume">
    <h2 class="- topic/title title topictitle2" id="ariaid-title25"><a href="class_ichannel.aspx#api_ichannel_adjustuserplaybacksignalvolume"><span class="- topic/ph ph">adjustUserPlaybackSignalVolume</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_adjustuserplaybacksignalvolume__d324e15">调节本地播放的指定远端用户信号音量。</span></p><section class="- topic/section section" id="api_ichannel_adjustuserplaybacksignalvolume__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> adjustUserPlaybackSignalVolume(uid_t userId, <strong class="hl-keyword">int</strong> volume) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_adjustuserplaybacksignalvolume__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl since">
       
  <dt class="- topic/dt dt dlterm">自从</dt>
  <dd class="- topic/dd dd">v3.0.0</dd>
       
   </dl>
   <p class="- topic/p p">你可以在通话中调用该方法调节指定远端用户在本地播放的音量。如需调节多个用户在本地播放的音量，则需多次调用该方法。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">请在加入频道后，调用该方法。</li>
  <li class="- topic/li li">该方法调节的是本地播放的指定远端用户混音后的音量。</li>
       </ul>
   </div> 
        </section>
        <section class="- topic/section section" id="api_ichannel_adjustuserplaybacksignalvolume__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm" id="api_ichannel_adjustuserplaybacksignalvolume__userId">userId</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">远端用户 ID。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">volume</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
     <p class="- topic/p p">播放音量，取值范围为 [0,100]:</p>
 <ul class="- topic/ul ul">
     <li class="- topic/li li">0: 静音</li>
     <li class="- topic/li li">100: 原始音量</li>
 </ul>
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_adjustuserplaybacksignalvolume__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt;0: 方法调用失败</li>
   </ul>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title26" id="api_ichannel_muteremoteaudiostream">
    <h2 class="- topic/title title topictitle2" id="ariaid-title26"><a href="class_ichannel.aspx#api_ichannel_muteremoteaudiostream"><span class="- topic/ph ph">muteRemoteAudioStream</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_muteremoteaudiostream__d236e15">取消或恢复订阅指定远端用户的音频流。</span></p><section class="- topic/section section" id="api_ichannel_muteremoteaudiostream__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> muteRemoteAudioStream(uid_t userId, <strong class="hl-keyword">bool</strong> mute) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_muteremoteaudiostream__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">该方法需要在加入频道后调用。</li>
  <li class="- topic/li li">该方法的推荐设置详见《设置订阅状态》。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_muteremoteaudiostream__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">userId</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">指定用户的用户 ID。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">mute</dt>
  <dd class="+ topic/dd pr-d/pd dd pd"><p class="- topic/p p">是否取消订阅指定远端用户的音频流。</p>
      <ul class="- topic/ul ul">
 <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 取消订阅。</li>
 <li class="- topic/li li"><span class="- topic/ph ph">false</span>:（默认）订阅。</li>
      </ul>
  </dd>
       
   </dl>
        </section> 
        <section class="- topic/section section" id="api_ichannel_muteremoteaudiostream__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li"> &lt; 0: 方法调用失败</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title27" id="api_ichannel_muteallremotevideostreams">
    <h2 class="- topic/title title topictitle2" id="ariaid-title27"><a href="class_ichannel.aspx#api_ichannel_muteallremotevideostreams"><span class="- topic/ph ph">muteAllRemoteVideoStreams</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_muteallremotevideostreams__d309e15">取消或恢复订阅所有远端用户的视频流。</span></p><section class="- topic/section section" id="api_ichannel_muteallremotevideostreams__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> muteAllRemoteVideoStreams(<strong class="hl-keyword">bool</strong> mute) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_muteallremotevideostreams__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">自 v3.3.0 起，成功调用该方法后，本地用户会取消或恢复订阅所有远端用户的视频流，包括在调用该方法后加入频道的用户的视频流。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">该方法需要在加入频道后调用。</li>
  <li class="- topic/li li">该方法的推荐设置详见《设置订阅状态》。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_muteallremotevideostreams__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">mute</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <div class="- topic/p p">
 <ul class="- topic/ul ul">
     <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 停止接收所有远端视频流；</li>
     <li class="- topic/li li"><span class="- topic/ph ph">false</span>: 允许接收所有远端视频流（默认）。</li>
 </ul>
      </div>
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_muteallremotevideostreams__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功。</li>
       <li class="- topic/li li"> &lt; 0: 方法调用失败。 </li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title28" id="api_ichannel_muteremotevideostream">
    <h2 class="- topic/title title topictitle2" id="ariaid-title28"><a href="class_ichannel.aspx#api_ichannel_muteremotevideostream"><span class="- topic/ph ph">muteRemoteVideoStream</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_muteremotevideostream__d184e15">取消或恢复订阅指定远端用户的视频流。</span></p><section class="- topic/section section" id="api_ichannel_muteremotevideostream__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> muteRemoteVideoStream(uid_t userId, <strong class="hl-keyword">bool</strong> mute) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_muteremotevideostream__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
        </section>
        <section class="- topic/section section" id="api_ichannel_muteremotevideostream__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">userId</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">指定用户的用户 ID。</p>
  </dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">mute</dt>
  <dd class="+ topic/dd pr-d/pd dd pd"><ul class="- topic/ul ul">
      <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 停止接收指定远端用户的视频流。</li>
      <li class="- topic/li li"><span class="- topic/ph ph">false</span>: 允许接收指定远端用户的视频流（默认）。</li>
  </ul>
      </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_muteremotevideostream__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0：方法调用成功。</li>
       <li class="- topic/li li">&lt; 0：方法调用失败。 </li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title29" id="api_ichannel_setremotevideostreamtype">
    <h2 class="- topic/title title topictitle2" id="ariaid-title29"><a href="class_ichannel.aspx#api_ichannel_setremotevideostreamtype"><span class="- topic/ph ph">setRemoteVideoStreamType</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_setremotevideostreamtype__d131e15">设置订阅的视频流类型。</span></p><section class="- topic/section section" id="api_ichannel_setremotevideostreamtype__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setRemoteVideoStreamType(uid_t userId, REMOTE_VIDEO_STREAM_TYPE streamType) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremotevideostreamtype__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">在网络条件受限的情况下，如果发送端没有调用 <a class="- topic/xref xref" href="class_irtcengine.aspx#api_enabledualstreammode" title="开关双流模式。"><span class="- topic/keyword keyword">enableDualStreamMode</span></a> (<span class="- topic/ph ph">false</span>) 关闭双流模式，接收端可以选择接收大流还是小流。其中，大流可以接为高分辨率高码率的视频流，小流则是低分辨率低码率的视频流。</p>
   <p class="- topic/p p">正常情况下，用户默认接收大流。如需接收小流，可以调用本方法进行切换。SDK 会根据视频窗口的大小动态调整对应视频流的大小，以节约带宽和计算资源。视频小流默认的宽高比和视频大流的宽高比一致。根据当前大流的宽高比，系统会自动分配小流的分辨率、帧率及码率。</p>
   <p class="- topic/p p">调用本方法的执行结果将在 <a class="- topic/xref xref" href="class_irtcengineeventhandler.aspx#api_onapicallexecuted" title="API 方法已执行回调。"><span class="- topic/keyword keyword">onApiCallExecuted</span></a> 中返回。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span>  该方法需要在加入频道后调用。如果既调用了 <span class="+ topic/keyword pr-d/apiname keyword apiname">setRemoteVideoStreamType</span>，也调用了 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_setremotedefaultvideostreamtype" title="设置默认订阅的视频流类型。"><span class="- topic/keyword keyword">setRemoteDefaultVideoStreamType</span></a>，则 SDK 以 <span class="+ topic/keyword pr-d/apiname keyword apiname">setRemoteVideoStreamType</span> 中的设置为准。</div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremotevideostreamtype__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">userId</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">用户 ID。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">streamType</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">视频流类型: <span class="+ topic/keyword pr-d/apiname keyword apiname">REMOTE_VIDEO_STREAM_TYPE</span> 。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremotevideostreamtype__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败</li>
   </ul>
        </section>
   </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title30" id="api_ichannel_setremotedefaultvideostreamtype">
    <h2 class="- topic/title title topictitle2" id="ariaid-title30"><a href="class_ichannel.aspx#api_ichannel_setremotedefaultvideostreamtype"><span class="- topic/ph ph">setRemoteDefaultVideoStreamType</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_setremotedefaultvideostreamtype__d239e15">设置默认订阅的视频流类型。</span></p><section class="- topic/section section" id="api_ichannel_setremotedefaultvideostreamtype__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setRemoteDefaultVideoStreamType(REMOTE_VIDEO_STREAM_TYPE streamType) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremotedefaultvideostreamtype__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">在网络条件受限的情况下，如果发送端没有调用 <a class="- topic/xref xref" href="class_irtcengine.aspx#api_enabledualstreammode" title="开关双流模式。"><span class="- topic/keyword keyword">enableDualStreamMode</span></a> (<span class="- topic/xref xref"><span class="- topic/keyword keyword">false</span></span>)
       关闭双流模式，接收端可以选择接收大流还是小流。其中，大流可以接为高分辨率高码率的视频流，小流则是低分辨率低码率的视频流。</p>
   <p class="- topic/p p">正常情况下，用户默认接收大流。如需默认接收所有用户的视频小流，可以调用本方法进行切换。SDK
       会根据视频窗口的大小动态调整对应视频流的大小，以节约带宽和计算资源。视频小流默认的宽高比和视频大流的宽高比一致。根据当前大流的宽高比，系统会自动分配小流的分辨率、帧率及码率。</p>
   <p class="- topic/p p">调用本方法的执行结果将在 <a class="- topic/xref xref" href="class_irtcengineeventhandler.aspx#api_onapicallexecuted" title="API 方法已执行回调。"><span class="- topic/keyword keyword">onApiCallExecuted</span></a> 中返回。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 该方法需要在加入频道后调用。如果既调用了 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_setremotevideostreamtype" title="设置订阅的视频流类型。"><span class="- topic/keyword keyword">setRemoteVideoStreamType</span></a>，也调用了 <span class="+ topic/keyword pr-d/apiname keyword apiname">setRemoteDefaultVideoStreamType</span>，则 SDK 以 <span class="+ topic/keyword pr-d/apiname keyword apiname">setRemoteVideoStreamType</span> 中的设置为准。</div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremotedefaultvideostreamtype__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">streamType</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">视频流类型: <span class="+ topic/keyword pr-d/apiname keyword apiname">REMOTE_VIDEO_STREAM_TYPE</span> 。
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_setremotedefaultvideostreamtype__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title31" id="api_api_ichannel_createdatastream1">
    <h2 class="- topic/title title topictitle2" id="ariaid-title31"><a href="class_ichannel.aspx#api_api_ichannel_createdatastream1"><span class="- topic/ph ph">createDataStream</span></a>[1/2]</h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_api_ichannel_createdatastream1__d306e16">创建数据流。</span></p><section class="- topic/section section" id="api_api_ichannel_createdatastream1__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> createDataStream(<strong class="hl-keyword">int</strong>* streamId, <strong class="hl-keyword">bool</strong> reliable, <strong class="hl-keyword">bool</strong> ordered) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_api_ichannel_createdatastream1__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl">
       
  <dt class="- topic/dt dt dlterm">弃用：</dt>
  <dd class="- topic/dd dd">该方法从 v3.3.0 起废弃。请改用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_createdatastream2" title="创建数据流。"><span class="- topic/keyword keyword">createDataStream</span></a>[2/2]。</dd>
       
   </dl>
   <p class="- topic/p p">该方法用于创建数据流。RtcEngine 生命周期内，每个用户最多只能创建 5 个数据流。频道内数据通道最多允许数据延迟 5 秒，若超过 5 秒接收方尚未收到数据流，则数据通道会向 App 报错。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">该方法需要在加入频道后调用。</li>
  <li class="- topic/li li"><span class="+ topic/keyword pr-d/parmname keyword parmname">reliable</span> 和 <span class="+ topic/keyword pr-d/parmname keyword parmname">ordered</span> 需要同时为 <span class="- topic/ph ph">true</span> 或 <span class="- topic/ph ph">false</span>。不可以一个设为 
  <span class="- topic/ph ph">true</span> 另一个设为 <span class="- topic/ph ph">false</span>。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_api_ichannel_createdatastream1__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">streamId</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">输出参数，数据流 ID。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">reliable</dt>
  <dd class="+ topic/dd pr-d/pd dd pd"><div class="- topic/p p">该数据流是否可靠：<ul class="- topic/ul ul">
      <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 接收方 5 秒内会收到发送方所发送的数据，否则会收到 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onstreammessageerror" title="接收对方数据流消息发生错误的回调。"><span class="- topic/keyword keyword">onStreamMessageError</span></a> 回调并获得相应报错信息。</li>
      <li class="- topic/li li"><span class="- topic/ph ph">false</span>: 接收方不保证收到，就算数据丢失也不会报错。</li>
  </ul></div></dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">ordered</dt>
  <dd class="+ topic/dd pr-d/pd dd pd"><div class="- topic/p p">该数据流是否有序：<ul class="- topic/ul ul">
      <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 接收方会按照发送方发送的顺序收到数据包。</li>
      <li class="- topic/li li"><span class="- topic/ph ph">false</span>: 接收方不保证按照发送方发送的顺序收到数据包。</li>
  </ul></div></dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_api_ichannel_createdatastream1__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <div class="- topic/p p"><ul class="- topic/ul ul">
       
       <li class="- topic/li li">0: 创建数据流成功。</li>
       <li class="- topic/li li">&lt; 0: 创建数据流失败。你可以参考 <a class="- topic/xref xref" href="error_rtc.aspx">错误码和警告码</a>
      进行问题排查。</li>
   </ul></div>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title32" id="api_ichannel_createdatastream2">
    <h2 class="- topic/title title topictitle2" id="ariaid-title32"><a href="class_ichannel.aspx#api_ichannel_createdatastream2"><span class="- topic/ph ph">createDataStream</span></a>[2/2]</h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_createdatastream2__d162e16">创建数据流。</span></p><section class="- topic/section section" id="api_ichannel_createdatastream2__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> createDataStream(<strong class="hl-keyword">int</strong>* streamId, DataStreamConfig&amp; config) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_createdatastream2__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl">
       
  <dt class="- topic/dt dt dlterm">自从</dt>
  <dd class="- topic/dd dd">v3.3.0。用于取代 <a class="- topic/xref xref" href="class_ichannel.aspx#api_api_ichannel_createdatastream1" title="创建数据流。"><span class="- topic/keyword keyword">createDataStream</span></a>[1/2]。</dd>
       
   </dl>
   <p class="- topic/p p">该方法用于创建数据流。每个用户在每个频道中最多只能创建 5 个数据流。</p>
   <p class="- topic/p p">相比 <span class="+ topic/keyword pr-d/apiname keyword apiname">createDataStream</span>[1/2]，该方法不支持数据可靠。接收方会丢弃超出发送时间 5 秒后的数据包。</p>
        </section>
        <section class="- topic/section section" id="api_ichannel_createdatastream2__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm" id="api_ichannel_createdatastream2__d162e77">streamId</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">输出参数，数据流 ID。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm" id="api_ichannel_createdatastream2__d162e86">config</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">数据流设置。详见 <a class="- topic/xref xref" href="rtc_api_data_type.aspx#class_datastreamconfig" title="数据流设置。"><span class="- topic/keyword keyword">DataStreamConfig</span></a>。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_createdatastream2__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 创建数据流成功。</li>
       
       <li class="- topic/li li">&lt; 0：方法调用失败。你可以参考 <a class="- topic/xref xref" href="error_rtc.aspx">错误码和警告码</a> 进行问题排查。</li>
   </ul>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title33" id="api_ichannel_sendstreammessage">
    <h2 class="- topic/title title topictitle2" id="ariaid-title33"><a href="class_ichannel.aspx#api_ichannel_sendstreammessage"><span class="- topic/ph ph">sendStreamMessage</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_sendstreammessage__d276e15">发送数据流。</span></p><section class="- topic/section section" id="api_ichannel_sendstreammessage__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> sendStreamMessage(<strong class="hl-keyword">int</strong> streamId, <strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong>* data, size_t length) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_sendstreammessage__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">该方法发送数据流消息到频道内所有用户。SDK 对该方法的实现进行了如下限制：频道内每秒最多能发送 30 个包，且每个包最大为 1 KB。
       每个客户端每秒最多能发送 6 KB 数据。频道内每人最多能同时有 5 个数据通道。</p>
   <p class="- topic/p p">成功调用该方法后，远端会触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onstreammessage" title="接收到对方数据流消息的回调。"><span class="- topic/keyword keyword">onStreamMessage</span></a> 回调，远端用户可以在该回调中获取接收到的流消息；
       若调用失败，远端会触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onstreammessageerror" title="接收对方数据流消息发生错误的回调。"><span class="- topic/keyword keyword">onStreamMessageError</span></a> 回调。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> <ul class="- topic/ul ul">
       <li class="- topic/li li">请确保在调用该方法前，已调用 <a class="- topic/xref xref" href="class_irtcengine.aspx#api_createdatastream2" title="创建数据流。"><span class="- topic/keyword keyword">createDataStream</span></a> 创建了数据通道。</li>
       <li class="- topic/li li">直播场景下，该方法仅适用于主播用户。</li>
   </ul></div>
        </section>
        <section class="- topic/section section" id="api_ichannel_sendstreammessage__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">streamId</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">数据流 ID。可以通过 <span class="+ topic/keyword pr-d/apiname keyword apiname">createDataStream</span> 获取。</dd>
       
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">data</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">自定义数据。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">length</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">数据长度。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_sendstreammessage__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功。</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败。</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title34" id="api_ichannel_addpublishstreamurl">
    <h2 class="- topic/title title topictitle2" id="ariaid-title34"><a href="class_ichannel.aspx#api_ichannel_addpublishstreamurl"><span class="- topic/ph ph">addPublishStreamUrl</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_addpublishstreamurl__d171e15">增加旁路推流地址。</span></p><section class="- topic/section section" id="api_ichannel_addpublishstreamurl__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> addPublishStreamUrl(<strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong> *url, <strong class="hl-keyword">bool</strong> transcodingEnabled) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_addpublishstreamurl__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">调用该方法后，你可以向 CDN 推送 RTMP 或 RTMPS 协议的媒体流。SDK 会在本地触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onrtmpstreamingstatechanged" title="RTMP/RTMPS 推流状态发生改变回调。"><span class="- topic/keyword keyword">onRtmpStreamingStateChanged</span></a> 回调，报告增加旁路推流地址的状态。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">请确保在成功加入频道后调用该接口。</li>
  <li class="- topic/li li">请确保已开通旁路推流的功能，详见进阶功能《推流到 CDN》中的前提条件。</li>
  <li class="- topic/li li">该方法每次只能增加一路旁路推流地址。若需推送多路流，则需多次调用该方法。</li>
  <li class="- topic/li li">在直播场景中，只有角色为主播的用户才能调用该方法。</li>
  <li class="- topic/li li">Agora 目前仅支持转码时向 CDN 推送 RTMPS 协议的媒体流。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_addpublishstreamurl__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">url</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">CDN 推流地址，格式为 RTMP。该字符长度不能超过 1024 字节。url 不支持中文字符等特殊字符。</dd>
       
       
       <dt class="+ topic/dt pr-d/pt dt pt dlterm">transcodingEnabled</dt>
       <dd class="+ topic/dd pr-d/pd dd pd">
  <ul class="- topic/ul ul">
      <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 转码（ <a class="- topic/xref xref" href="https://docs.agora.io/cn/Agora%20Platform/terms?platform=All%20Platforms#%E8%BD%AC%E7%A0%81" target="_blank" rel="external noopener">转码</a> 是指在旁路推流时对音视频流进行转码处理后再推送到其他 CDN 服务器。多适用于频道内有多个主播，需要进行混流、合图的场景）。如果设为 <span class="- topic/ph ph">true</span>，需先调用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_setlivetranscoding" title="设置直播推流转码。"><span class="- topic/keyword keyword">setLiveTranscoding</span></a> 方法。</li>
      <li class="- topic/li li"><span class="- topic/ph ph">false</span>: 不转码。</li>
  </ul>
       </dd>
   
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_addpublishstreamurl__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败
  <ul class="- topic/ul ul">
      <li class="- topic/li li"><code class="+ topic/ph pr-d/codeph ph codeph">ERR_INVALID_ARGUMENT</code> (2): URL 为空或是长度为 0 的的字符串</li>
      <li class="- topic/li li"><code class="+ topic/ph pr-d/codeph ph codeph">ERR_NOT_INITIALIZED</code> (7): 推流时未初始化引擎</li>
  </ul>
       </li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title35" id="api_ichannel_removepublishstreamurl">
    <h2 class="- topic/title title topictitle2" id="ariaid-title35"><a href="class_ichannel.aspx#api_ichannel_removepublishstreamurl"><span class="- topic/ph ph">removePublishStreamUrl</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_removepublishstreamurl__d143e15">删除旁路推流地址。</span></p><section class="- topic/section section" id="api_ichannel_removepublishstreamurl__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> removePublishStreamUrl(<strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong> *url) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_removepublishstreamurl__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">调用该方法后，SDK 会在本地触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onrtmpstreamingstatechanged" title="RTMP/RTMPS 推流状态发生改变回调。"><span class="- topic/keyword keyword">onRtmpStreamingStateChanged</span></a> 回调，报告删除旁路推流地址的状态。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">该方法每次只能删除一路旁路推流地址。若需删除多路流，则需多次调用该方法。</li>
  <li class="- topic/li li">URL 不支持中文等特殊字符。</li>
  <li class="- topic/li li">在直播场景中，只有角色为主播的用户才能调用该方法。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_removepublishstreamurl__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">url</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      待删除的旁路推流地址，格式为 RTMP。该字符长度不能超过 1024 字节。
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_removepublishstreamurl__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0：方法调用成功</li>
       <li class="- topic/li li">&lt; 0：方法调用失败</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title36" id="api_ichannel_setlivetranscoding">
    <h2 class="- topic/title title topictitle2" id="ariaid-title36"><a href="class_ichannel.aspx#api_ichannel_setlivetranscoding"><span class="- topic/ph ph">setLiveTranscoding</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_setlivetranscoding__d52e14">设置直播推流转码。</span></p><section class="- topic/section section" id="api_ichannel_setlivetranscoding__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setLiveTranscoding(<strong class="hl-keyword">const</strong> LiveTranscoding &amp;transcoding) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setlivetranscoding__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">该方法用于旁路推流的视图布局及音频设置等。调用该方法更新转码设置后本地会触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_ontranscodingupdated" title="旁路推流设置已被更新回调。"><span class="- topic/keyword keyword">onTranscodingUpdated</span></a> 回调。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">在直播场景中，只有角色为主播的用户才能调用该方法。</li>
  <li class="- topic/li li">请确保已开通旁路推流的功能，详见进阶功能《推流到 CDN》中的前提条件。</li>
  <li class="- topic/li li">首次调用该方法更新转码设置时，不会触发 <span class="+ topic/keyword pr-d/apiname keyword apiname">onTranscodingUpdated</span> 回调。</li>
  <li class="- topic/li li">该方法需要在加入频道后调用。</li>
  <li class="- topic/li li">Agora 目前仅支持转码时向 CDN 推送 RTMPS 协议的媒体流。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_setlivetranscoding__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm"></dt>
  <dd class="+ topic/dd pr-d/pd dd pd"></dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_setlivetranscoding__return_values"><h3 class="- topic/title title sectiontitle">返回</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0：方法调用成功</li>
       <li class="- topic/li li">&lt; 0：方法调用失败</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title37" id="api_ichannel_addinjectstreamurl">
    <h2 class="- topic/title title topictitle2" id="ariaid-title37"><a href="class_ichannel.aspx#api_ichannel_addinjectstreamurl"><span class="- topic/ph ph">addInjectStreamUrl</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_addinjectstreamurl__d193e15">输入在线媒体流。</span></p><section class="- topic/section section" id="api_ichannel_addinjectstreamurl__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> addInjectStreamUrl(<strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong>* url, <strong class="hl-keyword">const</strong> InjectStreamConfig&amp; config) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_addinjectstreamurl__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <div class="- topic/note note note note_note warning" id="api_ichannel_addinjectstreamurl__d193e44"><span class="note__title">注：</span> 
       客户端输入在线媒体流功能即将停服。如果你尚未集成该功能，Agora 建议你不要使用。详见<a class="- topic/xref xref" href="https://docs.agora.io/cn/Interactive%20Broadcast/rtc_sunset" target="_blank" rel="external noopener">部分服务下架计划</a>。
   </div>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
  <ul class="- topic/ul ul">
      <li class="- topic/li li">请确保已开通旁路推流的功能，详见进阶功能《推流到 CDN》中的前提条件。</li>
      <li class="- topic/li li">该方法适用于 Native SDK v2.4.1 及之后的版本。</li>
      <li class="- topic/li li">在直播场景中，只有角色为主播的用户才能调用该方法。</li>
      <li class="- topic/li li">频道内同一时间只允许输入一个在线媒体流。</li>
      <li class="- topic/li li">该方法需要在加入频道后调用。</li>
  </ul>
       </div>
   <p class="- topic/p p">该方法将正在播放的音视频作为音视频源导入到正在进行的直播中。可主要应用于赛事直播、多人看视频互动等直播场景。调用该方法后，SDK 会在本地触发 <span class="+ topic/keyword pr-d/apiname keyword apiname">onStreamInjectedStatus</span> 回调，报告输入在线媒体流的状态；成功输入媒体流后，该音视频流会出现在频道中，频道内所有用户都会收到 <span class="+ topic/keyword pr-d/apiname keyword apiname">onUserJoined</span> 回调，其中 <span class="+ topic/keyword pr-d/parmname keyword parmname">uid</span> 为 666。该音视频流会出现在频道中。</p>
        </section>
        <section class="- topic/section section" id="api_ichannel_addinjectstreamurl__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">url</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <div class="- topic/p p">添加到直播中的视频流 URL 地址。支持 RTMP、HLS、HTTP-FLV 协议传输。<ul class="- topic/ul ul">
     <li class="- topic/li li">支持的音频编码格式：AAC；</li>
     <li class="- topic/li li">支持的视频编码格式：H.264(AVC)。</li>
 </ul>
      </div>
  </dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">config</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">所添加的视频流属性定义，详见: <a class="- topic/xref xref" href="rtc_api_data_type.aspx#class_injectstreamconfig" title="InjectStreamConfig 定义。"><span class="- topic/keyword keyword">InjectStreamConfig</span></a> 。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_addinjectstreamurl__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败 <ul class="- topic/ul ul">
      <li class="- topic/li li"><code class="+ topic/ph pr-d/codeph ph codeph">ERR_INVALID_ARGUMENT</code> (2): 输入的 URL
 为空。请重新调用该方法，并确认输入的媒体流的 URL 有效。</li>
      <li class="- topic/li li"><code class="+ topic/ph pr-d/codeph ph codeph">ERR_NOT_READY</code> (3): 用户没有加入频道。</li>
      <li class="- topic/li li"><code class="+ topic/ph pr-d/codeph ph codeph">ERR_NOT_SUPPORTED</code> (4): 频道非直播场景。请调用 <a class="- topic/xref xref" href="class_irtcengine.aspx#api_setchannelprofile" title="设置频道场景。"><span class="- topic/keyword keyword">setChannelProfile</span></a> 并将频道设置为直播场景再调用该方法。</li>
      <li class="- topic/li li"><code class="+ topic/ph pr-d/codeph ph codeph">ERR_NOT_INITIALIZED</code> (7): 引擎没有初始化。请确认调用该方法前已创建 <a class="- topic/xref xref" href="class_irtcengine.aspx#class_rtcengine" title="Agora Native SDK 的基础接口类，包含应用程序调用的主要方法。"><span class="- topic/keyword keyword">IRtcEngine</span></a> 对象并完成初始化。</li>
  </ul>
       </li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title38" id="api_ichannel_removeinjectstreamurl">
    <h2 class="- topic/title title topictitle2" id="ariaid-title38"><a href="class_ichannel.aspx#api_ichannel_removeinjectstreamurl"><span class="- topic/ph ph">removeInjectStreamUrl</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_removeinjectstreamurl__d92e15">删除导入的外部媒体流。</span></p><section class="- topic/section section" id="api_ichannel_removeinjectstreamurl__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> removeInjectStreamUrl(<strong class="hl-keyword">const</strong> <strong class="hl-keyword">char</strong>* url) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_removeinjectstreamurl__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
       <div class="- topic/note note note note_note warning"><span class="note__title">注：</span> 
       客户端输入在线媒体流功能即将停服。如果你尚未集成该功能，Agora 建议你不要使用。详见<a class="- topic/xref xref" href="https://docs.agora.io/cn/Interactive%20Broadcast/rtc_sunset" target="_blank" rel="external noopener">部分服务下架计划</a>。
   </div>
       <p class="- topic/p p"> 成功删除外部视频源 URL 地址后会触发 <span class="+ topic/keyword pr-d/apiname keyword apiname">onUserOffline</span>
  回调，<span class="+ topic/keyword pr-d/parmname keyword parmname">uid</span> 为 666。</p>
        </section>
        <section class="- topic/section section" id="api_ichannel_removeinjectstreamurl__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">url</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">已导入、待删除的外部视频源 URL 地址。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_removeinjectstreamurl__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title39" id="api_ichannel_startchannelmediarelay">
    <h2 class="- topic/title title topictitle2" id="ariaid-title39"><a href="class_ichannel.aspx#api_ichannel_startchannelmediarelay"><span class="- topic/ph ph">startChannelMediaRelay</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_startchannelmediarelay__d466e15">开始跨频道媒体流转发。该方法可用于实现跨频道连麦等场景。</span></p><section class="- topic/section section" id="api_ichannel_startchannelmediarelay__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> startChannelMediaRelay(<strong class="hl-keyword">const</strong> ChannelMediaRelayConfiguration &amp;configuration) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_startchannelmediarelay__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <div class="- topic/p p">成功调用该方法后，SDK 会触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onchannelmediarelaystatechanged" title="跨频道媒体流转发状态发生改变回调。"><span class="- topic/keyword keyword">onChannelMediaRelayStateChanged</span></a> 和 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onchannelmediarelayevent" title="跨频道媒体流转发事件回调。"><span class="- topic/keyword keyword">onChannelMediaRelayEvent</span></a> 回调，并在回调中报告当前的跨频道媒体流转发状态和事件。
       <ul class="- topic/ul ul">
  <li class="- topic/li li">如果 <span class="+ topic/keyword pr-d/apiname keyword apiname">onChannelMediaRelayStateChanged</span> 回调报告 <span class="+ topic/keyword pr-d/apiname keyword apiname">RELAY_STATE_RUNNING</span> (2) 和 <span class="+ topic/keyword pr-d/apiname keyword apiname">RELAY_OK</span> (0)，且 <span class="+ topic/keyword pr-d/apiname keyword apiname">onChannelMediaRelayEvent</span> 回调报告 <span class="+ topic/keyword pr-d/apiname keyword apiname">RELAY_EVENT_PACKET_SENT_TO_DEST_CHANNEL</span> (4)， 则表示 SDK 开始在源频道和目标频道之间转发媒体流。</li>
  <li class="- topic/li li">如果 <span class="+ topic/keyword pr-d/apiname keyword apiname">onChannelMediaRelayStateChanged</span> 回调报告 <span class="+ topic/keyword pr-d/apiname keyword apiname">RELAY_STATE_FAILURE</span> (3)， 则表示跨频道媒体流转发出现异常。</li>
       </ul>
   </div>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">请在成功加入频道后调用该方法。</li>
  <li class="- topic/li li">在直播场景中，只有角色为主播的用户才能调用该方法。</li>
  <li class="- topic/li li">功调用该方法后，若你想再次调用该方法，必须先调用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_stopchannelmediarelay" title="停止跨频道媒体流转发。一旦停止，主播会退出所有目标频道。"><span class="- topic/keyword keyword">stopChannelMediaRelay</span></a> 方法退出当前的转发状态。</li>
  <li class="- topic/li li">跨频道媒体流转发功能需要<a class="- topic/xref xref" href="https://agora-ticket.agora.io/" target="_blank" rel="external noopener">提交工单</a>联系技术支持开通。</li>
  <li class="- topic/li li">该功能不支持 String 型 UID。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_startchannelmediarelay__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">configuration</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">跨频道媒体流转发参数配置。详见 <span class="- topic/xref xref"><span class="- topic/keyword keyword">ChannelMediaRelayConfiguration</span></span>。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_startchannelmediarelay__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0：方法调用成功</li>
       <li class="- topic/li li">&lt;0：方法调用失败</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title40" id="api_ichannel_updatechannelmediarelay">
    <h2 class="- topic/title title topictitle2" id="ariaid-title40"><a href="class_ichannel.aspx#api_ichannel_updatechannelmediarelay"><span class="- topic/ph ph">updateChannelMediaRelay</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_updatechannelmediarelay__d175e15">更新媒体流转发的频道。</span></p><section class="- topic/section section" id="api_ichannel_updatechannelmediarelay__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> updateChannelMediaRelay(<strong class="hl-keyword">const</strong> ChannelMediaRelayConfiguration &amp;configuration) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_updatechannelmediarelay__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">成功开始跨频道转发媒体流后，如果你希望将流转发到多个目标频道，或退出当前的转发频道，可以调用该方法。</p>
   <p class="- topic/p p">成功调用该方法后，SDK 会触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onchannelmediarelayevent" title="跨频道媒体流转发事件回调。"><span class="- topic/keyword keyword">onChannelMediaRelayEvent</span></a> 回调， 并在回调中报告状态码 <span class="+ topic/keyword pr-d/apiname keyword apiname">RELAY_EVENT_PACKET_UPDATE_DEST_CHANNEL</span> (7)。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 请在 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_startchannelmediarelay" title="开始跨频道媒体流转发。该方法可用于实现跨频道连麦等场景。"><span class="- topic/keyword keyword">startChannelMediaRelay</span></a> 方法后调用该方法，更新媒体流转发的频道。</div>
        </section>
        <section class="- topic/section section" id="api_ichannel_updatechannelmediarelay__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">configuration</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">跨频道媒体流转发参数配置。详见 <span class="- topic/xref xref"><span class="- topic/keyword keyword">ChannelMediaRelayConfiguration</span></span> 。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_updatechannelmediarelay__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0：方法调用成功</li>
       <li class="- topic/li li">&lt; 0：方法调用失败</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title41" id="api_ichannel_stopchannelmediarelay">
    <h2 class="- topic/title title topictitle2" id="ariaid-title41"><a href="class_ichannel.aspx#api_ichannel_stopchannelmediarelay"><span class="- topic/ph ph">stopChannelMediaRelay</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_stopchannelmediarelay__d110e15">停止跨频道媒体流转发。一旦停止，主播会退出所有目标频道。</span></p><section class="- topic/section section" id="api_ichannel_stopchannelmediarelay__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> stopChannelMediaRelay() = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_stopchannelmediarelay__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">成功调用该方法后，SDK 会触发 <a class="- topic/xref xref" href="class_ichanneleventhandler.aspx#api_ichannel_onchannelmediarelaystatechanged" title="跨频道媒体流转发状态发生改变回调。"><span class="- topic/keyword keyword">onChannelMediaRelayStateChanged</span></a> 回调。如果报告 <span class="+ topic/keyword pr-d/apiname keyword apiname">RELAY_STATE_IDLE</span> (0) 和 <span class="+ topic/keyword pr-d/apiname keyword apiname">RELAY_OK</span>
       (0)，则表示已停止转发媒体流。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span>  如果该方法调用不成功，SDK 会触发 <span class="+ topic/keyword pr-d/apiname keyword apiname">onChannelMediaRelayStateChanged</span> 回调，并报告状态码 <span class="+ topic/keyword pr-d/apiname keyword apiname">RELAY_ERROR_SERVER_NO_RESPONSE</span> (2) 或 <span class="+ topic/keyword pr-d/apiname keyword apiname">RELAY_ERROR_SERVER_CONNECTION_LOST</span> (8)。你可以调用 <a class="- topic/xref xref" href="class_ichannel.aspx#api_ichannel_leavechannel" title="离开频道。"><span class="- topic/keyword keyword">leaveChannel</span></a> 方法离开频道，跨频道媒体流转发会自动停止。 </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_stopchannelmediarelay__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0：方法调用成功。</li>
       <li class="- topic/li li">&lt;0：方法调用失败。</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title42" id="api_ichannel_getcallid">
    <h2 class="- topic/title title topictitle2" id="ariaid-title42"><a href="class_ichannel.aspx#api_ichannel_getcallid"><span class="- topic/ph ph">getCallId</span></a></h2>
     
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_ichannel_getcallid__d40e15">获取通话 ID。</span></p><section class="- topic/section section" id="api_ichannel_getcallid__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> getCallId(agora::util::AString&amp; callId) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_ichannel_getcallid__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">客户端在每次加入频道后会生成一个对应的 <span class="+ topic/keyword pr-d/parmname keyword parmname">callId</span>，标识该客户端的此次通话。有些方法，如 <a class="- topic/xref xref" href="class_irtcengine.aspx#api_rate" title="给通话评分。"><span class="- topic/keyword keyword">rate</span></a>、<a class="- topic/xref xref" href="class_irtcengine.aspx#api_complain" title="投诉通话质量。"><span class="- topic/keyword keyword">complain</span></a> 等，
   需要在通话结束后调用，向 SDK 提交反馈。这些方法中需要填入指定的 <span class="+ topic/keyword pr-d/parmname keyword parmname">callId</span> 参数。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 该方法需要在加入频道后调用。</div>
        </section>
        <section class="- topic/section section" id="api_ichannel_getcallid__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   
       <dl class="+ topic/dl pr-d/parml dl parml">
  
      <dt class="+ topic/dt pr-d/pt dt pt dlterm">callId</dt>
      <dd class="+ topic/dd pr-d/pd dd pd">输出参数，当前的通话 ID。</dd>
  
       </dl>
        </section>
        <section class="- topic/section section" id="api_ichannel_getcallid__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0: 方法调用成功</li>
       <li class="- topic/li li">&lt; 0: 方法调用失败</li>
   </ul>
        </section></div>
</article></article></article></main></div>
      
      
      
      
  </div>
  
      <nav role="navigation" id="wh_topic_toc" aria-label="On this page" class="col-lg-2 d-none d-lg-block navbar d-print-none"> 
 <div class=" wh_topic_toc "><div class="wh_topic_label">在本页上</div><ul><li class="topic-item"><a href="#api_ichannel_release" data-tocid="api_ichannel_release"><a href="class_ichannel.aspx#api_ichannel_release"><span class="- topic/ph ph">release</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_release__prototype" data-tocid="api_ichannel_release__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_release__return_values" data-tocid="api_ichannel_release__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_setchanneleventhandler" data-tocid="api_ichannel_setchanneleventhandler"><a href="class_ichannel.aspx#api_ichannel_setchanneleventhandler"><span class="- topic/ph ph">setChannelEventHandler</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_setchanneleventhandler__prototype" data-tocid="api_ichannel_setchanneleventhandler__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setchanneleventhandler__detailed_desc" data-tocid="api_ichannel_setchanneleventhandler__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setchanneleventhandler__parameters" data-tocid="api_ichannel_setchanneleventhandler__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setchanneleventhandler__return_values" data-tocid="api_ichannel_setchanneleventhandler__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_joinchannel" data-tocid="api_ichannel_joinchannel"><a href="class_ichannel.aspx#api_ichannel_joinchannel"><span class="- topic/ph ph">joinChannel</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_joinchannel__prototype" data-tocid="api_ichannel_joinchannel__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_joinchannel__detailed_desc" data-tocid="api_ichannel_joinchannel__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_joinchannel__parameters" data-tocid="api_ichannel_joinchannel__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_joinchannel__return_values" data-tocid="api_ichannel_joinchannel__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_joinchannelwithuseraccount" data-tocid="api_ichannel_joinchannelwithuseraccount"><a href="class_ichannel.aspx#api_ichannel_joinchannelwithuseraccount"><span class="- topic/ph ph">joinChannelWithUserAccount</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_joinchannelwithuseraccount__prototype" data-tocid="api_ichannel_joinchannelwithuseraccount__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_joinchannelwithuseraccount__detailed_desc" data-tocid="api_ichannel_joinchannelwithuseraccount__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_joinchannelwithuseraccount__parameters" data-tocid="api_ichannel_joinchannelwithuseraccount__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_joinchannelwithuseraccount__return_values" data-tocid="api_ichannel_joinchannelwithuseraccount__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_leavechannel" data-tocid="api_ichannel_leavechannel"><a href="class_ichannel.aspx#api_ichannel_leavechannel"><span class="- topic/ph ph">leaveChannel</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_leavechannel__prototype" data-tocid="api_ichannel_leavechannel__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_leavechannel__detailed_desc" data-tocid="api_ichannel_leavechannel__detailed_desc">详细描述</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_getconnectionstate" data-tocid="api_ichannel_getconnectionstate"><a href="class_ichannel.aspx#api_ichannel_getconnectionstate"><span class="- topic/ph ph">getConnectionState</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_getconnectionstate__prototype" data-tocid="api_ichannel_getconnectionstate__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_getconnectionstate__detailed_desc" data-tocid="api_ichannel_getconnectionstate__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_getconnectionstate__return_values" data-tocid="api_ichannel_getconnectionstate__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_setclientrole1" data-tocid="api_ichannel_setclientrole1"><a href="class_ichannel.aspx#api_ichannel_setclientrole1"><span class="- topic/ph ph">setClientRole1</span></a>[1/2]</a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_setclientrole1__prototype" data-tocid="api_ichannel_setclientrole1__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setclientrole1__detailed_desc" data-tocid="api_ichannel_setclientrole1__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setclientrole1__parameters" data-tocid="api_ichannel_setclientrole1__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setclientrole1__return_values" data-tocid="api_ichannel_setclientrole1__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_setclientrole2" data-tocid="api_ichannel_setclientrole2"><a href="class_ichannel.aspx#api_ichannel_setclientrole2"><span class="- topic/ph ph">setClientRole2</span></a>[2/2]</a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_setclientrole2__prototype" data-tocid="api_ichannel_setclientrole2__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setclientrole2__detailed_desc" data-tocid="api_ichannel_setclientrole2__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setclientrole2__parameters" data-tocid="api_ichannel_setclientrole2__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setclientrole2__return_values" data-tocid="api_ichannel_setclientrole2__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_publish" data-tocid="api_ichannel_publish"><a href="class_ichannel.aspx#api_ichannel_publish"><span class="- topic/ph ph">publish</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_publish__prototype" data-tocid="api_ichannel_publish__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_publish__detailed_desc" data-tocid="api_ichannel_publish__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_publish__return_values" data-tocid="api_ichannel_publish__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_unpublish" data-tocid="api_ichannel_unpublish"><a href="class_ichannel.aspx#api_ichannel_unpublish"><span class="- topic/ph ph">unpublish</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_unpublish__prototype" data-tocid="api_ichannel_unpublish__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_unpublish__detailed_desc" data-tocid="api_ichannel_unpublish__detailed_desc">详细描述</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_channelId" data-tocid="api_ichannel_channelId"><a href="class_ichannel.aspx#api_ichannel_channelId"><span class="- topic/ph ph">channelId</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_channelId__prototype" data-tocid="api_ichannel_channelId__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_channelId__return_values" data-tocid="api_ichannel_channelId__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_renewtoken" data-tocid="api_ichannel_renewtoken"><a href="class_ichannel.aspx#api_ichannel_renewtoken"><span class="- topic/ph ph">renewToken</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_renewtoken__prototype" data-tocid="api_ichannel_renewtoken__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_renewtoken__detailed_desc" data-tocid="api_ichannel_renewtoken__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_renewtoken__parameters" data-tocid="api_ichannel_renewtoken__parameters">参数</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_setencryptionsecret" data-tocid="api_ichannel_setencryptionsecret"><a href="class_ichannel.aspx#api_ichannel_setencryptionsecret"><span class="- topic/ph ph">setEncryptionSecret</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_setencryptionsecret__prototype" data-tocid="api_ichannel_setencryptionsecret__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setencryptionsecret__detailed_desc" data-tocid="api_ichannel_setencryptionsecret__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setencryptionsecret__parameters" data-tocid="api_ichannel_setencryptionsecret__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setencryptionsecret__return_values" data-tocid="api_ichannel_setencryptionsecret__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_setencryptionmode" data-tocid="api_ichannel_setencryptionmode"><a href="class_ichannel.aspx#api_ichannel_setencryptionmode"><span class="- topic/ph ph">setEncryptionMode</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_setencryptionmode__prototype" data-tocid="api_ichannel_setencryptionmode__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setencryptionmode__detailed_desc" data-tocid="api_ichannel_setencryptionmode__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setencryptionmode__parameters" data-tocid="api_ichannel_setencryptionmode__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setencryptionmode__return_values" data-tocid="api_ichannel_setencryptionmode__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_enableencryption" data-tocid="api_ichannel_enableencryption"><a href="class_ichannel.aspx#api_ichannel_enableencryption"><span class="- topic/ph ph">enableEncryption</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_enableencryption__prototype" data-tocid="api_ichannel_enableencryption__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_enableencryption__detailed_desc" data-tocid="api_ichannel_enableencryption__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_enableencryption__parameters" data-tocid="api_ichannel_enableencryption__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_enableencryption__return_values" data-tocid="api_ichannel_enableencryption__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_registerpacketobserver" data-tocid="api_ichannel_registerpacketobserver"><a href="class_ichannel.aspx#api_ichannel_registerpacketobserver"><span class="- topic/ph ph">registerPacketObserver</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_registerpacketobserver__prototype" data-tocid="api_ichannel_registerpacketobserver__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_registerpacketobserver__detailed_desc" data-tocid="api_ichannel_registerpacketobserver__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_registerpacketobserver__parameters" data-tocid="api_ichannel_registerpacketobserver__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_registerpacketobserver__return_values" data-tocid="api_ichannel_registerpacketobserver__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_registermediametadataobserver" data-tocid="api_ichannel_registermediametadataobserver"><a href="class_ichannel.aspx#api_ichannel_registermediametadataobserver"><span class="- topic/ph ph">registerMediaMetadataObserver</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_registermediametadataobserver__prototype" data-tocid="api_ichannel_registermediametadataobserver__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_registermediametadataobserver__detailed_desc" data-tocid="api_ichannel_registermediametadataobserver__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_registermediametadataobserver__parameters" data-tocid="api_ichannel_registermediametadataobserver__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_registermediametadataobserver__return_values" data-tocid="api_ichannel_registermediametadataobserver__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_setremoteuserpriority" data-tocid="api_ichannel_setremoteuserpriority"><a href="class_ichannel.aspx#api_ichannel_setremoteuserpriority"><span class="- topic/ph ph">setRemoteUserPriority</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremoteuserpriority__prototype" data-tocid="api_ichannel_setremoteuserpriority__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremoteuserpriority__detailed_desc" data-tocid="api_ichannel_setremoteuserpriority__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremoteuserpriority__parameters" data-tocid="api_ichannel_setremoteuserpriority__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremoteuserpriority__return_values" data-tocid="api_ichannel_setremoteuserpriority__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_setremotevoiceposition" data-tocid="api_ichannel_setremotevoiceposition"><a href="class_ichannel.aspx#api_ichannel_setremotevoiceposition"><span class="- topic/ph ph">setRemoteVoicePosition</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremotevoiceposition__prototype" data-tocid="api_ichannel_setremotevoiceposition__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremotevoiceposition__detailed_desc" data-tocid="api_ichannel_setremotevoiceposition__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremotevoiceposition__parameters" data-tocid="api_ichannel_setremotevoiceposition__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremotevoiceposition__return_values" data-tocid="api_ichannel_setremotevoiceposition__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_setremoterendermode" data-tocid="api_ichannel_setremoterendermode"><a href="class_ichannel.aspx#api_ichannel_setremoterendermode"><span class="- topic/ph ph">setRemoteRenderMode</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremoterendermode__prototype" data-tocid="api_ichannel_setremoterendermode__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremoterendermode__detailed_desc" data-tocid="api_ichannel_setremoterendermode__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremoterendermode__parameters" data-tocid="api_ichannel_setremoterendermode__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremoterendermode__return_values" data-tocid="api_ichannel_setremoterendermode__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_setdefaultmuteallremoteaudiostreams" data-tocid="api_ichannel_setdefaultmuteallremoteaudiostreams"><a href="class_ichannel.aspx#api_ichannel_setdefaultmuteallremoteaudiostreams"><span class="- topic/ph ph">setDefaultMuteAllRemoteAudioStreams</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_setdefaultmuteallremoteaudiostreams__prototype" data-tocid="api_ichannel_setdefaultmuteallremoteaudiostreams__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setdefaultmuteallremoteaudiostreams__detailed_desc" data-tocid="api_ichannel_setdefaultmuteallremoteaudiostreams__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setdefaultmuteallremoteaudiostreams__parameters" data-tocid="api_ichannel_setdefaultmuteallremoteaudiostreams__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setdefaultmuteallremoteaudiostreams__return_values" data-tocid="api_ichannel_setdefaultmuteallremoteaudiostreams__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_setdefaultmuteallremotevideostreams" data-tocid="api_ichannel_setdefaultmuteallremotevideostreams"><a href="class_ichannel.aspx#api_ichannel_setdefaultmuteallremotevideostreams"><span class="- topic/ph ph">setDefaultMuteAllRemoteVideoStreams</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_setdefaultmuteallremotevideostreams__prototype" data-tocid="api_ichannel_setdefaultmuteallremotevideostreams__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setdefaultmuteallremotevideostreams__detailed_desc" data-tocid="api_ichannel_setdefaultmuteallremotevideostreams__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setdefaultmuteallremotevideostreams__parameters" data-tocid="api_ichannel_setdefaultmuteallremotevideostreams__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setdefaultmuteallremotevideostreams__return_values" data-tocid="api_ichannel_setdefaultmuteallremotevideostreams__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_muteallremoteaudiostreams" data-tocid="api_ichannel_muteallremoteaudiostreams"><a href="class_ichannel.aspx#api_ichannel_muteallremoteaudiostreams"><span class="- topic/ph ph">muteAllRemoteAudioStreams</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteallremoteaudiostreams__prototype" data-tocid="api_ichannel_muteallremoteaudiostreams__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteallremoteaudiostreams__detailed_desc" data-tocid="api_ichannel_muteallremoteaudiostreams__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteallremoteaudiostreams__parameters" data-tocid="api_ichannel_muteallremoteaudiostreams__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteallremoteaudiostreams__return_values" data-tocid="api_ichannel_muteallremoteaudiostreams__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_adjustuserplaybacksignalvolume" data-tocid="api_ichannel_adjustuserplaybacksignalvolume"><a href="class_ichannel.aspx#api_ichannel_adjustuserplaybacksignalvolume"><span class="- topic/ph ph">adjustUserPlaybackSignalVolume</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_adjustuserplaybacksignalvolume__prototype" data-tocid="api_ichannel_adjustuserplaybacksignalvolume__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_adjustuserplaybacksignalvolume__detailed_desc" data-tocid="api_ichannel_adjustuserplaybacksignalvolume__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_adjustuserplaybacksignalvolume__parameters" data-tocid="api_ichannel_adjustuserplaybacksignalvolume__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_adjustuserplaybacksignalvolume__return_values" data-tocid="api_ichannel_adjustuserplaybacksignalvolume__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_muteremoteaudiostream" data-tocid="api_ichannel_muteremoteaudiostream"><a href="class_ichannel.aspx#api_ichannel_muteremoteaudiostream"><span class="- topic/ph ph">muteRemoteAudioStream</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteremoteaudiostream__prototype" data-tocid="api_ichannel_muteremoteaudiostream__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteremoteaudiostream__detailed_desc" data-tocid="api_ichannel_muteremoteaudiostream__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteremoteaudiostream__parameters" data-tocid="api_ichannel_muteremoteaudiostream__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteremoteaudiostream__return_values" data-tocid="api_ichannel_muteremoteaudiostream__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_muteallremotevideostreams" data-tocid="api_ichannel_muteallremotevideostreams"><a href="class_ichannel.aspx#api_ichannel_muteallremotevideostreams"><span class="- topic/ph ph">muteAllRemoteVideoStreams</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteallremotevideostreams__prototype" data-tocid="api_ichannel_muteallremotevideostreams__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteallremotevideostreams__detailed_desc" data-tocid="api_ichannel_muteallremotevideostreams__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteallremotevideostreams__parameters" data-tocid="api_ichannel_muteallremotevideostreams__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteallremotevideostreams__return_values" data-tocid="api_ichannel_muteallremotevideostreams__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_muteremotevideostream" data-tocid="api_ichannel_muteremotevideostream"><a href="class_ichannel.aspx#api_ichannel_muteremotevideostream"><span class="- topic/ph ph">muteRemoteVideoStream</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteremotevideostream__prototype" data-tocid="api_ichannel_muteremotevideostream__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteremotevideostream__detailed_desc" data-tocid="api_ichannel_muteremotevideostream__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteremotevideostream__parameters" data-tocid="api_ichannel_muteremotevideostream__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_muteremotevideostream__return_values" data-tocid="api_ichannel_muteremotevideostream__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_setremotevideostreamtype" data-tocid="api_ichannel_setremotevideostreamtype"><a href="class_ichannel.aspx#api_ichannel_setremotevideostreamtype"><span class="- topic/ph ph">setRemoteVideoStreamType</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremotevideostreamtype__prototype" data-tocid="api_ichannel_setremotevideostreamtype__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremotevideostreamtype__detailed_desc" data-tocid="api_ichannel_setremotevideostreamtype__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremotevideostreamtype__parameters" data-tocid="api_ichannel_setremotevideostreamtype__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremotevideostreamtype__return_values" data-tocid="api_ichannel_setremotevideostreamtype__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_setremotedefaultvideostreamtype" data-tocid="api_ichannel_setremotedefaultvideostreamtype"><a href="class_ichannel.aspx#api_ichannel_setremotedefaultvideostreamtype"><span class="- topic/ph ph">setRemoteDefaultVideoStreamType</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremotedefaultvideostreamtype__prototype" data-tocid="api_ichannel_setremotedefaultvideostreamtype__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremotedefaultvideostreamtype__detailed_desc" data-tocid="api_ichannel_setremotedefaultvideostreamtype__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremotedefaultvideostreamtype__parameters" data-tocid="api_ichannel_setremotedefaultvideostreamtype__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setremotedefaultvideostreamtype__return_values" data-tocid="api_ichannel_setremotedefaultvideostreamtype__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_api_ichannel_createdatastream1" data-tocid="api_api_ichannel_createdatastream1"><a href="class_ichannel.aspx#api_api_ichannel_createdatastream1"><span class="- topic/ph ph">createDataStream</span></a>[1/2]</a><ul><li class="section-item"><div class="section-title"><a href="#api_api_ichannel_createdatastream1__prototype" data-tocid="api_api_ichannel_createdatastream1__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_api_ichannel_createdatastream1__detailed_desc" data-tocid="api_api_ichannel_createdatastream1__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_api_ichannel_createdatastream1__parameters" data-tocid="api_api_ichannel_createdatastream1__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_api_ichannel_createdatastream1__return_values" data-tocid="api_api_ichannel_createdatastream1__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_createdatastream2" data-tocid="api_ichannel_createdatastream2"><a href="class_ichannel.aspx#api_ichannel_createdatastream2"><span class="- topic/ph ph">createDataStream</span></a>[2/2]</a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_createdatastream2__prototype" data-tocid="api_ichannel_createdatastream2__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_createdatastream2__detailed_desc" data-tocid="api_ichannel_createdatastream2__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_createdatastream2__parameters" data-tocid="api_ichannel_createdatastream2__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_createdatastream2__return_values" data-tocid="api_ichannel_createdatastream2__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_sendstreammessage" data-tocid="api_ichannel_sendstreammessage"><a href="class_ichannel.aspx#api_ichannel_sendstreammessage"><span class="- topic/ph ph">sendStreamMessage</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_sendstreammessage__prototype" data-tocid="api_ichannel_sendstreammessage__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_sendstreammessage__detailed_desc" data-tocid="api_ichannel_sendstreammessage__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_sendstreammessage__parameters" data-tocid="api_ichannel_sendstreammessage__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_sendstreammessage__return_values" data-tocid="api_ichannel_sendstreammessage__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_addpublishstreamurl" data-tocid="api_ichannel_addpublishstreamurl"><a href="class_ichannel.aspx#api_ichannel_addpublishstreamurl"><span class="- topic/ph ph">addPublishStreamUrl</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_addpublishstreamurl__prototype" data-tocid="api_ichannel_addpublishstreamurl__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_addpublishstreamurl__detailed_desc" data-tocid="api_ichannel_addpublishstreamurl__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_addpublishstreamurl__parameters" data-tocid="api_ichannel_addpublishstreamurl__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_addpublishstreamurl__return_values" data-tocid="api_ichannel_addpublishstreamurl__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_removepublishstreamurl" data-tocid="api_ichannel_removepublishstreamurl"><a href="class_ichannel.aspx#api_ichannel_removepublishstreamurl"><span class="- topic/ph ph">removePublishStreamUrl</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_removepublishstreamurl__prototype" data-tocid="api_ichannel_removepublishstreamurl__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_removepublishstreamurl__detailed_desc" data-tocid="api_ichannel_removepublishstreamurl__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_removepublishstreamurl__parameters" data-tocid="api_ichannel_removepublishstreamurl__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_removepublishstreamurl__return_values" data-tocid="api_ichannel_removepublishstreamurl__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_setlivetranscoding" data-tocid="api_ichannel_setlivetranscoding"><a href="class_ichannel.aspx#api_ichannel_setlivetranscoding"><span class="- topic/ph ph">setLiveTranscoding</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_setlivetranscoding__prototype" data-tocid="api_ichannel_setlivetranscoding__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setlivetranscoding__detailed_desc" data-tocid="api_ichannel_setlivetranscoding__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setlivetranscoding__parameters" data-tocid="api_ichannel_setlivetranscoding__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_setlivetranscoding__return_values" data-tocid="api_ichannel_setlivetranscoding__return_values">返回</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_addinjectstreamurl" data-tocid="api_ichannel_addinjectstreamurl"><a href="class_ichannel.aspx#api_ichannel_addinjectstreamurl"><span class="- topic/ph ph">addInjectStreamUrl</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_addinjectstreamurl__prototype" data-tocid="api_ichannel_addinjectstreamurl__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_addinjectstreamurl__detailed_desc" data-tocid="api_ichannel_addinjectstreamurl__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_addinjectstreamurl__parameters" data-tocid="api_ichannel_addinjectstreamurl__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_addinjectstreamurl__return_values" data-tocid="api_ichannel_addinjectstreamurl__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_removeinjectstreamurl" data-tocid="api_ichannel_removeinjectstreamurl"><a href="class_ichannel.aspx#api_ichannel_removeinjectstreamurl"><span class="- topic/ph ph">removeInjectStreamUrl</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_removeinjectstreamurl__prototype" data-tocid="api_ichannel_removeinjectstreamurl__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_removeinjectstreamurl__detailed_desc" data-tocid="api_ichannel_removeinjectstreamurl__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_removeinjectstreamurl__parameters" data-tocid="api_ichannel_removeinjectstreamurl__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_removeinjectstreamurl__return_values" data-tocid="api_ichannel_removeinjectstreamurl__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_startchannelmediarelay" data-tocid="api_ichannel_startchannelmediarelay"><a href="class_ichannel.aspx#api_ichannel_startchannelmediarelay"><span class="- topic/ph ph">startChannelMediaRelay</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_startchannelmediarelay__prototype" data-tocid="api_ichannel_startchannelmediarelay__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_startchannelmediarelay__detailed_desc" data-tocid="api_ichannel_startchannelmediarelay__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_startchannelmediarelay__parameters" data-tocid="api_ichannel_startchannelmediarelay__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_startchannelmediarelay__return_values" data-tocid="api_ichannel_startchannelmediarelay__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_updatechannelmediarelay" data-tocid="api_ichannel_updatechannelmediarelay"><a href="class_ichannel.aspx#api_ichannel_updatechannelmediarelay"><span class="- topic/ph ph">updateChannelMediaRelay</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_updatechannelmediarelay__prototype" data-tocid="api_ichannel_updatechannelmediarelay__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_updatechannelmediarelay__detailed_desc" data-tocid="api_ichannel_updatechannelmediarelay__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_updatechannelmediarelay__parameters" data-tocid="api_ichannel_updatechannelmediarelay__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_updatechannelmediarelay__return_values" data-tocid="api_ichannel_updatechannelmediarelay__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_stopchannelmediarelay" data-tocid="api_ichannel_stopchannelmediarelay"><a href="class_ichannel.aspx#api_ichannel_stopchannelmediarelay"><span class="- topic/ph ph">stopChannelMediaRelay</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_stopchannelmediarelay__prototype" data-tocid="api_ichannel_stopchannelmediarelay__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_stopchannelmediarelay__detailed_desc" data-tocid="api_ichannel_stopchannelmediarelay__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_stopchannelmediarelay__return_values" data-tocid="api_ichannel_stopchannelmediarelay__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_ichannel_getcallid" data-tocid="api_ichannel_getcallid"><a href="class_ichannel.aspx#api_ichannel_getcallid"><span class="- topic/ph ph">getCallId</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_ichannel_getcallid__prototype" data-tocid="api_ichannel_getcallid__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_getcallid__detailed_desc" data-tocid="api_ichannel_getcallid__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_getcallid__parameters" data-tocid="api_ichannel_getcallid__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_ichannel_getcallid__return_values" data-tocid="api_ichannel_getcallid__return_values">返回值</a></div></li></ul></li></ul></div>
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