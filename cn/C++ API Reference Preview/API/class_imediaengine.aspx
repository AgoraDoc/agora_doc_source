
<!DOCTYPE html
  SYSTEM "about:legacy-compat">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:whc="http://www.oxygenxml.com/webhelp/components" xml:lang="zh-cn" lang="zh-cn" whc:version="22.0">
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><meta charset="UTF-8" /><meta name="copyright" content="(C) 版权 2021" /><meta name="DC.rights.owner" content="(C) 版权 2021" /><meta name="DC.type" content="reference" /><meta name="description" content="IMediaEngine 类。" /><meta name="DC.subject" content="IMediaEngine, registerAudioFrameObserver, registerVideoFrameObserver, pushAudioFrame, pullAudioFrame, setExternalVideoSource, pushVideoFrame" /><meta name="keywords" content="IMediaEngine, registerAudioFrameObserver, registerVideoFrameObserver, pushAudioFrame, pullAudioFrame, setExternalVideoSource, pushVideoFrame" /><meta name="indexterms" content="registerAudioFrameObserver, registerVideoFrameObserver, pushAudioFrame, pushAudioFrame, pullAudioFrame, setExternalVideoSource, pushVideoFrame" /><meta name="DC.format" content="HTML5" /><meta name="DC.identifier" content="class_imediaengine" />        
      <title>IMediaEngine</title><!--  Generated with Oxygen version 23.0, build number 2020121702.  --><meta name="wh-path2root" content="../" /><meta name="wh-toc-id" content="class_imediaengine-d4991e16949" /><meta name="wh-source-relpath" content="API/class_imediaengine.dita" /><meta name="wh-out-relpath" content="API/class_imediaengine.aspx" />
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
  <div data-tooltip-position="bottom" class=" wh_breadcrumb "><ol xmlns:html="http://www.w3.org/1999/xhtml" class="d-print-none"><li><span class="home"><a href="../index.aspx"><span>主页</span></a></span></li><li><span class="topicref"><span class="title"><a href="../API/rtc_api_overview.aspx">C++ API Reference for All Platforms</a></span></span></li><li class="active"><span class="topicref" data-id="class_imediaengine"><span class="title"><a href="../API/class_imediaengine.aspx#class_imediaengine"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_imediaengine.html#class_imediaengine"><span class="ph">IMediaEngine</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph"><span class="keyword apiname">IMediaEngine</span> 类。</span></p></span></span></span></li></ol></div>

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
 <div class=" wh_publication_toc " data-tooltip-position="right"><ul role="tree" aria-label="Table of Contents"><span class="expand-button-action-labels"><span id="button-expand-action" aria-label="Expand"></span><span id="button-collapse-action" aria-label="Collapse"></span><span id="button-pending-action" aria-label="Pending"></span></span><li role="treeitem" aria-expanded="true"><span data-tocid="tocId-d4991e13735" class="topicref" data-state="expanded"><span role="button" tabindex="0" aria-labelledby="button-collapse-action tocId-d4991e13735-link" class="wh-expand-btn"></span><span class="title"><a href="../API/rtc_api_overview.aspx" id="tocId-d4991e13735-link">C++ API Reference for All Platforms</a></span></span><ul role="group" class="navbar-nav nav-list"><li role="treeitem"><span data-tocid="api-title-d4991e13736" class="topicref" data-id="api-title" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/rtc_api_overview.aspx" id="api-title-d4991e13736-link">API Overview</a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">声网通过全球部署的虚拟网络，提供可以灵活搭配的 API 组合，提供质量可靠的实时音视频通信。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_rtcengine-d4991e13748" class="topicref" data-id="class_rtcengine" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_irtcengine.aspx#class_rtcengine" id="class_rtcengine-d4991e13748-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_irtcengine.html#class_rtcengine"><span class="ph">IRtcEngine</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">Agora Native SDK 的基础接口类，包含应用程序调用的主要方法。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ichannel-d4991e15906" class="topicref" data-id="class_ichannel" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ichannel.aspx#class_ichannel" id="class_ichannel-d4991e15906-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ichannel.html#class_ichannel"><span class="ph">IChannel</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">调用 <a href="../API/class_irtcengine.html#api_createChannel" class="xref"><span class="keyword">createChannel</span></a> 创建一个 <span class="keyword apiname">IChannel</span> 对象。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ichanneleventhandler-d4991e16473" class="topicref" data-id="class_ichanneleventhandler" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ichanneleventhandler.aspx#class_ichanneleventhandler" id="class_ichanneleventhandler-d4991e16473-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ichanneleventhandler.html#class_ichanneleventhandler"><span class="ph">IChannelEventHandler</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph"><span class="keyword apiname">IChannelEventHandler</span> 接口类用于 SDK 向 app 发送 <a href="../API/class_ichannel.html#class_ichannel" class="xref"><span class="keyword">IChannel</span></a> 频道的回调事件通知。</span></p></span></span></span></li><li role="treeitem" class="active"><span data-tocid="class_imediaengine-d4991e16949" class="topicref" data-id="class_imediaengine" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_imediaengine.aspx#class_imediaengine" id="class_imediaengine-d4991e16949-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_imediaengine.html#class_imediaengine"><span class="ph">IMediaEngine</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph"><span class="keyword apiname">IMediaEngine</span> 类。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ipacketobserver-d4991e17061" class="topicref" data-id="class_ipacketobserver" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ipacketobserver.aspx#class_ipacketobserver" id="class_ipacketobserver-d4991e17061-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ipacketobserver.html#class_ipacketobserver"><span class="ph">IPacketObserver</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">IPacketObserver 定义。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_iaudiodevicemanager-d4991e17126" class="topicref" data-id="class_iaudiodevicemanager" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_iaudiodevicemanager.aspx#class_iaudiodevicemanager" id="class_iaudiodevicemanager-d4991e17126-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_iaudiodevicemanager.html#class_iaudiodevicemanager"><span class="ph">IAudioDeviceManager</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">音频设备管理方法。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_iaudiodevicecollection-d4991e17443" class="topicref" data-id="class_iaudiodevicecollection" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_iaudiodevicecollection.aspx#class_iaudiodevicecollection" id="class_iaudiodevicecollection-d4991e17443-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_iaudiodevicecollection.html#class_iaudiodevicecollection"><span class="ph">IAudioDeviceCollection</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">IAudioDeviceCollection 类。你可以通过该接口类获取音频设备相关的信息。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideosource-d4991e17560" class="topicref" data-id="class_ivideosource" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideosource.aspx#class_ivideosource" id="class_ivideosource-d4991e17560-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideosource.html#class_ivideosource"><span class="ph">IVideoSource</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">IVideoSource 类，可以设置自定义的视频源。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideoframeconsumer-d4991e17664" class="topicref" data-id="class_ivideoframeconsumer" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideoframeconsumer.aspx#class_ivideoframeconsumer" id="class_ivideoframeconsumer-d4991e17664-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideoframeconsumer.html#class_ivideoframeconsumer"><span class="ph">IVideoFrameConsumer</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph"><span class="keyword apiname">IVideoFrameConsumer</span> 类，用于让 SDK 接收你采集的视频帧。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideodevicemanager-d4991e17692" class="topicref" data-id="class_ivideodevicemanager" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideodevicemanager.aspx#class_ivideodevicemanager" id="class_ivideodevicemanager-d4991e17692-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideodevicemanager.html#class_ivideodevicemanager"><span class="ph">IVideoDeviceManager</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">视频设备管理方法。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideodevicecollection-d4991e17788" class="topicref" data-id="class_ivideodevicecollection" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideodevicecollection.aspx#class_ivideodevicecollection" id="class_ivideodevicecollection-d4991e17788-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideodevicecollection.html#class_ivideodevicecollection"><span class="ph">IVideoDeviceCollection</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">IVideoDeviceCollection 类。你可以通过该接口类获取视频设备相关的信息。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_rtcengineeventhandler-d4991e17857" class="topicref" data-id="class_rtcengineeventhandler" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_irtcengineeventhandler.aspx#class_rtcengineeventhandler" id="class_rtcengineeventhandler-d4991e17857-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_irtcengineeventhandler.html#class_rtcengineeventhandler"><span class="ph">IRtcEngineEventHandler</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph"><span class="keyword apiname">IRtcEngineEventHandler</span> 接口类用于 SDK 向 app 发送回调事件通知，app 通过继承该接口类的方法获取 SDK的事件通知。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_iaudioframeobserver-d4991e18897" class="topicref" data-id="class_iaudioframeobserver" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_iaudioframeobserver.aspx#class_iaudioframeobserver" id="class_iaudioframeobserver-d4991e18897-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_iaudioframeobserver.html#class_iaudioframeobserver"><span class="ph">IAudioFrameObserver</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">语音观测器。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_ivideoframeobserver-d4991e19014" class="topicref" data-id="class_ivideoframeobserver" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_ivideoframeobserver.aspx#class_ivideoframeobserver" id="class_ivideoframeobserver-d4991e19014-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_ivideoframeobserver.html#class_ivideoframeobserver"><span class="ph">IVideoFrameObserver</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">视频观测器。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="class_imetadataobserver-d4991e19199" class="topicref" data-id="class_imetadataobserver" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/class_imetadataobserver.aspx#class_imetadataobserver" id="class_imetadataobserver-d4991e19199-link"><a xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" href="../API/class_imetadataobserver.html#class_imetadataobserver"><span class="ph">IMetadataObserver</span></a></a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">Metadata 观测器。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="datatype-d4991e19289" class="topicref" data-id="datatype" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/rtc_api_data_type.aspx#datatype" id="datatype-d4991e19289-link">类型定义</a><span class="wh-tooltip"><p xmlns:toc="http://www.oxygenxml.com/ns/webhelp/toc" xmlns:xhtml="http://www.w3.org/1999/xhtml" class="shortdesc"><span class="ph">本页列出 <span class="ph">Windows</span> API 所有的类型定义。</span></p></span></span></span></li><li role="treeitem"><span data-tocid="错误码和警告码-d4991e20757" class="topicref" data-id="错误码和警告码" data-state="leaf"><span role="button" class="wh-expand-btn"></span><span class="title"><a href="../API/error_rtc.aspx" id="错误码和警告码-d4991e20757-link">错误码和警告码</a></span></span></li></ul></li></ul></div>
      </nav>
  
  
  <div class="col-lg-7 col-md-9 col-sm-12" id="wh_topic_body">
      <div class=" wh_topic_content body "><main role="main"><article role="article" aria-labelledby="ariaid-title1"><article class="nested0" aria-labelledby="ariaid-title1" id="class_imediaengine">
    <h1 class="- topic/title title topictitle1" id="ariaid-title1"><a href="class_imediaengine.aspx#class_imediaengine"><span class="- topic/ph ph">IMediaEngine</span></a></h1>
    <p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="class_imediaengine__shortdesc"><span class="+ topic/keyword pr-d/apiname keyword apiname">IMediaEngine</span> 类。</span></p>
