RTMP 网关（RTMP Gateway）服务可以让用户使用标准的推流协议把内容推流到声网，这些内容将会自动以主播的身份被发布到对应的频道内。支持的标准推流协议有 RTMP 协议 和 SRT 协议。

同时，RTMP 网关服务支持用户针对媒体流进行高级转码处理以更好地分发。

![](https://web-cdn.agora.io/docs-files/1688023666923)

## 功能描述

RTMP 网关支持以下功能：

| 功能                 | 描述                                                         |
| :------------------- | :----------------------------------------------------------- |
| 媒体输入 | 用户可以通过 RESTful API 或者本地加密算法创建推流密钥，将源流直接推入到声网的网关服务。推流成功后，该媒体流会在声网频道内自动播放，供频道内的远端用户欣赏。 |
| 多种媒体流格式/协议  | <ul><li>视频 codec：H.264、H.265</li><li>音频 codec：AAC、OPUS</li><li>推流协议：RTMP、SRT</li><li>媒体格式：FLV、MPEG-TS</li></ul> |
| 自定义转码参数       | 用户可以设置输入到频道内的音视频流是否开启转码。如果开启转码，则可以设置分辨率、帧率、码率、是否开启大小流等参数。 |
| 限定访问区域         | 用户在开通 RTMP 网关功能时，需要指定访问区域，保障媒体流的传输质量。  |

## 适用场景

RTMP 网关功能适用于超高清场景，包括但不限于：

| 场景                 | 描述                                                         |
| :------------------- | :----------------------------------------------------------- |
| 大 V 解说/明星陪看场景 | 注入高清视频源流到互动频道内，多个主播在不同的地方观看并实时互动。 |
| 低延迟分发场景        | 将内容以比 CDN 更快更稳的方式分发到观众端。  |
| 录播转直播           | 老师提前录制好授课内容并注入直播课堂中，所有学生和助教可观看老师授课，学生之间、学生与助教之间实时交流互动。 |
| 24 小时语聊房        | 在语聊房内 24 小时不间断地播放背景音乐，切换主播时背景音乐也不中断。 |

在超高清场景中，主信号一般都由内容提供方处理完毕后，通过 RTMP 协议（适用于低码率）或者 SRT 协议（适用于高码率）推到声网。RTMP 网关可以让源流以超低的耗时进入 SD-RTN™，在达到低延迟的同时保证高稳定性。

## 产品特性

RTMP 网关具有以下优势特性：

| 特性     | 描述                                                         |
| :------- | :----------------------------------------------------------- |
| 高可靠性 | 全球分布式集群部署，提供高可靠性服务。提供分区接入功能，保证每个区域的服务质量和体验。 |
| 低延迟   | 源流在到达网关后直接进入声网频道，保证主播端和观众端之间的低延迟。 |
| 安全合规 | 音视频数据实时传输过程安全有保障，不缓存、不收集用户个人信息，详情可参考[信息安全说明](https://docs.agora.io/cn/AgoraPlatform/security)。 |
| 稳定易用 | API 简单易用，能帮助开发者快速集成上手。                     |