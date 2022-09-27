Authentication is the process of validating identities. Agora uses digital tokens to authenticate users and their privileges before they access an Agora service, such as joining an Agora call, or logging in to Agora Chat.

To securely connect to Agora Chat, you use the following token types:

- User token: User level access to Agora Chat from your app using Agora Chat SDK. User tokens are used to authenticate users when they log in to your Agora Chat application. For details, see [Implement an Agora user token server for Agora Chat](./generate_user_tokens).
- App token: Admin level access to Agora Chat using the REST API. App tokens grant admin privileges for the app developer to manage the Agora Chat applications, for example, creating and deleting users. 

You use Agora Chat app tokens to make authenticated REST calls to Agora Chat. To obtain an Agora Chat app token, you retrieve an Agora app token from your app token server and convert it using the Agora app token obtained to an Agora Chat app token.

## Understand the tech

The following figure shows the authentication workflow for Agora Chat REST API:

![](https://web-cdn.agora.io/docs-files/1640139728606)

An Agora Chat app token is valid for a maximum of **24 hours**. When you call Agora Chat REST APIs, the Agora Chat server reads the information stored in the token and uses it for authentication. An Agora Chat app token contains the following information:

- The App ID of your Agora project
- The App Certificate of your Agora project
- The valid duration of the token

## Preprequisites

- A valid [Agora account](https://docs.agora.io/en/Agora%20Platform/get_appid_token?platform=All%20Platforms#create-an-agora-account)
- An [Agora project](https://docs.agora.io/en/Agora%20Platform/get_appid_token?platform=All%20Platforms#create-an-agora-project) with the [App Certificate](https://docs.agora.io/en/Agora%20Platform/get_appid_token?platform=All%20Platforms#get-the-app-certificate) and Agora Chat enabled. See [Enable and Configure Chat Service](./enable_agora_chat) for details.

- The [App ID](https://docs.agora.io/en/Agora%20Platform/get_appid_token?platform=All%20Platforms#get-the-app-id) , `org_name` and `app_name` of your Agora project, see [Enable and Configure Agora Chat](./enable_agora_chat).

If your network environment has a firewall, Agora provides firewall whitelists so that you can use Agora Chat with restricted network access. You can contact support@agora.io for more information about the firewall whitelists.

## Implement the authentication flow

This section shows how to implement authentication with an Agora Chat app token step by step.

### Create an app token server

Token generators create the tokens requested by your app client to enable secure access to Agora Chat. To serve these tokens you create an app token server.

The following example shows how to build and run an app token server written in Java on your local machine. This sample server is for demonstration purposes only. Do not use it in a production environment.

1. Create a Maven project in IntelliJ, set the name of your project, choose the location to save your project, then click **Finish**.

2. In `<Project name>/pom.xml` , add the following dependencies and then [reload the Maven project](https://www.jetbrains.com/help/idea/delegate-build-and-run-actions-to-maven.html#maven_reimport):

   ```xml
   <properties>
       <java.version>1.8</java.version>
       <spring-boot.version>2.4.3</spring-boot.version>
   </properties>
   
   <packaging>jar</packaging>
   
   <dependencyManagement>
       <dependencies>
           <dependency>
               <groupId>org.springframework.boot</groupId>
               <artifactId>spring-boot-dependencies</artifactId>
               <version>${spring-boot.version}</version>
               <type>pom</type>
               <scope>import</scope>
           </dependency>
       </dependencies>
   </dependencyManagement>
   
   <dependencies>
       <dependency>
           <groupId>org.springframework.boot</groupId>
           <artifactId>spring-boot-starter-web</artifactId>
       </dependency>
       <dependency>
           <groupId>org.springframework.boot</groupId>
           <artifactId>spring-boot-starter</artifactId>
       </dependency>
       <dependency>
           <groupId>org.springframework.boot</groupId>
           <artifactId>spring-boot-configuration-processor</artifactId>
       </dependency>
       <dependency>
           <groupId>commons-codec</groupId>
           <artifactId>commons-codec</artifactId>
           <version>1.14</version>
       </dependency>
   </dependencies>
   
   <build>
       <plugins>
           <plugin>
               <groupId>org.springframework.boot</groupId>
               <artifactId>spring-boot-maven-plugin</artifactId>
               <version>2.4.1</version>
               <executions>
                   <execution>
                       <goals>
                           <goal>repackage</goal>
                       </goals>
                   </execution>
               </executions>
           </plugin>
       </plugins>
   </build>
   ```

3. Import the token builders provided by Agora to this project.

   1. Download the [chat](https://github.com/AgoraIO/Tools/tree/dev/accesstoken2/DynamicKey/AgoraDynamicKey/java/src/main/java/io/agora/chat) and [media](https://github.com/AgoraIO/Tools/tree/dev/accesstoken2/DynamicKey/AgoraDynamicKey/java/src/main/java/io/agora/media) packages.
   1. In the token server project, create a `com.agora.chat.token.io.agora` package under `<Project name>/src/main/java`.
   1. Copy the chat and media packages and paste under `com.agora.chat.token.io.agora`. The following figure shows the project structure:

   ![](https://web-cdn.agora.io/docs-files/1638864182234)

   4. Fix the import errors in `chat/ChatTokenBuilder2` and `media/AccessToken`.

      - In `ChatTokenBuilder2`, the import should be `import com.agora.chat.token.io.agora.media.AccessToken2`.

      - In `AccessToken`, the import should be as follows:

        ```java
        import java.io.ByteArrayOutputStream;
        import java.io.IOException;
        import java.util.TreeMap;
        
        import static com.agora.chat.token.io.agora.media.Utils.crc32;
        ```

4. In `<Project name>/src/main/resource`, create a `application.properties` file. You need to update the properties with the value for your Agora Chat project and set the validity period of the Agora app token you request, for example, `expire.second=6000`. 

   > Note: The validity period of an Agora Chat app token is subject to that of the Agora app token generated by your token server. 
   >
   > For example, if you set the validity period of the Agora app token as 10,000 seconds, and you use this token to convert and obtain an Agora Chat app token after 100 seconds, the Agora Chat app token is to be expired after 9,900 seconds.

   ```shell
   ## server port
   server.port=8090
   ## Fill in the App ID of your Agora project
   appid=
   ## Fill in the app certificate of your Agora project
   appcert=
   ## Set the valid period (in seconds) for the Agora app token
   expire.second=
   ## domain
   domain=
   ```

   For details on how to get the REST API domain, see [Enable and Configure Agora Chat](enable_agora_chat).

5. In `com.agora.chat.token`, create a file named `AgoraChatTokenController.java` and copy the following codes into the file:

   ```java
   package com.agora.chat.token;
   
   import com.agora.chat.token.io.agora.chat.ChatTokenBuilder2;
   import org.springframework.beans.factory.annotation.Value;
   import org.springframework.util.StringUtils;
   import org.springframework.web.bind.annotation.GetMapping;
   import org.springframework.web.bind.annotation.PathVariable;
   import org.springframework.web.bind.annotation.RestController;
   
   @RestController
   public class AgoraChatTokenController {
   
       @Value("${appid}")
       private String appid;
   
       @Value("${appcert}")
       private String appcert;
     
       @Value("${expire.second}")
       private int expire;
   
       /**
        *
        * Apply for an App Token
        * @return token
        */
       @GetMapping("/chat/app/token")
       public String getAppToken() {
           if (!StringUtils.hasText(appid) || !StringUtils.hasText(appcert)) {
               return "appid or appcert is not empty";
           }
   
           ChatTokenBuilder2 builder = new ChatTokenBuilder2();
   
           // Generate an App Token.
           return builder.buildAppToken(appid, appcert, expire);
       }
   }
   ```

6. In `com.agora.chat.token` , create a Java class named `AgoraChatTokenStarter` and copy the following codes into the file:

   ```java
   package com.agora.chat.token;
   
   import org.springframework.boot.SpringApplication;
   import org.springframework.boot.autoconfigure.SpringBootApplication;
   
   @SpringBootApplication(scanBasePackages = "com.agora")
   public class AgoraChatTokenStarter {
       public static void main(String[] args) {
           SpringApplication.run(AgoraChatTokenStarter.class, args);
       }
   }
   ```


7. To start the server, click the green triangle button, and select **Debug "AgoraChatTokenStarter..."**.

   ![](https://web-cdn.agora.io/docs-files/1638868741690)

8. Now you have created an Agora app token server on your local machine. The server returns an Agora app token on GET requests. To test this, paste http://localhost:8090/chat/app/token in your broswer.

   You see an Agora app token that resembles:

   ![](https://web-cdn.agora.io/docs-files/1638869051945)

### Call the Agora Chat REST APIs with an Agora Chat app token

This section shows how to create a new user in your Agora Chat using an authenticated call to Agora Chat REST API. To do this you:

1. Retrieve an Agora app token and convert it to an Agora Chat app token. For example:

   i. In the terminal, use curl to make a GET request to your Agora app token server:

      ```shell
      curl http://localhost:8090/chat/app/token
      ```

   The return parameters contain the Agora app token. For example:

      ```shell
   007eJxTYPj3p2Tnb4tznzxfO/0LK5cu/GZmI71PnWPVkbVhP/aniEspMBhbJJqnGKclmVsYJ5kYWBhbJqcapqRZpJmbm5ikGRsnnT12OrGhN5pB97zpVEYGVgZGBiYGEJ+BAQBN0CGG
      ```

2. Add the Agora app token returned previously as the `Authorization: Bear` parameter and retrieve an Agora Chat app token:

   ```shell
   curl -X POST -H 'Content-Type: application/json' -H 'Authorization: Bearer 007eJxTYPj3p2Tnb4tznzxfO/0LK5cu/GZmI71PnWPVkbVhP/aniEspMBhbJJqnGKclmVsYJ5kYWBhbJqcapqRZpJmbm5ikGRsnnT12OrGhN5pB97zpVEYGVgZGBiYGEJ+BAQBN0CGG' -d '{"grant_type":"agora"}' 'http://a41.chat.agora.io/41434878/504205/token'
   ```

   The return parameters contain the Agora Chat app token and the timestamp (ms) when the token expires in a JSON object. For example:

   ```json
   {
       "access_token": "YWMtocXMjBEEQhmBqj-1iqWUywAAAAAAAAAAAAAAAAAAAAH_Z4gybPJPQ4EwWKw4y2wVAgMAAAF7D4Ab0QBPGgD6xFOaPCHEVIzBMQAtlGlZ3wQF2Ju68ZHglAxaaFRPRg==",
       "expire_timestamp": 1628148692771
   } 
   ```

3. Use the Agora Chat app token returned to call the Agora Chat REST API to create a new user:

   i. In terminal, use curl to make a POST request to the Agora Chat server. For example: 

   ```shell
   # Replace <YourAppToken> with the Agora Chat app token you received.
   curl -X POST -H "Authorization: Bearer <YourAppToken>" -i "https://XXXX/XXXX/XXXX/users" -d '[
       {
           "username": "user1",
           "password": "123",
           "nickname": "testuser"
       }
   ]'
   ```

   The return parameters contain the information about the user you just created. For example:

   ```shell
   {
       "action": "post",
       "application": "8be024f0-e978-11e8-b697-5d598d5f8402",
       "path": "/users",
       "uri": "https://a1.agora.com/XXXX/XXXX/users",
       "entities": [
           {
               "uuid": "0ffe2d80-ed76-11e8-8d66-279e3e1c214b",
               "type": "user",
               "created": 1542795196504,
               "modified": 1542795196504,
               "username": "user1",
               "activated": true,
               "nickname": "testuser"
           }
       ],
       "timestamp": 1542795196515,
       "duration": 0,
       "organization": "XXXX",
       "applicationName": "XXXX"
   }
   ```


## Reference

This section provides additional information about Agora Chat app tokens for your reference.

### Request path

The following parameters are required when you send a request for an Agora Chat app token:

| Parameter  | Data type | Required/Optional | Description                                                  |
| :--------- | :-------- | :---------------- | :----------------------------------------------------------- |
| `org_name` | String    | Required          | The unique identification that the Agora Chat assigns to each customer developing with Agora Chat. |
| `app_name` | String    | Required          | The name that the Agora Chat assigns to each app.            |
| `token`    | String    | Required          | The Agora app token.                                    |

### Request headers

To convert an Agora app token to an Agora Chat app token, you need to pass in the following parameters in the request header:

| Parameter       | Data type | Required/Optional | Description        |
| :-------------- | :-------- | :---------------- | :----------------- |
| `Content-Type`  | String    | Required          | `application/json` |
| `Authorization` | String    | Required          | Bearer AgoraappToken    |

### Request body

| Parameter    | Data type | Required/Optional | Value |
| :----------- | :-------- | :---------------- | :---- |
| `grant_type` | String    | Required          | agora |

### Response body

| Parameter    | Data type | Value |
| :----------- | :-------- | :---- |
| `access_token` | String    | The Agora Chat app token.|
| `expires_in` | Number   | The valid duration (in seconds) of the token.|

### Example

#### Request Example

```json
curl -X POST -H 'Content-Type: application/json' http://<domain>/<org_name>/<app_name>/token -H 'Authorization: Bearer <agora_app_token>' -d '{"grant_type" : "agora"}'
```

#### Response Example

```json
{
    "access_token": "YWMte2XXXXAAAAAAAAAAAAAAFcaJRiIRZNB6tqNQUcXXXXXXLAAAARmt4MVNn5VYK7z7hP9SbgdqhlVNBPGnYAeGjlt3n80Y_A==",
    "expires_in": 281,
    "expire_timestamp": 1657015153000
}
```

### Status codes

The possible response status codes are listed below:

| Response status code | Description                                                  |
| :------------------- | :----------------------------------------------------------- |
| `200`                | The request is successful, and the server returns the requested Agora Chat app token and the timestamp when the token expires. |
| `5xx`                | The request fails probably because the API to convert an Agora app token to an Agora Chat app token might be rate-limited, or an error occur during the process. |

### Other Considerations

If you use Agora Chat together with the [Agora RTC SDK](https://docs.agora.io/en/Agora%20Platform/term_agora_rtc_sdk), Agora recommends you updating to the [Access Token 2]() for smooth development experience.