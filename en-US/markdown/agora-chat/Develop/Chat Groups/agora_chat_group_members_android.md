# Manage Chat Group Members

Chat groups enable real-time messaging among multiple users.

This page shows how to use the Agora Chat SDK to manage the members of a chat group in your app.


## Understand the tech

The Agora Chat SDK provides the `Group`, `GroupManager`, and `GroupChangeListener` classes for chat group management, which allows you to implement the following features:

- Add and remove users from a chat group
- Manage the owner and admins of a chat group
- Manage the block list of a chat group
- Manage the mute list of a chat group
- Mute and unmute all the chat group members
- Manage the allow list of a chat group


## Prerequisites

Before proceeding, ensure that you meet the following requirements:

- You have initialized the Agora Chat SDK. For details, see [Get Started with Android](./agora_chat_get_started_android?platform=Android).
- You understand the call frequency limits of the Agora Chat APIs supported by different pricing plans as described in [Limitations](./agora_chat_limitation?platform=Android).
- You understand the number of chat groups and chat group members supported by different pricing plans as described in [Pricing Plan Details](./agora_chat_plan?platform=Android).


## Implementation

This section describes how to call the APIs provided by the Agora Chat SDK to implement chat group features.

### Manage chat group members

1. Add users to a chat group.  
Whether a chat group is public or private, the chat group owner and chat group admins can add users to the chat group. As for private groups, if the type of a chat group is set to `GroupStylePrivateMemberCanInvite`, group members can invite users to join the chat group.

2. Implement chat group invitations.   
After a user is invited to join a chat group, the implementation logic varies based on the settings of the user:

    - If the user requires a group invitation confirmation, the inviter receives the `onInvitationReceived` callback. Once the user accepts the request and joins the group, the inviter receives the `onInvitationAccepted` callback and all group members receive the `onMemberJoined` callback. Otherwise, the inviter receives the `onInvitationDeclined` callback.

    - If the user does not require a group invitation confirmation, the inviter receives the `onAutoAcceptInvitationFromGroup` callback. In this case, the user automatically accepts the group invitation and receives the `onInvitationAccepted` callback. All group members receive the `onMemberJoined` callback.

3. Remove chat group members from a chat group.  
The chat group owner and chat group admins can remove chat group members from a chat group, whereas chat group members do not have this privilege. Once a group member is removed, all the other group members receive the `onMemberExited` callback.

Refer to the following sample code to add and remove a user:

```java
// The chat group owner and chat group admins can call addUsersToGroup to add users to a chat group.
ChatClient.getInstance().groupManager().addUsersToGroup(groupId, newmembers);

// Chat group members can call inviteUser to invite users to a chat group.
ChatClient.getInstance().groupManager().inviteUser(groupId, newmembers, null);

// The chat group owner and chat group admins can call removeUsersToGroup to remove group members from a chat group.
ChatClient.getInstance().groupManager().removeUserFromGroup(groupId, username);
```


### Manage chat group ownership and admin

1. Transfer the chat group ownership.  
The chat group owner can transfer ownership to the specified chat group member. Once ownership is transferred, the original chat group owner becomes a group member. All the other chat group members receive the `onOwnerChanged` callback.

2. Add chat group admins.  
The chat group owner can add admins. Once added to the chat group admin list, the newly added admin and the other chat group admins receive the `onAdminAdded` callback.

3. Remove chat group admins.  
The chat group owner can remove admins. Once removed from the chat group admin list, the removed admin and the other chat group admins receive the `onAdminRemoved` callback.

Refer to the following sample code the manage chat group ownership and admin:

```java
// The chat group owner can call changeOwner to transfer ownership to the specified chat group member.
ChatClient.getInstance().groupManager().changeOwner(groupId, newOwner);

// The chat group owner can call `addGroupAdmin` to add admins.
ChatClient.getInstance().groupManager().addGroupAdmin(groupId, admin);

// The chat group owner can call `removeGroupAdmin` to remove admins.
ChatClient.getInstance().groupManager().removeGroupAdmin(groupId, admin);
```