<article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title2" id="api_registeraudioframeobserver">
    <h2 class="- topic/title title topictitle2" id="ariaid-title2"><a href="class_imediaengine.aspx#api_registeraudioframeobserver"><span class="- topic/ph ph">registerAudioFrameObserver</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_registeraudioframeobserver__shortdesc">注册语音观测器对象。</span></p><section class="- topic/section section" id="api_registeraudioframeobserver__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> registerAudioFrameObserver(IAudioFrameObserver* observer) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_registeraudioframeobserver__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">该方法用于注册语音观测器对象，即注册回调。当需要引擎给出 <a class="- topic/xref xref" href="class_iaudioframeobserver.aspx#api_onrecordaudioframe" title="获得采集的音频。"><span class="- topic/keyword keyword">onRecordAudioFrame</span></a> 或 <a class="- topic/xref xref" href="class_iaudioframeobserver.aspx#api_onplaybackaudioframe" title="获得播放的声音。"><span class="- topic/keyword keyword">onPlaybackAudioFrame</span></a>
       回调时，需要使用该方法注册回调。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 该方法需要在加入频道前调用。</div>
        </section>
        <section class="- topic/section section" id="api_registeraudioframeobserver__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">observer</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">接口对象实例。详见 <a class="- topic/xref xref" href="class_iaudioframeobserver.aspx#class_iaudioframeobserver" title="语音观测器。"><span class="- topic/keyword keyword">IAudioFrameObserver</span></a>。如果传入 <span class="- topic/ph ph">NULL</span>，则表示取消注册， 我们建议在收到 <a class="- topic/xref xref" href="class_irtcengineeventhandler.aspx#api_onleavechannel" title="离开频道回调。"><span class="- topic/keyword keyword">onLeaveChannel</span></a> 后调用，来释放语音观测器对象。</p>
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul" id="api_registeraudioframeobserver__ul_wtk_phz_r4b">
       <li class="- topic/li li">0：方法调用成功。</li>
       <li class="- topic/li li">&lt; 0：方法调用失败。</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title3" id="api_registervideoframeobserver">
    <h2 class="- topic/title title topictitle2" id="ariaid-title3"><a href="class_imediaengine.aspx#api_registervideoframeobserver"><span class="- topic/ph ph">registerVideoFrameObserver</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_registervideoframeobserver__shortdesc">注册视频观测器对象。</span></p>
        <section class="- topic/section section" id="api_registervideoframeobserver__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
   
   <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> registerVideoFrameObserver(IVideoFrameObserver* observer) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_registervideoframeobserver__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">你需要在该方法中实现一个 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#class_ivideoframeobserver" title="视频观测器。"><span class="- topic/keyword keyword">IVideoFrameObserver</span></a> 类，并根据场景需要，注册该类的回调。 成功注册视频观测器后，SDK
       会在捕捉到每个视频帧时，触发你所注册的上述回调。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">在处理回调时，你需要考虑视频帧中 <span class="+ topic/keyword pr-d/parmname keyword parmname">width</span> 和 <span class="+ topic/keyword pr-d/parmname keyword parmname">height</span>
      参数的变化，因为观测得到的视频帧可能会随以下情况变化： <ul class="- topic/ul ul" id="api_registervideoframeobserver__ul_qms_zys_r4b">
 <li class="- topic/li li">当网络状况差时，分辨率会阶梯式下降。</li>
 <li class="- topic/li li">当用户自行调整分辨率时，回调中报告的分辨率也会变化。</li>
      </ul></li>
  <li class="- topic/li li">该方法需要在加入频道前调用。</li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_registervideoframeobserver__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">observer</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">接口对象实例。如果传入 <span class="- topic/ph ph">NULL</span>，则取消注册。详见 <a class="- topic/xref xref" href="class_ivideoframeobserver.aspx#class_ivideoframeobserver" title="视频观测器。"><span class="- topic/keyword keyword">IVideoFrameObserver</span></a>。</p>
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul" id="api_registervideoframeobserver__ul_r1t_n1t_r4b">
       <li class="- topic/li li">0：方法调用成功。</li>
       <li class="- topic/li li">&lt; 0：方法调用失败。</li>
   </ul>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title4" id="api_pushaudioframe1">
    <h2 class="- topic/title title topictitle2" id="ariaid-title4"><a href="class_imediaengine.aspx#api_pushaudioframe1"><span class="- topic/ph ph">pushAudioFrame</span></a>[1/2]</h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_pushaudioframe1__shortdesc">推送外部音频帧。</span></p><section class="- topic/section section" id="api_pushaudioframe1__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> pushAudioFrame(MEDIA_SOURCE_TYPE type,
  IAudioFrameObserver::AudioFrame* frame,
  <strong class="hl-keyword">bool</strong> wrap) = <span class="hl-number">0</span>;</pre>  
  </div>
        </section>
        <section class="- topic/section section" id="api_pushaudioframe1__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <dl class="- topic/dl dl deprecated">
       
  <dt class="- topic/dt dt dlterm">弃用：</dt>
  <dd class="- topic/dd dd">已被 <a class="- topic/xref xref" href="class_imediaengine.aspx#api_pushaudioframe2" title="推送外部音频帧。"><span class="- topic/keyword keyword">pushAudioFrame</span></a>[2/2] 代替。</dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_pushaudioframe1__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">type</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">音频采集设备类型。详见 <a class="- topic/xref xref" href="rtc_api_data_type.aspx#enum_mediasourcetype" title="音频设备类型。">MEDIA_SOURCE_TYPE</a>
 。</p>
  </dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">frame</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">音频帧指针。详见 <a class="- topic/xref xref" href="class_iaudioframeobserver.aspx#class_audioframe" title="AudioFrame 定义。"><span class="- topic/keyword keyword">AudioFrame</span></a>。</dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">wrap</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <div class="- topic/p p">设置是否占位使用。声网建议用户使用默认值即可。<ul class="- topic/ul ul" id="api_pushaudioframe1__ul_ajt_j1t_r4b">
     <li class="- topic/li li"><span class="- topic/ph ph">true</span>: 占位使用。</li>
     <li class="- topic/li li"><span class="- topic/ph ph">false</span>:（默认）不占位使用。</li>
 </ul></div>
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_pushaudioframe1__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul" id="api_pushaudioframe1__ul_r1t_n1t_r4b">
       <li class="- topic/li li">0：方法调用成功。</li>
       <li class="- topic/li li">&lt; 0：方法调用失败。</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title5" id="api_pushaudioframe2">
    <h2 class="- topic/title title topictitle2" id="ariaid-title5"><a href="class_imediaengine.aspx#api_pushaudioframe2"><span class="- topic/ph ph">pushAudioFrame</span></a>[2/2]</h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_pushaudioframe2__shortdesc">推送外部音频帧。</span></p><section class="- topic/section section" id="api_pushaudioframe2__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> pushAudioFrame(IAudioFrameObserver::AudioFrame* frame) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_pushaudioframe2__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">frame</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">音频帧指针。详见 <a class="- topic/xref xref" href="class_iaudioframeobserver.aspx#class_audioframe" title="AudioFrame 定义。"><span class="- topic/keyword keyword">AudioFrame</span></a>。</p>
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_pushaudioframe2__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0：方法调用成功。</li>
       <li class="- topic/li li">&lt; 0：方法调用失败。</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title6" id="api_pullaudioframe">
    <h2 class="- topic/title title topictitle2" id="ariaid-title6"><a href="class_imediaengine.aspx#api_pullaudioframe"><span class="- topic/ph ph">pullAudioFrame</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_pullaudioframe__shortdesc">拉取远端音频数据。</span></p><section class="- topic/section section" id="api_pullaudioframe__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> pullAudioFrame(IAudioFrameObserver::AudioFrame* frame) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_pullaudioframe__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <p class="- topic/p p">使用该方法前，你需要调用 <a class="- topic/xref xref" href="class_irtcengine.aspx#api_setexternalaudiosink" title="设置外部音频渲染。"><span class="- topic/keyword keyword">setExternalAudioSink</span></a>(enabled:true) 方法通知 App 开启并设置外部渲染。</p>
   <p class="- topic/p p">调用该方法后，App 会采取主动拉取的方式获取远端已解码和混音后的音频数据，用于音频播放。</p>
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 
       <ul class="- topic/ul ul">
  <li class="- topic/li li">使用该方法后，App 将无法从 <a class="- topic/xref xref" href="class_iaudioframeobserver.aspx#api_onplaybackaudioframe" title="获得播放的声音。"><span class="- topic/keyword keyword">onPlaybackAudioFrame</span></a> 回调中获得数据。</li>
  <li class="- topic/li li">该方法和 <span class="+ topic/keyword pr-d/apiname keyword apiname">onPlaybackAudioFrame</span> 回调相比，区别在于： <ul class="- topic/ul ul">
 <li class="- topic/li li"><span class="+ topic/keyword pr-d/apiname keyword apiname">onPlaybackAudioFrame</span>：SDK 通过该回调将音频数据传输给 app。如果
     app 处理延时，可能会导致音频播放抖动。 如果 App 处理延时，可能会导致音频播放抖动。</li>
 <li class="- topic/li li"><span class="+ topic/keyword pr-d/apiname keyword apiname">pullAudioFrame</span>：App 主动拉取音频数据。通过设置音频数据， SDK
     可以调整缓存，帮助 App 处理延时，从而有效避免音频播放抖动。</li>
      </ul></li>
       </ul>
   </div>
        </section>
        <section class="- topic/section section" id="api_pullaudioframe__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">frame</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">指向 <a class="- topic/xref xref" href="class_iaudioframeobserver.aspx#class_audioframe" title="AudioFrame 定义。"><span class="- topic/keyword keyword">AudioFrame</span></a> 的指针。</p>
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_pullaudioframe__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0：方法调用成功。</li>
       <li class="- topic/li li">&lt; 0：方法调用失败。</li>
   </ul>
        </section></div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title7" id="api_setexternalvideosource">
    <h2 class="- topic/title title topictitle2" id="ariaid-title7"><a href="class_imediaengine.aspx#api_setexternalvideosource"><span class="- topic/ph ph">setExternalVideoSource</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_setexternalvideosource__shortdesc">配置外部视频源。</span></p>
        <section class="- topic/section section" id="api_setexternalvideosource__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
   
   <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> setExternalVideoSource(<strong class="hl-keyword">bool</strong> enable, <strong class="hl-keyword">bool</strong> useTexture) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_setexternalvideosource__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 该方法需要在加入频道前调用。</div>
        </section>
        <section class="- topic/section section" id="api_setexternalvideosource__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">enable</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <div class="- topic/p p">是否使用外部视频源： <ul class="- topic/ul ul">
     <li class="- topic/li li"><span class="- topic/ph ph">true</span>：使用外部视频源。</li>
     <li class="- topic/li li"><span class="- topic/ph ph">false</span>：（默认）不使用外部视频源。</li>
 </ul></div>
  </dd>
       
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">useTexture</dt>
  <dd class="+ topic/dd pr-d/pd dd pd"><div class="- topic/p p">是否使用 Texture 作为输入： <ul class="- topic/ul ul" id="api_setexternalvideosource__ul_pn4_xct_r4b">
 <li class="- topic/li li"><span class="- topic/ph ph">true</span>：使用 texture 作为输入。</li>
      <li class="- topic/li li"><span class="- topic/ph ph">false</span>：（默认）不使用 texture 作为输入。</li>
      </ul></div></dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_setexternalvideosource__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0：方法调用成功。</li>
       <li class="- topic/li li">&lt; 0：方法调用失败。</li>
   </ul>
        </section>
    </div>
