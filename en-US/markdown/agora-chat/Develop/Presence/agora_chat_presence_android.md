# Presence

The presence feature enables users to display their online status to public and detect the online status of others. Users can also customize their presence status, which adds fun and diversity to real-time chatting.

The following illustration shows the implementation of creating a custom presence status and how the presence statues look like in the contact list:

![](https://web-cdn.agora.io/docs-files/1655302046418)

This page shows how to use the Agora Chat SDK to implement presence in your project.

## Understand the tech

The Agora Chat SDK provides the `Presence`, `PresenceManager`, and `PresenceListener` classes for presence management, which allows you to implement the following features:

- Subscribe to the presence status of one or more users
- Unsubscribe from the presence status of one or more users
- Listen for presence status updates
- Publish a custom presence status
- Retrieve the list of subscriptions
- Retrieve the presence status of one or more users

The following figure shows the workflow of how clients subscribe and publish presence statuses:

![](https://web-cdn.agora.io/docs-files/1655306619037)

As shown in the figure, the workflow of presence subscription and publication is as follows:

1. User A subscribes to the presence status of User B.
2. User B publishes a presence status to public.
3. The Agora Chat server triggers an event to notify User A about the presence update of User B.


## Prerequisites

Before proceeding, ensure that your environment meets the following requirements:

- The project has integrated a version of the Agora Chat SDK later than v1.0.3 and has implemented the basic [real-time chat functionalities](./agora_chat_get_started_android).
- You understand the API call frequency limit as described in [Limitations](./agora_chat_limitation).
- You have activated the presence feature in [Agora Console](http://console.staging.agora.io/).


## Implementation

This section introduces how to implement presence functionalities in your project.

### Subscribe to the presence status of one or more users

By default, you do not subscribe to any user. To subscribe to the presence statuses of the specified users, you can call `subscribePresences`.

Once the subscription succeeds, the `onSuccess` callback is triggered, notifying you about the current statuses of the specified users synchronously. When the specified users update their presence statuses, the `onPresenceUpdated` callback is triggered, notifying you about the updated statuses asynchronously.

The following code sample shows how to subscribe to the presence status of one or more users:

```java
ChatClient.getInstance().presenceManager().subscribePresences(contactsFromServer, 1 * 24 * 3600, new ValueCallBack<List<Presence>>() {
                    @Override
                    public void onSuccess(List<Presence> presences) {
                        
                    }
                    @Override
                    public void onError(int errorCode, String errorMsg) {
                       
                    }
                });             
```

<div class="alert info"><ol><li>You can subscribe to 100 users at each call. The total subscriptions of each user cannot exceed 3,000. Once the number of subscriptions exceed the limit, the subsequent subscriptions with longer durations succeed and replace the existing subscriptions with shorter durations.<li>The subscription duration can be a maximum of 30 days. When the subscription to a user expires, you need subscribe to this user once again. If you subscribe to a user before the current subscription expires, the new duration overwrites the old one.</ol></div>


### Publish a custom presence status

You can call `publishPresence` to publish your custom statuses to public. Once your presence status updates, the users who subscribe to you receive the `onPresenceUpdated` callback.

The following code sample shows how to publish a custom status:

```java
ChatClient.getInstance().presenceManager().publishPresence("custom status", new CallBack() {
                    @Override
                    public void onSuccess() {
                    }
                    @Override
                    public void onError(int code, String error) {
                    }
                });
```


### Listen for presence status updates

Refer to the following code sample to listen for presence status updates:

```java
// Add the presence status listener.
ChatClient.getInstance().presenceManager().addListener(new MyPresenceListener());

// Occurs when the presence statuses of the subscriptions update.
public interface PresenceListener {
    void onPresenceUpdated(List<Presence> presences);
}
```

### Unsubscribe from the presence status of one or more users

you can call `unsubscribePresences` to unsubscribe from the presence statuses of the specified users, as shown in the following code sample:

```java
ChatClient.getInstance().presenceManager().unsubscribePresences(contactsFromServer, new CallBack() {
                    @Override
                    public void onSuccess() {
                       
                    }
                    @Override
                    public void onError(int errorCode, String errorMsg) {
                       
                    }
                });
```

### Retrieve the list of subscriptions

You can call `fetchSubscribedMembers` to retrieve the list of your subscriptions in a paginated list, as shown in the following code sample:

```java
ChatClient.getInstance().presenceManager().fetchSubscribedMembers(1, 50, new ValueCallBack<List<String>>() {
                    @Override
                    public void onSuccess(List<String> subscribedMembers) {
                        
                    }
                    @Override
                    public void onError(int errorCode, String errorMsg) {
                       
                    }
                });
```

### Retrieve the presence status of one or more users

You can call `fetchPresenceStatus` to retrieve the current presence statuses of the specified users without the need to subscribe to them, as shown in the following code sample:

```java
ChatClient.getInstance().presenceManager().fetchPresenceStatus(contactsFromServer, new ValueCallBack<List<Presence>>() {
                    @Override
                    public void onSuccess(List<Presence> presences) {
                        
                    }
                    @Override
                    public void onError(int errorCode, String errorMsg) {
                       
                    }
                });
```