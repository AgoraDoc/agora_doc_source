聊天室是支持多人沟通的即时通讯系统。聊天室属性可分为聊天室名称、描述和公告等基本属性和自定义属性（Key-Value）。若聊天室基本属性不满足业务要求，用户可增加自定义属性并同步给所有成员。

本文介绍如何管理聊天室的属性信息。

## 技术原理

即时通讯 IM SDK 提供 `ChatRoomManager` 和 `ChatRoom` 类用于聊天室属性管理，可以实现以下功能：

- 获取和更新聊天室基本属性（名称，描述和公告）；
- 获取聊天室单个、多个或所有聊天室自定义属性；
- 设置或强制设置单个或多个聊天室自定义属性；
- 删除或强制删除单个或多个聊天室自定义属性。

## 前提条件

开始前，请确保满足以下条件：

- 完成 SDK 初始化，详见 [Android 快速开始](./agora_chat_get_started_android?platform=Android)。
- 了解 [使用限制](./agora_chat_limitation?platform=Android) 中所述。
- 了解聊天室的数量限制，详见 [套餐包详情](./agora_chat_plan?platform=Android)。

## 实现方法

### 管理聊天室基本属性

#### 获取聊天室基本属性

方法示例如下：

```java
// 所有聊天室成员都可以调用 `fetchChatRoomFromServer` 来获取当前聊天室的详细信息，包括主题、公告、描述、成员类型和管理员列表。
ChatRoom chatRoom = ChatClient.getInstance().chatroomManager().fetchChatRoomFromServer(chatRoomId);
```

#### 修改聊天室名称和描述

方法示例如下：

```java
// 仅聊天室所有者和聊天室管理员可以调用 `changeChatRoomSubject` 方法设置和更新聊天室名称，聊天室名称的长度限制为 128 个字符。
ChatRoom chatRoom = ChatClient.getInstance().chatroomManager().changeChatRoomSubject(chatRoomId, newSubject);

// 仅聊天室所有者和聊天室管理员可以调用 `changeChatroomDescription` 方法设置和更新聊天室描述，聊天室描述的长度限制为 512 个字符。

ChatRoom chatRoom = ChatClient.getInstance().chatroomManager().changeChatroomDescription(chatRoomId, newDescription);
```

#### 管理聊天室公告

具体方法如下：

```java
// 聊天室所有成员均可调用 `fetchChatRoomAnnouncement` 方法获取聊天室公告。
String announcement = ChatClient.getInstance().chatroomManager().fetchChatRoomAnnouncement(chatRoomId);

// 聊天室所有者和管理员可以设置和更新公告，聊天室公告的长度限制为 512 个字符。公告更新后，所有聊天室成员都会收到 `onAnnouncementChanged` 回调。

ChatClient.getInstance().chatroomManager().updateChatRoomAnnouncement(chatRoomId, announcement);
```

### 管理聊天室自定义属性（key-value）

利用自定义属性可以存储直播聊天室的类型、狼人杀等游戏中的角色信息和游戏状态以及实现语聊房的麦位管理和同步等。聊天室自定义属性以键值对（key-value）形式存储，属性信息变更会实时同步给聊天室成员。

本节介绍如何获取、设置和删除聊天室自定义属性。

#### 获取聊天室自定义属性

##### 获取聊天室指定自定义属性

聊天室所有成员均可调用 `asyncFetchChatroomAttributesFromServe` 方法获取聊天室指定自定义属性。

示例代码如下：

```java
/**
 * 异步方法。
 *
 * @param String chatRoomId         聊天室 ID。
 * @param List<String> keyList      聊天室自定义属性的 Key 列表。传 `null` 返回所有自定义属性。
 * @param callBack                  结果回调，成功时回调 {@link ValueCallBack#onSuccess(Object)}，
 *                                  失败时回调 {@link ValueCallBack#onError(int, String)}。
 */
ChatClient.getInstance().chatroomManager().asyncFetchChatroomAttributesFromServe(conversationId, keyList, new ValueCallBack<Map<String, String>>() {
                @Override
                public void onSuccess(Map<String, String> value) {

                }

                @Override
                public void onError(int error, String errorMsg) {

                }
            });
```

##### 获取聊天室所有自定义属性

聊天室成员可以调用 `asyncFetchChatRoomAllAttributesFromSever` 方法获取聊天室所有自定义属性。

示例代码如下：