</article><article class="- topic/topic reference/reference topic reference nested1" aria-labelledby="ariaid-title8" id="api_pushvideoframe">
    <h2 class="- topic/title title topictitle2" id="ariaid-title8"><a href="class_imediaengine.aspx#api_pushvideoframe"><span class="- topic/ph ph">pushVideoFrame</span></a></h2>
    
    
    <div class="- topic/body reference/refbody body refbody"><p class="- topic/shortdesc shortdesc"><span class="- topic/ph ph" id="api_pushvideoframe__shortdesc">使用 <a class="- topic/xref xref" href="rtc_api_data_type.aspx#class_externalvideoframe" title="外部视频帧。"><span class="- topic/keyword keyword">ExternalVideoFrame</span></a> 将视频帧数据传递给 Agora SDK。</span></p><section class="- topic/section section" id="api_pushvideoframe__prototype"><h3 class="- topic/title title sectiontitle">原型</h3>
        
        <div class="- topic/p p">       
      <pre class="+ topic/pre pr-d/codeblock pre codeblock language-cpp"><strong class="hl-keyword">virtual</strong> <strong class="hl-keyword">int</strong> pushVideoFrame(ExternalVideoFrame *frame) = <span class="hl-number">0</span>;</pre>   
  </div>
        </section>
        <section class="- topic/section section" id="api_pushvideoframe__detailed_desc"><h3 class="- topic/title title sectiontitle">详细描述</h3>
   
   <div class="- topic/note note note note_note"><span class="note__title">注：</span> 通信场景下，不支持 Texture 格式的视频帧，只支持非 Texture 格式的视频帧。</div>
        </section>
        <section class="- topic/section section" id="api_pushvideoframe__parameters"><h3 class="- topic/title title sectiontitle">参数</h3>
   <dl class="+ topic/dl pr-d/parml dl parml">
       
  <dt class="+ topic/dt pr-d/pt dt pt dlterm">frame</dt>
  <dd class="+ topic/dd pr-d/pd dd pd">
      <p class="- topic/p p">待传输的视频帧。详见 <a class="- topic/xref xref" href="rtc_api_data_type.aspx#class_externalvideoframe" title="外部视频帧。"><span class="- topic/keyword keyword">ExternalVideoFrame</span></a>。</p>
  </dd>
       
   </dl>
        </section>
        <section class="- topic/section section" id="api_pushvideoframe__return_values"><h3 class="- topic/title title sectiontitle">返回值</h3>
   
   <ul class="- topic/ul ul">
       <li class="- topic/li li">0：方法调用成功。</li>
       <li class="- topic/li li">&lt; 0：方法调用失败。</li>
   </ul>
        </section></div>
