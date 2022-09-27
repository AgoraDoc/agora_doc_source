Delivering a safe and appropriate chat environment to your users is essential. Agora Chat gives you multiple options to intelligently moderate the chat content and handle inappropriate user behavior.

- The following message management tools are available:
   - Message reporting.
   - Message moderation, including text and image moderation, profanity filtering, and domain filtering.
- Message moderation can be applied globally or to selected chat groups and chat rooms.

## Prerequisites

- You have created a valid [Agora developer account](/en/Agora%20Platform/get_appid_token?platform=All%20Platforms#create-an-agora-account).
- Moderation is not enabled by default. To use this feature, you need to subscribe to the **Pro** or **Enterprise** [pricing plan](./agora_chat_plan) and enable it in [Agora Console](https://console.agora.io/).

<div class="alert note">Add-on fees are incurred if you use this feature. See <a href="https://docs.agora.io/en/agora-chat/agora_chat_pricing#optional-add-on-fee">Pricing</a> for details.</div>

## Enable the moderation feature

1. Log in to Agora Console.
2. In the left navigation menu, click **Project Management** > **Config** for the project for which you want to enable the moderation feature > **Config** of Chat > **Features** > **Overview**.
3. On the **Chat Overview** page, turn on the switch of a specific moderation option, as shown in the following figure:
	 ![enable_moderation_en](https://web-cdn.agora.io/docs-files/1656312916879)

## Message management

The following table summarizes the message management tools provided by Agora Chat:

| Function | Description |
|--------|-----|
| Message reporting | The reporting API allows end-users to report objectionable messages directly from their applications. Moderators can view the report items on Agora Console and process the messages and message senders. |
| Text and image moderation | This feature is based on a third-party machine learning model and is used to automatically moderate text and image messages and block questionable content. |
| Profanity filter | The profanity filter can detect and filter out profanities contained words in messages according to configurations you set. |
| Domain filter | The domain filter can detect and filter out certain domains contained in messages according to configurations you set. |

### Implement the Reporting Feature

To use the reporting feature, you need to call the reporting API when you develop your application. For details, see the following documents:

- [Implement the reporting feature (Android)](/en/agora-chat/agora_chat_reporting_android?platform=Android)
- [Implement the reporting feature (iOS)](/en/agora-chat/agora_chat_reporting_ios?platform=iOS)
- [Implement the reporting feature (Web)](/en/agora-chat/agora_chat_reporting_web?platform=Web)
- [Implement the reporting feature (React Native)](/en/agora-chat/agora_chat_reporting_rn?platform=React%20Native)
- [Implement the reporting feature (Flutter)](/en/agora-chat/agora_chat_reporting_flutter?platform=Flutter)

After a user reports a message from the application, moderators can check and deal with the report on Agora Console:

1. To enter the **Message Report** page, in the left navigation menu, click **Project Management** > **Config** for the project that you want > **Config** of Chat > **Message Report** > **History**, as shown in the following figure:
	 
	 ![report_en](https://web-cdn.agora.io/docs-files/1656312948783)

2. On the **Message Report** page, moderators can filter the message report items by time period, session type, or handling method. They can also search for a specific report item by user ID, group ID, or chat room ID. For the reports, Agora Chat supports two handling methods: withdrawing the message or asking the sender to process the message.

### Text and image moderation

#### Introduction

Powered by [Microsoft Azure Moderator](https://azure.microsoft.com/en-us/services/cognitive-services/content-moderator/), Agora Chat's text and image moderation can scan messages for illegal text and image content and mark the content for moderation. Microsoft Azure Moderator uses the following three categories to moderate the message and returns a confidence score between 1 and 5  for a message:

- Adult: The content may be considered sexually explicit or adult in certain situations.
- Racial: The content may be considered racial discrimination.
- Offensive: The content may be considered offensive or abusive.

After enabling the text and image moderation feature on Agora Console, you can set a threshold for each moderation category. When the score returned by Microsoft Azure Moderator reaches the threshold, Agora Chat blocks the message. You can also impose a penalty on users who reach the violation limit within a time period. The moderation penalties include the following: banning the user, forcing the user to go offline, or deleting the user.

To see how moderation works and determine which moderation settings suit your needs, you can test different text strings and images on Agora Console.

#### Create a moderation rule

Taking a one-to-one chat text as an example, follow these steps to create a text moderation rule:

1. To enter the **Rule Config** page, in the left navigation menu, click **Project Management** > **Config** for the project for which you want > **Config** of Chat > **Text Moderation** or **Image Moderation** > **Rule Config**, as shown in the following figure:
	 
	 ![text_rule_en](https://web-cdn.agora.io/docs-files/1656312971641)

2. To create a text moderation rule, click **Add**:
	 
	 ![text_rule_create_en](https://web-cdn.agora.io/docs-files/1656312986832)

   The following table lists the fields that a text moderation rule supports:

   | Field | Description |
   | ------------ | ------------------------------------------------------------ |
   | Rule name | The rule name. |
   | Conversation type | The moderation scope, which can be one of the following: a one-to-one chat, chat group or chat room, chat groups or chat rooms. If you set a rule for a specific chat group or room, the global moderation rules for chat groups and rooms are overwritten. |
   | Enable | Determines whether to turn a rule on or off. |
   | Message handling | <ul><li>When the moderation result is **Rejected**, you can set the action on the moderated message to one of the following options:<ul><li>Blocks the message. Agora recommends using this setting for online messages after you fully test this moderation rule and ensure it suits your needs.</li><li>(Default) Sends the message. Agora recommends using this setting when you are testing this moderation rule and do not want this rule to affect online messages.</li><li>Replaces the message with \*\*\*.</li></ul></li><li>When the moderation action fails (for example, the timeout period of the text audit interface is 200 milliseconds; if no result  is returned within 200 milliseconds, this moderation action times out), the message processing policy can be set to one of the following options:<ul><li>Blocks the message.</li><li>(Default) Sends the message.</li><li>If the action on the moderated message is set as **Blocks the message**, the `508, MESSAGE_EXTERNAL_LOGIC_BLOCKED` error is returned after the message is blocked. You can set whether to indicate this error in the application. If you choose to indicate this error in the application, a red exclamation mark is displayed before the blocked message.</li></ul></li></ul> |
   | Rule | Sets the threshold for each moderation category. |
   | User management | Imposes a penalty on users who reach the violation limit within a time period. The moderation penalties include the following: banning the user, forcing the user to go offline, or deleting the user. |

3. After creating a rule, you can **edit** or **delete** the rule:

	 ![text_rule_edit_en](https://web-cdn.agora.io/docs-files/1656313385253)

#### Conduct a text or image moderation rule test

1. To enter the **Rule Test** page, in the left navigation menu, click **Project Management** > **Config** for the project that you want > **Config** of Chat > **Text Moderation** or **Image Moderation** > **Rule Test**, as shown in the following figure:

	 ![text_rule_test_en](https://web-cdn.agora.io/docs-files/1656313401953)

2. Select a rule, fill in the text to moderate, and click **Check** to test the rule. The moderation result is displayed on the same page.

### Profanity filter

The profanity filter can detect and filter out profanities contained words in messages according to configurations you set.

Follow these steps to specify a profanity filter configuration:

1. To enter the **Rule Config** page, in the left navigation menu, click **Project Management** > **Config** for the project that you want > **Config** of Chat > **Word List** > **Rule Config**, as shown in the following figure:

	 ![keyword_en](https://web-cdn.agora.io/docs-files/1656313419195)

2. On the **Rule Config** page, you can add or delete words and determine which filtering method to apply to messages that contain the specified keywords. You can replace the word with \*\*\* or simply not send the word.

### Domain filter

The domain filter can detect and filter out certain domains contained in messages according to configurations you set.

Follow these steps to specify a domain filter configuration:

1. To enter the **Rule Config** page, in the left navigation menu, click **Project Management** > **Config** for the project that you want > **Config** of Chat > **Domain Filter** > **Rule Config**, as shown in the following figure:
	 
	 ![domain_en](https://web-cdn.agora.io/docs-files/1656313436703)

2. To create a domain filtering rule, click **Add**:

	 ![domain_rule_en](https://web-cdn.agora.io/docs-files/1656313449970)

   The following table lists the fields that a domain filtering rule supports:

   | Field | Description |
   | ------------ | ------------------------------------------------------------ |
   | Rule name | The rule name. |
   | Conversation type | The moderation scope, which can be one of the following: a one-to-one chat, chat group or chat room, chat groups or chat rooms. If you set a rule for a specific chat group or room, the global moderation rules for chat groups and rooms are overwritten. |
   | Enable | Determines whether to turn a rule on or off. |
   | Message handling | <ul><li>Blocks messages containing the domain.</li><li>Only allows messages containing the domain to pass.</li><li>Replaces the domain in the message with \*\*\*.</li><li> Takes no action on the moderated message.</li></ul> |
   | Domain name | Adds a domain to the rule. |
   | User management | Imposes a penalty on users who reach the violation limit within a time period. The moderation penalties include the following: banning the user, forcing the user to go offline, or deleting the user. |

3. After creating a rule, you can **edit** or **delete** the rule:
   
	 ![domain_rule_edit_en](https://web-cdn.agora.io/docs-files/1656313466023)

### Check the moderation history

You can check the history of the **text moderation**, **image moderation**, **profanity filter**, and **domain filter** on Agora Console. You can filter the moderation items by the time period, session type, or moderation result. You can also search for a specific item by the sender ID or receiver ID.

![history](https://web-cdn.agora.io/docs-files/1657017751717)

## User management

You can impose a penalty on users for repeated violations. The penalties can be applied as a global application setting, or only to a specific chat group or room. The following table lists all the user moderation options that Agora Chat supports:

<table>
   <tr>
      <td>User moderation options</td>
      <td>Actions</td>
      <td>Description</td>
   </tr>
   <tr>
      <td rowspan="3">Global actions on users</td>
      <td>Banning a user</td>
      <td>A banned user immediately goes offline and is not allowed to log in again until the ban is lifted.</td>
   <tr>
      <td>Forcing a user to go offline</td>
      <td>Users who are forced to go offline need to log in again to use the Chat service.</td>
   <tr>
      <td>Deleting a user</td>
      <td>If the deleted user is the owner of a chat group or chat room, the group or room is also deleted.</td>
    </tr>
    <tr>
      <td rowspan="4">Chat group management</td>
      <td>Muting a user in a chat group</td>
      <td>A muted user cannot send messages in this chat group until unmuted.</td>
   <tr>
      <td>Muting all users in a chat group</td>
      <td>Members in a muted group cannot send messages until the muted state is lifted.</td>
   <tr>
      <td>Managing a group blocklist</td>
      <td>Users who are added to the group blocklist are removed from the group immediately and cannot join the group again.</td>
   <tr>
      <td>Removing a user from a chat group</td>
      <td>The removed user can no longer receive the messages in this group until rejoining the group.</td>
    </tr>
    <tr>
      <td rowspan="4">Chat room management</td>
      <td>Muting a user in a chat room</td>
      <td>A muted user cannot send messages in this chat room until unmuted.</td>
   <tr>
      <td>Muting all users in a chat room</td>
      <td>Members in a muted room cannot send messages until the muted state is lifted.</td>
   <tr>
      <td>Managing a room blocklist</td>
      <td>Users who are added to the room blocklist are removed from the room immediately and cannot join the room again.</td>
   <tr>
      <td>Removing a user from a chat room</td>
      <td>The removed user can no longer receive the messages in this room until rejoining the room.</td>
   <tr>
</table>

### Take global actions on users

1. To enter the **User Management** page, in the left navigation menu, click **Project Management** > **Config** for the project that you want > **Config** of Chat > **Operation Management** > **User**, as shown in the following figure:

    ![user_manage](https://web-cdn.agora.io/docs-files/1657017861309)

2. To take action on a user (banning a user, deleting a user, or forcing a user to go offline), search for the user ID, and click **More**:

   ![user_manage_action](https://web-cdn.agora.io/docs-files/1657017977179)

### Take actions on chat group members

1. To enter the Chat Group Management page, in the left navigation menu, click **Project Management** > **Config** for the project that you want > **Config** of Chat > **Operation Management** > **Group**, as shown in the following figure:

   ![group_manage](https://web-cdn.agora.io/docs-files/1657018187786)

2. To take action on a group member (removing a member from the group or adding a user to the group blocklist), search for the group ID, and click **More**:

   ![group_manage_action](https://web-cdn.agora.io/docs-files/1657018261864)

3. You can also click the group ID to enter the group's moderation dashboard, where you can manage the group info, group members, and messages in real-time:

   > To use this feature, you need to enable it on the **Features** > **Overview** page.

   ![group_manage_live](https://web-cdn.agora.io/docs-files/1657018366024)

### Take actions on chat room members

1. To enter the Chat Room Management page, in the left navigation menu, click **Project Management** > **Config** for the project that you want > **Config** of Chat > **Chat Room Management**, as shown in the following figure:

	 ![room_manage](https://web-cdn.agora.io/docs-files/1657018521135)

2. To take action on a room member (removing a member from the room or adding a user to the room blocklist), search for the room ID, and click **More**:

	 ![room_manage_action](https://web-cdn.agora.io/docs-files/1657018546001)

3. You can also click the room ID to enter the room's moderation dashboard, where you can manage the room info, room members, and messages in real-time:

   > To use this feature, you need to enable it on the **Features** > **Overview** page.

   ![room_manage_live](https://web-cdn.agora.io/docs-files/1657018564652)