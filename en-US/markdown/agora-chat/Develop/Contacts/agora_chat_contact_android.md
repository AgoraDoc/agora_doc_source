After logging in to Agora Chat, users can start adding contacts and chatting with each other. They can also manage these contacts, for example, by adding, retrieving and removing contacts. They can also add the specified user to the block list to stop receiving messages from that user.

This page shows how to use the Agora Chat SDK to implement contact management.

## Understand the tech

The Agora Chat SDK uses `ContactManager` to add, remove and manage contacts. Followings are the core methods:

- `addContact`: Adds a contact.
- `acceptInvitation`: Accepts the contact invitation.
- `declineInvitation`: Declines the contact invitation.
- `deleteContact`: Deletes a contact.
- `getAllContactsFromServer`: Retrieves a list of contacts from the server.
- `addUserToBlackList`: Adds the specified user to the block list.
- `removeUserFromBlackList`: Removes the specified user from the block list.
- `getBlackListFromServer`: Retrieves a list of blocked users from the server.

## Prerequisites

Before proceeding, ensure that you meet the following requirements:

- You have integrated the Agora Chat SDK, initialized the SDK and implemented the functionality of registering accounts and login. For details, see [Get Started with Agora Chat](./agora_chat_get_started_android?platform=Android).
- You understand the API call frequency limits as described in [Limitations](./agora_chat_limitation?platform=Android).

## Implementation

This section shows how to manage contacts with the methods provided by the Agora Chat SDK.

### Manage the contact list

Use this section to understand how to send a contact invitation, listen for contact events, and accept or decline the contact invitation.

#### Send a contact invitation

Call `addContact` to add the specified user as a contact:

```java
//The parameters are the username of the contact to be added and the reason for adding
ChatClient.getInstance().contactManager().addContact(toAddUsername, reason);
```

#### Listen for contact events

Use `ContactListener` to add the following callback events. When a user receives a contact invitation, you can accept or decline the invitation. 

```java
 ChatClient.getInstance().contactManager().setContactListener(new ContactListener() {

            //The contact request is approved
            @Override
            public void onFriendRequestAccepted(String username) { }

            //contact request is rejected
            @Override
            public void onFriendRequestDeclined(String username) { }

            //Received contact invitation
            @Override
            public void onContactInvited(String username, String reason) { }

            //Call back this method when deleted
            @Override
            public void onContactDeleted(String username) { }

            //Call back this method when a contact is added
            @Override
            public void onContactAdded(String username) { }
        });
```

#### Accept or decline the contact invitation

After receiving `onContactInvited`, call `acceptInvitation` or `declineInvitation` to accept or decline the invitation.

```java
// Accept the contact invitation
ChatClient.getInstance().contactManager().acceptInvitation(username);

// Decline the contact invitation
ChatClient.getInstance().contactManager().declineInvitation(username);
```

#### Delete a contact

Call `deleteContact` to delete the specified contact. The deleted user receives the `onContactDeleted` callback.

```java
ChatClient.getInstance().contactManager().deleteContact(username);
```

#### Retrieve the contact list

To get the contact list, you can call `getAllContactsFromServer` to retrieve contacts from the server. After that, you can also call `getContactsFromLocal` to retrieve contacts from the local database.

```java
// Retrieves a list of contacts from the server
List<String> usernames = ChatClient.getInstance().contactManager().getAllContactsFromServer();

// Retrieves a list of contacts from the local database
List<String> usernames = ChatClient.getInstance().contactManager().getContactsFromLocal
```

### Manage the block list

You can add a specified user to your block list. Once you do that, you can still send chat messages to that user, but you cannot receive messages from them. 

<div class="note alert">Users can add any other chat user to their block list, regardless of whether this other user is a contact or not. A contact added to the block list remains in the contact list.</div>

#### Add a user to the block list

Call `addUserToBlackList` to add the specified user to the block list.

```java
// The effect of true and false is the same. I can send messages to users on the blacklist, but I cannot receive them when they send me messages.
ChatClient.getInstance().contactManager().addUserToBlackList(username,true);
```


#### Remove a user from the block list

To remove the specified user from the block list, call `removeUserFromBlackList`.

```java
ChatClient.getInstance().contactManager().removeUserFromBlackList(username);
```

#### Retrieve the block list from the server

To get the block list, call `getBlackListFromServer` to retrieve a list of blocked users from the server. 

```java
ChatClient.getInstance().contactManager().getBlackListFromServer();
```

After retrieving the block list from the server, you can also call `getBlackListUserNames` to retrieve the block list from the local database.

```java
ChatClient.getInstance().contactManager().getBlackListUsernames();
```