```java
/**
 * 异步方法。
 *
 * @param String chatRoomId         聊天室 ID。
 * @param callBack                  结果回调，成功时回调 {@link ValueCallBack#onSuccess(Object)}，
 *                                  失败时回调 {@link ValueCallBack#onError(int, String)}。
 */
ChatClient.getInstance().chatroomManager().asyncFetchChatRoomAllAttributesFromSever(conversationId, new ValueCallBack<Map<String, String>>() {
                @Override
                public void onSuccess(Map<String, String> value) {

                }

                @Override
                public void onError(int error, String errorMsg) {

                }
            });

```

#### 设置聊天室自定义属性

##### 设置单个聊天室属性

聊天室成员可以调用 `asyncSetChatroomAttributes` 方法设置单个聊天室自定义属性。该方法只针对未设置的自定义属性字段和更新自己设置的属性。设置后，其他聊天室成员收到 `onAttributesUpdate` 回调。

示例代码如下：

```java
/**
 * 异步方法。
 *
 * @param String  chatRoomId            聊天室 ID。
 * @param String  attributeKey          聊天室属性的 key。
 * @param String  attributeValue        聊天室属性的 value。
 * @param boolean autoDelete            当前成员退出聊天室是否自动删除该聊天室中其设置的所有聊天室自定义属性。
 *       - （默认）`true`：是；
 *       - `false`：否。
 */
ChatClient.getInstance().chatroomManager().asyncSetChatroomAttribute(conversationId,attributeKey,attributeValue,false, new CallBack() {
                @Override
                public void onSuccess() {

                }

                @Override
                public void onError(int error, String errorMsg) {

                }
            });
```

##### 强制设置单个聊天室自定义属性

设置聊天室自定义属性时，若要支持覆盖其他聊天室成员设置的自定义属性，需调用 `asyncSetChatroomAttributesForced` 方法。设置后，其他聊天室成员收到 `onAttributesUpdate` 回调。

示例代码如下：

```java
/**
 * 异步方法。
 *
 * @param String  chatRoomId            聊天室 ID。
 * @param String  attributeKey          聊天室属性的 key。
 * @param String  attributeValue        聊天室属性的 value。
 * @param boolean autoDelete            当前成员退出聊天室是否自动删除该聊天室中其设置的所有聊天室自定义属性。
 *       - （默认）`true`：是；
 *       - `false`：否。
 */
ChatClient.getInstance().chatroomManager().asyncSetChatroomAttributesForced(conversationId,attributeKey,attributeValue,false, new CallBack() {
                @Override
                public void onSuccess() {

                }

                @Override
                public void onError(int error, String errorMsg) {

                }
            });
```

##### 设置多个聊天室自定义属性

聊天室成员可以调用 `asyncSetChatroomAttributes` 方法设置多个聊天室自定义属性。该方法只能添加新属性字段以及更新当前用户已添加的属性字段。设置后，其他聊天室成员收到 `onAttributesUpdate` 回调。

示例代码如下：

```java
/**
 * 异步方法。
 *
 * @param String chatRoomId             聊天室 ID。
 * @param Map<String,String> map        聊天室自定义属性集合，为键值对（key-value）结构。
 * @param boolean autoDelete            当前成员退出聊天室是否自动删除该聊天室中其设置的所有聊天室自定义属性。
 *       - （默认）`true`：是；
 *       - `false`：否。
 */
    ChatClient.getInstance().chatroomManager().asyncSetChatroomAttributes(conversationId, map, false, new ResultCallBack<Map<String, String>>() {
                @Override
                public void onSuccess(int code,Map<String, String> value) {
                    if (code == 0){ // onSuccess 返回值 code 为 0，表明自定义属性成功添加。
                    }else { // onSuccess 返回值不为 0，表明一些自定义属性因长度超限等原因添加失败。

                    }
                }

                @Override
                public void onError(int error, String errorMsg) {

                }
            });
```

##### 强制设置多个聊天室自定义属性

设置聊天室自定义属性时，若要支持覆盖其他聊天室成员设置的自定义属性，需调用 `asyncSetChatroomAttributesForced` 方法。设置后，其他聊天室成员收到 `onAttributesUpdate` 回调。

示例代码如下：

```java
/**
 * 异步方法。
 *
 * @param String chatRoomId             聊天室 ID。
 * @param Map<String,String> map        聊天室自定义属性集合，为键值对（key-value）结构。
 * @param boolean autoDelete            当前成员退出聊天室是否自动删除该聊天室中其设置的所有聊天室自定义属性。
 *       - （默认）`true`：是；
 *       - `false`：否。
 */
    ChatClient.getInstance().chatroomManager().asyncSetChatroomAttributesForced(conversationId, map, false, new ResultCallBack<Map<String, String>>() {
                @Override
                public void onSuccess(int code,Map<String, String> value) {
                    if (code == 0){ // onSuccess 返回值 code 为 0，表明自定义属性成功添加。

                    }else { // onSuccess 返回值不为 0，表明一些自定义属性因长度超限等原因添加失败。

                    }
                }

                @Override
                public void onError(int error, String errorMsg) {

                }
            });
```