### Manage the chat group block list

The chat group owner and chat group admins can add or remove the specified member to the chat group block list. Once a chat group member is added to the block list, this member cannot send or receive chat group messages, nor can this member join the chat group again.

Refer to the following sample code to manage the chat group block list:

```java
// The chat group owner and admins can call blockUser to add the specified member to the chat group block list.
ChatClient.getInstance().groupManager().blockUser(groupId, username);

// The chat group owner and admins can call unblockUser to remove the specified member from the chat group block list.
ChatClient.getInstance().groupManager().unblockUser(groupId, username);

// The chat group owner and admins can call getBlockedUsers to retrieve the chat group block list.
ChatClient.getInstance().groupManager().getBlockedUsers(groupId);
```


### Manage the chat group mute list

The chat group owner and chat group admins can add or remove the specified member to the chat group mute list. Once a chat group member is added to the mute list, this member can no longer send chat group messages, not even after being added to the chat group allow list.

Refer to the following sample code to manage the chat group mute list:

```java
// The chat group owner and admins can call muteGroupMember to add the specified member to the chat group mute list. The muted member and all the other chat group admins or owner receive the onMuteListAdded callback. 
ChatClient.getInstance().groupManager().muteGroupMembers(groupId, muteMembers, duration);

// The chat group owner and admins can call unmuteGroupMember to remove the specified user from the chat group mute list. The unmuted member and all the other chat group admins or owner receive the onMuteListRemoved callback.
ChatClient.getInstance().groupManager().unMuteGroupMembers(String groupId, List<String> members);

// The chat group owner or admin can call fetchGroupMuteList to retrieve the chat group mute list.
ChatClient.getInstance().groupManager().fetchGroupMuteList(String groupId, int pageNum, int pageSize);
```


### Mute and unmute all the chat group members

The chat group owner and chat group admins can mute or unmute all the chat group members. Once all the members are muted, only those in the chat group allow list can send messages in the chat group.

Refer to the following sample code to mute and unmute all the chat group members:

```java
// The chat group owner or admin can call muteAllMembers to mute all the chat group members. Once all the members are muted, these members receive the onAllMemberMuteStateChanged callback.
public void muteAllMembers(final String groupId, final ValueCallBack<Group> callBack);

// The chat group owner or admin can call unmuteAllMembers to unmute all the chat group members. Once all the members are unmuted, these members receive the onAllMemberMuteStateChanged callback.
public void unmuteAllMembers(final String groupId, final ValueCallBack<Group> callBack);
```


### Manage the chat group allow list

Members in the chat group allow list can send chat group messages even when the chat group owner or admin has muted all chat group members. However, if a member is already in the chat group mute list, adding this member to the allow list does not take effect.

Refer to the following sample code to manage the chat group allow list:

```java
// The chat group owner or admin can call addToChatGroupWhiteList to add the specified member to the chat group allow list. Once the member is added, all the other chat group admins or owner receive the onWhiteListAdded callback.
public void addToGroupWhiteList(final String groupId, final List<String> members, final CallBack callBack);

// The chat group owner or admin can call removeFromChatGroupWhiteList to remove the specified member from the chat group list. Once the member is removed, all the other chat group admins or owner receive the onWhiteListRemoved callback.
public void removeFromGroupWhiteList(final String groupId, final List<String> members, final CallBack callBack);

// Chat group members can call checkIfInChatGroupWhiteList to check whether they are in the chat group allow list.
public void checkIfInGroupWhiteList(final String groupId, ValueCallBack<Boolean> callBack);

// The chat group owner or admin can call fetchChatGroupWhiteList to retrieve the chat group allow list.
public void fetchGroupWhiteList(final String groupId, final ValueCallBack<List<String>> callBack);
```

### Listen for chat group events

For details, see [Chat Group Events](./agora_chat_group_android?platform=Android#listen-for-chat-group-events).