</article></article></article></main></div>
      
      
      
      
  </div>
  
      <nav role="navigation" id="wh_topic_toc" aria-label="On this page" class="col-lg-2 d-none d-lg-block navbar d-print-none"> 
 <div class=" wh_topic_toc "><div class="wh_topic_label">在本页上</div><ul><li class="topic-item"><a href="#api_registeraudioframeobserver" data-tocid="api_registeraudioframeobserver"><a href="class_imediaengine.aspx#api_registeraudioframeobserver"><span class="- topic/ph ph">registerAudioFrameObserver</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_registeraudioframeobserver__prototype" data-tocid="api_registeraudioframeobserver__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_registeraudioframeobserver__detailed_desc" data-tocid="api_registeraudioframeobserver__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_registeraudioframeobserver__parameters" data-tocid="api_registeraudioframeobserver__parameters">参数</a></div></li></ul></li><li class="topic-item"><a href="#api_registervideoframeobserver" data-tocid="api_registervideoframeobserver"><a href="class_imediaengine.aspx#api_registervideoframeobserver"><span class="- topic/ph ph">registerVideoFrameObserver</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_registervideoframeobserver__prototype" data-tocid="api_registervideoframeobserver__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_registervideoframeobserver__detailed_desc" data-tocid="api_registervideoframeobserver__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_registervideoframeobserver__parameters" data-tocid="api_registervideoframeobserver__parameters">参数</a></div></li></ul></li><li class="topic-item"><a href="#api_pushaudioframe1" data-tocid="api_pushaudioframe1"><a href="class_imediaengine.aspx#api_pushaudioframe1"><span class="- topic/ph ph">pushAudioFrame</span></a>[1/2]</a><ul><li class="section-item"><div class="section-title"><a href="#api_pushaudioframe1__prototype" data-tocid="api_pushaudioframe1__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_pushaudioframe1__detailed_desc" data-tocid="api_pushaudioframe1__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_pushaudioframe1__parameters" data-tocid="api_pushaudioframe1__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_pushaudioframe1__return_values" data-tocid="api_pushaudioframe1__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_pushaudioframe2" data-tocid="api_pushaudioframe2"><a href="class_imediaengine.aspx#api_pushaudioframe2"><span class="- topic/ph ph">pushAudioFrame</span></a>[2/2]</a><ul><li class="section-item"><div class="section-title"><a href="#api_pushaudioframe2__prototype" data-tocid="api_pushaudioframe2__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_pushaudioframe2__parameters" data-tocid="api_pushaudioframe2__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_pushaudioframe2__return_values" data-tocid="api_pushaudioframe2__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_pullaudioframe" data-tocid="api_pullaudioframe"><a href="class_imediaengine.aspx#api_pullaudioframe"><span class="- topic/ph ph">pullAudioFrame</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_pullaudioframe__prototype" data-tocid="api_pullaudioframe__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_pullaudioframe__detailed_desc" data-tocid="api_pullaudioframe__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_pullaudioframe__parameters" data-tocid="api_pullaudioframe__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_pullaudioframe__return_values" data-tocid="api_pullaudioframe__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_setexternalvideosource" data-tocid="api_setexternalvideosource"><a href="class_imediaengine.aspx#api_setexternalvideosource"><span class="- topic/ph ph">setExternalVideoSource</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_setexternalvideosource__prototype" data-tocid="api_setexternalvideosource__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_setexternalvideosource__detailed_desc" data-tocid="api_setexternalvideosource__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_setexternalvideosource__parameters" data-tocid="api_setexternalvideosource__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_setexternalvideosource__return_values" data-tocid="api_setexternalvideosource__return_values">返回值</a></div></li></ul></li><li class="topic-item"><a href="#api_pushvideoframe" data-tocid="api_pushvideoframe"><a href="class_imediaengine.aspx#api_pushvideoframe"><span class="- topic/ph ph">pushVideoFrame</span></a></a><ul><li class="section-item"><div class="section-title"><a href="#api_pushvideoframe__prototype" data-tocid="api_pushvideoframe__prototype">原型</a></div></li><li class="section-item"><div class="section-title"><a href="#api_pushvideoframe__detailed_desc" data-tocid="api_pushvideoframe__detailed_desc">详细描述</a></div></li><li class="section-item"><div class="section-title"><a href="#api_pushvideoframe__parameters" data-tocid="api_pushvideoframe__parameters">参数</a></div></li><li class="section-item"><div class="section-title"><a href="#api_pushvideoframe__return_values" data-tocid="api_pushvideoframe__return_values">返回值</a></div></li></ul></li></ul></div>
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