#### 删除聊天室自定义属性

##### 删除单个聊天室自定义属性

聊天室成员可以调用 `asyncRemoveChatRoomAttributesFromSever` 方法删除单个聊天室自定义属性。该方法只能删除自己设置的自定义属性。删除后，聊天室其他成员收到 `onAttributesRemoved` 回调。

示例代码如下：

```java
/**
 * 异步方法。
 *
 * @param String chatRoomId         聊天室 ID。
 * @param String attributeKey       聊天室属性的 key。
 * @param callBack                  结果回调，成功时回调 {@link ResultCallBack#onSuccess(int,Object)}，
 *                                  失败时回调 {@link ResultCallBack#onError(int, String)}。
 */
ChatClient.getInstance().chatroomManager().asyncRemoveChatRoomAttributeFromSever(conversationId,attributeKey, new CallBack() {
                    @Override
                    public void onSuccess() {

                    }

                    @Override
                    public void onError(int error, String errorMsg) {

                    }
                });
```

##### 强制删除单个聊天室自定义属性

删除单个聊天室自定义属性时，若要支持删除其他聊天室成员设置的自定义属性，需调用 `asyncRemoveChatRoomAttributesFromSeverForced` 方法。删除后，聊天室其他成员收到 `onAttributesRemoved` 回调。

示例代码如下：

```java
/**
 * 异步方法。
 *
 * @param String chatRoomId         聊天室 ID。
 * @param String attributeKey       聊天室属性的 key。
 * @param callBack                  结果回调，成功时回调 {@link ResultCallBack#onSuccess(int,Object)}，
 *                                  失败时回调 {@link ResultCallBack#onError(int, String)}。
 */
ChatClient.getInstance().chatroomManager().asyncRemoveChatRoomAttributeFromSeverForced(conversationId,attributeKey, new CallBack() {
                    @Override
                    public void onSuccess() {

                    }

                    @Override
                    public void onError(int error, String errorMsg) {

                    }
                });
```

##### 删除多个聊天室自定义属性

聊天室成员可以调用 `asyncRemoveChatRoomAttributesFromSever` 方法删除多个聊天室自定义属性。该方法只能删除自己设置的自定义属性。删除后，聊天室其他成员收到 `onAttributesRemoved` 回调。

示例代码如下：

```java
/**
 * 异步方法。
 *
 * @param String chatRoomId         聊天室 ID。
 * @param List<String> keyList      聊天室自定义属性的 key 列表。
 * @param callBack                  结果回调，成功时回调 {@link ResultCallBack#onSuccess(int,Object)}，
 *                                  失败时回调 {@link ResultCallBack#onError(int, String)}。
 */
ChatClient.getInstance().chatroomManager().asyncRemoveChatRoomAttributesFromSever(conversationId,keyList, new ResultCallBack<Map<String, String>>() {
                    @Override
                    public void onSuccess(int code,Map<String, String> value) {

                    }

                    @Override
                    public void onError(int error, String errorMsg) {

                    }
                });
```

##### 强制删除多个聊天室自定义属性

删除多个聊天室自定义属性时，若要支持删除其他聊天室成员设置的自定义属性，需调用 `asyncRemoveChatRoomAttributesFromSeverForced` 方法。删除后，聊天室其他成员收到 `onAttributesRemoved` 回调。

示例代码如下：

```java
/**
 * 异步方法。
 *
 * @param String chatRoomId         聊天室 ID。
 * @param List<String> keyList      聊天室自定义属性的 key 列表。
 * @param callBack                  结果回调，成功时回调 {@link ResultCallBack#onSuccess(int,Object)}，
 *                                  失败时回调 {@link ResultCallBack#onError(int, String)}。
 */
ChatClient.getInstance().chatroomManager().asyncRemoveChatRoomAttributesFromSeverForced(conversationId,keyList, new ResultCallBack<Map<String, String>>() {
                    @Override
                    public void onSuccess(int code,Map<String, String> value) {

                    }

                    @Override
                    public void onError(int error, String errorMsg) {

                    }
                });
```

### 监听聊天室事件

有关详细信息，请参阅 [监听聊天室事件](./agora_chat_chatroom_android?platform=Android#监听聊天室事件)。