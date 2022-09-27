Chat rooms enable real-time messaging among multiple users.

This page shows how to use the Agora Chat SDK to manage the members of a chat room in your app.

## Understand the tech

The Agora Chat SDK provides the `IAgoraChatroomManager`, `AgoraChatroomManagerDelegate`, and `AgoraChatRoom` classes for chat room management, which allows you to implement the following features:

- Remove a member from a chat room
- Retrieve the member list of a chat room
- Manage the block list of a chat room
- Manage the mute list of a chat room
- Mute and unmute all the chat room members
- Manage the chat room allow list
- Manage the owner and admins of a chat room


## Prerequisites

Before proceeding, ensure that you meet the following requirements:

- You have initialized the Agora Chat SDK. For details, see [Get Started with iOS](./agora_chat_get_started_ios?platform=iOS).
- You understand the call frequency limit of the Agora Chat APIs supported by different pricing plans as described in [Limitations](./agora_chat_limitation_ios?platform=iOS).
- You understand the number of chat rooms supported by different pricing plans as described in [Pricing Plan Details](./agora_chat_limitation?platform=iOS).


## Implementation

This section introduces how to call the APIs provided by the Agora Chat SDK to implement the features listed above.

### Manage chat room members

All chat room members can call `getChatroomMemberListFromServerWithId` to retrieve the member list of the current chat room.

```objective-c
AgoraChatError *error = nil;
[[AgoraChatClient sharedClient].roomManager getChatroomMemberListFromServerWithId:@"chatroomId" cursor:1 pageSize:20 error:&error];
```

The chat room owner and admin can call `removeMembers` to remove the specified member from the chat room. Once a member is removed, the other chat room members receive the `didDismissFromChatroom` callback. After being removed from a chat room, the chat user can join this chat room again.

```objective-c
AgoraChatError *error = nil;
[[AgoraChatClient sharedClient].roomManager removeMembers:@[@"userName"] fromChatroom:@"chatroomId" error:&error];
```


### Manage the chat room block list

The chat room owner and admins can add and remove the specified member from the chat room block list. Once a chat room member is added to the block list, this member cannot send or receive chat room messages, nor can they join the chat room again.

```objective-c
// The chat room owner or admin can call blockMembers to add the specified member to the chat room block list.
AgoraChatError *error = nil;
[[AgoraChatClient sharedClient].roomManager blockMembers:@[@"userName"] fromChatroom:@"chatroomId" error:&error];

// The chat room owner or admin can call unblockMembers to remove the specified user from the block list.
AgoraChatError *error = nil;
[[AgoraChatClient sharedClient].roomManager unblockMembers:@[@"userName"] fromChatroom:@"chatroomId" error:&error];

// The chat room owner or admin can call getChatroomBlacklistFromServerWithId to retrieve the block list of the current chat room.
AgoraChatError *error = nil;
[[AgoraChatClient sharedClient].roomManager getChatroomBlacklistFromServerWithId:@"chatroomId" pageNumber:1 pageSize:20 error:&error];
```


### Manage the chat room mute list

The chat room owner and admins can add and remove the specified member from the chat room mute list. Once a chat room member is added to the mute list, this member can no longer send chat room messages, not even after being added to the chat room allow list.

```objective-c
// The chat room owner or admin can call muteMembers to add the specified user to the chat room block list.
// The muted member and all the other chat room admins or owner receive the onMuteListAdded callback.
AgoraChatError *error = nil;
[[AgoraChatClient sharedClient].roomManager muteMembers:@[@"userName"] muteMilliseconds:-1 fromChatroom:@"chatroomId" error:&error];

// The chat room owner or admin can call unMuteChatRoomMembers to remove the specified user from the chat room mute list.
// The unmuted member and all the other chat room admins or owner receive the chatroomMuteListDidUpdate callback.
AgoraChatError *error = nil;
[[AgoraChatClient sharedClient].roomManager unmuteMembers:@[@"userName"] fromChatroom:@"chatroomId" error:&error];

// The chat room owner or admin can call getChatroomMuteListFromServerWithId to retrieve the mute list of the current chat room.
AgoraChatError *error = nil;
[[AgoraChatClient sharedClient].roomManager getChatroomMuteListFromServerWithId:@"chatroomId" pageNumber:1 pageSize:20 error:&error];
```


