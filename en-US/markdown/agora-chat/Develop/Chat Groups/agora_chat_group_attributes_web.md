# Manage Chat Group Attributes

Chat groups enable real-time messaging among multiple users.

This page shows how to use the Agora Chat SDK to manage the attributes of a chat group in your app.


## Understand the tech

The Agora Chat SDK provides the `GroupManager` and `Group` classes for chat group management, which allows you to implement the following features:

- Modify the chat group name and description
- Manage chat group announcements
- Manage chat group shared files

## Prerequisites

Before proceeding, ensure that you meet the following requirements:

- You have initialized the Agora Chat SDK. For details, see [Get Started with Web](./agora_chat_get_started_web?platform=Web).
- You understand the call frequency limits of the Agora Chat APIs supported by different pricing plans as described in [Limitations](./agora_chat_limitation?platform=Web).
- You understand the number of chat groups and chat group members supported by different pricing plans as described in [Pricing Plan Details](./agora_chat_plan?platform=Web).


## Implementation

This section describes how to call the APIs provided by the Agora Chat SDK to implement chat group features.

### Modify the chat group name and description

The chat group owner and chat group admins can modify the name and description of the chat group.

Refer to the following sample code to modify the chat group name and description:

```javascript
// The chat group owner and chat group admins can call modifyGroup to modify the name and description of a chat group.
// The name length can be up to 128 characters. The description length can be up to 512 characters.
let option = {
    groupId: "groupId",
    groupName: "groupName",
    description: "A description of group"
};
conn.modifyGroup(option).then(res => console.log(res))
```


### Manage chat group announcements

The chat group owner and chat group admins can set and update chat group announcements. Once the announcements are updated, all chat group members receive the `updateAnnouncement` callback. All chat group members can retrieve chat group announcements.

Refer to the following sample code to manage chat group announcements:

```javascript
// The chat group owner and chat group admins can call updateGroupAnnouncement to set or update the chat group announcements. 
// The announcement length can be up to 512 characters.
let option = {
    groupId: "groupId",   
    announcement: "A announcement of group"                       
};
conn.updateGroupAnnouncement(option).then(res => console.log(res))

// All chat group members can call fetchGroupAnnouncement to retrieve the chat group announcements.
let option = {
    groupId: "groupId"
};
conn.fetchGroupAnnouncement(option).then(res => console.log(res))
```


### Manage chat group shared files

All chat group members can upload or download group shared files. The chat group owner and chat group admins can delete all of the group shared files, whereas group members can only delete the shared files that they have personally uploaded.

Refer to the following sample code to manage chat group shared files:

```javascript
// All chat group members can call uploadGroupSharedFile to upload group shared files. The file size can be up to 10 MB.
// Once shared files are uploaded, group members receive the onSharedFileAdded callback.
let option = {
    groupId: "groupId",
    file: file, // <input type="file"/>Choose the file to upload and share.                         
    onFileUploadProgress: function(resp) {},   // The callback of the upload progress
    onFileUploadComplete: function(resp) {},   // The callback of the upload success
    onFileUploadError: function(e) {},         // The callback of the upload failure
    onFileUploadCanceled: function(e) {}       // The callback of the upload cancelation
};
conn.uploadGroupSharedFile(option);

// All chat group members can call downloadGroupSharedFile to delete group shared files.
let option = {
    groupId: "groupId",
    fileId: "fileId", // The ID of the file                 
    onFileDownloadComplete: function(resp) {}, // The callback of the upload success
    onFileDownloadError: function(e) {},       // The callback of the upload failure
};
conn.downloadGroupSharedFile(option);

// All chat group members can call deleteGroupSharedFile to delete group shared files.
let option = {
    groupId: "groupId",
    fileId: "fileId", // The ID of the file
};
conn.deleteGroupSharedFile(option).then(res => console.log(res))

// All chat group members can call getGroupSharedFilelist to retrieve the list of shared files in the chat group.
let option = {
    groupId: "groupId"
};
conn.getGroupSharedFilelist(option).then(res => console.log(res))
```

### Listen for chat group events

For details, see [Chat Group Events](./agora_chat_group_web?platform=Web#listen-for-chat-group-events).