### Mute and unmute all chat room members

The chat room owner and admins can mute or unmute all the chat room members. Once all the members are muted, only those in the chat room allow list can send messages in the chat room.

```objective-c
// The chat room owner or admin can call muteAllMembersFromChatroom to mute all the chat room members.
// Once all the members are muted, these members receive the chatroomMuteListDidUpdate callback.
ChatClient.getInstance().chatroomManager().muteAllMembers(chatRoomId, new ValueCallBack<ChatRoom>() {
AgoraChatError *error = nil;
[AgoraChatClient.sharedClient.roomManager muteAllMembersFromChatroom:@"chatRoomId" error:&error];

// The chat room owner or admin can call unmuteAllMembersFromChatroom to unmute all the chat room members.
// Once all the members are unmuted, these members receive the chatroomMuteListDidUpdate callback.
AgoraChatError *error = nil;
[AgoraChatClient.sharedClient.roomManager unmuteAllMembersFromChatroom:@"chatRoomId" error:&error];
```


### Manage the chat room allow list

Members in the chat room allow list can send chat room messages even when the chat room owner or an admin has muted all the chat room members. However, if a member is already in the chat room mute list, adding this member to the allow list does not take effect.

```objective-c
// The chat room owner or admin can call addWhiteListMembers to add the specified member to the chat room allow list.
AgoraChatError *error = nil;  
[AgoraChatClient.sharedClient.roomManager addWhiteListMembers:@[@"userId1",@"userId2"] fromChatroom:@"aChatroomId" error:&error];

// The chat room owner or admin can call removeWhiteListMembers to remove the specified member from the chat room allow list.
AgoraChatError *error = nil;  
[AgoraChatClient.sharedClient.roomManager removeWhiteListMembers:@[@"userId1",@"userId2"] fromChatroom:@"aChatroomId" error:&error];

// Chat room members can call isMemberInWhiteListFromServerWithChatroomId to check whether they are in the chat room allow list.
AgoraChatError *error = nil;
[AgoraChatClient.sharedClient.roomManager isMemberInWhiteListFromServerWithChatroomId:@"aChatroomId" error:&error];

// The chat room owner or admin can call getChatroomWhiteListFromServerWithId to retrieve the allow list of the current chat room.
AgoraChatError *error = nil;
[AgoraChatClient.sharedClient.roomManager getChatroomWhiteListFromServerWithId:@"aChatroomId" error:&error];
```


### Manage chat room ownership and admin

The chat room owner can transfer ownership to the specified chat room member. Once ownership is transferred, the original chat room owner becomes a chat room member. The new chat room owner and the chat room admins receive the `chatroomOwnerDidUpdate` callback.

The chat room owner can add admins. Once added to the chat room admin list, the newly added admin and the other chat room admins receive the `chatroomAdminListDidUpdate` callback.

The chat room owner can remove admins. Once removed from the chat room admin list, the removed admin and the other chat room admins receive the `chatroomAdminListDidUpdate` callback.

```objective-c
// The chat room owner can call updateChatroomOwner to transfer ownership to the other chat room member.
AgoraChatError *error = nil;
[[AgoraChatClient sharedClient].roomManager updateChatroomOwner:@"chatroomId" newOwner:@"textString" error:&error];

// The chat room owner can call addAdmin to add a chat room admin.
AgoraChatError *error = nil;
[[AgoraChatClient sharedClient].roomManager addAdmin:@"userName" toChatroom:@"chatroomId" error:&error];

// The chat room owner can call removeAdmin to remove a chat room admin.
AgoraChatError *error = nil;
[[AgoraChatClient sharedClient].roomManager removeAdmin:@"userName" fromChatroom:@"chatroomId" error:&error];
```

### Listen for chat room events

For details, see [Chat Room Events](./agora_chat_chatroom_ios?platform=iOS#listen-for-chat-room-events).