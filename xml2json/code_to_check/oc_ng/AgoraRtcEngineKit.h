//
//  AgoraRtcEngineKit.h
//  AgoraRtcEngineKit
//
//  Copyright (c) 2018 Agora. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AgoraConstants.h"
#import "AgoraObjects.h"
#import "AgoraRtcEngineDelegate2.h"
#import "AgoraBaseDelegate.h"
#import "AgoraRtcMediaPlayerProtocol.h"
/** Agora provides ensured quality of experience (QoE) for worldwide Internet-based voice and video communications through a virtual global network that is especially optimized for real-time web and mobile-to-mobile applications.

 The AgoraRtcEngineKit class is the entry point of the Agora SDK that provides simple APIs for applications to easily start voice and video communication.
 */
@class AgoraRtcEngineKit;

/**
 * The AgoraAudioFrameDelegate protocol enables audio frame callback event notifications to your application.
 */
@protocol AgoraAudioFrameDelegate <NSObject>
@required

/**
 * Occurs when the recorded audio frame is received.
 * @param audioFrame A pointer to the audio frame: AgoraAudioFrame.
 * @param channelId Unique channel name for the AgoraRTC session in the string
 * format. The string length must be less than 64 bytes. Supported character
 * scopes are:
 * - All lowercase English letters: a to z.
 * - All uppercase English letters: A to Z.
 * - All numeric characters: 0 to 9.
 * - The space character.
 * - Punctuation characters and other symbols, including: "!", "#", "$", "%", "&", "(", ")", "+", "-", ":", ";", "<", "=", ".", ">", "?", "@", "[", "]", "^", "_", " {", "}", "|", "~", ",".
 * @return
 * - true: The recorded audio frame is valid and is encoded and sent.
 * - false: The recorded audio frame is invalid and is not encoded or sent.
 */
- (BOOL)onRecordAudioFrame:(AgoraAudioFrame* _Nonnull)frame channelId:(NSString * _Nonnull)channelId;

/**
 * Occurs when the playback audio frame is received.
 * @param channelId Unique channel name for the AgoraRTC session in the string
 * format. The string length must be less than 64 bytes. Supported character
 * scopes are:
 * - All lowercase English letters: a to z.
 * - All uppercase English letters: A to Z.
 * - All numeric characters: 0 to 9.
 * - The space character.
 * - Punctuation characters and other symbols, including: "!", "#", "$", "%", "&", "(", ")", "+", "-", ":", ";", "<", "=", ".", ">", "?", "@", "[", "]", "^", "_", " {", "}", "|", "~", ",".
 * @param audioFrame A pointer to the audio frame: AgoraAudioFrame.
 * @return
 * - true: The playback audio frame is valid and is encoded and sent.
 * - false: The playback audio frame is invalid and is not encoded or sent.
 */
- (BOOL)onPlaybackAudioFrame:(AgoraAudioFrame* _Nonnull)frame channelId:(NSString * _Nonnull)channelId;

/**
 * Occurs when the mixed audio data is received.
 * @param audioFrame The A pointer to the audio frame: AgoraAudioFrame.
 * @param channelId Unique channel name for the AgoraRTC session in the string
 * format. The string length must be less than 64 bytes. Supported character
 * scopes are:
 * - All lowercase English letters: a to z.
 * - All uppercase English letters: A to Z.
 * - All numeric characters: 0 to 9.
 * - The space character.
 * - Punctuation characters and other symbols, including: "!", "#", "$", "%", "&", "(", ")", "+", "-", ":", ";", "<", "=", ".", ">", "?", "@", "[", "]", "^", "_", " {", "}", "|", "~", ",".
 * @return
 * - true: The mixed audio data is valid and is encoded and sent.
 * - false: The mixed audio data is invalid and is not encoded or sent.
 */
- (BOOL)onMixedAudioFrame:(AgoraAudioFrame* _Nonnull)frame channelId:(NSString * _Nonnull)channelId;

/**
 * Occurs when the before-mixing playback audio frame is received.
 * @param channelId Unique channel name for the AgoraRTC session in the string
 * format. The string length must be less than 64 bytes. Supported character
 * scopes are:
 * - All lowercase English letters: a to z.
 * - All uppercase English letters: A to Z.
 * - All numeric characters: 0 to 9.
 * - The space character.
 * - Punctuation characters and other symbols, including: "!", "#", "$", "%", "&", "(", ")", "+", "-", ":", ";", "<", "=", ".", ">", "?", "@", "[", "]", "^", "_", " {", "}", "|", "~", ",".
 * @param uid ID of the remote user.
 * @param audioFrame A pointer to the audio frame: AgoraAudioFrame.
 * @return
 * - true: The before-mixing playback audio frame is valid and is encoded and sent.
 * - false: The before-mixing playback audio frame is invalid and is not encoded or sent.
 */
- (BOOL)onPlaybackAudioFrameBeforeMixing:(AgoraAudioFrame* _Nonnull)frame channelId:(NSString * _Nonnull)channelId uid:(NSUInteger)uid ;
@end

@protocol AgoraAudioEncodedFrameDelegate <NSObject>
@required

/**
 * Occurs when the record audio data is received.
 */
- (void)onRecordEncodedAudioFrame:(NSData* _Nonnull)frameData info:(AgoraEncodedAudioFrameInfo* _Nonnull) info;

/**
 * Occurs when the playback audio data is received.
 */
- (void)onPlaybackEncodedAudioFrame:(NSData* _Nonnull)frameData info:(AgoraEncodedAudioFrameInfo* _Nonnull) info;

/**
 * Occurs when the mixed audio data is received.
 */
- (void)onMixedEncodedAudioFrame:(NSData* _Nonnull)frameData info:(AgoraEncodedAudioFrameInfo* _Nonnull) info;
@end

@protocol AgoraEncodedVideoFrameDelegate <NSObject>
@optional

/**
 * Occurs when  get H264 video data interface before decoding
 */

- (BOOL)onEncodedVideoFrame:(NSData * _Nonnull )videoData length:(size_t)length info:(AgoraEncodedVideoFrameInfo * _Nonnull)videoFrameInfo;
@end

@protocol AgoraVideoFrameDelegate <NSObject>
@optional

/**
 * Occurs each time the SDK receives a video frame captured by the local camera.
 * Notes: If getVideoFrameProcessMode is read-only, use MUST implement this method
 *
 * After you successfully register the video frame observer, the SDK triggers this callback each time
 * a video frame is received. In this callback, you can get the video data captured by the local
 * camera. You can then pre-process the data according to your scenarios.
 *
 * After pre-processing, you can send the processed video data back to the SDK by setting the
 * `videoFrame` parameter in this callback.
 *
 * @param videoFrame A pointer to the video frame: AgoraOutputVideoFrame
 * @return Determines whether to ignore the current video frame if the pre-processing fails:
 * - true: Do not ignore.
 * - false: Ignore, in which case this method does not sent the current video frame to the SDK.
 */
- (BOOL)onCaptureVideoFrame:(AgoraOutputVideoFrame * _Nonnull)videoFrame;
- (BOOL)onSecondaryCameraCaptureVideoFrame:(AgoraOutputVideoFrame * _Nonnull)videoFrame;

/**
 * Occurs each time the SDK receives a video frame captured by the screen.
 * Notes: If getVideoFrameProcessMode is read-only, use MUST implement this method
 * After you successfully register the video frame observer, the SDK triggers this callback each time
 * a video frame is received. In this callback, you can get the video data captured by the screen.
 * You can then pre-process the data according to your scenarios.
 *
 * After pre-processing, you can send the processed video data back to the SDK by setting the
 * `videoFrame` parameter in this callback.
 *
 * @param videoFrame A pointer to the video frame: AgoraOutputVideoFrame
 * @return Determines whether to ignore the current video frame if the pre-processing fails:
 * - true: Do not ignore.
 * - false: Ignore, in which case this method does not sent the current video frame to the SDK.
 */
- (BOOL)onScreenCaptureVideoFrame:(AgoraOutputVideoFrame * _Nonnull)videoFrame;
- (BOOL)onSecondaryScreenCaptureVideoFrame:(AgoraOutputVideoFrame * _Nonnull)videoFrame;
- (BOOL)onTranscodedVideoFrame:(AgoraOutputVideoFrame * _Nonnull)videoFrame;

/**
 * Occurs each time the SDK receives a video frame sent by the remote user.
 *
 * After you successfully register the video frame observer, the SDK triggers this callback each time a
 * video frame is received. In this callback, you can get the video data sent by the remote user. You
 * can then post-process the data according to your scenarios.
 *
 * After post-processing, you can send the processed data back to the SDK by setting the `videoFrame`
 * parameter in this callback.
 *
 * @param uid ID of the remote user who sends the current video frame.
 * @param channelId Channel name.
 * @param videoFrame A pointer to the video frame: AgoraOutputVideoFrame
 * @return Determines whether to ignore the current video frame if the post-processing fails:
 * - true: Do not ignore.
 * - false: Ignore, in which case this method does not sent the current video frame to the SDK.
 */
- (BOOL)onRenderVideoFrame:(AgoraOutputVideoFrame * _Nonnull)videoFrame uid:(NSUInteger)uid channelId:(NSString * _Nonnull)channelId;

/**
 * Occurs each time the SDK receives a video frame decoded by the MediaPlayer.
 *
 * After you successfully register the video frame observer, the SDK triggers this callback each
 * time a video frame is decoded. In this callback, you can get the video data decoded by the
 * MediaPlayer. You can then pre-process the data according to your scenarios.
 *
 * After pre-processing, you can send the processed video data back to the SDK by setting the
 * `videoFrame` parameter in this callback.
 *
 * @param videoFrame A pointer to the video frame: AgoraOutputVideoFrame
 * @param mediaPlayerId of the mediaPlayer.
 * @return Determines whether to ignore the current video frame if the pre-processing fails:
 * - true: Do not ignore.
 * - false: Ignore, in which case this method does not sent the current video frame to the SDK.
 */
- (BOOL)onMediaPlayerVideoFrame:(AgoraOutputVideoFrame * _Nonnull)videoFrame mediaPlayerId:(NSInteger)mediaPlayerId;

/**
 * Occurs each time the SDK receives a video frame captured by the local camera.
 * Notes: If getVideoFrameProcessMode is read-write, use MUST implement this method
 *
 * After you successfully register the video frame observer, the SDK triggers this callback each time
 * a video frame is received. In this callback, you can get the video data captured by the local
 * camera. You can then pre-process the data according to your scenarios.
 *
 * After pre-processing, you can send the processed video data back to the SDK by setting the
 * `videoFrame` parameter in this callback.
 *
 * @param srcFrame A pointer to the video frame: AgoraOutputVideoFrame
 * @param dstFrame (inout params) A pointer to the video frame: AgoraOutputVideoFrame
 * @return Determines whether to ignore the current video frame if the pre-processing fails:
 * - true: Do not ignore.
 * - false: Ignore, in which case this method does not sent the current video frame to the SDK.
 */
- (BOOL)onCaptureVideoFrame:(AgoraOutputVideoFrame * _Nonnull)srcFrame dstFrame:(AgoraOutputVideoFrame *_Nullable* _Nullable)dstFrame;
- (BOOL)onSecondaryCameraCaptureVideoFrame:(AgoraOutputVideoFrame * _Nonnull)videoFrame dstFrame:(AgoraOutputVideoFrame *_Nullable* _Nullable)dstFrame;
/**
 * Occurs each time the SDK receives a video frame captured by the screen.
 * Notes: If getVideoFrameProcessMode is read-only, use MUST implement this method
 * After you successfully register the video frame observer, the SDK triggers this callback each time
 * a video frame is received. In this callback, you can get the video data captured by the screen.
 * You can then pre-process the data according to your scenarios.
 *
 * After pre-processing, you can send the processed video data back to the SDK by setting the
 * `videoFrame` parameter in this callback.
 *
 * @param srcFrame A pointer to the video frame: AgoraOutputVideoFrame
 * @param dstFrame (inout params) A pointer to the video frame: AgoraOutputVideoFrame
 * @return Determines whether to ignore the current video frame if the pre-processing fails:
 * - true: Do not ignore.
 * - false: Ignore, in which case this method does not sent the current video frame to the SDK.
 */
- (BOOL)onScreenCaptureVideoFrame:(AgoraOutputVideoFrame * _Nonnull)videoFrame dstFrame:(AgoraOutputVideoFrame *_Nullable* _Nullable)dstFrame;
- (BOOL)onSecondaryScreenCaptureVideoFrame:(AgoraOutputVideoFrame * _Nonnull)videoFrame dstFrame:(AgoraOutputVideoFrame *_Nullable* _Nullable)dstFrame;
- (BOOL)onTranscodedVideoFrame:(AgoraOutputVideoFrame * _Nonnull)videoFrame dstFrame:(AgoraOutputVideoFrame *_Nullable* _Nullable)dstFrame;

/**
 * Occurs each time needs to get rotation angle.
 * @return rotation angle.
 */
- (BOOL)getRotationApplied;

/**
 * Occurs each time needs to get whether mirror is applied or not.
 * @return Determines whether to mirror.
 * - true: need to mirror.
 * - false: no mirror.
 */
- (BOOL)getMirrorApplied;

/**
 * Indicate the video frame mode of the observer.
 * @return AgoraVideoFrameProcessMode
 */
- (AgoraVideoFrameProcessMode)getVideoFrameProcessMode;

/**
 * Occurs each time needs to get preference video frame type.
 * @return AgoraVideoFormat.
 */
- (AgoraVideoFormat)getVideoPixelFormatPreference;

@end

@protocol AgoraRtcMediaPlayerDelegate <NSObject>

@optional


/** Reports the playback state change.

 @param playerKit AgoraRtcMediaPlayer

 @param state The new playback state after change. See AgoraMediaPlayerState.

 @param error The player's error code. See AgoraMediaPlayerError.
 */
- (void)AgoraRtcMediaPlayer:(id<AgoraRtcMediaPlayerProtocol> _Nonnull)playerKit
          didChangedToState:(AgoraMediaPlayerState)state
                      error:(AgoraMediaPlayerError)error;

/** Reports current playback progress.

 The callback occurs once every one second during the playback and reports
 current playback progress.

 @param playerKit AgoraMediaPlayer

 @param position Current playback progress (s).
 */
- (void)AgoraRtcMediaPlayer:(id<AgoraRtcMediaPlayerProtocol> _Nonnull)playerKit
       didChangedToPosition:(NSInteger)position;

/** Reports the result of the seek operation.

 @param playerKit AgoraRtcMediaPlayer
 @param elapsedTime The playback elapsed time.
 @param elapsedTime The playback elapsed time.
 @param event The result of the seek operation. See AgoraMediaPlayerEvent.
 */
- (void)AgoraRtcMediaPlayer:(id<AgoraRtcMediaPlayerProtocol> _Nonnull)playerKit
              didOccurEvent:(AgoraMediaPlayerEvent)event
                elapsedTime:(NSInteger)time
                    message:(NSString *_Nullable)message;

/** Reports the reception of the media metadata.

 The callback occurs when the player receivers the media metadata and reports
 the detailed information of the media metadata.

 @param playerKit AgoraRtcMediaPlayer

 @param type The type of the media metadata. See AgoraMediaPlayerMetaDataType.

 @param data The detailed data of the media metadata.

 @param length The length (byte) of the data.
 */
- (void)AgoraRtcMediaPlayer:(id<AgoraRtcMediaPlayerProtocol> _Nonnull)playerKit
             didReceiveData:(NSString *_Nullable)data
                     length:(NSInteger)length;

/**
 * @brief Triggered when play buffer updated, once every 1 second
 *
 * @param int cached buffer during playing, in milliseconds
 */
- (void)AgoraRtcMediaPlayer:(id<AgoraRtcMediaPlayerProtocol> _Nonnull)playerKit
             didPlayBufferUpdated:(NSInteger)playCachedBuffer;

/**
 * @brief Triggered when the player preloadSrc
 *
 * @param event
 */
- (void)AgoraRtcMediaPlayer:(id<AgoraRtcMediaPlayerProtocol> _Nonnull)playerKit
            didPreloadEvent:(AgoraMediaPlayerPreloadEvent)event;

/**
 * @brief Reports current playback source bitrate changed.
 *
 * @param originalInfo Streaming media information before the change.
 * @param targetInfo Streaming media information after the change.
 */
- (void)AgoraRtcMediaPlayer:(id<AgoraRtcMediaPlayerProtocol> _Nonnull)playerKit didChangedPlayerSrcInfoFrom:(AgoraMediaPlayerSrcInfo *_Nonnull)originalInfo to:(AgoraMediaPlayerSrcInfo *_Nonnull)targetInfo;

/**
 * @brief Triggered when  media player information updated.
 *
 * @param info Include information of media player.
 */
- (void)AgoraRtcMediaPlayer:(id<AgoraRtcMediaPlayerProtocol> _Nonnull)playerKit infoUpdated:(AgoraMediaPlayerUpdatedInfo *_Nonnull)info;

/**
 * @brief AgoraCDN Token has expired and needs to be set up with renewAgoraCDNSrcToken(const char*
 * src).
 */
- (void)onAgoraCDNTokenWillExpire;

/** Occurs when each time the player receives a video frame.

 After registering the video frame observer, the callback occurs when each
 time the player receives a video frame, reporting the detailed
 information of the video frame.

 @param playerKit AgoraMediaPlayer

 @param pixelBuffer The detailed information of the video frame.
 */
- (void)AgoraRtcMediaPlayer:(id<AgoraRtcMediaPlayerProtocol> _Nonnull)playerKit
    didReceiveVideoFrame:(CVPixelBufferRef _Nonnull)pixelBuffer;

/** Occurs when each time the player receives an audio frame.

 After registering the audio frame observer, the callback occurs when each
 time the player receives an audio frame, reporting the detailed
 information of the audio frame.

 @param playerKit AgoraMediaPlayer

 @param audioFrame The detailed information of the audio frame.
 */
- (void)AgoraRtcMediaPlayer:(id<AgoraRtcMediaPlayerProtocol> _Nonnull)playerKit
    didReceiveAudioFrame:(CMSampleBufferRef _Nonnull)audioFrame;

/**
 * @brief Triggered when play buffer updated, once every 200 millisecond
 *
 * @param volume volume of current player.
 */
- (void)AgoraRtcMediaPlayer:(id<AgoraRtcMediaPlayerProtocol> _Nonnull)playerKit
             didVolume:(NSInteger)volume;
@end

/**
 * The event handler for direct cdn streaming
 *
 */
@protocol AgoraDirectCdnStreamingEventDelegate <NSObject>

 @optional

/**
 * Event callback of direct cdn streaming
 * @param state Current status
 * @param err Error Code
 * @param message Message
 */
- (void)onDirectCdnStreamingStateChanged:(AgoraDirectCdnStreamingState)state
                                   error:(AgoraDirectCdnStreamingError)error
                                 message:(NSString *_Nullable)message;

- (void)onDirectCdnStreamingStats:(AgoraDirectCdnStreamStats *_Nonnull)stats;

@end

/** The definition of the AgoraMediaMetadataDataSource protocol.
 * @note Implement all the callbacks in this protocol in the critical thread. We recommend avoiding any time-consuming
 * operation in the critical thread.
*/
@protocol AgoraMediaMetadataDataSource <NSObject>
@required

/** Occurs when the SDK requests the maximum size of the metadata.
*
* After calling the {@link AgoraRtcEngineKit.setMediaMetadataDataSource:withType: setMediaMetadataDataSource} method,
* the SDK triggers this callback to query the maximum size of your metadata.
* You must specify the maximum size in the return value and then pass it to the SDK.
*
* @return The maximum size (bytes) of the buffer of the metadata. See {@link AgoraMediaMetadataDataSource.readyToSendMetadataAtTimestamp: readyToSendMetadataAtTimestamp}. The value must not exceed 1024 bytes.
* You must specify the maximum size in this return value.
 */
- (NSInteger)metadataMaxSize;

/** Occurs when the SDK is ready to send metadata.

You need to specify the metadata in the return value of this method.

 @note  Ensure that the size of the metadata that you specify in this callback does not exceed the value set in the {@link AgoraMediaMetadataDataSource.metadataMaxSize metadataMaxSize} callback.
 @param timestamp The timestamp (ms) of the current metadata.
 @return The metadata that you want to send in the format of NSData, including the following parameters:
 - `uid`: ID of the user who sends the metadata.
 - `size`: The size of the sent metadata.
 - `buffer`: The sent metadata.
 - `timeStampMs`: The NTP timestamp (ms) when the metadata is sent.
 */
- (NSData * _Nullable)readyToSendMetadataAtTimestamp:(NSTimeInterval)timestamp sourceType:(AgoraVideoSourceType)sourceType;

@end

/** The definition of AgoraMediaMetadataDelegate.
@note  Implement the callback in this protocol in the critical thread. We recommend avoiding any time-consuming operation in the critical thread.
*/
@protocol AgoraMediaMetadataDelegate <NSObject>
@required

/** Occurs when the local user receives the metadata.
 @param data The received metadata.
 @param uid The ID of the user who sends the metadata.
 @param timestamp The NTP timestamp (ms) when the metadata is sent.
 @note If the receiver is audience, the receiver cannot get the NTP timestamp (ms) from `timestamp`.
 */
- (void)receiveMetadata:(NSData * _Nonnull)data fromUser:(NSInteger)uid atTimestamp:(NSTimeInterval)timestamp;

@end

@protocol AgoraAudioSpectrumDelegate <NSObject>

@optional
/**
 * Reports the audio spectrum of audio recording.
 *
 * This callback reports the audio spectrum data of the audio recording at the moment
 * in the channel.
 *
 * You can set the time interval of this callback using "enableAudioSpectrumMonitor".
 *
 * @param audioSpectrumData The audio spectrum data of audio recording.
 * - true: Processed.
 * - false: Not processed.
 */
- (BOOL)onLocalAudioSpectrum:(NSArray<NSNumber *> * _Nullable)audioSpectrumData;
/**
 * Reports the audio spectrum of remote user.
 *
 * This callback reports the IDs and audio spectrum data of the loudest speakers at the moment
 * in the channel.
 *
 * You can set the time interval of this callback using  "enableAudioSpectrumMonitor".
 *
 * @param AudioSpectrumInfo The pointer to AudioSpectrumInfo, which is an array containing
 * the user ID and audio spectrum data for each speaker.
 * - This array contains the following members:
 *   - `uid`, which is the UID of each remote speaker
 *   - `audioSpectrumData`, which reports the audio spectrum of each remote speaker.
 *   - `spectrumDataLength`, the length of audio spectrum data.
 * - true: Processed.
 * - false: Not processed.
 */
- (BOOL)onRemoteAudioSpectrum:(NSArray<AgoraAudioSpectrumInfo *> * _Nullable)AudioSpectrumInfo;

@end

/**
 * The AgoraRtcEngineDelegate protocol enables callback event notifications to your application.

 The SDK uses delegate callbacks in the AgoraRtcEngineDelegate protocol to report runtime events to the application.
 From v1.1, some block callbacks in the SDK are replaced with delegate callbacks. The old block callbacks are therefore deprecated, but can still be used in the current version. However, Agora recommends replacing block callbacks with delegate callbacks. The SDK calls the block callback if a callback is defined in both the block and delegate callbacks.
 */
@protocol AgoraRtcEngineDelegate <NSObject>
@optional

#pragma mark Delegate Methods

/**-----------------------------------------------------------------------------
 * @name Delegate Methods

 The SDK uses delegate callbacks in the AgoraRtcEngineDelegate protocol to report runtime events to the application.
 From v1.1, some block callbacks in the SDK are replaced with delegate callbacks. The old block callbacks are therefore deprecated, but can still be used in the current version. However, Agora recommends replacing block callbacks with delegate callbacks. The SDK calls the block callback if a callback is defined in both the block and delegate callbacks.
 * -----------------------------------------------------------------------------
 */

#pragma mark Core Delegate Methods

/**-----------------------------------------------------------------------------
 * @name Core Delegate Methods
 * -----------------------------------------------------------------------------
 */
/** A warning occurred during SDK runtime.

 In most cases, the application can ignore the warnings reported by the SDK because the SDK can usually fix the issue and resume running.
 For instance, the SDK may report an AgoraRtc_Error_OpenChannelTimeout(106) warning upon disconnection from the server and attempts to reconnect.

 @param engine      AgoraRtcEngineKit object
 @param warningCode AgoraWarningCode
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didOccurWarning:(AgoraWarningCode)warningCode;

/** An error occurred during SDK runtime.

 In most cases, reporting an error means that the SDK cannot fix the issue and resume running, and therefore requires actions from the application or simply informs the user on the issue.
 For instance, the SDK reports an AgoraErrorCodeStartCall = 1002 error when failing to initialize a call. In this case, the application informs the user that the call initialization failed and calls the {@link AgoraRtcEngineKit.leaveChannel: leaveChannel} method to exit the channel.

 @param engine    AgoraRtcEngineKit object
 @param errorCode AgoraErrorCode
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didOccurError:(AgoraErrorCode)errorCode;

/** The media engine loaded successfully.

 @param engine AgoraRtcEngineKit object
 */
- (void)rtcEngineMediaEngineDidLoaded:(AgoraRtcEngineKit * _Nonnull)engine;

/** The media engine started successfully.

 @param engine AgoraRtcEngineKit object
 */
- (void)rtcEngineMediaEngineDidStartCall:(AgoraRtcEngineKit * _Nonnull)engine;


/**
 * Occurs when the token has expired.
 *
 * If a token is specified when calling `joinChannelByToken`,
 * the token expires after a certain period of time and you need a new token to
 * reconnect to the server.
 *
 * Upon receiving this callback, generate a new token at your app server and
 * call {@link AgoraRtcEngineKit.renewToken: renewToken} to pass the new token
 * to the SDK.
 * @param engine The AgoraRtcEngineKit object.
 * @sa [How to generate a token](https://docs.agora.io/en/Interactive%20Broadcast/token_server_cpp?platform=CPP).
 */
- (void)rtcEngineRequestToken:(AgoraRtcEngineKit * _Nonnull)engine;

/**
 * Occurs when the token will expire in 30 seconds.
 *
 * If the token you specified when calling
 * `joinChannelByToken`
 * expires, the user drops offline. This callback is triggered 30 seconds
 * before the token expires, to remind you to renew the token.
 * Upon receiving this callback, generate a new token at your app server and
 * call {@link AgoraRtcEngineKit.renewToken: renewToken} to pass the new token
 * to the SDK.
 * @param engine The AgoraRtcEngineKit object.
 * @param token  The token that will expire in 30 seconds.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine tokenPrivilegeWillExpire:(NSString *_Nonnull)token;


/** The SDK disconnected from the server.

 Once the connection is lost, the SDK tries to reconnect it repeatedly until the application calls [leave](@ref AgoraRtcEngineKit.leaveChannel:) .

 @param engine AgoraRtcEngineKit object
 */
- (void)rtcEngineConnectionDidInterrupted:(AgoraRtcEngineKit * _Nonnull)engine;


/**
 * Occurs when the SDK cannot reconnect to Agora's edge server 10 seconds after
 * its connection to the server is interrupted.
 *
 * The SDK triggers this callback when it cannot connect to the server 10 seconds after calling
 * `joinChannelByToken`, regardless of whether it is in the channel or not.
 * @param engine The AgoraRtcEngineKit object.
 */
- (void)rtcEngineConnectionDidLost:(AgoraRtcEngineKit * _Nonnull)engine;


/** A connection is banned by the server.

 The SDK will not try to reconnect the server.

 @param engine AgoraRtcEngineKit object
 */
- (void)rtcEngineConnectionDidBanned:(AgoraRtcEngineKit * _Nonnull)engine;

/**
 * Occurs when the connection state of the SDK to the server is changed.
 *
 * @param engine    The AgoraRtcEngineKit object.
 * @param type See {@link AgoraNetworkType}.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine networkTypeChanged:(AgoraNetworkType)type;

/**
 * Occurs when permission error
 *
 * @param engine    The AgoraRtcEngineKit object.
 * @param type See {@link AgoraPermissionType}.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine permissionError:(AgoraPermissionType)type;

/**
 * Occurs when the connection state of the SDK to the server is changed.
 *
 * @param engine    The AgoraRtcEngineKit object.
 * @param state See {@link AgoraConnectionState}.
 * @param reason See {@link AgoraConnectionChangedReason}.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine connectionStateChanged:(AgoraConnectionState)state reason:(AgoraConnectionChangedReason)reason;

/**
 * Reports the statistics of the current call.
 *
 * This callback is triggered once every two seconds after the user joins the channel.
 *
 * @param engine    The AgoraRtcEngineKit object.
 * @param stats The statistics on the current call: #AgoraChannelStats.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine reportRtcStats:(AgoraChannelStats * _Nonnull)stats;


/** The last mile network quality of the local user.

 This callback is triggered once after you have called [startLastmileProbeTest]([AgoraRtcEngineKit startLastmileProbeTest]) to report the network quality of the local user.

 @param engine  AgoraRtcEngineKit object
 @param quality AgoraNetworkQuality
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine lastmileQuality:(AgoraNetworkQuality)quality;


/**
 * Reports the last-mile network probe result.
 *
 * The SDK triggers this callback within 30 seconds after the app calls the {@link AgoraRtcEngineKit.startLastmileProbeTest: startLastmileProbeTest} method.
 * @param engine The AgoraRtcEngineKit object.
 * @param result The uplink and downlink last-mile network probe test result, see {@link AgoraLastmileProbeResult}.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine lastmileProbeTestResult:(AgoraLastmileProbeResult * _Nonnull)result;

/**
 * The API call was executed successfully.
 *
 * @param engine The AgoraRtcEngineKit object.
 * @param error  {@link AgoraErrorCode}
 * @param api    The method executed by the SDK.
 * @param result The result of the method call.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didApiCallExecute:(NSInteger)error api:(NSString * _Nonnull)api result:(NSString * _Nonnull)result;


/** The recording status after executing the [refreshRecordingServiceStatus]([AgoraRtcEngineKit refreshRecordingServiceStatus]) method successfully.

 @param engine The AgoraRtcEngineKit object.
 @param status 0：Recording is stopped. 1：Recording is ongoing.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didRefreshRecordingServiceStatus:(NSInteger)status;

#if (!(TARGET_OS_IPHONE) && (TARGET_OS_MAC))

/** The specified device state.

 @note  This method applies to macOS only.

 @param engine     AgoraRtcEngineKit object
 @param deviceId   Device ID
 @param deviceType AgoraMediaDeviceType
 @param state      State of the device:

 * 0: Added.
 * 1: Removed.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine device:(NSString * _Nonnull)deviceId type:(AgoraMediaDeviceType)deviceType stateChanged:(NSInteger) state;

#endif

/** An error of encryption occurred during SDK runtime.

 @param errorType AgoraEncryptionErrorType
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didOccurEncryptionError:(AgoraEncryptionErrorType)errorType;
/**
   * Reports the user log upload result
   * @param requestId RequestId of the upload
   * @param success Is upload success
   * @param reason Reason of the upload, 0: OK, 1 Network Error, 2 Server Error.
   */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine uploadLogResultRequestId:(NSString * _Nonnull)requestId success:(BOOL)success reason:(AgoraUploadErrorReason)reason;

#pragma mark Local User Core Delegate Methods

/**-----------------------------------------------------------------------------
 * @name Local User Core Delegate Methods
 * -----------------------------------------------------------------------------
 */

/**
 * Occurs when the local user successfully joins a specified channel.
 *
 * @param engine  AgoraRtcEngineKit object
 * @param channel The channel name.
 * @param uid The user ID.
 * @param elapsed The time elapsed (ms) from the local user calling `joinChannelByToken` until this event occurs.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didJoinChannel:(NSString * _Nonnull)channel withUid:(NSUInteger)uid elapsed:(NSInteger) elapsed;

/**
 * Occurs when the local user rejoins a channel.
 *
 * If the client loses connection with the server because of network problems,
 * the SDK automatically attempts to reconnect and then triggers this callback
 * upon reconnection, indicating that the user rejoins the channel with the
 * assigned channel ID and user ID.
 *
 * @param engine  The AgoraRtcEngineKit object.
 * @param channel The channel name.
 * @param uid     The user ID.
 * @param elapsed Time elapsed (ms) from the local user calling `joinChannelByToken` until this event occurs.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didRejoinChannel:(NSString * _Nonnull)channel withUid:(NSUInteger)uid elapsed:(NSInteger) elapsed;

/**
 * Occurs when the local user role switches in a live broadcast.
 *
 * @param engine  The AgoraRtcEngineKit object.
 * @param oldRole The role that the user switches from: #AgoraClientRole.
 * @param newRole The role that the user switches to: #AgoraClientRole.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didClientRoleChanged:(AgoraClientRole)oldRole newRole:(AgoraClientRole)newRole;

/**
 * Occurs when the local user leaves a channel.
 *
 * When the user successfully leaves the channel after calling
 * {@link AgoraRtcEngineKit.leaveChannel: leaveChannel} method, this callback
 * notifies the app that a user leaves a channel.
 *
 * This callback also reports information such as the call duration and the
 * statistics of data received or transmitted by the SDK.
 * @param engine The AgoraRtcEngineKit object.
 * @param stats  The statistics of the call. See #AgoraChannelStats.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didLeaveChannelWithStats:(AgoraChannelStats * _Nonnull)stats;


/** The network quality of a specified user in a channel.

 This callback is triggered every two seconds to update the application on the network quality of the specified user in a communication or live broadcast channel.

 @param engine    AgoraRtcEngineKit object
 @param uid       User ID
 @param txQuality Network transmission quality defined in AgoraNetworkQuality.
 @param rxQuality Network receiving quality defined in AgoraNetworkQuality.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine networkQuality:(NSUInteger)uid txQuality:(AgoraNetworkQuality)txQuality rxQuality:(AgoraNetworkQuality)rxQuality;


#pragma mark Local User Audio Delegate Methods

/**-----------------------------------------------------------------------------
 * @name Local User Audio Delegate Methods
 * -----------------------------------------------------------------------------
 */
/**
 * Occurs when the first local audio frame is published.
 *
 * @param engine  The AgoraRtcEngineKit object.
 * @param elapsed The time elapsed (ms) from calling `joinChannelByToken` until the SDK triggers this callback.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine firstLocalAudioFramePublished:(NSInteger)elapsed;

/**
 * Reports the statistics of the local audio stream.
 *
 * The SDK triggers this callback once every two seconds.
 * @param engine The AgoraRtcEngineKit object.
 * @param stats  The statistics of the local audio stream. See {@link AgoraRtcLocalAudioStats}.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine localAudioStats:(AgoraRtcLocalAudioStats * _Nonnull)stats;

/**
 * Occurs when the local audio stream state changes.
 *
 * This callback indicates the state change of the local audio stream, including
 * the state of the audio recording and encoding, and allows you to troubleshoot
 * issues when exceptions occur.
 *
 * @note
 * When the state is `AgoraAudioLocalStateFailed`(3), see the `error` parameter for details.
 * @param engine AgoraRtcEngineKit object
 * @param state  The state of the local audio. See {@link AgoraAudioLocalState}.
 * @param error The error information of the local audio. See {@link AgoraAudioLocalError}.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine localAudioStateChanged:(AgoraAudioLocalState)state error:(AgoraAudioLocalError)error;

/**
 * Occurs when the local audio route changes.
 *
 * The SDK triggers this callback when the local audio route changes.
 * @param engine  The AgoraRtcEngineKit object.
 * @param routing The audio route. See {@link AgoraAudioOutputRouting}.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didAudioRouteChanged:(AgoraAudioOutputRouting)routing;

/** The audio mixing file playback stopped after calling [startAudioMixing]([AgoraRtcEngineKit startAudioMixing:loopback:replace:cycle:]).

 If you failed to call [startAudioMixing]([AgoraRtcEngineKit startAudioMixing:loopback:replace:cycle:]), it returns the error code in the [didOccurError]([AgoraRtcEngineDelegate rtcEngine:didOccurError:])  callback.

 @param engine AgoraRtcEngineKit object
 */
- (void)rtcEngineLocalAudioMixingDidFinish:(AgoraRtcEngineKit * _Nonnull)engine;

/** Occurs when the local audio effect playback finishes.

 You can start a local audio effect playback by calling the {@link AgoraRtcEngineKit.playEffect:filePath:loopCount:pitch:pan:gain:publish: playEffect} method. The SDK triggers this callback when the local audio effect file playback finishes.

 @param engine  AgoraRtcEngineKit object.
 @param soundId ID of the local audio effect. Each local audio effect has a unique ID.
 */
- (void)rtcEngineDidAudioEffectFinish:(AgoraRtcEngineKit * _Nonnull)engine soundId:(int)soundId;


#pragma mark Local User Video Delegate Methods

/**-----------------------------------------------------------------------------
 * @name Local User Video Delegate Methods
 * -----------------------------------------------------------------------------
 */


/** A camera turned on and is ready to capture video.

 @param engine AgoraRtcEngineKit object
 */
- (void)rtcEngineCameraDidReady:(AgoraRtcEngineKit * _Nonnull)engine;

#if TARGET_OS_IPHONE

/** A camera focus position changed.

 @param engine AgoraRtcEngineKit object
 @param rect   Focus rectangle in the local preview
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine cameraFocusDidChangedToRect:(CGRect)rect;

/** A camera exposure position changed.

 @param engine AgoraRtcEngineKit object
 @param rect   Exposure rectangle in the local preview
 */
- (void)rtcEngine:(AgoraRtcEngineKit* _Nonnull)engine cameraExposureDidChangedToRect:(CGRect)rect;

#endif

/** The video playback stopped.

 The application can use this callback to change the configuration of the view (for example, displaying other pictures in the view) after the video stops.

 @param engine AgoraRtcEngineKit object
 */
- (void)rtcEngineVideoDidStop:(AgoraRtcEngineKit * _Nonnull)engine;

/** Event of the first local video frame is published.
 *  @param engine  The engine kit
 *  @param elapsed The elapsed time(ms) from the beginning of the session.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine firstLocalVideoFramePublishedWithElapsed:(NSInteger)elapsed;

/** The first local frame displayed on the video window.

 Same as [firstLocalVideoFrameBlock]([AgoraRtcEngineKit firstLocalVideoFrameBlock:]).

 @param engine  The AgoraRtcEngineKit object.
 @param size    Size of the video (width and height).
 @param elapsed Time elapsed (ms) from calling `joinChannelByToken` until this callback is triggered.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine firstLocalVideoFrameWithSize:(CGSize)size elapsed:(NSInteger)elapsed;

/** Reports the statistics of the local video stream.

 * The SDK triggers this callback once every two seconds for each
 * user/host. If there are multiple users/hosts in the channel, the SDK
 * triggers this callback as many times.
 *
 * @note If you have called the
 * {@link AgoraRtcEngineKit.enableDualStreamMode: enableDualStreamMode}
 * method, this callback reports the statistics of the high-video
 * stream (high bitrate, and high-resolution video stream).
 * @param engine The {@link AgoraRtcEngineKit} object.
 * @param stats  Statistics of the local video stream. See {@link AgoraRtcLocalVideoStats}.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine localVideoStats:(AgoraRtcLocalVideoStats * _Nonnull)stats;

/** The local published media stream fell back to an audio-only stream in poor network conditions or switched back to the video when the network conditions improved.

 If you call [setLocalPublishFallbackOption]([AgoraRtcEngineKit setLocalPublishFallbackOption:]) and set *option* as AgoraStreamFallbackOptionAudioOnly, this callback will be triggered when the local publish stream falls back to audio-only mode due to poor uplink conditions, or when the audio stream switches back to the video when the uplink network condition improves.

 @note  Once the local publish stream falls back to audio only, the remote app will receive the [userMuteVideoBlock]([AgoraRtcEngineKit userMuteVideoBlock:])callback.

 @param engine              The AgoraRtcEngineKit object.
 @param isFallbackOrRecover * YES: The local publish stream fell back to audio-only due to poor network conditions.
 * NO: The local publish stream switched back to the video when the network conditions improved.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didLocalPublishFallbackToAudioOnly:(BOOL)isFallbackOrRecover;


#pragma mark Remote User Core Delegate Methods

/**-----------------------------------------------------------------------------
 * @name Remote User Core Delegate Methods
 * -----------------------------------------------------------------------------
 */

/**
 * Occurs when a remote user or user joins the channel.
 *
 * If other users or hosts are already in the channel, the SDK also reports to
 * the app on the existing users/hosts.
 *
 * The SDK triggers this callback under one of the following circumstances:
 * - A remote user/host joins the channel by calling `joinChannelByToken`.
 * - A remote user switches the user role to the host by calling
 * {@link AgoraRtcEngineKit.setClientRole: setClientRole} method after joining
 * the channel.
 * - A remote user/host rejoins the channel after a network interruption.
 * @note
 * When a web user joins the channel, this callback is triggered as long as the
 * user publishes a stream.
 @param engine  The AgoraRtcEngineKit object.
 @param uid     The user ID.
 @param elapsed Time elapsed (ms) from calling `joinChannelByToken` until this callback is triggered.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didJoinedOfUid:(NSUInteger)uid elapsed:(NSInteger)elapsed;

/**
 * Occurs when a remote user or host goes offline.
 *
 * There are two reasons for a user to go offline:
 * - Leave the channel: When the user leaves the channel, the user sends a
 * goodbye message. When this message is received, the SDK determines that the
 * user leaves the channel.
 * - Drop offline: When no data packet of the user is received for a certain
 * period of time, the SDK assumes that the user drops offline. A poor network
 * connection may lead to false detection, so we recommend using
 * the RTM SDK for reliable offline detection.
 *
 * @param engine The AgoraRtcEngineKit object.
 * @param uid The ID of the user who goes offline.
 * @param reason The reason why the user goes offline: #AgoraUserOfflineReason.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didOfflineOfUid:(NSUInteger)uid reason:(AgoraUserOfflineReason)reason;


/** Occurs when the user receives the data stream.

The SDK triggers this callback when the local user receives the stream message that the remote user sends by calling the {@link AgoraRtcEngineKit.sendStreamMessage:data: sendStreamMessage} method within five seconds.

 @param engine   AgoraRtcEngineKit object.
 @param uid      User ID of the remote user sending the message.
 @param streamId Stream ID.
 @param data     Data received by the local user.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine receiveStreamMessageFromUid:(NSUInteger)uid streamId:(NSInteger)streamId data:(NSData * _Nonnull)data;

/** Occurs when the user does not receive the data stream.

 The SDK triggers this callback when the local user fails to receive the stream message that the remote user sends by calling the {@link AgoraRtcEngineKit.sendStreamMessage:data: sendStreamMessage}
  method within five seconds.

 @param engine   AgoraRtcEngineKit object.
 @param uid      User ID of the remote user sending the message.
 @param streamId Stream ID.
 @param error    Error code. See {@link AgoraErrorCode}.
 @param missed Number of lost messages.
 @param cached Number of incoming cached messages when the data stream is interrupted.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didOccurStreamMessageErrorFromUid:(NSUInteger)uid streamId:(NSInteger)streamId error:(NSInteger)error missed:(NSInteger)missed cached:(NSInteger)cached;


#pragma mark Remote User Audio Delegate Methods

/**-----------------------------------------------------------------------------
 * @name Remote User Audio Delegate Methods
 * -----------------------------------------------------------------------------
 */


/** The first audio frame received and decoded from the remote user.

 @param engine  The AgoraRtcEngineKit object.
 @param uid     Remote user ID.
 @param elapsed Time elapsed (ms) from calling `joinChannelByToken` until this callback is triggered.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine firstRemoteAudioFrameOfUid:(NSUInteger)uid elapsed:(NSInteger)elapsed;


/** Occurs when the SDK decodes the first remote audio frame for playback.

 **Deprecated**  from v3.0.0. Use `AgoraAudioRemoteStateDecoding(2)` in the [remoteAudioStateChangedOfUid]([AgoraRtcEngineDelegate rtcEngine:remoteAudioStateChangedOfUid:state:reason:elapsed:]) callback instead.

 This callback is triggered in either of the following scenarios:

 - The remote user joins the channel and sends the audio stream.
 - The remote user stops sending the audio stream and re-sends it after 15 seconds. Reasons for such an interruption include:

     - The remote user leaves channel.
     - The remote user drops offline.
     - The remote user calls the [muteLocalAudioStream]([AgoraRtcEngineKit muteLocalAudioStream:]) method to stop sending the local audio stream.
     - The remote user calls the [disableAudio]([AgoraRtcEngineKit disableAudio]) method to disable audio.

 @param engine AgoraRtcEngineKit object.
 @param uid User ID of the remote user sending the audio stream.
 @param elapsed The time elapsed (ms) from the local user calling the joinChannel method until the SDK triggers this callback.
 */
- (void)rtcEngine:(AgoraRtcEngineKit* _Nonnull)engine firstRemoteAudioFrameDecodedOfUid:(NSUInteger)uid elapsed:(NSInteger)elapsed;

/**
 * Reports the statistics of the remote audio stream.
 *
 * The SDK triggers this callback once every two seconds for each remote user or broadcaster. If a
 * channel has multiple remote users, the SDK triggers this callback as many times.
 * @param engine The AgoraRtcEngineKit object.
 * @param stats  The statistics of the received audio. See {@link AgoraRtcRemoteAudioStats}.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine remoteAudioStats:(AgoraRtcRemoteAudioStats * _Nonnull)stats;

/** A remote user's audio was muted or unmuted.

 @param engine AgoraRtcEngineKit object
 @param muted  Mute or unmute
 @param uid    Remote user ID
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didAudioMuted:(BOOL)muted byUid:(NSUInteger)uid;


/**
 * This callback reports the IDs and volumes of the loudest speakers at the
 * moment in the channel, and whether the local user is speaking.
 *
 * Once enabled, this callback is triggered at the set interval, regardless of
 * whether a user speaks or not.
 *
 * The SDK triggers two independent `reportAudioVolumeIndicationOfSpeakers`
 * callbacks at one time, which separately report the volume information of the
 * local user and all the remote speakers.
 *
 * @param engine      The AgoraRtcEngineKit object.
 * @param speakers    An array containing the user ID and volume information
 * for each speaker: #AgoraRtcAudioVolumeInfo.
 * - In the local user's callback, this array contains the following members:
 *   - `uid` = 0,
 *   - `volume` = `totalVolume`, which reports the sum of the voice volume
 * and audio-mixing volume of the local user.
 * - In the remote users' callback, this array contains the following members:
 *   - `uid` of each remote speaker.
 *   - `volume`, which reports the sum of the voice volume and audio-mixing
 * volume of each remote speaker.
 * An empty `speakers` array in the callback indicates that no remote user is
 * speaking at the moment.
 * @param totalVolume The total volume after audio mixing. The value ranges
 * between 0 (the lowest volume) and 255 (the highest volume).
 * - In the local user's callback, `totalVolume` is the sum of the voice volume
 * and audio-mixing volume of the local user.
 * - In the remote users' callback, `totalVolume` is the sum of the voice
 * volume and audio-mixing volume of all the remote speakers.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine reportAudioVolumeIndicationOfSpeakers:(NSArray<AgoraRtcAudioVolumeInfo *> * _Nonnull)speakers totalVolume:(NSInteger)totalVolume;


/**
 * Occurs when an active speaker is detected.
 *
 * If you have called {@link AgoraRtcEngineKit.enableAudioVolumeIndication:smooth: enableAudioVolumeIndication},
 * this callback is triggered when the volume detecting unit has detected an
 * active speaker in the channel. This callback also returns the `uid` of the
 * active speaker.
 *
 * @note
 * - You need to call `enableAudioVolumeIndication` to receive this callback.
 * - The active speaker means the user ID of the speaker who speaks at the
 * highest volume during a certain period of time.
 * @param engine The AgoraRtcEngineKit object.
 * @param speakerUid The ID of the active speaker. A `speakerUid` of 0 means
 * the local user.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine activeSpeaker:(NSUInteger)speakerUid;

/** Occurs when a remote user starts audio mixing.

 The SDK triggers this callback when a remote user calls the [startAudioMixing]([AgoraRtcEngineKit startAudioMixing:loopback:replace:cycle:]) method.

 @param engine AgoraRtcEngineKit object.
 */
- (void)rtcEngineRemoteAudioMixingDidStart:(AgoraRtcEngineKit * _Nonnull)engine;

/** The remote user ended audio mixing.

 @param engine AgoraRtcEngineKit object
 */
- (void)rtcEngineRemoteAudioMixingDidFinish:(AgoraRtcEngineKit * _Nonnull)engine;

/** The audio quality of the specified user every two seconds. Same as [audioQualityBlock]([AgoraRtcEngineKit audioQualityBlock:]).

 @param engine  The AgoraRtcEngineKit object.
 @param uid     User ID of the speaker.
 @param quality AgoraNetworkQuality
 @param delay   Time delay (ms).
 @param lost    Packet loss rate (%).
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine audioQualityOfUid:(NSUInteger)uid quality:(AgoraNetworkQuality)quality delay:(NSUInteger)delay lost:(NSUInteger)lost;

/** The remote audio transport statistics.

 This callback is triggered every two seconds after the user receives the audio data packet sent from a remote user.

 @param engine     The AgoraRtcEngineKit object.
 @param uid        User ID of the remote user whose audio data packet has been received.
 @param delay      Time delay (ms) from the remote user to the local client.
 @param lost       Packet loss rate (%).
 @param rxKBitRate Received audio bitrate (kbit/s) of the packet from the remote user.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine audioTransportStatsOfUid:(NSUInteger)uid delay:(NSUInteger)delay lost:(NSUInteger)lost rxKBitRate:(NSUInteger)rxKBitRate;


/** Intra request received.
 * @param engine  The AgoraRtcEngineKit object.
*/
- (void)rtcEngineIntraRequestReceived:(AgoraRtcEngineKit *_Nonnull)engine;

/** Target bitrate updated.
 * @param engine   The AgoraRtcEngineKit object.
 * @param bweInfo  The uplink network info, including target bitrate bps.
*/
- (void)rtcEngine:(AgoraRtcEngineKit *_Nonnull)engine uplinkNetworkInfoUpdate:(AgoraUplinkNetworkInfo *_Nonnull)networkInfo;

/** Downlink network info updated.
 * @param engine       The AgoraRtcEngineKit object.
 * @param networkInfo  The network info.
*/
- (void)rtcEngine:(AgoraRtcEngineKit *_Nonnull)engine downlinkNetworkInfoUpdate:(AgoraDownlinkNetworkInfo *_Nonnull)networkInfo;

/**
 * Occurs when the audio subscribe state changed.
 *
 * @param channel The channel name of user joined.
 * @param uid The remote user ID that is subscribed to.
 * @param oldState The old state of the audio stream subscribe : #AgoraStreamSubscribeState.
 * @param newState The new state of the audio stream subscribe : #AgoraStreamSubscribeState.
 * @param elapseSinceLastState The time elapsed (ms) from the old state to the new state.
*/
  - (void)rtcEngine:(AgoraRtcEngineKit *_Nonnull)engine didAudioSubscribeStateChange:(NSString * _Nonnull)channelId
                uid:(unsigned int)uid
           oldState:(AgoraStreamSubscribeState)oldState
           newState:(AgoraStreamSubscribeState)newState
elapseSinceLastState:(int)elapseSinceLastState;

/**
 * Occurs when the audio publish state changed.
 *
 * @param channel The channel name of user joined.
 * @param oldState The old state of the audio stream publish : #AgoraStreamPublishState.
 * @param newState The new state of the audio stream publish : #AgoraStreamPublishState.
 * @param elapseSinceLastState The time elapsed (ms) from the old state to the new state.
 */
  - (void)rtcEngine:(AgoraRtcEngineKit *_Nonnull)engine didAudioPublishStateChange:(NSString * _Nonnull)channelId
           oldState:(AgoraStreamPublishState)oldState
           newState:(AgoraStreamPublishState)newState
elapseSinceLastState:(int)elapseSinceLastState;

#pragma mark String UID

/** Occurs when the local user successfully registers a user account by calling the
 * This callback reports the user ID and user account of the local user.
 * @param uid The ID of the local user.
 * @param userAccount The user account of the local user.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didLocalUserRegisteredWithUserId:(NSUInteger)uid userAccount:(NSString * _Nonnull)userAccount;

/** Occurs when the SDK gets the user ID and user account of the remote user.
 
 * After a remote user joins the channel, the SDK gets the UID and user account of the remote user,
 * caches them in a mapping table object (`userInfo`), and triggers this callback on the local client.
 
 * @param uid The ID of the remote user.
 * @param info The `AgoraUserInfo` object that contains the user ID and user account of the remote user.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didUserInfoUpdatedWithUserId:(NSUInteger)uid userInfo:(AgoraUserInfo* _Nonnull)userInfo;

#pragma mark Rhythm Player Delegates Methods

- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didRhythmPlayerStateChanged:(AgoraRhythmPlayerState)state
        errorCode:(AgoraRhythmPlayerError)errorCode;

#pragma mark Remote User Video Delegates Methods

/**-----------------------------------------------------------------------------
 * @name Remote User Video Delegates Methods
 * -----------------------------------------------------------------------------
 */


/** Occurs when the first frame of the remote user was decoded successfully.

 @deprecated This callback is deprecated. Use [remoteVideoStateChangedOfUid](remoteVideoStateChangedOfUid:state:reason:elapsed:)
   instead.

  This callback is triggered upon the SDK receiving and successfully decoding
  the first video frame from a remote video. The app can configure the
  user view settings in this delegate.

 @param engine  The AgoraRtcEngineKit object.
 @param uid     ID of the user whose video streams are received.
 @param size    Size of the video (width and height) in pixels.
 @param elapsed Time elapsed (ms) from calling `joinChannelByToken` until this callback is triggered.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine firstRemoteVideoDecodedOfUid:(NSUInteger)uid size:(CGSize)size elapsed:(NSInteger)elapsed;

/** The first frame of the remote user was displayed successfully. Same as [firstRemoteVideoFrameBlock]([AgoraRtcEngineKit firstRemoteVideoFrameBlock:]).

 @param engine  The AgoraRtcEngineKit object.
 @param uid     Remote user ID.
 @param size    Size of the video (width and height) in pixels.
 @param elapsed Time elapsed (ms) from calling `joinChannelByToken` until this callback is triggered.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine firstRemoteVideoFrameOfUid:(NSUInteger)uid size:(CGSize)size elapsed:(NSInteger)elapsed;

/** The video size and rotational change of the specified user.

 @param engine   AgoraRtcEngineKit object
 @param uid      User id
 @param size     New video size
 @param rotation New video rotation
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine videoSizeChangedOfUid:(NSUInteger)uid size:(CGSize)size rotation:(NSInteger)rotation;
- (void)rtcEngine:(AgoraRtcEngineKit* _Nonnull)engine contentInspectResult:(AgoraContentInspectResult)result;
- (void)rtcEngine:(AgoraRtcEngineKit* _Nonnull)engine snapshotTaken:(NSString* _Nonnull)channel uid:(NSUInteger)uid filePath:(NSString* _Nonnull)filePath width:(NSInteger)width height:(NSInteger)height errCode:(NSInteger)errCode;
/** Occurs when the local video stream state changes.
 *
 * This callback indicates the state of the local video stream, including camera capturing and video encoding,
 * and allows you to troubleshoot issues when exceptions occur.
 *
 * @note For some device models, the SDK will not trigger this callback when the state of the local video changes
 * while the local video capturing device is in use, so you have to make your own timeout judgment.
 * @param engine AgoraRtcEngineKit object
 * @param state State type #AgoraVideoLocalState. When the state is AgoraVideoLocalStateFailed (3), see the `error` parameter for details.
 * @param error The detailed error information: #AgoraLocalVideoStreamError.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine localVideoStateChangedOfState:(AgoraVideoLocalState)state
error:(AgoraLocalVideoStreamError)error;

/** Occurs when the remote video state has changed.
 *
 * @note This callback does not work properly when the number of users (in the `AgoraChannelProfileCommunication` profile) or hosts
 * (in the `AgoraChannelProfileLiveBroadcasting` profile) in the channel exceeds 17.
 *
 * @param engine AgoraRtcEngineKit object.
 * @param uid    ID of the user whose video state has changed.
 * @param state  The remote video state: #AgoraVideoRemoteState.
 * @param reason The reason of the remote video state change: #AgoraVideoRemoteReason.
 * @param elapsed The time elapsed (ms) from the local user calling `joinChannel` until this callback is triggered.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine remoteVideoStateChangedOfUid:(NSUInteger)uid state:(AgoraVideoRemoteState)state reason:(AgoraVideoRemoteReason)reason elapsed:(NSInteger)elapsed;

/**
 * Occurs when the state of a remote audio stream changes.
 *
 * @param engine The AgoraRtcEngineKit object.
 * @param uid    The ID of the user whose audio state has changed.
 * @param state  The state of the remote audio. See {@link AgoraAudioRemoteState}.
 * @param reason  The reason of the remote audio state change. See {@link AgoraAudioRemoteReason}.
 * @param elapsed The time elapsed (ms) from calling `joinChannelByToken` until the SDK triggers this callback.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine remoteAudioStateChangedOfUid:(NSUInteger)uid state:(AgoraAudioRemoteState)state reason:(AgoraAudioRemoteReason)reason elapsed:(NSInteger)elapsed;

/** Occurs when the state of the media stream relay changes.

 The SDK reports the state of the current media relay and possible error messages in this callback.
 
 @param engine AgoraRtcEngineKit object.
 @param state The state code in [AgoraChannelMediaRelayState](AgoraChannelMediaRelayState).
 @param error The error code in [AgoraChannelMediaRelayError](AgoraChannelMediaRelayError).
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine
channelMediaRelayStateDidChange:(AgoraChannelMediaRelayState)state
            error:(AgoraChannelMediaRelayError)error;

/** Reports events during the media stream relay.
 
 @param engine AgoraRtcEngineKit object.
 @param event The event code in [AgoraChannelMediaRelayEvent](AgoraChannelMediaRelayEvent).
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine
didReceiveChannelMediaRelayEvent:(AgoraChannelMediaRelayEvent)event;

/** A remote user's video paused or resumed. Same as [userMuteVideoBlock]([AgoraRtcEngineKit userMuteVideoBlock:]).
 @deprecated
 @note   Invalid when the number of users in a channel exceeds 20.

 @param engine The AgoraRtcEngineKit object.
 @param muted  Paused or resumed:

 * Yes: Remote user's video paused.
 * No: Remote user's video resumed.

 @param uid    Remote user ID.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didVideoMuted:(BOOL)muted byUid:(NSUInteger)uid __deprecated_msg("use rtcEngine:remoteVideoStateChangedOfUid:state:reason: instead.");

/** A remote user's video was enabled or disabled.
 @deprecated
 Once the video function is disabled, users can only perform an audio call and cannot see any video.

 @note  Invalid when the number of users in a channel exceeds 20.

 @param engine  The AgoraRtcEngineKit object.
 @param enabled Enabled or disabled:

 * Yes: User has enabled the video function.
 * No: User has disabled the video function.

 @param uid     Remote user ID.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didVideoEnabled:(BOOL)enabled byUid:(NSUInteger)uid  __deprecated_msg("use rtcEngine:remoteVideoStateChangedOfUid:state:reason: instead.");

/** A remote user's local video was enabled or disabled.
 @deprecated
 @param engine  The AgoraRtcEngineKit object.
 @param enabled Enabled or disabled:

 * Yes: User has enabled the local video function.
 * No: User has disabled the local video function.

 @param uid     Remote user ID.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didLocalVideoEnabled:(BOOL)enabled byUid:(NSUInteger)uid __deprecated_msg("use rtcEngine:remoteVideoStateChangedOfUid:state:reason: instead.");


/**
 * Reports the statistics of the video stream from each remote user/host.
 *
 * The SDK triggers this callback once every two seconds for each remote user
 * or host. If a channel includes multiple remote users, the SDK triggers this
 * callback as many times.
 *
 * @param engine The AgoraRtcEngineKit object.
 * @param stats  The statistics of the received remote video streams. See
 * #AgoraRtcRemoteVideoStats.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine remoteVideoStats:(AgoraRtcRemoteVideoStats * _Nonnull)stats;


 /** The remote published media stream fell back to an audio-only stream in poor network conditions or switched back to the video when the network conditions improved.

 Once you enabled [setRemoteSubscribeFallbackOption]([AgoraRtcEngineKit setRemoteSubscribeFallbackOption:]),
 this event will be triggered to receive audio only due to poor network conditions or resubscribes the video when the network condition improves.

 @note  Once the remote subscribe stream is switched to the low stream due to poor network conditions, you can monitor the stream switch between a high and low stream in the [remoteVideoStats]([AgoraRtcEngineDelegate rtcEngine:remoteVideoStats:]) callback.

 @param engine              The AgoraRtcEngineKit object.
 @param isFallbackOrRecover * YES: The remote subscribe stream fell back to audio-only due to poor network conditions.
 * NO: The remote subscribe stream switched back to the video stream when the network conditions improved.
 @param uid                 Remote user ID
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine didRemoteSubscribeFallbackToAudioOnly:(BOOL)isFallbackOrRecover byUid:(NSUInteger)uid;

/** The remote video transport statistics.

 This callback is triggered every two seconds after the user receives the video data packet sent from a remote user.

 @param engine     The AgoraRtcEngineKit object.
 @param uid        User ID of the remote user whose video packet has been received.
 @param delay      Time delay (ms) from the remote user to the local client.
 @param lost       Packet loss rate (%).
 @param rxKBitRate Received video bitrate (kbit/s) of the packet from the remote user.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine videoTransportStatsOfUid:(NSUInteger)uid delay:(NSUInteger)delay lost:(NSUInteger)lost rxKBitRate:(NSUInteger)rxKBitRate;

/**
 * Occurs when the video subscribe state changed.
 *
 * @param channel The channel name of user joined.
 * @param uid The remote user ID that is subscribed to.
 * @param oldState The old state of the video stream subscribe : #AgoraStreamSubscribeState.
 * @param newState The new state of the video stream subscribe : #AgoraStreamSubscribeState.
 * @param elapseSinceLastState The time elapsed (ms) from the old state to the new state.
 */
  - (void)rtcEngine:(AgoraRtcEngineKit *_Nonnull)engine didVideoSubscribeStateChange:(NSString * _Nonnull)channelId
                uid:(unsigned int)uid
           oldState:(AgoraStreamSubscribeState)oldState
           newState:(AgoraStreamSubscribeState)newState
elapseSinceLastState:(int)elapseSinceLastState;

/**
 * Occurs when the video publish state changed.
 *
 * @param channel The channel name of user joined.
 * @param oldState The old state of the video stream publish : #AgoraStreamPublishState.
 * @param newState The new state of the video stream publish : #AgoraStreamPublishState.
 * @param elapseSinceLastState The time elapsed (ms) from the old state to the new state.
*/
  - (void)rtcEngine:(AgoraRtcEngineKit *_Nonnull)engine didVideoPublishStateChange:(NSString * _Nonnull)channelId
           oldState:(AgoraStreamPublishState)oldState
           newState:(AgoraStreamPublishState)newState
elapseSinceLastState:(int)elapseSinceLastState;

#pragma mark Stream Publish Delegate Methods

/**-----------------------------------------------------------------------------
 * @name Stream Publish Delegate Methods
 * -----------------------------------------------------------------------------
 */

/** Occurs when the state of the RTMP streaming changes.

 @param engine    The AgoraRtcEngineKit object.
 @param url       Address to which the publisher publishes the stream.
 @param state     [AgoraRtmpStreamPublishState]([AgoraRtmpStreamPublishState])
 @param errCode   [AgoraRtmpStreamPublishError]([AgoraRtmpStreamPublishError])
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine rtmpStreamingChangedToState:(NSString * _Nonnull)url
                                                                    state:(AgoraRtmpStreamPublishState)state
                                                                  errCode:(AgoraRtmpStreamPublishError)errCode;

/** A stream was published.

 @param engine    The AgoraRtcEngineKit object.
 @param url       Address to which the publisher publishes the stream.
 @param errorCode [AgoraErrorCode]([AgoraErrorCode])
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine streamPublishedWithUrl:(NSString * _Nonnull)url errorCode:(AgoraErrorCode)errorCode;

/** A stream was unpublished.

 @param engine The AgoraRtcEngineKit object.
 @param url    Address to which the publisher unpublishes the stream.
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine streamUnpublishedWithUrl:(NSString * _Nonnull)url;

/** The publisher transcoding was updated.

 @param engine The AgoraRtcEngineKit object.
 */
- (void)rtcEngineTranscodingUpdated:(AgoraRtcEngineKit * _Nonnull)engine;

/** The status of the injected stream.

@param engine  The AgoraRtcEngineKit object.
@param url     URL address added to the broadcast.
@param uid     User ID
@param status  AgoraInjectStreamStatus
 */
- (void)rtcEngine:(AgoraRtcEngineKit * _Nonnull)engine streamInjectedStatusOfUrl:(NSString * _Nonnull)url uid:(NSUInteger)uid status:(AgoraInjectStreamStatus)status;

/** Audio mixing state changed.
 * @param engine  The AgoraRtcEngineKit object.
 * @param state  AgoraAudioMixingStateType
 * @param errorCode  AgoraAudioMixingErrorType
*/
- (void)rtcEngine:(AgoraRtcEngineKit *_Nonnull)engine audioMixingStateChanged:(AgoraAudioMixingStateType)state
                                                                    errorCode:(AgoraAudioMixingErrorType)errorCode;
@end

#pragma mark - AgoraRtcEngineKit

/**
 * Provides all methods that can be invoked by your application.
 *
 * Agora provides ensured quality of experience (QoE) for worldwide
 * Internet-based voice and video communications through a virtual global
 * network that is especially optimized for real-time web and mobile-to-mobile
 * applications.
 *
 * `AgoraRtcEngineKit` is the basic interface class of Agora Native SDK. Creating an AgoraRtcEngineKit object and then calling the methods of this object enables the use of Agora Native SDK’s communication functionality.
*/
__attribute__((visibility("default"))) @interface AgoraRtcEngineKit : NSObject

#pragma mark Core Methods

/**-----------------------------------------------------------------------------
 * @name Core Methods
 * -----------------------------------------------------------------------------
 */

/**
 * Sets and retrieves the SDK delegate.
 * 
 * The SDK uses the delegate to inform the app on engine runtime events. All methods defined in the
 * delegate are optional implementation methods.
 */
@property(nonatomic, weak) id<AgoraRtcEngineDelegate> _Nullable delegate;

/**
 * Joins a channel.
 *
 * Users in the same channel can talk to each other, and multiple users in the
 * same channel can start a group chat. Users with different App IDs cannot
 * call each other even if they join the same channel.
 *
 * You must call the {@link leaveChannel: leaveChannel} method to exit the
 * current call before entering another channel. This method call is
 * asynchronous; therefore, you can call this method in the main user interface
 * thread.
 *
 * A successful method call triggers the following callbacks:
 *
 * - The local client: {@link AgoraRtcEngineDelegate.rtcEngine:didJoinChannel:withUid:elapsed: didJoinChannel}.
 * - The remote client: {@link AgoraRtcEngineDelegate.rtcEngine:didJoinedOfUid:elapsed: didJoinedOfUid},
 * if the user joining the channel is in the Communication profile, or is a
 * BROADCASTER in the Live Broadcast profile.
 *
 * When the connection between the client and Agora's server is interrupted due
 * to poor network conditions, the SDK tries reconnecting to the server. When
 * the local client successfully rejoins the channel, the SDK triggers the {@link AgoraRtcEngineDelegate.rtcEngine:didRejoinChannel:withUid:elapsed: didRejoinChannel} callback on the local client.
 *
 * @note
 * - When joining a channel, the SDK calls
 * `setCategory(AVAudioSessionCategoryPlayAndRecord)` to set `AVAudioSession`
 * to `PlayAndRecord` mode. When `AVAudioSession` is set to `PlayAndRecord`
 * mode, the sound played (for example a ringtone) is interrupted. The app
 * should not set `AVAudioSession` to any other mode.
 * - The SDK uses the iOS's AVAudioSession shared object for audio recording
 * and playback. Using this object may affect the SDK’s audio functions.
 * @param token The token for authentication.
 * - In situations not requiring high security: You can use the temporary token
 * generated at Console. For details, see [Get a temporary token](https://docs.agora.io/en/Agora%20Platform/token?platform=All%20Platforms#get-a-temporary-token).
 * - In situations requiring high security: Set it as the token generated at
 * you server. For details, see [Generate a token](https://docs.agora.io/en/Agora%20Platform/token?platform=All%20Platforms#get-a-token).
 * @param channelId Unique channel name for the AgoraRTC session in the string
 * format. The string length must be less than 64 bytes. Supported character
 * scopes are:
 * - All lowercase English letters: a to z.
 * - All uppercase English letters: A to Z.
 * - All numeric characters: 0 to 9.
 * - The space character.
 * - Punctuation characters and other symbols, including: "!", "#", "$", "%", "&", "(", ")", "+", "-", ":", ";", "<", "=", ".", ">", "?", "@", "[", "]", "^", "_", " {", "}", "|", "~", ",".
 * @param info (Optional) Additional information about the channel. This
 * parameter can be set to `nil` or contain channel related information. Other
 * users in the channel do not receive this message.
 * @param uid User ID. A 32-bit unsigned integer with a value ranging from 1 to
 * (2<sup>32</sup>-1). The `uid` must be unique. If a `uid` is not assigned (or
 * set to 0), the SDK assigns and returns a `uid` in the callback. Your app
 * must record and maintain the returned `uid` since the SDK does not do so.
 * @param joinSuccessBlock Same as {@link AgoraRtcEngineDelegate.rtcEngine:didJoinChannel:withUid:elapsed: didJoinChannel}. We recommend you set this parameter as `nil` to use `didJoinChannel`.
 * - If `joinSuccessBlock` is nil, the SDK triggers the `didJoinChannel` callback.
 * - If you implement both `joinSuccessBlock` and `didJoinChannel`, `joinSuccessBlock` takes higher priority than `didJoinChannel`.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 *    - -2: #AgoraErrorCodeInvalidArgument
 *    - -3: #AgoraErrorCodeNotReady
 *    - -5: #AgoraErrorCodeRefused
 */
- (int)joinChannelByToken:(NSString * _Nullable)token
                channelId:(NSString * _Nonnull)channelId
                     info:(NSString * _Nullable)info
                      uid:(NSUInteger)uid
              joinSuccess:(void(^ _Nullable)(NSString * _Nonnull channel, NSUInteger uid, NSInteger elapsed))joinSuccessBlock;

/**
 * Joins a channel.
 *
 * Users in the same channel can talk to each other, and multiple users in the
 * same channel can start a group chat. Users with different App IDs cannot
 * call each other even if they join the same channel.
 *
 * You must call the {@link leaveChannel: leaveChannel} method to exit the
 * current call before entering another channel. This method call is
 * asynchronous; therefore, you can call this method in the main user interface
 * thread.
 *
 * A successful method call triggers the following callbacks:
 *
 * - The local client: {@link AgoraRtcEngineDelegate.rtcEngine:didJoinChannel:withUid:elapsed: didJoinChannel}.
 * - The remote client: {@link AgoraRtcEngineDelegate.rtcEngine:didJoinedOfUid:elapsed: didJoinedOfUid},
 * if the user joining the channel is in the Communication profile, or is a
 * BROADCASTER in the Live Broadcast profile.
 *
 * When the connection between the client and Agora's server is interrupted due
 * to poor network conditions, the SDK tries reconnecting to the server. When
 * the local client successfully rejoins the channel, the SDK triggers the {@link AgoraRtcEngineDelegate.rtcEngine:didRejoinChannel:withUid:elapsed: didRejoinChannel} callback on the local client.
 *
 * @note
 * - When joining a channel, the SDK calls
 * `setCategory(AVAudioSessionCategoryPlayAndRecord)` to set `AVAudioSession`
 * to `PlayAndRecord` mode. When `AVAudioSession` is set to `PlayAndRecord`
 * mode, the sound played (for example a ringtone) is interrupted. The app
 * should not set `AVAudioSession` to any other mode.
 * - The SDK uses the iOS's AVAudioSession shared object for audio recording
 * and playback. Using this object may affect the SDK’s audio functions.
 * @param token The token for authentication.
 * - In situations not requiring high security: You can use the temporary token
 * generated at Console. For details, see [Get a temporary token](https://docs.agora.io/en/Agora%20Platform/token?platform=All%20Platforms#get-a-temporary-token).
 * - In situations requiring high security: Set it as the token generated at
 * you server. For details, see [Generate a token](https://docs.agora.io/en/Agora%20Platform/token?platform=All%20Platforms#get-a-token).
 * @param channelId Unique channel name for the AgoraRTC session in the string
 * format. The string length must be less than 64 bytes. Supported character
 * scopes are:
 * - All lowercase English letters: a to z.
 * - All uppercase English letters: A to Z.
 * - All numeric characters: 0 to 9.
 * - The space character.
 * - Punctuation characters and other symbols, including: "!", "#", "$", "%", "&", "(", ")", "+", "-", ":", ";", "<", "=", ".", ">", "?", "@", "[", "]", "^", "_", " {", "}", "|", "~", ",".
 * @param uid User ID. A 32-bit unsigned integer with a value ranging from 1 to
 * (2<sup>32</sup>-1). The `uid` must be unique. If a `uid` is not assigned (or
 * set to 0), the SDK assigns and returns a `uid` in the callback. Your app
 * must record and maintain the returned `uid` since the SDK does not do so.
 * @param mediaOptions AgoraRtcChannelMediaOptions Object.
 * @param joinSuccessBlock Same as {@link AgoraRtcEngineDelegate.rtcEngine:didJoinChannel:withUid:elapsed: didJoinChannel}. We recommend you set this parameter as `nil` to use `didJoinChannel`.
 * - If `joinSuccessBlock` is nil, the SDK triggers the `didJoinChannel` callback.
 * - If you implement both `joinSuccessBlock` and `didJoinChannel`, `joinSuccessBlock` takes higher priority than `didJoinChannel`.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 *    - -2: #AgoraErrorCodeInvalidArgument
 *    - -3: #AgoraErrorCodeNotReady
 *    - -5: #AgoraErrorCodeRefused
 */
- (int)joinChannelByToken:(NSString * _Nullable)token
                channelId:(NSString * _Nonnull)channelId
                      uid:(NSUInteger)uid
             mediaOptions:(AgoraRtcChannelMediaOptions * _Nonnull)mediaOptions
              joinSuccess:(void(^ _Nullable)(NSString * _Nonnull channel, NSUInteger uid, NSInteger elapsed))joinSuccessBlock;

- (int)startMultipleVideoStreams:(VIEW_CLASS * _Nonnull)view screen:(VIEW_CLASS * _Nonnull)screenView remotes:(NSArray * _Nullable)remoteViews;


/**
 * Leaves the channel.
 *
 * This method allows a user to leave the channel, for example, by hanging up or
 * exiting a call.
 *
 * This method also releases all resources related to the call.
 *
 * This method is an asynchronous call, which means that the result of this
 * method returns before the user has not actually left the channel. Once
 * the user successfully leaves the channel, the SDK triggers the
 * {@link AgoraRtcEngineDelegate.rtcEngine:didLeaveChannelWithStats: didLeaveChannelWithStats} callback.
 *
 * @note
 * - If you call {@link destroy} immediately after this method, the leaveChannel
 * process is interrupted, and the SDK does not trigger the
 * `didLeaveChannelWithStats` callback.
 * - When you call this method, the SDK deactivates the audio session on iOS by
 * default, and may affect other apps.
 *
 * @param leaveChannelBlock This callback indicates that a user leaves a channel, and provides the statistics of the call in #AgoraChannelStats.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)leaveChannel:(void(^ _Nullable)(AgoraChannelStats * _Nonnull stat))leaveChannelBlock;

/**
 * Leaves the channel.
 *
 * This method allows a user to leave the channel, for example, by hanging up or
 * exiting a call.
 *
 * This method also releases all resources related to the call.
 *
 * This method is an asynchronous call, which means that the result of this
 * method returns before the user has not actually left the channel. Once
 * the user successfully leaves the channel, the SDK triggers the
 * {@link AgoraRtcEngineDelegate.rtcEngine:didLeaveChannelWithStats: didLeaveChannelWithStats} callback.
 *
 * @note
 * - If you call {@link destroy} immediately after this method, the leaveChannel
 * process is interrupted, and the SDK does not trigger the
 * `didLeaveChannelWithStats` callback.
 * - When you call this method, the SDK deactivates the audio session on iOS by
 * default, and may affect other apps.
 *
 * @param options The leave channel options.
 * @param leaveChannelBlock This callback indicates that a user leaves a channel, and provides the statistics of the call in #AgoraChannelStats.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)leaveChannel:(AgoraLeaveChannelOptions * _Nonnull)options
  leaveChannelBlock:(void (^ _Nullable)(AgoraChannelStats * _Nonnull))leaveChannelBlock;

/**
 * Sets the channel profile.
 *
 * The SDK differentiates channel profiles and applies different optimization
 * algorithms accordingly.
 *
 * @note
 * - To ensure the quality of real-time communication, we recommend that all
 * users in a channel use the same channel profile.
 * - Call this method before calling `joinChannelByToken`. You
 * cannot set the channel profile once you have joined the channel.
 *
 * @param profile The channel profile: #AgoraChannelProfile.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setChannelProfile:(AgoraChannelProfile)profile;

/**
 *  Updates the channel media options after joining the channel.
 *
 * @param mediaOptions The channel media options: ChannelMediaOptions.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)updateChannelWithMediaOptions:(AgoraRtcChannelMediaOptions* _Nonnull)mediaOptions;

/**
 *  Sets the role of a user.
 *
 * This method sets the role of a user as either a broadcaster or an audience.
 * - The broadcaster sends and receives streams.
 * - The audience receives streams only.
 * @note
 * By default, all users are audience regardless of the channel profile. Call
 * this method to change the user role to BROADCASTER so that the user can send
 * a stream.
 * @param role Role of the client: #AgoraClientRole.
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)setClientRole:(AgoraClientRole)role;

/** Sets the role of a user.

This method is applicable only to the live interactive streaming profile.

Sets the role of a user, such as a host or an audience (default), before joining a channel.

This method can be used to switch the user role after a user joins a channel.

When a user switches user roles after joining a channel, a successful method call triggers the following callback:

- The local client: [didClientRoleChanged]([AgoraRtcEngineDelegate rtcEngine:didClientRoleChanged:newRole:])
- Remote clients: [didJoinedOfUid]([AgoraRtcEngineDelegate rtcEngine:didJoinedOfUid:elapsed:]) or [didOfflineOfUid(AgoraUserOfflineReasonBecomeAudience)]([AgoraRtcEngineDelegate rtcEngine:didOfflineOfUid:reason:])

 @param role The role of the user:

 - `AgoraClientRoleBroadcaster(1)`: Host. A host can both send and receive streams.
 - `AgoraClientRoleAudience(2)`: Audience, the default role. An audience can only receive streams.

 @param options The client role of the user, see AgoraClientRoleOptions.

 @return - `0`(`AgoraRtmpStreamingErrorCodeOK`): Success.
- < `0`: Failure.

  - `-1`(`AgoraErrorCodeFailed`): A general error occurs (no specified reason).
  - `-2`(`AgoraErrorCodeInvalidArgument`): The parameter is invalid.
  - `-7`(`AgoraErrorCodeNotInitialized`): The SDK is not initialized.
 */
- (int)setClientRole:(AgoraClientRole)role options:(AgoraClientRoleOptions * _Nullable)options;

/**
 * Renews the token.
 *
 * Once a token is enabled and used, it expires after a certain period of time.
 *
 * Under the following circumstances, generate a new token on your server, and
 * then call this method to renew it. Failure to do so results in the SDK
 * disconnecting from the server.
 * - The {@link AgoraRtcEngineDelegate.rtcEngine:tokenPrivilegeWillExpire: tokenPrivilegeWillExpire} callback is triggered.
 * - The {@link AgoraRtcEngineDelegate.rtcEngineRequestToken: rtcEngineRequestToken} callback is triggered.
 * - The `AgoraErrorCodeTokenExpired`(-109) error is reported.
 * @param token The new token.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)renewToken:(NSString * _Nonnull)token;

/**
 * Gets the connection state of the SDK.
 *
 * @return The connection state. See {@link AgoraConnectionState}.
 */
- (AgoraConnectionState)getConnectionState;

/** Starts to relay media streams across channels.

 After a successful method call, the SDK triggers the [channelMediaRelayStateDidChange]([AgoraRtcEngineDelegate rtcEngine:channelMediaRelayStateDidChange:error:]) and [didReceiveChannelMediaRelayEvent]([AgoraRtcEngineDelegate rtcEngine:didReceiveChannelMediaRelayEvent:]) callbacks, and these callbacks return the state and events of the media stream relay.
 
 - If the `channelMediaRelayStateDidChange` callback returns AgoraChannelMediaRelayStateRunning(2) and AgoraChannelMediaRelayStateIdle(0), and the `didReceiveChannelMediaRelayEvent` callback returns  AgoraChannelMediaRelayEventSentToDestinationChannel(4), the SDK starts relaying media streams between the original and the destination channel.
 - If the `channelMediaRelayStateDidChange` callback returns AgoraChannelMediaRelayStateFailure(3), an exception occurs during the media stream relay.
 
 **Note**

 - Call this method after the [joinChannel]([AgoraRtcEngineKit joinChannelByToken:channelId:info:uid:joinSuccess:]) method.
 - This method takes effect only when you are a broadcaster in a Live-broadcast channel.
 - After a successful method call, if you want to call this method again, ensure that you call the [stopChannelMediaRelay]([AgoraRtcEngineKit stopChannelMediaRelay]) method to quit the current relay.
 - Contact sales-us@agora.io before implementing this function.
 - We do not support string user accounts in this API.

 @param config The configuration of the media stream relay: [AgoraChannelMediaRelayConfiguration](AgoraChannelMediaRelayConfiguration).

 @return - 0: Success.
 - < 0: Failure.
 */
- (int)startChannelMediaRelay:(AgoraChannelMediaRelayConfiguration * _Nonnull)config;

/** Updates the channels for media stream relay.

 After the channel media relay starts, if you want to relay the media stream to more channels, or leave the current relay channel, you can call the `updateChannelMediaRelay` method.

 After a successful method call, the SDK triggers the [didReceiveChannelMediaRelayEvent]([AgoraRtcEngineDelegate rtcEngine:didReceiveChannelMediaRelayEvent:]) callback with the AgoraChannelMediaRelayEventUpdateDestinationChannel(7) state code.

 **Note**

 - Call this method after the [startChannelMediaRelay]([AgoraRtcEngineKit startChannelMediaRelay:]) method to update the destination channel.
 - This method supports adding at most four destination channels in the relay. If there are already four destination channels in the relay, remove the unnecessary ones with the `removeDestinationInfoForChannelName` method in channelMediaRelayConfiguration before calling this method.
 
 @param config The media stream relay configuration: [AgoraChannelMediaRelayConfiguration](AgoraChannelMediaRelayConfiguration).

 @return - 0: Success.
 - < 0: Failure.
 */
- (int)updateChannelMediaRelay:(AgoraChannelMediaRelayConfiguration * _Nonnull)config;

/** Stops the media stream relay.

 Once the relay stops, the broadcaster quits all the destination channels.

 After a successful method call, the SDK triggers the [channelMediaRelayStateDidChange]([AgoraRtcEngineDelegate rtcEngine:channelMediaRelayStateDidChange:error:]) callback. If the callback returns  AgoraChannelMediaRelayStateIdle(0) and AgoraChannelMediaRelayErrorNone(0), the broadcaster successfully stops the relay.

 @note If the method call fails, the SDK triggers the [channelMediaRelayStateDidChange]([AgoraRtcEngineDelegate rtcEngine:channelMediaRelayStateDidChange:error:]) callback with the AgoraChannelMediaRelayErrorServerNoResponse(2) or AgoraChannelMediaRelayEventUpdateDestinationChannelRefused(8) state code. You can leave the channel by calling the [leaveChannel]([AgoraRtcEngineKit leaveChannel:]) method, and the media stream relay automatically stops.
 
 @return - 0: Success.
 - < 0: Failure.
 */
- (int)stopChannelMediaRelay;

/** pause the channels for media stream relay.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)pauseAllChannelMediaRelay;

/** resume the channels for media stream relay.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)resumeAllChannelMediaRelay;

#if (!(TARGET_OS_IPHONE) && (TARGET_OS_MAC))

- (int)startLocalVideoTranscoder:(AgoraLocalTranscoderConfiguration* _Nonnull)config;

- (int)updateLocalTranscoderConfiguration:(AgoraLocalTranscoderConfiguration* _Nonnull)config;

- (int)stopLocalVideoTranscoder;

#endif
/**
 * @deprecated Web SDK interoperability is by default enabled.
 *
 * @param enabled Whether interoperability with the Agora Web SDK is enabled:
 * - YES: Enabled.
 * - NO: Disabled.
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)enableWebSdkInteroperability:(BOOL)enabled;

/**
 * Initializes the Agora SDK service.
 *
 * After the initialization, the service is set to enable audio by default.
 * @note Ensure that you call this method before calling any other API.
 * @warning Only users with the same App ID can call each other.
 * @warning One AgoraRtcEngineKit can use only one App ID. If you need to
 * change the App ID, call {@link destroy} to release the current instance
 * first, and then call this method to create a new instance.
 @param appId    [App ID](https://docs.agora.io/en/Agora%20Platform/terms?platform=All%20Platforms#a-nameappidaapp-id) of
 your Agora project.
 @param delegate AgoraRtcEngineDelegate.
 @return An AgoraRtcEngineKit object.
 */
+ (instancetype _Nonnull)sharedEngineWithAppId:(NSString * _Nonnull)appId
                                      delegate:(id<AgoraRtcEngineDelegate> _Nullable)delegate;

/** Creates an AgoraRtcEngineKit instance.

  Unless otherwise specified, all the methods provided by the AgoraRtcEngineKit instance are executed asynchronously. Agora recommends calling these methods in the same thread.

  @note
  - You must create the AgoraRtcEngineKit instance before calling any other method.
  - You can create an AgoraRtcEngineKit instance either by calling this method or by calling {@link AgoraRtcEngineKit.sharedEngineWithAppId:delegate: sharedEngineWithAppId}. The difference between `sharedEngineWithAppId` and this method is that this method enables you to specify the connection area.
  - The SDK supports creating only one AgoraRtcEngineKit instance for an app for now.

  @param config    Configurations for the AgoraRtcEngineKit instance. For details, see AgoraRtcEngineConfig.
  @param delegate AgoraRtcEngineDelegate.

  @return - The AgoraRtcEngineKit instance, if this method call succeeds.
 - The error code, if this method call fails.

  - `-1`(`AgoraErrorCodeFailed`): A general error occurs (no specified reason).
  - `-2`(`AgoraErrorCodeInvalidArgument`): No `AgoraRtcEngineDelegate` object is specified.
  - `-7`(`AgoraErrorCodeNotInitialized`): The SDK is not initialized.
  - `-101`(`AgoraErrorCodeInvalidAppId`): The App ID is invalid.
  */
+ (instancetype _Nonnull)sharedEngineWithConfig:(AgoraRtcEngineConfig * _Nonnull)config
                                       delegate:(id<AgoraRtcEngineDelegate> _Nullable)delegate;

/**
 * This method releases all the resources used by the Agora SDK. This is useful
 * for applications that occasionally make voice or video calls, to free up
 * resources for other operations when not making calls.
 * Once the application has called this method to destroy the created
 * AgoraRtcEngineKit instance, no other methods in the SDK can be used and no
 * callbacks occur. To start communications again, call
 * {@link sharedEngineWithAppId:delegate: sharedEngineWithAppId} to establish a
 * new AgoraRtcEngineKit instance.
 * @note
 * - Call this method in the subthread.
 * - This method is a synchronous call, which means that the result of
 * this method call returns after the AgoraRtcEngineKit object resources are
 * released. Do not call this method in any callback generated by the SDK, or
 * it may result in a deadlock.
 */
+ (void)destroy;

#pragma mark Core Audio

/**-----------------------------------------------------------------------------
 * @name Core Audio
 * -----------------------------------------------------------------------------
 */

/**
 * Enables the audio.
 *
 * The audio is enabled by default.
 *
 * @note
 * This method controls the underlying states of the Engine. It is still
 * valid after one leaves channel.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)enableAudio;

/**
 * Disables the audio.
 *
 * @note
 * This method controls the underlying states of the Engine. It is still
 * valid after one leaves channel.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)disableAudio;

/**
 * Enables or disables the local audio capture.
 *
 * The audio function is enabled by default. This method disables or re-enables the
 * local audio function, that is, to stop or restart local audio capture and
 * processing.
 *
 * This method does not affect receiving or playing the remote audio streams,
 * and `enableLocalAudio` (NO) is applicable to scenarios where the user wants
 * to receive remote audio streams without sending any audio stream to other users
 * in the channel.
 *
 * @param enabled Determines whether to disable or re-enable the local audio function:
 * - `YES`: (Default) Re-enable the local audio function, that is, to start local
 * audio capture and processing.
 * - `NO`: Disable the local audio function, that is, to stop local audio
 * capture and processing.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
*/
- (int)enableLocalAudio:(BOOL)enabled;

/**
 * Sets the audio profile.
 * @note
 * - Call this method before calling `joinChannelByToken`.
 * - In scenarios requiring high-quality audio, Agora recommends setting `profile`
 * as `AgoraAudioProfileMusicHighQuality`(4).
 * - To set the audio scenario, call the {@link sharedEngineWithConfig:delegate: sharedEngineWithConfig}
 * method.
 * @param profile  The audio profile, such as the sample rate, bitrate, encoding mode, and the number of
 * channels, see #AgoraAudioProfile.
 *
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)setAudioProfile:(AgoraAudioProfile)profile;

/**
 * Enables the `reportAudioVolumeIndicationOfSpeakers` callback to report on
 * which users are speaking and the speakers' volume.
 *
 * Once the {@link AgoraRtcEngineDelegate.rtcEngine:reportAudioVolumeIndicationOfSpeakers:totalVolume: reportAudioVolumeIndicationOfSpeakers}
 * callback is enabled, the SDK returns the volume indication in the at the
 * time interval set in `enableAudioVolumeIndication`, regardless of whether
 * any user is speaking in the channel.
 *
 * @param interval Sets the time interval between two consecutive volume indications:
 * - ≤ 0: Disables the volume indication.
 * - > 0: Time interval (ms) between two consecutive volume indications,
 * and should be integral multiple of 200 (less than 200 will be set to 200).
 * @param smooth The smoothing factor that sets the sensitivity of the audio
 * volume indicator. The value range is [0, 10]. The greater the value, the
 * more sensitive the indicator. The recommended value is 3.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)enableAudioVolumeIndication:(NSInteger)interval
                            smooth:(NSInteger)smooth
                         reportVad:(BOOL)reportVad;


#if TARGET_OS_IPHONE
/**
 * Enables/Disables the speakerphone temporarily. (iOS only)
 *
 * When the audio route changes, the SDK triggers the {@link AgoraRtcEngineDelegate.rtcEngine:didAudioRouteChanged: didAudioRouteChanged} callback.
 *
 * You can call this method before, during, or after a call. However, Agora recommends calling this method only when you are in a channel to change the audio route temporarily.
 * @note
 * - The SDK calls `setCategory(AVAudioSessionCategoryPlayAndRecord)` with options to configure the headset or speakerphone, so this method call applies to all audio playback in the system.
 * - This method sets the audio route temporarily. Plugging in or unplugging a headphone, or the SDK re-enabling the audio device module (ADM)
 * to adjust the media volume in some scenarios relating to audio, leads to a change in the audio route. See *Principles for Changing the Audio Route*.
 * @param enableSpeaker Whether to set the speakerphone as the temporary audio route:
 * - `YES`: Set the speakerphone as the audio route temporarily. This setting does not take effect if a headphone or a Bluetooth audio device is connected.
 * - `NO`: Do not set the speakerphone as the audio route.
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)setEnableSpeakerphone:(BOOL)enableSpeaker;

/**
 * Checks whether the speakerphone is enabled. (iOS only)
 *
 * @return
 * - `YES`: The speakerphone is enabled, and the audio plays from the
 * speakerphone.
 * - `NO`: The speakerphone is not enabled, and the audio plays from devices
 * other than the speakerphone. For example, the headset or earpiece.
 */
- (BOOL)isSpeakerphoneEnabled;

/**
 * Sets the default audio route. (iOS only)
 *
 * Most mobile phones have two audio routes: An earpiece at the top, and a speakerphone at the bottom.
 * The earpiece plays at a lower volume, and the speakerphone plays at a higher volume.
 *
 * By setting the default audio route, you determine whether the audio playback comes through the earpiece or speakerphone
 * when no external audio device is connected.
 *
 * Depending on the scenario, Agora uses different default audio routes:
 * - Voice call: Earpiece
 * - Audio broadcast: Speakerphone
 * - Video call: Speakerphone
 * - Video broadcast: Speakerphone
 *
 * Call this method to change the default audio route before, during, or after a call.
 * When the audio route changes, the SDK triggers the {@link AgoraRtcEngineDelegate.rtcEngine:didAudioRouteChanged: didAudioRouteChanged} callback.
 * @note
 * The system audio route changes when an external audio device, such as a headphone or a Bluetooth audio device, is connected. See *Principles for Changing the Audio Route*.
 * @param defaultToSpeaker Whether to set the speakerphone as the default audio route:
 * - `YES`: Set the speakerphone as the default audio route.
 * - `NO`: Do not set the speakerphone as the default audio route.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setDefaultAudioRouteToSpeakerphone:(BOOL)defaultToSpeaker;
#endif

/** Adjusts the recording volume.

 @param volume Recording volume; ranges from 0 to 400:

 * 0: Mute
 * 100: Original volume
 * 400: (Maximum) Four times the original volume with signal clipping protection

 @return * 0: Success.
* <0: Failure.
 */
- (int)adjustRecordingSignalVolume:(NSInteger)volume;

/** Adjusts the playback volume.

 @param volume Playback volume; ranges from 0 to 400:

 * 0: Mute
 * 100: Original volume
 * 400: (Maximum) Four times the original volume with signal clipping protection

 @return * 0: Success.
* <0: Failure.
 */
- (int)adjustPlaybackSignalVolume:(NSInteger)volume;

/** Adjust the playback signal volume of a specified remote user.

 You can call this method as many times as necessary to adjust the playback volume of different remote users, or to repeatedly adjust the playback volume of the same remote user.

 **Note**
 
 - Call this method after joining a channel.
 - The playback volume here refers to the mixed volume of a specified remote user.
 - This method can only adjust the playback volume of one specified remote user at a time. To adjust the playback volume of different remote users, call the method as many times, once for each remote user.

 @param uid The ID of the remote user.
 @param volume The playback volume of the specified remote user. The value ranges from 0 to 100:
 
 - 0: Mute.
 - 100: Original volume.

 @return - 0: Success.
 - < 0: Failure.
 */
- (int)adjustUserPlaybackSignalVolume:(NSUInteger)uid volume:(int)volume;

/** Mutes the recording signal.

 @param muted * YES: Mute the recording signal
 * NO: Unmute the recording signal

 @return * 0: Success.
* <0: Failure.
 */
-(int)muteRecordingSignal:(BOOL)muted;

/**
 * Stops or resumes sending the local audio stream.
 *
 * @param mute Whether to send or stop sending the local audio stream:
 * - `YES`: Stops sending the local audio stream.
 * - `NO`: (Default) Sends the local audio stream.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)muteLocalAudioStream:(BOOL)mute;

/**
 * Stops/Resumes receiving the audio stream of a specified user.
 *
 * You can call this method before or after joining a channel.
 * If a user leaves a channel, the settings in this method become invalid.
 * @param uid  The ID of the specified user.
 * @param mute Whether to stop receiving the audio stream of the specified user:
 * - `YES`: Stop receiving the audio stream of the specified user.
 * - `NO`: (Default) Resume receiving the audio stream of the specified user.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)muteRemoteAudioStream:(NSUInteger)uid mute:(BOOL)mute;

/**
 * Stops/Resumes receiving all remote audio streams.
 *
 * This method works for all remote users that join or will join a channel. You can call this method before, during, or after a call.
 * - If you call `muteAllRemoteAudioStreams`(YES) before joining a channel, the local user does not receive any audio stream after joining the channel.
 * - If you call `muteAllRemoteAudioStreams`(YES) after joining a channel, the local use stops receiving any audio stream from any user in the channel, including any user who joins the channel after you call this method.
 * - If you call `muteAllRemoteAudioStreams`(YES) after leaving a channel, the local user does not receive any audio stream the next time the user joins a channel.
 *
 * After you successfully call `muteAllRemoteAudioStreams`(YES), you can take the following actions:
 * - To resume receiving all remote audio streams, call `muteAllRemoteAudioStreams`(NO).
 * - To resume receiving the audio stream of a specified user, call {@link muteRemoteAudioStream:mute: muteRemoteAudioStream}(uid, NO), where `uid` is the ID of the user whose audio stream you want to resume receiving.
 *
 * @note
 * - The result of calling this method is affected by calling {@link enableAudio} and {@link disableAudio}. Settings in `muteAllRemoteAudioStreams` stop taking effect if either of the following occurs:
 *   - Calling `enableAudio` after `muteAllRemoteAudioStreams`(YES).
 *   - Calling `disableAudio` after `muteAllRemoteAudioStreams`(NO).
 * - In scenarios involving multiple channels, use {@link AgoraRtcChannelMediaOptions.autoSubscribeAudio autoSubscribeAudio} to set whether to receive remote audio streams for a specific channel.
 * @param mute Whether to stop receiving remote audio streams:
 * - `YES`: Stop receiving any remote audio stream.
 * - `NO`: (Default) Resume receiving all remote audio streams.
 *
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)muteAllRemoteAudioStreams:(BOOL)mute;

/**
 * @deprecated
 * To set whether to receive remote audio streams by default, call {@link muteAllRemoteAudioStreams: muteAllRemoteAudioStreams} before calling `joinChannelByToken`.
 *
 * Determines whether to receive all remote audio streams by default.
 *
 * @param mute Whether to receive remote audio streams by default:
 * - `YES`: Do not receive any remote audio stream by default.
 * - `NO`: (Default) Receive remote audio streams by default.
 *
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)setDefaultMuteAllRemoteAudioStreams:(BOOL)mute;

/**
 * Enable/Disable extension.
 *
 * @param provider name for provider, e.g. agora.builtin.
 * @param extension name for extension, e.g. agora.beauty.
 * @param enabled enable or disable.
 * - true: enable.
 * - false: disable.
 * @param sourceType Media source types definition see AgoraMediaSourceType, default is AgoraMediaSourceTypeUnknown.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)enableExtensionWithVendor:(NSString * __nonnull)provider extension:(NSString * __nonnull)extension enabled:(BOOL)enabled;
- (int)enableExtensionWithVendor:(NSString * __nonnull)provider
                       extension:(NSString * __nonnull)extension
                         enabled:(BOOL)enabled
                      sourceType:(AgoraMediaSourceType)sourceType;

/**
 * Set extension provider specific property.
 *
 * @param provider name for provider, e.g. agora.io.
 * @param key key for the property.
 * @param value property value.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setExtensionProviderPropertyWithVendor:(NSString * __nonnull)provider
                                          key:(NSString * __nonnull)key
                                        value:(NSString * __nonnull)value;

/**
 * Set extension specific property.
 *
 * @param provider name for provider, e.g. agora.builtin.
 * @param extension name for extension, e.g. agora.beauty.
 * @param key key for the property.
 * @param value property value.
 * @param sourceType Media source types definition see AgoraMediaSourceType, default is AgoraMediaSourceTypeUnknown.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setExtensionPropertyWithVendor:(NSString * __nonnull)provider
                            extension:(NSString * __nonnull)extension
                                  key:(NSString * __nonnull)key
                                value:(NSString * __nonnull)value;

- (int)setExtensionPropertyWithVendor:(NSString * __nonnull)provider
                            extension:(NSString * __nonnull)extension
                                  key:(NSString * __nonnull)key
                                value:(NSString * __nonnull)value
                           sourceType:(AgoraMediaSourceType)sourceType;

#if (!(TARGET_OS_IPHONE) && (TARGET_OS_MAC))

/** Enables loopback recording.
 *
 * If you enable loopback recording, the output of the default sound card is mixed into
 * the audio stream sent to the other end.
 *
 * @note This method is for MacOS only.
 *
 * @param enabled Sets whether to enable/disable loopback recording.
 * - true: Enable loopback recording.
 * - false: (Default) Disable loopback recording.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)enableLoopbackRecording:(BOOL)enabled;

/** Adjusts the loopback recording volume.
 *
 * @param volume The loopback volume, which ranges from 0 to 100:

 * - 0: Mute the recoridng volume.
 * - 100: The Original volume.
 * protection.

 * @return
 * - 0: Success.
 *- < 0: Failure.
*/
- (int)adjustLoopbackRecordingVolume:(NSInteger)volume;

/** Retrieves the audio volume for recording loopback.
 * @note Call this method when you are in a channel.
 * @return
 * - >= 0: The audio volume for loopback, if this method call succeeds. The value range is [0, 100].
 * - < 0: Failure.
*/
- (int)getLoopbackRecordingVolume;

#endif

#pragma mark Core Video

/**-----------------------------------------------------------------------------
 * @name Core Video
 * -----------------------------------------------------------------------------
 */

/**
 * Enables the video.
 *
 * You can call this method either before joining a channel or during a call.
 * If you call this method before entering a channel, the service starts the
 * video; if you call it during a call, the audio call switches to a video call.
 *
 * @note
 * This method controls the underlying states of the engine. It is still
 * valid after one leaves the channel.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)enableVideo;

/**
 * Disables the video.
 *
 * This method stops capturing the local video and receiving all remote video.
 * To enable the local preview function, call {@link enableLocalVideo: enableLocalVideo(YES)}.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)disableVideo;

/**
 * Disables or re-enables the local video capture.
 *
 * Once you enable the video using {@link enableVideo}, the local video is
 * enabled by default. This method disables or re-enables the local video
 * capture.
 *
 * `enableLocalVideo(NO)` applies to scenarios when the user wants to watch the
 * remote video without sending any video stream to the other user.
 *
 * @note
 * Call this method after `enableVideo`. Otherwise, this method may not work properly.
 *
 * @param enabled Determines whether to disable or re-enable the local video,
 * including the capturer, renderer, and sender:
 * - `YES`:  (Default) Re-enable the local video.
 * - `NO`: Disable the local video. Once the local video is disabled, the remote
 * users can no longer receive the video stream of this user, while this user
 * can still receive the video streams of other remote users. When you set
 * `enabled` as `NO`, this method does not require a local camera.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)enableLocalVideo:(BOOL)enabled;


/**
 * Sets the video encoder configuration.
 *
 * Each configuration profile corresponds to a set of video parameters,
 * including the resolution, frame rate, and bitrate.
 *
 * The parameters specified in this method are the maximum values under ideal network conditions.
 * If the video engine cannot render the video using the specified parameters
 * due to poor network conditions, the parameters further down the list are
 * considered until a successful configuration is found.
 *
 * @param config The local video encoder configuration, see #AgoraVideoEncoderConfiguration.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setVideoEncoderConfiguration:(AgoraVideoEncoderConfiguration * _Nonnull)config;


/**
 * This method initializes the video view of the local stream on the local
 * device.
 *
 * It affects only the video view that the local user sees, not the published
 * local video stream.
 *
 * Call this method to bind the local video stream to a video view and to set
 * the rendering and mirror modes of the video view. To unbind the `view`, set
 * the `view` in #AgoraRtcVideoCanvas to `nil`.
 *
 * @note
 * Call this method before joining a channel.
 * @param local The local video view and settings. See #AgoraRtcVideoCanvas.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setupLocalVideo:(AgoraRtcVideoCanvas * _Nullable)local;

/**
 * @deprecated
 * Sets the local video mirror mode.
 *
 * Use setLocalRenderMode instead.
 */
- (int)setLocalVideoMirrorMode:(AgoraVideoMirrorMode)mode;

/** 
 * @deprecated
 * Updates the display mode of the local video view

 Use the following interface instead
 * [setRemoteRenderMode](uid:mode:mirror:)
 */
- (int)setLocalRenderMode:(NSUInteger)uid
                     mode:(AgoraVideoRenderMode) mode;

/**
 * Updates the display mode of the local video view.
 *
 * After initialzing the local video view, you can call this method to update
 * its rendering mode. It affects only the video view that the local user sees, not the published local video stream.
 *
 * @note
 * - Ensure that you have called {@link setupLocalVideo: setupLocalVideo} to
 * initialize the local video view before this method.
 * - During a call, you can call this method as many times as necessary to update the local video view.
 *
 * @param mode Sets the local display mode. See #AgoraVideoRenderMode.
 * @param mirror Sets the mirror mode. See #AgoraVideoMirrorMode
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setLocalRenderMode:(AgoraVideoRenderMode)mode
                   mirror:(AgoraVideoMirrorMode)mirror;

/**
 * Starts the local video preview before joining a channel.
 *
 * Once you call this method to start the local video preview, if you leave
 * the channel by calling {@link leaveChannel: leaveChannel}, the local video
 * preview remains until you call {@link stopPreview} to disable it.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */

- (int)startPreview;

/**
 * Stops the local video preview and the video.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)stopPreview;


/** Binds the remote user to the video display window, that is, sets the view for the user of the specified uid.

 Usually, the application should specify the uid of the remote video in the method call before the user enters a channel. If the remote uid is unknown to the application, set it later when the application receives the [userJoinedBlock]([AgoraRtcEngineKit userJoinedBlock:]) event.
 If the Video Recording function is enabled, the Video Recording Service joins the channel as a dumb client, which means other clients will also receive the [didJoinedOfUid]([AgoraRtcEngineDelegate rtcEngine:didJoinedOfUid:elapsed:]) event. Your application should not bind it with the view, because it does not send any video stream. If your application cannot recognize the dumb client, bind it with the view when the [firstRemoteVideoDecodedOfUid]([AgoraRtcEngineDelegate rtcEngine:firstRemoteVideoDecodedOfUid:size:elapsed:]) event is triggered. To unbind the user with the view, set the view to null. After the user has left the channel, the SDK unbinds the remote user.

 @param remote AgoraRtcVideoCanvas

 @return * 0: Success.
* <0: Failure.
 */
- (int)setupRemoteVideo:(AgoraRtcVideoCanvas * _Nonnull)remote;

/** Configures the remote video display mode. The application can call this method multiple times to change the display mode.

 @param uid  User id of the user whose video streams are received.
 @param mode AgoraVideoRenderMode
 @param mirror AgoraVideoMirrorMode

 @return * 0: Success.
* <0: Failure.
 */
- (int)setRemoteRenderMode:(NSUInteger)uid
                      mode:(AgoraVideoRenderMode)mode
                    mirror:(AgoraVideoMirrorMode)mirror;


/**
 * Stops or resumes sending the local video stream.
 *
 * @param mute Determines whether to send or stop sending the local video
 * stream:
 * - `YES`: Stop sending the local video stream.
 * - `NO`: (Default) Send the local video stream.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)muteLocalVideoStream:(BOOL)mute;

/**
 * Stops/Resumes receiving all remote video streams.
 *
 * This method works for all remote users that join or will join a channel. You can call this method before, during, or after a call.
 * - If you call `muteAllRemoteVideoStreams`(YES) before joining a channel, the local user does not receive any video stream after joining the channel.
 * - If you call `muteAllRemoteVideoStreams`(YES) after joining a channel, the local use stops receiving any video stream from any user in the channel, including any user who joins the channel after you call this method.
 * - If you call `muteAllRemoteVideoStreams`(YES) after leaving a channel, the local user does not receive any video stream the next time the user joins a channel.
 *
 * After you successfully call `muteAllRemoteVideoStreams`(YES), you can take the following actions:
 * - To resume receiving all remote video streams, call `muteAllRemoteVideoStreams`(NO).
 * - To resume receiving the video stream of a specified user, call {@link muteRemoteVideoStream:mute: muteRemoteVideoStream}(uid, NO), where `uid` is the ID of the user whose video stream you want to resume receiving.
 *
 * @note
 * - The result of calling this method is affected by calling {@link enableVideo} and {@link disableVideo}. Settings in `muteAllRemoteVideoStreams` stop taking effect if either of the following occurs:
 *   - Calling `enableVideo` after `muteAllRemoteVideoStreams`(YES).
 *   - Calling `disableVideo` after `muteAllRemoteVideoStreams`(NO).
 * - In scenarios involving multiple channels, use {@link AgoraRtcChannelMediaOptions.autoSubscribeVideo autoSubscribeVideo} to set whether to receive remote video streams for a specific channel.
 * @param mute Whether to stop receiving remote video streams:
 * - `YES`: Stop receiving any remote video stream.
 * - `NO`: (Default) Resume receiving all remote video streams.
 *
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)muteAllRemoteVideoStreams:(BOOL)mute;

/**
 * @deprecated
 * To set whether to receive remote video streams by default, call {@link muteAllRemoteVideoStreams: muteAllRemoteVideoStreams} before calling `joinChannelByToken`.
 *
 * Determines whether to receive all remote video streams by default.
 *
 * @param mute Whether to receive remote video streams by default:
 * - `YES`: Do not receive any remote video stream by default.
 * - `NO`: (Default) Receive remote video streams by default.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setDefaultMuteAllRemoteVideoStreams:(BOOL)mute;

/**
 * Stops or resumes receiving the video stream of a specified user.
 *
 * You can call this method before or after joining a channel.
 * If a user leaves a channel, the settings in this method become invalid.
 *
 * @param uid ID of the specified remote user.
 * @param mute Whether to stop receiving the video stream of the specified user:
 * - `YES`: Stop receiving the video stream of the specified user.
 * - `NO`: (Default) Resume receiving the video stream of the specified user.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)muteRemoteVideoStream:(NSUInteger)uid
                        mute:(BOOL)mute;

/** Enables/Disables image enhancement and sets the options.

@note Call this method after calling the [enableVideo]([AgoraRtcEngineKit enableVideo]) method.

@param enable Sets whether or not to enable image enhancement:

- `YES`: Enable image enhancement.
- `NO`: Disable image enhancement.
@param options The image enhancement options, see AgoraBeautyOptions.
@param sourceType Media source types definition see AgoraMediaSourceType, default is AgoraMediaSourceTypeUnknown.
 
@return * 0: Success.
* < 0: Failure.
*/
- (int)setBeautyEffectOptions:(BOOL)enable options:(AgoraBeautyOptions* _Nullable)options;

/** Enables/Disables the virtual background. (beta function)

 @since v3.7.200

 After enabling the virtual background function, you can replace the original
 background image of the local user with a custom background image. After the
 replacement, all users in the channel can see the custom background image. You
 can find out from the [virtualBackgroundSourceEnabled]([AgoraRtcEngineDelegate rtcEngine:virtualBackgroundSourceEnabled:reason:])
 callback whether the virtual background is successfully enabled or the cause
 of any errors.

 **Note**:

 - This method applies to macOS and iOS.
 - Before calling this method, ensure that you have integrated the
 `AgoraVideoSegmentationExtension.framework` dynamic library into the project
 folder.
 - Call this method after [enableVideo]([AgoraRtcEngineKit enableVideo]).
 - This function requires a high-performance device. Agora recommends that you
 use this function on devices with an i5 CPU and better.
 - Agora recommends that you use this function in scenarios that meet the
 following conditions:

   - A high-definition camera device is used, and the environment is uniformly
   lit.
   - The captured video image is uncluttered, the user's portrait is
   half-length and largely unobstructed, and the background is a single color
   that differs from the color of the user's clothing.

 @param enable Sets whether to enable the virtual background:

 - `YES`: Enable.
 - `NO`: Disable.
 @param backData The custom background image. See AgoraVirtualBackgroundSource.
 <p><b>Note</b>: To adapt the resolution of the custom background image to the
 resolution of the SDK capturing video, the SDK scales and crops the custom
 background image while ensuring that the content of the custom background
 image is not distorted.</p>

 @return 
  * 0: Success.
  * < 0: Failure.
  *  VIRTUAL_BACKGROUND_SOURCE_STATE_REASON_SUCCESS = 0,
  *  VIRTUAL_BACKGROUND_SOURCE_STATE_REASON_IMAGE_NOT_EXIST = -1,
  *  VIRTUAL_BACKGROUND_SOURCE_STATE_REASON_COLOR_FORMAT_NOT_SUPPORTED = -2,
  *  VIRTUAL_BACKGROUND_SOURCE_STATE_REASON_DEVICE_NOT_SUPPORTED = -3,
  */
- (int)enableVirtualBackground:(BOOL)enable backData:(AgoraVirtualBackgroundSource* _Nullable)backData NS_SWIFT_NAME(enableVirtualBackground(_:backData:));

#pragma mark Audio Effect

/**-----------------------------------------------------------------------------
 * @name Audio Effect
 * -----------------------------------------------------------------------------
 */

/** Sets the voice pitch of the local speaker.

 @note  This method applies to macOS only.

 @param pitch Voice frequency, in the range of 0.5 to 2.0. The default value is 1.0.

 @return * 0: Success.
* <0: Failure.
 */
- (int)setLocalVoicePitch:(double)pitch;

/** Sets the local voice equalization.

 @note  This method applies to macOS only.

 @param bandFrequency The band frequency ranging from 0 to 9; representing the respective 10-band center frequencies of the voice effects, including 31, 62, 125, 500, 1k, 2k, 4k, 8k, and 16k Hz.
 @param gain          Gain of each band in dB; ranging from -15 to 15.
 */
- (int)setLocalVoiceEqualizationOfBandFrequency:(AgoraAudioEqualizationBandFrequency)bandFrequency withGain:(NSInteger)gain;

/** Sets the local voice reverberation.

 @note  This method applies to macOS only.

 @param reverbType Reverberation type.
 @param value      AgoraAudioReverbType
 */
- (int)setLocalVoiceReverbOfType:(AgoraAudioReverbType)reverbType withValue:(NSInteger)value;

/**
 * Sets the local voice changer option.
 *
 * This method can be used to set the local voice effect for users in a communication channel or broadcasters in a live broadcast channel. Voice changer options include the following groups of voice effects:
 * - `AgoraAudioVoiceChanger*`: Changes the local voice to an old man, a little boy, or the Hulk. Applies to the voice talk scenario.
 * - `AgoraAudioVoiceBeauty*`: Beautifies the local voice by making it sound more vigorous, resounding, or adding spacial resonance. Applies to the voice talk and singing scenario.
 * - `AgoraAudioGeneralBeautyVoice*`: Adds gender-based beautification effect to the local voice. Applies to the voice talk scenario.
 *   - For a male voice: Adds magnetism to the voice.
 *   - For a female voice: Adds freshness or vitality to the voice.
 *
 * @note
 * - To achieve better voice effect quality, Agora recommends setting the `profile` parameter in
 * {@link AgoraRtcEngineKit.setAudioProfile: setAudioProfile} as `AgoraAudioProfileMusicHighQuality`(4) or `AgoraAudioProfileMusicHighQualityStereo`(5).
 * - This method works best with the human voice, and Agora does not recommend using it for audio containing music and a human voice.
 * - Do not use this method with {@link setLocalVoiceReverbPreset: setLocalVoiceReverbPreset}, because the method called later overrides the one called earlier.
 *
 * @param voiceChanger The local voice changer option. See {@link AgoraAudioVoiceChanger}.
 * @return
 * - 0: Success.
 * - -1: Failure. Check the setting of `voiceChanger`.
 */
- (int) setLocalVoiceChanger:(AgoraAudioVoiceChanger)voiceChanger;

/**
 * Sets the local voice reverberation option.
 *
 * This method sets the local voice reverberation for users in a communication channel or broadcasters
 * in a live-broadcast channel. After this method call succeeds, all users in the channel can
 * hear the voice with reverberation.
 *
 * @note
 * - When calling this method with enumerations that begin with `AgoraAudioReverbPresetFx`, ensure that you set profile in
 * {@link AgoraRtcEngineKit.setAudioProfile: setAudioProfile} as `AgoraAudioProfileMusicHighQuality`(4) or `AgoraAudioProfileMusicHighQualityStereo`(5). Otherwise, this method call does not take effect.
 * - This method works best with the human voice, and Agora does not recommend using it for audio containing music and a human voice.
 * - Do not use this method with {@link setLocalVoiceChanger: setLocalVoiceChanger}, because the method called later overrides the one called earlier.
 *
 * @param reverbPreset The local voice reverberation option. To achieve better voice effects, Agora recommends the enumerations beginning with `AgoraAudioReverbPresetFx`. See {@link AgoraAudioReverbPreset}.
 * @return
 * - 0: Success.
 * - -1: Failure. Check the setting of `reverbPrest`.
 */
- (int) setLocalVoiceReverbPreset:(AgoraAudioReverbPreset)reverbPreset;

#pragma mark Audio Effect Playback

/**-----------------------------------------------------------------------------
 * @name Audio Effect Playback
 * -----------------------------------------------------------------------------
 */

/** Preloads a specified audio effect.
 *
 * This method preloads only one specified audio effect into the memory each time
 * it is called. To preload multiple audio effects, call this method multiple times.
 *
 * After preloading, you can call {@link playEffect:filePath:loopCount:pitch:pan:gain:publish: playEffect}
 * to play the preloaded audio effect or call
 * {@link playAllEffectsWithLoopCount:pitch:pan:gain:publish: playAllEffects} to play all the preloaded
 * audio effects.
 *
 * @note
 * - To ensure smooth communication, limit the size of the audio effect file.
 * - Agora recommends calling this method before joining the channel.
 *
 * @param soundId The ID of the audio effect.
 * @param filePath The absolute path of the local audio effect file or the URL
 * of the online audio effect file. Supported audio formats: mp3, mp4, m4a, aac,
 * 3gp, mkv and wav.

 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)preloadEffect:(int)soundId
            filePath:(NSString* _Nonnull)filePath;

/** Preloads a specified audio effect.
 *
 * This method preloads only one specified audio effect into the memory each time
 * it is called. To preload multiple audio effects, call this method multiple times.
 *
 * After preloading, you can call {@link playEffect:filePath:loopCount:pitch:pan:gain:publish: playEffect}
 * to play the preloaded audio effect or call
 * {@link playAllEffectsWithLoopCount:pitch:pan:gain:publish: playAllEffects} to play all the preloaded
 * audio effects.
 *
 * @note
 * - To ensure smooth communication, limit the size of the audio effect file.
 * - Agora recommends calling this method before joining the channel.
 *
 * @param soundId The ID of the audio effect.
 * @param filePath The absolute path of the local audio effect file or the URL
 * of the online audio effect file. Supported audio formats: mp3, mp4, m4a, aac,
 * 3gp, mkv and wav.
 * @param startPos The playback position (ms) of the audio effect file.

 * @return
 * - 0: Success.
 * - < 0: Failure.
 */           

- (int)preloadEffect:(int)soundId
            filePath:(NSString* _Nonnull)filePath
            startPos:(int)startPos;

/** Plays a specified audio effect.
*
* @see [playEffect](playEffect:filePath:loopCount:pitch:pan:gain:publish:)
* @param soundId ID of the audio effect. Each audio effect has a unique ID.
*
* @note If you preloaded the audio effect into the memory through the [preloadEffect]([AgoraRtcEngineKit preloadEffect:filePath:]) method, ensure that the `soundID` value is set to the same value as in preloadEffect.
* @param filePath Absolute path of the audio effect file.
* @param loopCount Sets the number of times looping the audio effect:
* - 0: Plays the audio effect once.
* - 1: Plays the audio effect twice.
* - -1: Plays the audio effect in an indefinite loop until you call the [stopEffect]([AgoraRtcEngineKit stopEffect:]) or [stopAllEffects]([AgoraRtcEngineKit stopAllEffects]) method
*
* @param pitch Sets whether to change the pitch of the audio effect. The value ranges between 0.5 and 2.
* The default value is 1 (no change to the pitch). The lower the value, the lower the pitch.
* @param pan Sets the spatial position of the audio effect. The value ranges between -1.0 and 1.0.
* - 0.0: The audio effect displays ahead.
* - 1.0: The audio effect displays to the right.
* - -1.0: The audio effect displays to the left.
*
* @param gain Sets the volume of the sound effect. The value ranges between 0.0 and 100.0 (default). The lower the value, the lower the volume of the sound effect.
* @return * 0: Success.
* < 0: Failure.
 */
- (int)playEffect:(int)soundId
         filePath:(NSString* _Nonnull)filePath
        loopCount:(NSInteger)loopCount
            pitch:(double)pitch
              pan:(double)pan
             gain:(NSInteger)gain;

/** Plays a specified audio effect.
*
* @see [playEffect](playEffect:filePath:loopCount:pitch:pan:gain:publish:)
* @param soundId ID of the audio effect. Each audio effect has a unique ID.
*
* @note If you preloaded the audio effect into the memory through the [preloadEffect]([AgoraRtcEngineKit preloadEffect:filePath:]) method, ensure that the `soundID` value is set to the same value as in preloadEffect.
* @param filePath Absolute path of the audio effect file.
* @param loopCount Sets the number of times looping the audio effect:
* - 0: Plays the audio effect once.
* - 1: Plays the audio effect twice.
* - -1: Plays the audio effect in an indefinite loop until you call the [stopEffect]([AgoraRtcEngineKit stopEffect:]) or [stopAllEffects]([AgoraRtcEngineKit stopAllEffects]) method
*
* @param pitch Sets whether to change the pitch of the audio effect. The value ranges between 0.5 and 2.
* The default value is 1 (no change to the pitch). The lower the value, the lower the pitch.
* @param pan Sets the spatial position of the audio effect. The value ranges between -1.0 and 1.0.
* - 0.0: The audio effect displays ahead.
* - 1.0: The audio effect displays to the right.
* - -1.0: The audio effect displays to the left.
*
* @param gain Sets the volume of the sound effect. The value ranges between 0.0 and 100.0 (default). The lower the value, the lower the volume of the sound effect.
* @param startPos The playback position (ms) of the audio effect file.
* @return * 0: Success.
* < 0: Failure.
 */
- (int)playEffect:(int)soundId
         filePath:(NSString* _Nonnull)filePath
        loopCount:(NSInteger)loopCount
            pitch:(double)pitch
              pan:(double)pan
             gain:(NSInteger)gain
             startPos:(int)startPos;

/** Plays a specified audio effect.

* With this method, you can set the loop count, pitch, pan, and gain of the audio effect file and whether the remote user can hear the audio effect.
*
* To play multiple audio effect files simultaneously, call this method multiple times with different soundIds and filePaths. We recommend playing no more than three audio effect files at the same time.
*
* When the audio effect file playback is finished, the SDK triggers the {@link AgoraRtcEngineDelegate.rtcEngineDidAudioEffectFinish:soundId: rtcEngineDidAudioEffectFinish} callback.
*
* @param soundId ID of the specified audio effect. Each audio effect has a unique ID.
* If the audio effect is preloaded into the memory through the {@link preloadEffect:filePath: preloadEffect} method, ensure that the `soundId` value is set to the same value as in {@link preloadEffect:filePath: preloadEffect}.
* @param filePath Specifies the absolute path (including the suffixes of the filename) to the local audio effect file or the URL of the online audio effect file, for example, `/var/mobile/Containers/Data/audio.mp4`. Supported audio formats: mp3, mp4, m4a, aac, 3gp, mkv and wav.
* @param loopCount Sets the number of times the audio effect loops:
* - 0: Plays the audio effect once.
* - 1: Plays the audio effect twice.
* - -1: Plays the audio effect in an indefinite loop until you call the {@link stopEffect: stopEffect} or {@link stopAllEffects stopAllEffects} method.
*
* @param pitch Sets the pitch of the audio effect. The value ranges between 0.5 and 2. The default value is 1 (no change to the pitch). The lower the value, the lower the pitch.
* @param pan Sets the spatial position of the audio effect. The value ranges between -1.0 and 1.0.
* - 0.0: The audio effect displays ahead.
* - 1.0: The audio effect displays to the right.
* - -1.0: The audio effect displays to the left.
*
* @param gain Sets the volume of the audio effect. The value ranges between 0.0 and 100.0 (default). The lower the value, the lower the volume of the audio effect.
* @param publish Sets whether or not to publish the specified audio effect to the remote stream:
* - YES: The played audio effect is published to the Agora Cloud and the remote users can hear it.
* - NO: The played audio effect is not published to the Agora Cloud and the remote users cannot hear it.
*
* @return
* - 0: Success.
* - < 0: Failure.
*/
- (int)playEffect:(int)soundId
         filePath:(NSString* _Nonnull)filePath
        loopCount:(NSInteger)loopCount
            pitch:(double)pitch
              pan:(double)pan
             gain:(NSInteger)gain
          publish:(BOOL)publish;

/** Plays a specified audio effect.

* With this method, you can set the loop count, pitch, pan, and gain of the audio effect file and whether the remote user can hear the audio effect.
*
* To play multiple audio effect files simultaneously, call this method multiple times with different soundIds and filePaths. We recommend playing no more than three audio effect files at the same time.
*
* When the audio effect file playback is finished, the SDK triggers the {@link AgoraRtcEngineDelegate.rtcEngineDidAudioEffectFinish:soundId: rtcEngineDidAudioEffectFinish} callback.
*
* @param soundId ID of the specified audio effect. Each audio effect has a unique ID.
* If the audio effect is preloaded into the memory through the {@link preloadEffect:filePath: preloadEffect} method, ensure that the `soundId` value is set to the same value as in {@link preloadEffect:filePath: preloadEffect}.
* @param filePath Specifies the absolute path (including the suffixes of the filename) to the local audio effect file or the URL of the online audio effect file, for example, `/var/mobile/Containers/Data/audio.mp4`. Supported audio formats: mp3, mp4, m4a, aac, 3gp, mkv and wav.
* @param loopCount Sets the number of times the audio effect loops:
* - 0: Plays the audio effect once.
* - 1: Plays the audio effect twice.
* - -1: Plays the audio effect in an indefinite loop until you call the {@link stopEffect: stopEffect} or {@link stopAllEffects stopAllEffects} method.
*
* @param pitch Sets the pitch of the audio effect. The value ranges between 0.5 and 2. The default value is 1 (no change to the pitch). The lower the value, the lower the pitch.
* @param pan Sets the spatial position of the audio effect. The value ranges between -1.0 and 1.0.
* - 0.0: The audio effect displays ahead.
* - 1.0: The audio effect displays to the right.
* - -1.0: The audio effect displays to the left.
*
* @param gain Sets the volume of the audio effect. The value ranges between 0.0 and 100.0 (default). The lower the value, the lower the volume of the audio effect.
* @param publish Sets whether or not to publish the specified audio effect to the remote stream:
* - YES: The played audio effect is published to the Agora Cloud and the remote users can hear it.
* - NO: The played audio effect is not published to the Agora Cloud and the remote users cannot hear it.
* @param startPos The playback position (ms) of the audio effect file.
*
* @return
* - 0: Success.
* - < 0: Failure.
*/
- (int)playEffect:(int)soundId
         filePath:(NSString* _Nonnull)filePath
        loopCount:(NSInteger)loopCount
            pitch:(double)pitch
              pan:(double)pan
             gain:(NSInteger)gain
          publish:(BOOL)publish
         startPos:(int)startPos;

/** Plays all audio effects.
   *
   * After calling {@link preloadEffect:filePath: preloadEffect} multiple times
   * to preload multiple audio effects into the memory, you can call this
   * method to play all the specified audio effects for all users in
   * the channel.
   *
   * @param loopCount The number of times the audio effect loops:
   * - `-1`: Play the audio effect in an indefinite loop until
   *  {@link AgoraRtcEngineKit.stopEffect: stopEffect} or
   *  {@link AgoraRtcEngineKit.stopAllEffects stopAllEffects}
   * - `0`: Play the audio effect once.
   * - `1`: Play the audio effect twice.
   * @param pitch The pitch of the audio effect. The value ranges between 0.5 and 2.0.
   * The default value is `1.0` (original pitch). The lower the value, the lower the pitch.
   * @param pan The spatial position of the audio effect. The value ranges between -1.0 and 1.0:
   * - `-1.0`: The audio effect displays to the left.
   * - `0.0`: The audio effect displays ahead.
   * - `1.0`: The audio effect displays to the right.
   * @param gain The volume of the audio effect. The value ranges between 0 and 100.
   * The default value is `100` (original volume). The lower the value, the lower
   * the volume of the audio effect.
   * @param publish Sets whether to publish the audio effect to the remote:
   * - true: Publish the audio effect to the remote.
   * - false: Do not publish the audio effect to the remote.
   *
   * @return
   * - 0: Success.
   * - < 0: Failure.
   */
- (int)playAllEffectsWithLoopCount:(NSInteger)loopCount
                         pitch:(double)pitch
                           pan:(double)pan
                          gain:(NSInteger)gain
                       publish:(BOOL)publish;

  /**
   * Gets the volume of audio effects.
   *
   * @return
   * - &ge; 0: The volume of audio effects. The value ranges between 0 and 100 (original volume).
   * - < 0: Failure.
   */
- (int)getEffectsVolume;

  /** Sets the volume of audio effects.
   *
   * @param volume The volume of audio effects. The value ranges between 0
   * and 100 (original volume).
   *
   * @return
   * - 0: Success.
   * - < 0: Failure.
   */
- (int)setEffectsVolume:(NSInteger)volume;

  /** Sets the volume of the specified audio effect.
   *
   * @param soundId The ID of the audio effect.
   * @param volume The volume of the specified audio effect. The value ranges
   * between 0 and 100 (original volume).
   *
   * @return
   * - 0: Success.
   * - < 0: Failure.
   */
- (int)setVolumeOfEffect:(int)soundId
              withVolume:(int)volume;

  /** Gets the volume of the specified audio effect.
   *
   * @param soundId The ID of the audio effect.
   *
   * @return
   * - &ge; 0: The volume of the specified audio effect. The value ranges
   * between 0 and 100 (original volume).
   * - < 0: Failure.
   */
- (int)getVolumeOfEffect:(int)soundId;

/** Pauses playing a specific audio effect.

 * @param soundId ID of the audio effect. Each audio effect has a unique ID.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)pauseEffect:(int)soundId;

/** Pauses playing all audio effects.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)pauseAllEffects;

/** Resumes playing the specified audio effect.

 * @param soundId The ID of the audio effect.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)resumeEffect:(int)soundId;

/** Resumes playing all audio effects.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)resumeAllEffects;

/** Stops playing a specific audio effect.

 * @param soundId The ID of the audio effect.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)stopEffect:(int)soundId;

/** Stops playing all audio effects.

 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)stopAllEffects;

/** Releases a specific preloaded audio effect from the memory.

 * @param soundId The ID of the audio effect.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)unloadEffect:(int)soundId;

/** Release all preloaded audio effects from the memory.

 *  @param soundId The ID of the audio effect.
 *  @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)unloadAllEffects;

#pragma mark beautifier effect
/** Sets an SDK preset voice beautifier effect.
 *
 * Call this method to set an SDK preset voice beautifier effect for the local user who sends an
 * audio stream. After setting a voice beautifier effect, all users in the channel can hear the
 * effect.
 *
 * You can set different voice beautifier effects for different scenarios. See *Set the Voice
 * Beautifier and Audio Effects*.
 *
 * To achieve better audio effect quality, Agora recommends calling \ref
 * IRtcEngine::setAudioProfile "setAudioProfile" and setting the `scenario` parameter to
 * `AUDIO_SCENARIO_GAME_STREAMING(3)` and the `profile` parameter to
 * `AUDIO_PROFILE_MUSIC_HIGH_QUALITY(4)` or `AUDIO_PROFILE_MUSIC_HIGH_QUALITY_STEREO(5)` before
 * calling this method.
 *
 * @note
 * - You can call this method either before or after joining a channel.
 * - Do not set the `profile` parameter of \ref IRtcEngine::setAudioProfile "setAudioProfile" to
 * `AUDIO_PROFILE_SPEECH_STANDARD(1)` or `AUDIO_PROFILE_IOT(6)`; otherwise, this method call
 * fails.
 * - This method works best with the human voice. Agora does not recommend using this method for
 * audio containing music.
 * - After calling this method, Agora recommends not calling the following methods, because they
 * can override \ref IRtcEngine::setAudioEffectParameters "setAudioEffectParameters":
 *  - \ref IRtcEngine::setAudioEffectPreset "setAudioEffectPreset"
 *  - \ref IRtcEngine::setVoiceBeautifierPreset "setVoiceBeautifierPreset"
 *  - \ref IRtcEngine::setLocalVoiceReverbPreset "setLocalVoiceReverbPreset"
 *  - \ref IRtcEngine::setLocalVoiceChanger "setLocalVoiceChanger"
 *  - \ref IRtcEngine::setLocalVoicePitch "setLocalVoicePitch"
 *  - \ref IRtcEngine::setLocalVoiceEqualization "setLocalVoiceEqualization"
 *  - \ref IRtcEngine::setLocalVoiceReverb "setLocalVoiceReverb"
 *  - \ref IRtcEngine::setVoiceBeautifierParameters "setVoiceBeautifierParameters"
 *
 * @param preset The options for SDK preset voice beautifier effects: #VOICE_BEAUTIFIER_PRESET.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setVoiceBeautifierPreset:(AgoraVoiceBeautifierPreset)preset;

/** Sets an SDK preset audio effect.
 *
 * Call this method to set an SDK preset audio effect for the local user who sends an audio
 * stream. This audio effect does not change the gender characteristics of the original voice.
 * After setting an audio effect, all users in the channel can hear the effect.
 *
 * You can set different audio effects for different scenarios. See *Set the Voice Beautifier and
 * Audio Effects*.
 *
 * To achieve better audio effect quality, Agora recommends calling \ref
 * IRtcEngine::setAudioProfile "setAudioProfile" and setting the `scenario` parameter to
 * `AUDIO_SCENARIO_GAME_STREAMING(3)` before calling this method.
 *
 * @note
 * - You can call this method either before or after joining a channel.
 * - Do not set the profile `parameter` of `setAudioProfile` to `AUDIO_PROFILE_SPEECH_STANDARD(1)`
 * or `AUDIO_PROFILE_IOT(6)`; otherwise, this method call fails.
 * - This method works best with the human voice. Agora does not recommend using this method for
 * audio containing music.
 * - If you call this method and set the `preset` parameter to enumerators except
 * `ROOM_ACOUSTICS_3D_VOICE` or `PITCH_CORRECTION`, do not call \ref
 * IRtcEngine::setAudioEffectParameters "setAudioEffectParameters"; otherwise,
 * `setAudioEffectParameters` overrides this method.
 * - After calling this method, Agora recommends not calling the following methods, because they
 * can override `setAudioEffectPreset`:
 *  - \ref IRtcEngine::setVoiceBeautifierPreset "setVoiceBeautifierPreset"
 *  - \ref IRtcEngine::setLocalVoiceReverbPreset "setLocalVoiceReverbPreset"
 *  - \ref IRtcEngine::setLocalVoiceChanger "setLocalVoiceChanger"
 *  - \ref IRtcEngine::setLocalVoicePitch "setLocalVoicePitch"
 *  - \ref IRtcEngine::setLocalVoiceEqualization "setLocalVoiceEqualization"
 *  - \ref IRtcEngine::setLocalVoiceReverb "setLocalVoiceReverb"
 *  - \ref IRtcEngine::setVoiceBeautifierParameters "setVoiceBeautifierParameters"
 *
 * @param preset The options for SDK preset audio effects. See #AUDIO_EFFECT_PRESET.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setAudioEffectPreset:(AgoraAudioEffectPreset)preset;

/** Sets an SDK preset voice conversion.
 *
 * Call this method to set an SDK preset audio effect for the local user who sends an audio
 * stream. This audio effect does not change the gender characteristics of the original voice.
 * After setting an audio effect, all users in the channel can hear the effect.
 *
 * You can set different audio effects for different scenarios. See *Set the Voice Beautifier and
 * Audio Effects*.
 *
 * To achieve better audio effect quality, Agora recommends calling \ref
 * IRtcEngine::setAudioProfile "setAudioProfile" and setting the `scenario` parameter to
 * `AUDIO_SCENARIO_GAME_STREAMING(3)` before calling this method.
 *
 * @note
 * - You can call this method either before or after joining a channel.
 * - Do not set the profile `parameter` of `setAudioProfile` to `AUDIO_PROFILE_SPEECH_STANDARD(1)`
 * or `AUDIO_PROFILE_IOT(6)`; otherwise, this method call fails.
 * - This method works best with the human voice. Agora does not recommend using this method for
 * audio containing music.
 * - If you call this method and set the `preset` parameter to enumerators except
 * `ROOM_ACOUSTICS_3D_VOICE` or `PITCH_CORRECTION`, do not call \ref
 * IRtcEngine::setAudioEffectParameters "setAudioEffectParameters"; otherwise,
 * `setAudioEffectParameters` overrides this method.
 * - After calling this method, Agora recommends not calling the following methods, because they
 * can override `setAudioEffectPreset`:
 *  - \ref IRtcEngine::setVoiceBeautifierPreset "setVoiceBeautifierPreset"
 *  - \ref IRtcEngine::setLocalVoiceReverbPreset "setLocalVoiceReverbPreset"
 *  - \ref IRtcEngine::setLocalVoiceChanger "setLocalVoiceChanger"
 *  - \ref IRtcEngine::setLocalVoicePitch "setLocalVoicePitch"
 *  - \ref IRtcEngine::setLocalVoiceEqualization "setLocalVoiceEqualization"
 *  - \ref IRtcEngine::setLocalVoiceReverb "setLocalVoiceReverb"
 *  - \ref IRtcEngine::setVoiceBeautifierParameters "setVoiceBeautifierParameters"
 *
 * @param preset The options for SDK preset audio effects. See #VOICE_CONVERSION_PRESET.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setVoiceConversionPreset:(AgoraVoiceConversionPreset)preset;

/** Sets parameters for SDK preset audio effects.
 *
 * Call this method to set the following parameters for the local user who send an audio stream:
 * - 3D voice effect: Sets the cycle period of the 3D voice effect.
 * - Pitch correction effect: Sets the basic mode and tonic pitch of the pitch correction effect.
 * Different songs have different modes and tonic pitches. Agora recommends bounding this method
 * with interface elements to enable users to adjust the pitch correction interactively.
 *
 * After setting parameters, all users in the channel can hear the relevant effect.
 *
 * You can call this method directly or after \ref IRtcEngine::setAudioEffectPreset
 * "setAudioEffectPreset". If you call this method after \ref IRtcEngine::setAudioEffectPreset
 * "setAudioEffectPreset", ensure that you set the preset parameter of `setAudioEffectPreset` to
 * `ROOM_ACOUSTICS_3D_VOICE` or `PITCH_CORRECTION` and then call this method to set the same
 * enumerator; otherwise, this method overrides `setAudioEffectPreset`.
 *
 * @note
 * - You can call this method either before or after joining a channel.
 * - To achieve better audio effect quality, Agora recommends calling \ref
 * IRtcEngine::setAudioProfile "setAudioProfile" and setting the `scenario` parameter to
 * `AUDIO_SCENARIO_GAME_STREAMING(3)` before calling this method.
 * - Do not set the `profile` parameter of \ref IRtcEngine::setAudioProfile "setAudioProfile" to
 * `AUDIO_PROFILE_SPEECH_STANDARD(1)` or `AUDIO_PROFILE_IOT(6)`; otherwise, this method call
 * fails.
 * - This method works best with the human voice. Agora does not recommend using this method for
 * audio containing music.
 * - After calling this method, Agora recommends not calling the following methods, because they
 * can override `setAudioEffectParameters`:
 *  - \ref IRtcEngine::setAudioEffectPreset "setAudioEffectPreset"
 *  - \ref IRtcEngine::setVoiceBeautifierPreset "setVoiceBeautifierPreset"
 *  - \ref IRtcEngine::setLocalVoiceReverbPreset "setLocalVoiceReverbPreset"
 *  - \ref IRtcEngine::setLocalVoiceChanger "setLocalVoiceChanger"
 *  - \ref IRtcEngine::setLocalVoicePitch "setLocalVoicePitch"
 *  - \ref IRtcEngine::setLocalVoiceEqualization "setLocalVoiceEqualization"
 *  - \ref IRtcEngine::setLocalVoiceReverb "setLocalVoiceReverb"
 *  - \ref IRtcEngine::setVoiceBeautifierParameters "setVoiceBeautifierParameters"
 * @param preset The options for SDK preset audio effects:
 * - 3D voice effect: `ROOM_ACOUSTICS_3D_VOICE`.
 *  - Call \ref IRtcEngine::setAudioProfile "setAudioProfile" and set the `profile` parameter to
 * `AUDIO_PROFILE_MUSIC_STANDARD_STEREO(3)` or `AUDIO_PROFILE_MUSIC_HIGH_QUALITY_STEREO(5)` before
 * setting this enumerator; otherwise, the enumerator setting does not take effect.
 *  - If the 3D voice effect is enabled, users need to use stereo audio playback devices to hear
 * the anticipated voice effect.
 * - Pitch correction effect: `PITCH_CORRECTION`. To achieve better audio effect quality, Agora
 * recommends calling \ref IRtcEngine::setAudioProfile "setAudioProfile" and setting the `profile`
 * parameter to `AUDIO_PROFILE_MUSIC_HIGH_QUALITY(4)` or
 * `AUDIO_PROFILE_MUSIC_HIGH_QUALITY_STEREO(5)` before setting this enumerator.
 * @param param1
 * - If you set `preset` to `ROOM_ACOUSTICS_3D_VOICE`, the `param1` sets the cycle period of the
 * 3D voice effect. The value range is [1,60] and the unit is a second. The default value is 10
 * seconds, indicating that the voice moves around you every 10 seconds.
 * - If you set `preset` to `PITCH_CORRECTION`, `param1` sets the basic mode of the pitch
 * correction effect:
 *  - `1`: (Default) Natural major scale.
 *  - `2`: Natural minor scale.
 *  - `3`: Japanese pentatonic scale.
 * @param param2
 * - If you set `preset` to `ROOM_ACOUSTICS_3D_VOICE`, you need to set `param2` to `0`.
 * - If you set `preset` to `PITCH_CORRECTION`, `param2` sets the tonic pitch of the pitch
 * correction effect:
 *  - `1`: A
 *  - `2`: A#
 *  - `3`: B
 *  - `4`: (Default) C
 *  - `5`: C#
 *  - `6`: D
 *  - `7`: D#
 *  - `8`: E
 *  - `9`: F
 *  - `10`: F#
 *  - `11`: G
 *  - `12`: G#
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setAudioEffectParameters:(AgoraAudioEffectPreset)preset param1:(int)param1 param2:(int)param2;

/** Sets parameters for SDK preset voice beautifier effects.
 *
 * Call this method to set a gender characteristic and a reverberation effect for the singing
 * beautifier effect. This method sets parameters for the local user who sends an audio stream.
 *
 * After you call this method successfully, all users in the channel can hear the relevant effect.
 *
 * To achieve better audio effect quality, before you call this method, Agora recommends calling
 * \ref IRtcEngine::setAudioProfile "setAudioProfile", and setting the `scenario` parameter as
 * `AUDIO_SCENARIO_GAME_STREAMING(3)` and the `profile` parameter as
 * `AUDIO_PROFILE_MUSIC_HIGH_QUALITY(4)` or `AUDIO_PROFILE_MUSIC_HIGH_QUALITY_STEREO(5)`.
 *
 * @note
 * - You can call this method either before or after joining a channel.
 * - Do not set the `profile` parameter of \ref IRtcEngine::setAudioProfile "setAudioProfile" as
 * `AUDIO_PROFILE_SPEECH_STANDARD(1)` or `AUDIO_PROFILE_IOT(6)`; otherwise, this method call does
 * not take effect.
 * - This method works best with the human voice. Agora does not recommend using this method for
 * audio containing music.
 * - After you call this method, Agora recommends not calling the following methods, because they
 * can override `setVoiceBeautifierParameters`:
 *    - \ref IRtcEngine::setAudioEffectPreset "setAudioEffectPreset"
 *    - \ref IRtcEngine::setAudioEffectParameters "setAudioEffectParameters"
 *    - \ref IRtcEngine::setVoiceBeautifierPreset "setVoiceBeautifierPreset"
 *    - \ref IRtcEngine::setLocalVoiceReverbPreset "setLocalVoiceReverbPreset"
 *    - \ref IRtcEngine::setLocalVoiceChanger "setLocalVoiceChanger"
 *    - \ref IRtcEngine::setLocalVoicePitch "setLocalVoicePitch"
 *    - \ref IRtcEngine::setLocalVoiceEqualization "setLocalVoiceEqualization"
 *    - \ref IRtcEngine::setLocalVoiceReverb "setLocalVoiceReverb"
 *
 * @param preset The options for SDK preset voice beautifier effects:
 * - `SINGING_BEAUTIFIER`: Singing beautifier effect.
 * @param param1 The gender characteristics options for the singing voice:
 * - `1`: A male-sounding voice.
 * - `2`: A female-sounding voice.
 * @param param2 The reverberation effects options:
 * - `1`: The reverberation effect sounds like singing in a small room.
 * - `2`: The reverberation effect sounds like singing in a large room.
 * - `3`: The reverberation effect sounds like singing in a hall.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setVoiceBeautifierParameters:(AgoraVoiceBeautifierPreset)preset param1:(int)param1 param2:(int)param2;

/** Set parameters for SDK preset voice conversion.
 *
 * @note
 * - reserved interface
 *
 * @param preset The options for SDK preset audio effects. See #VOICE_CONVERSION_PRESET.
 * @param param1 reserved.
 * @param param2 reserved.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setVoiceConversionParameters:(AgoraVoiceConversionPreset)preset param1:(int)param1 param2:(int)param2;
                                       


#pragma mark Sound Position Indication

/**-----------------------------------------------------------------------------
 * @name Sound Position Indication
 * -----------------------------------------------------------------------------
 */
/** Enables/Disables stereo panning for remote users.

If you need to use the [setRemoteVoicePosition]([AgoraRtcEngineKit setRemoteVoicePosition:pan:gain:]) method, ensure that you call this method before joining a channel to enable stereo panning for remote users.

 @param enabled Sets whether or not to enable stereo panning for remote users:

 - `YES`: enables stereo panning.
 - `NO`: disables stereo panning.

 @return * 0: Success.
 * < 0: Failure.
   - `-157`(`AgoraErrorCodeModuleNotFound`): The library for enabling deep-learning
   noise reduction is not integrated.
 */
- (int)enableSoundPositionIndication:(BOOL)enabled;

/** Sets the sound position and gain of a remote user.

 When the local user calls this method to set the sound position of a remote user, the sound difference between the left and right channels allows the local user to track the real-time position of the remote user, creating a real sense of space. This method applies to massively multiplayer online games, such as Battle Royale games.

**Note:**

- Ensure that you call this method after joining a channel. For this method to work, enable stereo panning for remote users by calling [enableSoundPositionIndication]([AgoraRtcEngineKit enableSoundPositionIndication:]) before joining a channel.
This method requires hardware support.
- For the best effect, we recommend using the following audio output devices:
  - (iOS) A stereo headset.
  - (macOS) A stereo loudspeaker.
 @param uid The ID of the remote user.
 @param pan The sound position of the remote user. The value ranges from -1.0 to 1.0:

 * 0.0: (default) the remote sound comes from the front.
 * -1.0: the remote sound comes from the left.
 * 1.0: the remote sound comes from the right.

 @param gain Gain of the remote user. The value ranges from 0.0 to 100.0. The default value is 100.0 (the original gain of the remote user). The smaller the value, the less the gain.

 @return * 0: Success.
* < 0: Failure.
 */
- (int)setRemoteVoicePosition:(NSUInteger)uid pan:(double)pan gain:(double)gain;


#pragma mark Audio Mixing

/**-----------------------------------------------------------------------------
 * @name Audio Mixing
 * -----------------------------------------------------------------------------
 */

/**
 * Starts audio mixing.
 *
 * This method mixes the specified local audio file with the audio stream from the microphone, or replaces the microphone’s audio stream with the specified local audio file.
 *
 * You can choose whether the other users can hear the local audio playback and specify the number of playback loops.
 *
 * This method also supports online music playback.
 *
 * A successful method call triggers the {@link AgoraRtcEngineDelegate.rtcEngine:audioMixingStateChanged:errorType: audioMixingStateChanged} callback on the local client to report the `AgoraAudioMixingStateTypePlaying` state.
 *
 * When the audio mixing file playback finishes, the SDK triggers the `audioMixingStateChanged` callback on the local client to report the `AgoraAudioMixingStateTypeStopped` state.
 * @note
 * - To use this method, ensure that the iOS device version is 8.0 and later.
 * - Call this method when the user is in a channel.
 * - To play an online music file, ensure that the time interval between calling this method is more than 100 ms, or the `audioMixingStateChanged` callback reports the `AgoraAudioMixingErrorTypeTooFrequentlyCall`(702) error.
 * @param filePath Specifies the absolute path (including the suffixes of the filename) of the local or online audio file to be mixed.
 * For example, `/var/mobile/Containers/Data/audio.mp4`. Supported audio formats: MP3, MP4, M4A, AAC, 3GP, MKV, and WAV.
 * @param loopback Sets which user can hear the audio mixing:
 * - `YES`: Only the local user can hear the audio mixing.
 * - `NO`: All users can hear the audio mixing.
 * @param replace Sets the audio mixing content:
 * - `YES`: Only publish the specified audio file; the audio stream from the microphone is not published.
 * - `NO`: The local audio file is mixed with the audio stream from the microphone.
 * @param cycle Sets the number of playback loops:
 * - Positive integer: Number of playback loops.
 * - -1: Infinite playback loops.
 *
 * @return
 * - 0: Success.
 * - <0: Failure.
 *  - -701: The local audio mixing file does not exist, the SDK does not support the file format, or the online audio packet is not received within five seconds
 * after it is opened.
 */
- (int)startAudioMixing:(NSString *  _Nonnull)filePath
               loopback:(BOOL)loopback
                replace:(BOOL)replace
                  cycle:(NSInteger)cycle;

/**
 * Starts audio mixing.
 *
 * This method mixes the specified local audio file with the audio stream from the microphone, or replaces the microphone’s audio stream with the specified local audio file.
 *
 * You can choose whether the other users can hear the local audio playback and specify the number of playback loops.
 *
 * This method also supports online music playback.
 *
 * A successful method call triggers the {@link AgoraRtcEngineDelegate.rtcEngine:audioMixingStateChanged:errorType: audioMixingStateChanged} callback on the local client to report the `AgoraAudioMixingStateTypePlaying` state.
 *
 * When the audio mixing file playback finishes, the SDK triggers the `audioMixingStateChanged` callback on the local client to report the `AgoraAudioMixingStateTypeStopped` state.
 * @note
 * - To use this method, ensure that the iOS device version is 8.0 and later.
 * - Call this method when the user is in a channel.
 * - To play an online music file, ensure that the time interval between calling this method is more than 100 ms, or the `audioMixingStateChanged` callback reports the `AgoraAudioMixingErrorTypeTooFrequentlyCall`(702) error.
 * @param filePath Specifies the absolute path (including the suffixes of the filename) of the local or online audio file to be mixed.
 * For example, `/var/mobile/Containers/Data/audio.mp4`. Supported audio formats: MP3, MP4, M4A, AAC, 3GP, MKV, and WAV.
 * @param loopback Sets which user can hear the audio mixing:
 * - `YES`: Only the local user can hear the audio mixing.
 * - `NO`: All users can hear the audio mixing.
 * @param replace Sets the audio mixing content:
 * - `YES`: Only publish the specified audio file; the audio stream from the microphone is not published.
 * - `NO`: The local audio file is mixed with the audio stream from the microphone.
 * @param cycle Sets the number of playback loops:
 * - Positive integer: Number of playback loops.
 * - -1: Infinite playback loops.
 * @param startPos The playback position (ms) of the music file.
 *
 * @return
 * - 0: Success.
 * - <0: Failure.
 *  - -701: The local audio mixing file does not exist, the SDK does not support the file format, or the online audio packet is not received within five seconds
 * after it is opened.
 */
- (int)startAudioMixing:(NSString *  _Nonnull)filePath
               loopback:(BOOL)loopback
                replace:(BOOL)replace
                  cycle:(NSInteger)cycle
               startPos:(NSInteger)startPos;

/**
 * Stops audio mixing.
 *
 * Call this method when the user is in a channel.
 *
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)stopAudioMixing;

/**
 * Pauses audio mixing.
 *
 * Call this method when the user is in a channel.
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)pauseAudioMixing;

/**
 * Resumes audio mixing.
 *
 * Call this API when the user is in a channel.
 *
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)resumeAudioMixing;

/**
 * Adjusts the volume of audio mixing.
 *
 * Call this API when the user is in a channel.
 *
 * @param volume Audio mixing volume. The value ranges between 0 and 100 (default). 100 is the original volume.
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)adjustAudioMixingVolume:(NSInteger)volume;


/**
  * Adjusts the audio mixing volume for publishing (for remote users).
  * @note Call this method when you are in a channel.
  * @param volume Audio mixing volume for publishing. The value ranges between 0 and 100 (default).
  * @return
  *  - 0: Success.
  *  - < 0: Failure.
  */
- (int)adjustAudioMixingPublishVolume:(NSInteger)volume;

/** 
 * Retrieves the audio mixing volume for publishing.
 * This method helps troubleshoot audio volume related issues.
 * @note Call this method when you are in a channel.
 * @return
 *  - &ge; 0: The audio mixing volume for publishing, if this method call succeeds. The value range is [0,100].
 *  - < 0: Failure.
 */
- (int)getAudioMixingPublishVolume;

/** 
 * Adjusts the audio mixing volume for local playback.
 * @note Call this method when you are in a channel.
 * @param volume Audio mixing volume for local playback. The value ranges between 0 and 100 (default).
 * @return
 *  - 0: Success.
 *  - < 0: Failure.
 */
- (int)adjustAudioMixingPlayoutVolume:(NSInteger)volume;

/**
 * Retrieves the audio mixing volume for local playback.
 * This method helps troubleshoot audio volume related issues.
 * @note Call this method when you are in a channel.
 * @return
 *  - &ge; 0: The audio mixing volume, if this method call succeeds. The value range is [0,100].
 *  - < 0: Failure.
 */
- (int)getAudioMixingPlayoutVolume;


/**
 * Gets the duration of audio mixing.
 *
 * Call this API when the user is in a channel.
 *
 * @return
 * - ≥ 0: The audio mixing duration (ms), if this method call is successful.
 * - < 0: Failure.
 */
- (int)getAudioMixingDuration;

/**
 * Gets the playback position of the audio.
 *
 * Call this API when the user is in a channel.
 * @return
 * - ≥ 0: The current playback position (ms), if this method call is successful.
 * - < 0: Failure.
 */
- (int)getAudioMixingCurrentPosition;

/**
 * Sets the playback position of the audio mixing file.
 *
 * Sets the playback starting position of the audio mixing file instead of playing it from the beginning.
 *
 * @param pos Integer. The playback starting position of the audio mixing file (ms).
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setAudioMixingPosition:(NSInteger)pos;

/** Sets the pitch of the local music file.
 When a local music file is mixed with a local human voice, call this method to set the pitch of the local music file only.
 @note Call this method after calling [startAudioMixing]([AgoraRtcEngineKit startAudioMixing:loopback:replace:cycle:]).

 @param pitch Sets the pitch of the local music file by chromatic scale. The default value is 0, which means keeping the original pitch. The value ranges from -12 to 12, and the pitch value between consecutive values is a chromatic value. The greater the absolute value of this parameter, the higher or lower the pitch of the local music file.

 @return * 0: Success.
 * < 0: Failure.
 */
- (int)setAudioMixingPitch:(NSInteger)pitch;

#pragma mark Audio Recording

/**-----------------------------------------------------------------------------
 * @name Audio Recording
 * -----------------------------------------------------------------------------
 */

/** Starts an audio recording.

 The SDK allows recording during a call, which supports either one of the following two formats:

 * .wav: Large file size with high sound fidelity
 * .aac: Small file size with low sound fidelity

 Ensure that the saving directory in the application exists and is writable. This method is usually called after the `joinChannelByToken` method. The recording automatically stops when the [leaveChannel](leaveChannel:) method is called.

 @param filePath Full file path of the recording file. The string of the file name is in UTF-8 code.
 @param sampleRate Sampling rate of the audio file recording source.
 @param fileRecordOption Provides an option： 
 - 1: Record the sound captured by the local microphone,
 - 2: Record the mix in the channel
 @param quality Sets the audio recording quality: #AUDIO_RECORDING_QUALITY_TYPE.
 @return
 - 0: Success.
 - < 0: Failure.
*/
- (int)startAudioRecording:(NSString * _Nonnull)filePath 
                   quality:(AgoraAudioRecordingQuality)quality;

- (int)startAudioRecordingWithConfig:(AgoraAudioRecordingConfiguration * _Nonnull)config;

- (int)setAudioEncodedFrameDelegate:(id<AgoraAudioEncodedFrameDelegate> _Nonnull)delegate config:(AgoraAudioEncodedFrameDelegateConfig * _Nonnull) config;
/** Stops the audio recording.

 @note  Call this method before calling [leaveChannel](leaveChannel:), otherwise the recording automatically stops when the [leaveChannel](leaveChannel:) method is called.

 @return * 0: Success.
* <0: Failure.
 */
- (int)stopAudioRecording;

#pragma mark Echo Test

/**-----------------------------------------------------------------------------
 * @name Echo Test
 * -----------------------------------------------------------------------------
 */

/** Launches an audio call test to determine whether the audio devices (for example, headset and speaker) and the network connection are working properly.

 In the test, the user first speaks, and the recording is played back in 10 seconds. If the user can hear the recording in 10 seconds, it indicates that the audio devices and network connection work properly.

 @note  After calling this method, always call stopEchoTest to end the test, otherwise the application will not be able to run the next echo test, nor can it call the `joinChannelByToken` method to start a new call.

 @param successBlock Callback on successfully starting the echo test. See JoinSuccessBlock in `joinChannelByToken` for a description of the callback parameters.

 @return * 0: Success.
* <0: Failure.
 For example, AgoraErrorCodeRefused(-5)：Failed to launch the echo test.
 */
- (int)startEchoTest:(void(^ _Nullable)(NSString * _Nonnull channel, NSUInteger uid, NSInteger elapsed))successBlock;

/** Starts an audio call test.

This method starts an audio call test to determine whether the audio devices (for example, headset and speaker) and the network connection are working properly.

In the audio call test, you record your voice. If the recording plays back within the set time interval, the audio devices and the network connection are working properly.

**Note:**

- Call this method before joining a channel.

- After calling this method, call the stopEchoTest method to end the test. Otherwise, the app cannot run the next echo test, or join a channel.

- In the live interactive streaming profile, only a host can call this method.

@param interval The time interval (s) between when you speak and when the recording plays back.
@param successBlock The SDK triggers the `successBlock` callback if this method call is successful.

@return * 0: Success.
* < 0: Failure.
*/
- (int)startEchoTestWithInterval:(NSInteger)interval
                  successBlock:(void(^ _Nullable)(NSString * _Nonnull channel, NSUInteger uid, NSInteger elapsed))successBlock;

/** Stops the audio call test.

 @note  This method applies to macOS only.

 @return * 0: Success.
* <0: Failure. For example, AgoraErrorCodeRefused(-5)：Failed to stop the echo test. It could be that the echo test is not running.
 */
- (int)stopEchoTest;


#pragma mark Miscellaneous Audio Control

/**-----------------------------------------------------------------------------
 * @name Miscellaneous Audio Control
 * -----------------------------------------------------------------------------
 */

/**
 * Enables in-ear monitoring.
 *
 * @param enabled Determines whether to enable in-ear monitoring.
 * - `YES`: Enable in-ear monitoring.
 * - `NO`: Disable in-ear monitoring.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)enableInEarMonitoring:(BOOL)enabled;

/**
 * Enables in-ear monitoring.
 *
 * @param enabled Determines whether to enable in-ear monitoring.
 * - `YES`: Enable in-ear monitoring.
 * - `NO`: Disable in-ear monitoring.
 * @param includeAudioFilters The type of the ear monitoring: #AgoraEarMonitoringFilterType.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)enableInEarMonitoring:(BOOL)enabled includeAudioFilters:(AgoraEarMonitoringFilterType)includeAudioFilters;

/**
 * Sets the volume of the in-ear monitoring.
 *
 * @param volume The volume of the in-ear monitor, ranging from 0 to 100,
 * can be amplified to 400, but not suggested.
 * The default value is 100.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setInEarMonitoringVolume:(NSInteger)volume;

#if TARGET_OS_IPHONE

/** Sets the audio session operation restriction.

 @note  This method applies to iOS only.

 The SDK and the application can both configure the audio session by default. The application may occassionally use other applications or third-party components to manipulate the audio session and restrict the SDK from doing so. This API allows the application to restrict the SDK's manipulation of the audio session.

 @note  This method restricts the SDK's manipulation of the audio session. Any operation to the audio session relies solely on the application, other applications, or third-party components.
 */
- (void)setAudioSessionOperationRestriction:(AgoraAudioSessionOperationRestriction)restriction;

#endif

#pragma mark Dual Video Mode

/**-----------------------------------------------------------------------------
 * @name Dual Video Mode
 * -----------------------------------------------------------------------------
 */

/**
 * Enables or disables the dual video stream mode.
 *
 * @param enabled
 * - `YES`: Enable the dual-stream mode.
 * - `NO`: (default) Disable the dual-stream mode.
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)enableDualStreamMode:(BOOL)enabled;

/**
 * Enables or disables the dual video stream mode.
 *
 * If dual-stream mode is enabled, the subscriber can choose to receive the high-stream
 * (high-resolution high-bitrate video stream) or low-stream (low-resolution low-bitrate video stream)
 * video using \ref setRemoteVideoStreamType "setRemoteVideoStreamType".
 *
 * @param sourceType
 * - The video source type.
 * @param enabled
 * - true: Enable the dual-stream mode.
 * - false: (default) Disable the dual-stream mode.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)enableDualStreamMode:(AgoraVideoSourceType)sourceType enabled:(BOOL)enabled;

/**
 * Enables or disables the dual video stream mode.
 *
 * If dual-stream mode is enabled, the subscriber can choose to receive the high-stream
 * (high-resolution high-bitrate video stream) or low-stream (low-resolution low-bitrate video stream)
 * video using \ref setRemoteVideoStreamType "setRemoteVideoStreamType".
 *
 * @param sourceType
 * - The video source type.
 * @param enabled
 * - true: Enable the dual-stream mode.
 * - false: (default) Disable the dual-stream mode.
 * @param streamConfig
 * - The minor stream config
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)enableDualStreamMode:(AgoraVideoSourceType)sourceType
                    enabled:(BOOL)enabled
               streamConfig:(AgoraSimulcastStreamConfig* _Nonnull)streamConfig;

/**
 * Sets the remote video stream type.
 *
 * If the remote user has enabled the dual-stream mode, by default the SDK
 * receives the high-stream video. Call this method to switch to the low-stream
 * video.
 *
 * @note
 * This method applies to scenarios where the remote user has enabled the
 * dual-stream mode by {@link enableDualStreamMode: enableDualStreamMode}
 * before joining the channel.
 *
 * @param uid ID of the remote user sending the video stream.
 * @param streamType The video stream type: #AgoraVideoStreamType.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setRemoteVideoStream:(NSUInteger)uid
                       type:(AgoraVideoStreamType)streamType;


/**
 * Sets the default stream type of the remote video if the remote user has
 * enabled the dual-stream mode.
 *
 * @param streamType The default video stream type: #AgoraVideoStreamType.
 *
 * @return
 *  - 0: Success.
 *  - < 0: Failure.
 */
- (int)setRemoteDefaultVideoStreamType:(AgoraVideoStreamType)streamType;


#pragma mark Stream Fallback

/**-----------------------------------------------------------------------------
 * @name Stream Fallback
 * -----------------------------------------------------------------------------
 */

/** Sets the local publish stream fallback option.

 This method disables/enables the local publish stream fallback option according to the network conditions.

 If you set the option as AgoraStreamFallbackOptionAudioOnly = 2, the SDK will:

 * Disable the upstream video when the network cannot support both video and audio.
 * Reenable the video when the network condition improves.

 When the local publish stream falls back to audio-only or when the audio stream switches back to the video, the [didLocalPublishFallbackToAudioOnly]([AgoraRtcEngineDelegate rtcEngine:didLocalPublishFallbackToAudioOnly:]) callback will be triggered.

 @note  Agora does not recommend using this method for CDN streaming, because the remote CDN user will notice a lag when the local publish stream falls back to audio-only.

 @param option AgoraStreamFallbackOptions
 @return * 0: Success.
* <0: Failure.
 */
- (int)setLocalPublishFallbackOption:(AgoraStreamFallbackOptions)option;

/** Sets the remote subscribe stream fallback option.

  This method disables/enables the remote subscribe stream fallback option according to the network conditions.

 If you use the option as AgoraStreamFallbackOptionAudioOnly = 2, the SDK will automatically switch the video from a high-stream to a low-stream, or disable the video when the downlink network conditions cannot support both audio and video to guarantee the quality of the audio. The SDK monitors the network quality and re-enables the video stream when the network conditions improve.
 Once the local publish stream falls back to audio only, or the audio stream switches back to the video stream, the [didRemoteSubscribeFallbackToAudioOnly]([AgoraRtcEngineDelegate  rtcEngine:didRemoteSubscribeFallbackToAudioOnly:byUid:]) callback will be triggered.

 @param option AgoraStreamFallbackOptions
 @return * 0: Success.
* <0: Failure.
 */
- (int)setRemoteSubscribeFallbackOption:(AgoraStreamFallbackOptions)option;

#pragma mark Video Quality Control

/**-----------------------------------------------------------------------------
 * @name Video Quality Control
 * -----------------------------------------------------------------------------
 */

/** Sets the video quality preferences.

 @param preferFrameRateOverImageQuality The video preference to be set:

 * YES: Frame rate over image quality
 * NO: Image quality over frame rate (default)

 @return * 0: Success.
* <0: Failure.
 */
- (int)setVideoQualityParameters:(BOOL)preferFrameRateOverImageQuality;

#pragma mark External Media Source

/**-----------------------------------------------------------------------------
 * @name External Media Source
 * -----------------------------------------------------------------------------
 */

/**
 * Sets the external video source.
 *
 * Call this API before `enableVideo` or `startPreview`.
 *
 * @param enable Determines whether to enable the external video source.
 * - `YES`: Use external video source.
 * - `NO`: Do not use external video source.
 *
 * The Agora SDK does not support switching video sources dynamically in the
 * channel. If an external video source is enabled and you are in a channel, if
 * you want to switch to an internal video source, you must exit the channel.
 * Then call this method to set enable as NO, and join the channel again.
 * @param useTexture Determines whether to use textured video data.
 * - `YES`: Use the texture as an input.
 * - `NO`: Do not use the texture as an input.
 * @param sourceType Determines the type of  the external video source.
 * - see AgoraExternalVideoSourceType in AgoraEnumerates.h
 */
- (void)setExternalVideoSource:(BOOL)enable useTexture:(BOOL)useTexture sourceType:(AgoraExternalVideoSourceType)sourceType;

/**
 * Sets the external video source.
 *
 * Call this API before `enableVideo` or `startPreview`.
 *
 * @param enable Determines whether to enable the external video source.
 * - `YES`: Use external video source.
 * - `NO`: Do not use external video source.
 *
 * The Agora SDK does not support switching video sources dynamically in the
 * channel. If an external video source is enabled and you are in a channel, if
 * you want to switch to an internal video source, you must exit the channel.
 * Then call this method to set enable as NO, and join the channel again.
 * @param useTexture Determines whether to use textured video data.
 * - `YES`: Use the texture as an input.
 * - `NO`: Do not use the texture as an input.
 * @param sourceType Determines the type of  the external video source.
 * @param encodedVideoTrackOption Determines encoded video track options.
 */
- (void)setExternalVideoSource:(BOOL)enable useTexture:(BOOL)useTexture
                                            sourceType:(AgoraExternalVideoSourceType)sourceType
                               encodedVideoTrackOption:(AgoraEncodedVideoTrackOptions* _Nonnull)encodedVideoTrackOption;

/**
 * Pushes the encoded external video frame to Agora SDK.
 *
 * @note
 * Ensure that you have configured encoded video source before calling this method.
 *
 * @param data The encoded external video data, which must be the direct buffer.
 * @param frameInfo The encoded external video frame info: AgoraEncodedVideoFrameInfo.
 *
 * @return
 * - 0: Success, which means that the encoded external video frame is pushed successfully.
 * - < 0: Failure, which means that the encoded external video frame fails to be pushed.
 */
- (int)pushExternalEncodedVideoFrame:(NSData* _Nonnull)frame
                                info:(AgoraEncodedVideoFrameInfo * _Nonnull)info;

/**
 * Pushes the external video frame.
 *
 * This method pushes the video frame using the AgoraVideoFrame class and
 * passes it to the Agora SDK with the `format` parameter in AgoraVideoFormat.
 *
 * Call {@link setExternalVideoSource:useTexture:pushMode: setExternalVideoSource}
 * and set the `pushMode` parameter as `YES` before calling this method.
 * @note
 * In the Communication profile, this method does not support pushing textured
 * video frames.
 * @param frame Video frame containing the SDK's encoded video data to be
 * pushed: #AgoraVideoFrame.
 * @return
 * - `YES`: Success.
 * - `NO`: Failure.
 */
- (BOOL)pushExternalVideoFrame:(AgoraVideoFrame * _Nonnull)frame;

#pragma mark External Audio Data
/** Enables the external audio sink.
 
 This method applies to scenarios where you want to use external audio data for playback. After enabling the external audio sink, you can call the [pullPlaybackAudioFrameRawData]([AgoraRtcEngineKit pullPlaybackAudioFrameRawData:lengthInByte:]) / [pullPlaybackAudioFrameSampleBufferByLengthInByte]([AgoraRtcEngineKit pullPlaybackAudioFrameSampleBufferByLengthInByte:]) method to pull the remote audio data, process it, and play it with the audio effects that you want.
 
 @param sampleRate Sets the sample rate (Hz) of the external audio sink. You can set this parameter as 16000, 32000, 44100 or 48000.
 @param channels Sets the number of audio channels of the external audio sink:

 - 1: Mono
 - 2: Stereo
 
 @note Once you enable the external audio sink, the app will not retrieve any audio data from the `onPlaybackAudioFrame` callback.
 */
- (void)enableExternalAudioSink:(NSUInteger)sampleRate
                               channels:(NSUInteger)channels;

/** Pulls the remote audio data in the RawData format.
 
 Before calling this method, call the [enableExternalAudioSink]([AgoraRtcEngineKit enableExternalAudioSink:channels:]) method to enable and set the external audio sink.
 
 After a successful method call, the app pulls the decoded and mixed audio data for playback.

 **Note**
 
 - Once you call the [pullPlaybackAudioFrameRawData]([AgoraRtcEngineKit pullPlaybackAudioFrameRawData:lengthInByte:]) method successfully, the app will not retrieve any audio data from the `onPlaybackAudioFrame` callback.
 - The difference between the `onPlaybackAudioFrame` callback and the `pullPlaybackAudioFrameRawData` method is as follows:
    - `onPlaybackAudioFrame`: The SDK sends the audio data to the app once every 10 ms. Any delay in processing the audio frames may result in audio jitter.
    - `pullPlaybackAudioFrameRawData`: The app pulls the remote audio data autonomously. After setting the audio data parameters, the SDK adjusts the frame buffer and avoids problems caused by jitter in the external audio playback.
 
 @param data The audio data that you want to pull. The data format is in byte[].
 @param lengthInByte The data length (byte) of the external audio data.
 
 The value of this parameter is related to the value of the `sampleRate` parameter that you set in the [enableExternalAudioSink]([AgoraRtcEngineKit enableExternalAudioSink:channels:]) method: lengthInByte = sampleRate / 100 * 2 * number of channels * time (ms).
 
 @return - YES: Success.
 - NO: Failure.
 */
- (BOOL)pullPlaybackAudioFrameRawData:(void * _Nonnull)data
                              lengthInByte:(NSUInteger)lengthInByte;

/** Pulls the remote audio data in the SampleBuffer format.

 Before calling this method, call the [enableExternalAudioSink]([AgoraRtcEngineKit enableExternalAudioSink:channels:]) method to enable and set the external audio sink.

 After a successful method call, the app pulls the decoded and mixed audio data for playback.

 **Note**

 - Once you call the [pullPlaybackAudioFrameSampleBufferByLengthInByte]([AgoraRtcEngineKit pullPlaybackAudioFrameSampleBufferByLengthInByte:]) method successfully, the app will not retrieve any audio data from the `onPlaybackAudioFrame` callback.
 - The difference between the `onPlaybackAudioFrame` callback and the `pullPlaybackAudioFrameSampleBufferByLengthInByte` method is as follows:
    - `onPlaybackAudioFrame`: The SDK sends the audio data to the app once every 10 ms. Any delay in processing the audio frames may result in audio jitter.
    - `pullPlaybackAudioFrameSampleBufferByLengthInByte`: The app pulls the remote audio data. After setting the audio data parameters, the SDK adjusts the frame buffer and avoids problems caused by jitter in the external audio playback.
 
 @param lengthInByte The data length (byte) of the external audio data.
 
 The value of this parameter is related to the value of the sampleRate parameter that you set in the [enableExternalAudioSink]([AgoraRtcEngineKit enableExternalAudioSink:channels:]) method:

 - `lengthInByte` = `sampleRate` / 100 * 2 * number of channels * time (ms).
 - This parameter should be divisible by the value of sampleRate.

 @return - NOT NULL: Success.
 - NULL: Failure.
 */
- (CMSampleBufferRef _Nullable)pullPlaybackAudioFrameSampleBufferByLengthInByte:(NSUInteger)lengthInByte;


/**
 * Sets the external audio source.
 *
 * @note
 * Ensure that you call this method before joining the channel.
 *
 * @param enabled Determines whether to enable the external audio source:
 * - true: Enable the external audio source.
 * - false: (default) Disable the external audio source.
 * @param sampleRate The Sample rate (Hz) of the external audio source, which can set be as
 * 8000, 16000, 32000, 44100, or 48000.
 * @param channels The number of channels of the external audio source, which can be set as 1 or 2:
 * - 1: Mono.
 * - 2: Stereo.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setExternalAudioSource:(BOOL)enabled
                   sampleRate:(NSInteger)sampleRate
                     channels:(NSInteger)channels;

- (int)enableEchoCancellationExternal:(BOOL)enabled
                     audioSourceDelay:(NSInteger)audioSourceDelay;
/**
 * Sets the external audio source.
 *
 * @note
 * Ensure that you call this method before joining the channel.
 *
 * @param enabled Determines whether to enable the external audio source:
 * - true: Enable the external audio source.
 * - false: (default) Disable the external audio source.
 * @param sampleRate The Sample rate (Hz) of the external audio source, which can set be as
 * 8000, 16000, 32000, 44100, or 48000.
 * @param channels The number of channels of the external audio source, which can be set as 1 or 2:
 * - 1: Mono.
 * - 2: Stereo.
 * @param sourceNumber The number of the external audio sources, should be greater than 0.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setExternalAudioSource:(BOOL)enabled
                   sampleRate:(NSInteger)sampleRate
                     channels:(NSInteger)channels
                 sourceNumber:(NSInteger)sourceNumber
                localPlayback:(BOOL)localPlayback
                      publish:(BOOL)publish;

/**
 * Sets the external audio source.
 *
 * @note
 * Ensure that you call this method before joining the channel.
 *
 * @param sourceId custom audio source id.
 * @param enabled Determines whether to local playback the external audio source:
 * - true: Local playback the external audio source.
 * - false: Local don`t playback the external audio source.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)enableCustomAudioLocalPlayback:(NSInteger)sourceId enabled:(BOOL)enabled;

/** Pushes the external audio frame to the Agora SDK for encoding.
 *
 * @param data      External audio data.
 * @param sourceId  The audio track ID.
 * @param timestamp Time stamp of the external audio frame to be synchronized with the external video source.
 * @return * 0: Success.
 * <0: Failure.
 */
- (int)pushExternalAudioFrameNSData:(NSData * _Nonnull)data
                           sourceId:(NSInteger)sourceId
                          timestamp:(NSTimeInterval)timestamp;

/** Pushes the external audio frame to the Agora SDK for encoding.
 *
 * @param data      External audio data.
 * @param samples   Number of samples for the push.
 * @param sourceId  The audio track ID.
 * @param timestamp Time stamp of the external audio frame to be synchronized with the external video source.
 * @return * 0: Success.
 * <0: Failure.
 */
- (int)pushExternalAudioFrameRawData:(void * _Nonnull)data
                             samples:(NSInteger)samples
                            sourceId:(NSInteger)sourceId
                           timestamp:(NSTimeInterval)timestamp;

/** Pushes the external audio frame to the Agora SDK for encoding.
 *
 * @param data      External audio data.
 * @param samples   Number of samples for the push, which can be set as "samples = data.length / sizeof(int16_t)"
 * @param sampleRate The Sample rate (Hz) , which can set be as 8000, 16000, 32000, 44100, or 48000.
 * @param channels The number of channels, which can be set as 1 or 2:
 * - 1: Mono.
 * - 2: Stereo.
 * @param sourceId  The audio track ID.
 * @param timestamp Time stamp of the external audio frame to be synchronized with the external video source.
 * @return * 0: Success.
 * <0: Failure.
 */
- (int)pushExternalAudioFrameRawData:(void* _Nonnull)data
                             samples:(NSInteger)samples
                          sampleRate:(NSInteger)sampleRate
                            channels:(NSInteger)channels
                            sourceId:(NSInteger)sourceId
                           timestamp:(NSTimeInterval)timestamp;
/**
 * Pushes the external audio frame to the sample buffer for encoding.
 *
 * @param sampleBuffer Sample buffer
 * @return
 * -  0: Success.
 * - <0: Failure.
 */
- (int)pushExternalAudioFrameSampleBuffer:(CMSampleBufferRef _Nonnull)sampleBuffer;

- (int)pushCaptureAudioFrame:(AgoraAudioFrame* _Nonnull)audioFrame;

- (int)pushReverseAudioFrame:(AgoraAudioFrame* _Nonnull)audioFrame;
/**
  * Sets the direct external audio source.
  *
  * @param enabled Determines whether to enable the direct external audio source:
  * - true: Enable the direct external audio source.
  * - false: (default) Disable the direct external audio source.
  */
- (int)setDirectExternalAudioSource:(BOOL)enabled;

/**
  * Sets the direct external audio source.
  *
  * @param enabled Determines whether to enable the direct external audio source:
  * - true: Enable the direct external audio source.
  * - false: (default) Disable the direct external audio source.
  * @param localPlayback Determines whether to enable the local playback of the direct external audio source
  */
- (int)setDirectExternalAudioSource:(BOOL)enabled localPlayback:(BOOL)localPlayback;

/** Pushes the direct send audio data to the Agora SDK  with not buffer.
 *
 * @param data   External audio data. (sampleRate / channels by `setExternalAudioSource:`)
 * @return
 * -  0: Success.
 * - <0: Failure.
 */
- (int)pushDirectAudioFrameNSData:(NSData* _Nonnull)data;

/** Pushes the direct send audio data to the Agora SDK  with not buffer.
 *
 * @param data      External audio data.
 * @param samples   Number of samples for the push, which can be set as "samples = data.length / sizeof(int16_t)"
 * @param sampleRate The Sample rate (Hz) , which can set be as 8000, 16000, 32000, 44100, or 48000.
 * @param channels The number of channels, which can be set as 1 or 2:
 * - 1: Mono.
 * - 2: Stereo.
 * @return
 * -  0: Success.
 * - <0: Failure.
 */
- (int)pushDirectAudioFrameRawData:(void* _Nonnull)data
                           samples:(NSInteger)samples
                        sampleRate:(NSInteger)sampleRate
                          channels:(NSInteger)channels;

/**
 * Enable or disable the external audio source local playback.
 *
 * * @param enabled Determines whether to enable the external audio source local playback:
 * - true: Enable the external audio source local playback.
 * - false: (default) Disable the external audio source local playback.
 * @return
 * -  0: Success.
 * - <0: Failure.
 */
- (int)enableExternalAudioSourceLocalPlayback:(BOOL)enable;

/**
 * Sets the audio recording format for the `onRecordAudioFrame` callback.
 *
 * The SDK calculates the sample interval according to the value of the
 * `sampleRate`, `channel`, and `samplesPerCall` parameters you set in this
 * method. Sample interval (sec) = `samplePerCall`/(`sampleRate` &times;
 * `channel`). Ensure that the value of sample interval is no less than 0.01.
 * The SDK triggers the `onRecordAudioFrame` callback according to the sample interval.
 *
 * @param sampleRate The audio sample rate (`samplesPerSec`) returned in
 * the `onRecordAudioFrame` callback, which can be set as 8000, 16000, 32000,
 * 44100, or 48000 Hz.
 * @param channel The number of audio channels (`channels`) returned in
 * the `onRecordAudioFrame` callback, which can be set as 1 or 2:
 * - 1: Mono
 * - 2: Stereo
 * @param mode Deprecated. The use mode of the `onRecordAudioFrame` callback.See #AgoraAudioRawFrameOperationMode.
 * @param samplesPerCall The number of samples the `onRecordAudioFrame`
 * callback returns. Set it as 1024 for RTMP streaming.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setRecordingAudioFrameParametersWithSampleRate:(NSInteger)sampleRate
                                              channel:(NSInteger)channel
                                                 mode:(AgoraAudioRawFrameOperationMode)mode
                                       samplesPerCall:(NSInteger)samplesPerCall;
/**
 * Sets the audio playback format for the `onPlaybackAudioFrame` callback.
 *
 * The SDK calculates the sample interval according to the value of the
 * `sampleRate`, `channel`, and `samplesPerCall` parameters you set in this
 * method. Sample interval (sec) = `samplePerCall`/(`sampleRate` &times;
 * `channel`). Ensure that the value of sample interval is no less than 0.01.
 * The SDK triggers the `onPlaybackAudioFrame` callback according to the sample
 * interval.
 * @param sampleRate The sample rate (`samplesPerSec`) returned in the
 * `onPlaybackAudioFrame` callback, which can be set as 8000, 16000, 32000,
 * 44100, or 48000 Hz.
 * @param channel The number of audio channels (`channels`) returned in
 * the `onPlaybackAudioFrame` callback, which can be set as 1 or 2:
 * - 1: Mono
 * - 2: Stereo
 * @param mode Deprecated. The use mode of the `onPlaybackAudioFrame` callback.
 * See #AgoraAudioRawFrameOperationMode.
 * @param samplesPerCall The number of samples the `onPlaybackAudioFrame`
 * callback returns. Set it as 1024 for RTMP streaming.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setPlaybackAudioFrameParametersWithSampleRate:(NSInteger)sampleRate
                                             channel:(NSInteger)channel
                                                mode:(AgoraAudioRawFrameOperationMode)mode
                                      samplesPerCall:(NSInteger)samplesPerCall;

/**
 * Sets the mixed audio format for the `onMixedAudioFrame` callback.
 *
 * @param sampleRate The sample rate (Hz) of the audio data returned in the
 * `onMixedAudioFrame` callback, which can set be as 8000, 16000, 32000, 44100,
 * or 48000.
 * @param channel The number of channels of the audio data in
 * `onMixedAudioFrame` callback, which can be set as 1 or 2:
 * - 1: Mono
 * - 2: Stereo
 * @param samplesPerCall Not supported. Sampling points in the called data
 * returned in `onMixedAudioFrame`. For example, it is usually set as 1024 for
 * stream pushing.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setMixedAudioFrameParametersWithSampleRate:(NSInteger)sampleRate
                                          channel:(NSInteger)channel
                                   samplesPerCall:(NSInteger)samplesPerCall;

/**
 * Sets the audio frame parameters for the \ref agora::media::IAudioFrameObserver::onPlaybackAudioFrameBeforeMixing
 * "onPlaybackAudioFrameBeforeMixing" callback.
 *
 * @param numberOfChannels The number of channels contained in the `onPlaybackAudioFrameBeforeMixing` callback.
 * - 1: Mono.
 * - 2: Stereo.
 * @param sampleRateHz The sample rate(Hz) contained in the `onPlaybackAudioFrameBeforeMixing` callback. You can
 * set it as 8000, 16000, 32000, 44100, or 48000.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setPlaybackAudioFrameBeforeMixingParametersWithSampleRate:(NSInteger)sampleRate
                                                         channel:(NSInteger)channel;


/*
 * Adjust the custom audio publish volume by source id.
 * @param sourceId custom audio source id.
 * @param volume The volume, range is [0,100]:
 * 0: mute, 100: The original volume
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)adjustCustomAudioPublishVolume:(NSInteger)sourceId volume:(NSInteger)volume;

/*
 * Adjust the custom audio playout volume by source id.
 * @param sourceId custom audio source id.
 * @param volume The volume, range is [0,100]:
 * 0: mute, 100: The original volume
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)adjustCustomAudioPlayoutVolume:(NSInteger)sourceId volume:(NSInteger)volume;
#pragma mark Audio spectrum monitor   

/**
 * Enable the audio spectrum monitor.
 *
 * @param intervalInMS Sets the time interval(ms) between two consecutive audio spectrum callback.
 * The default value is 100. This param should be larger than 10.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)enableAudioSpectrumMonitor:(int)intervalInMS;

/**
 * Disalbe the audio spectrum monitor.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)disableAudioSpectrumMonitor;

/**
 * Registers an audio spectrum delegate.
 *
 * You need to register the following callbacks
 * according to your scenario:
 * - "onAudioSpectrumComputed": Occurs when the SDK receives the audio data and at set intervals.
 *
 * @param delegate AgoraAudioSpectrumDelegate
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)registerAudioSpectrumDelegate:(id<AgoraAudioSpectrumDelegate> _Nullable )delegate;

  /**
   * Releases the audio spectrum delegate.
   *
   * @param delegate AgoraAudioSpectrumDelegate
   * @return
   * - 0: Success.
   * - < 0: Failure.
   */
- (int) unregisterAudioSpectrumDelegate:(id<AgoraAudioSpectrumDelegate> _Nullable)delegate;

#pragma mark Built-in Encryption

/**-----------------------------------------------------------------------------
 * @name Built-in Encryption
 * -----------------------------------------------------------------------------
 */

/** Enables/Disables the built-in encryption.

 In scenarios requiring high security, Agora recommends calling enableEncryption to enable the built-in encryption before joining a channel.

 All users in the same channel must use the same encryption mode and encryption key. Once all users leave the channel, the encryption key of this channel is automatically cleared.

 **Note**

 - If you enable the built-in encryption, you cannot use the RTMP streaming function.

 @param enabled Whether to enable the built-in encryption:

 - YES: Enable the built-in encryption.
 - NO: Disable the built-in encryption.

 @param config Configurations of built-in encryption schemas. See AgoraEncryptionConfig.

 @return - 0: Success.
 - < 0: Failure.

  - -2 (`AgoraErrorCodeInvalidArgument`): An invalid parameter is used. Set the parameter with a valid value.
  - -7 (`AgoraErrorCodeNotInitialized`): The SDK is not initialized. Initialize the `AgoraRtcEngineKit` instance before calling this method.
  - -4 (`AgoraErrorCodeNotSupported`): The encryption mode is incorrect or the SDK fails to load the external encryption library. Check the enumeration or reload the external encryption library.
 */
- (int)enableEncryption:(bool)enabled encryptionConfig:(AgoraEncryptionConfig * _Nonnull)config;


#pragma mark Data Stream

/**-----------------------------------------------------------------------------
 * @name Data Steam
 * -----------------------------------------------------------------------------
 */
/** Creates a data stream.
*
* Each user can create up to five data streams during the lifecycle of the `AgoraRtcEngineKit`.
*
* @note Set both the `reliable` and `ordered` parameters to `YES` or `NO`. Do not set one as `YES` and the other as `NO`.
*
* @param streamId ID of the created data stream.
* @param reliable Sets whether or not the recipients are guaranteed to receive the data stream from the sender within five seconds:
* - YES: The recipients receive the data stream from the sender within five seconds. If the recipient does not receive the data stream within five seconds, an error is reported to the app.
* - NO: There is no guarantee that the recipients receive the data stream within five seconds and no error message is reported for any delay or missing data stream.
*
* @param ordered  Sets whether or not the recipients receive the data stream in the sent order:
* - YES: The recipients receive the data stream in the sent order.
* - NO: The recipients do not receive the data stream in the sent order.
*
* @return
* - 0: Success.
* - < 0: Failure.
*/
- (int)createDataStream:(NSInteger * _Nonnull)streamId
               reliable:(BOOL)reliable
                ordered:(BOOL)ordered;
/** Creates a data stream.

 Each user can create up to five data streams during the lifecycle of the [AgoraRtcChannel](AgoraRtcChannel).

 @param streamId ID of the created data stream.
 @param config the config of data stream.
 @return * 0: Success.
* < 0: Failure.
 */
- (int)createDataStream:(NSInteger * _Nonnull)streamId
                  config:(AgoraDataStreamConfig * _Nonnull)config;
/** Sends data stream messages to all users in a channel.

The SDK has the following restrictions on this method:

- Up to 60 packets can be sent per second in a channel with each packet having a maximum size of 1 KB.
- Each client can send up to 30 KB of data per second.
- Each user can have up to five data streams simultaneously.

If the remote user receives the data stream within five seconds, the SDK triggers the {@link AgoraRtcEngineDelegate.rtcEngine:receiveStreamMessageFromUid:streamId:data: receiveStreamMessageFromUid} callback on the remote client, from which the remote user gets the stream message.

If the remote user does not receive the data stream within five seconds, the SDK triggers the {@link AgoraRtcEngineDelegate.rtcEngine:didOccurStreamMessageErrorFromUid:streamId:error:missed:cached: didOccurStreamMessageErrorFromUid} callback on the remote client.

 @note
 - This method applies only to the Communication profile or to the hosts in the live interactive streaming profile. If an audience in the live interactive streaming profile calls this method, the audience role may be changed to a host.
 - Ensure that you have created the data stream using {@link createDataStream:reliable:ordered: createDataStream} before calling this method.

 @param streamId ID of the sent data stream returned in the `createDataStream` method.
 @param data   Sent data.

 @return
 - 0: Success.
 - < 0: Failure.
*/
- (int)sendStreamMessage:(NSInteger)streamId
                    data:(NSData * _Nonnull)data;

#pragma mark Stream Publish

/**-----------------------------------------------------------------------------
 * @name Stream Publish
 * -----------------------------------------------------------------------------
 */

/** Adds the URL to which the host publishes the stream. (CDN live only.)

 @note

 * Ensure that this API is called AFTER you have joined the channel.
 * This method only adds one URL each time it is called.
 * Do not add special characters such as Chinese to the url.

 @param url                URL to which the host publishes the stream.
 @param transcodingEnabled * YES: Enable transcoding
 * NO: Disable transcoding
 */
- (int)addPublishStreamUrl:(NSString * _Nonnull)url transcodingEnabled:(BOOL)transcodingEnabled;

/** Removes the URL to which the host publishes the stream. (CDN live only.)

 @note

 * This method only removes one URL each time it is called.
 * Do not add special characters such as Chinese to the url.

 @param url URL to which the host publishes the stream.
 */
- (int)removePublishStreamUrl:(NSString * _Nonnull)url;

/** Sets the video layout and audio for CDN live. (CDN live only.)

 @param transcoding AgoraLiveTranscoding
 */
- (int)setLiveTranscoding:(AgoraLiveTranscoding *_Nullable)transcoding;

/** Adds a voice or video stream into an ongoing broadcast.

 If successful, you can find the stream in the channels of argus and the uid of the stream is 666.

 @param url    URL address to add to the ongoing live broadcast. You can use the RTMP, HLS, and FLV protocols.
 @param config AgoraLiveInjectStreamConfig
*/
- (int)addInjectStreamUrl:(NSString * _Nonnull)url config:(AgoraLiveInjectStreamConfig * _Nonnull)config;

/** Removes an injected stream URL.

 @param url URL address of the added stream to be removed.
 */
- (int)removeInjectStreamUrl:(NSString * _Nonnull)url;


#pragma mark Deprecated CDN Publisher

/**-----------------------------------------------------------------------------
 * @name Deprecated CDN Publisher
 * -----------------------------------------------------------------------------
 */

/** @deprecated
 Configures the push-stream for CDN live.

 This method is deprecated. Although you can still use it to publish to CDN, Agora recommends using the following methods instead:

 * [addPublishStreamUrl](addInjectStreamUrl:config:)
 * [removePublishStreamUrl](removeInjectStreamUrl:)
 * [setLiveTranscoding](setLiveTranscoding:)
 */
- (int)configPublisher:(AgoraPublisherConfiguration * _Nonnull)config __deprecated;

/** @deprecated
 Sets the picture-in-picture layout.

 This method is deprecated and Agora recommends you not to use it. If you want to set the compositing layout in the CDN broadcast, call the setLiveTranscoding method.

 This method sets the picture-in-picture layouts for a live broadcast and is only applicable when you
 want to push streams at the Agora server. When you push streams at the server:

 1. Define a canvas, its width and height (video resolution), the background color, and the total number of video streams you want to display.
 2. Define the position and size of each video stream on the canvas, and whether it is cropped or zoomed to fit.

 The push stream application will format the information of the customized layouts as *JSON* and package it
 to the Supplemental Enhancement Information (SEI) of each keyframe when generating the H.264 video stream and pushing it to the CDN vendors through the RTMP protocol.

 @note  - Call this method after joining a channel.
 - The application should allow only one user per channel to call this method. If more than one user calls this method, the other users must call [clearVideoCompositingLayout]([AgoraRtcEngineKit clearVideoCompositingLayout]) to remove the settings.
 */
- (int)setVideoCompositingLayout:(AgoraRtcVideoCompositingLayout * _Nonnull)layout __deprecated;

/** @deprecated
 Removes the picture-in-picture layout settings.

 This method removes the settings made after calling [setVideoCompositingLayout]([AgoraRtcEngineKit setVideoCompositingLayout:]).
 */
- (int)clearVideoCompositingLayout __deprecated;


#if (!(TARGET_OS_IPHONE) && (TARGET_OS_MAC))
#pragma mark Screen Capture

/**-----------------------------------------------------------------------------
 * @name Screen Capture
 * -----------------------------------------------------------------------------
 */
/** Shares the whole or part of a screen by specifying the display ID. (macOS only.)

@param displayId The ID ( type of CGDirectDisplayId) of the display screen to be shared. This parameter specifies which display screen you want to share. For information on how to get the displayId, see [Share the Screen](../../../screensharing_mac).
@param rectangle (Optional) The relative location of the region to the display screen. nil means sharing the whole screen. This parameter contains the following properties:

- x: the horizontal offset from the top-left corner.
- y: the vertical offset from the top-left corner.
- width: the width of the region.
- height: the height of the region.

If the specified region overruns the screen, the SDK shares only the region within it; if you set width or height as 0, the SDK shares the whole screen.
@param captureParams The screen sharing encoding parameters, see [AgoraScreenCaptureParameters](AgoraScreenCaptureParameters).

@return * 0: Success.
* < 0: Failure.

    - `ERR_INVALID_STATE`: the screen sharing state is invalid, probably because another screen or window is being shared. Call [stopScreenCapture]([AgoraRtcEngineKit stopScreenCapture]) to stop sharing the current window.
    - `ERR_INVALID_ARGUMENT`: the argument is invalid.
 */
- (int)startScreenCaptureByDisplayId:(UInt32)displayId
                          regionRect:(CGRect)regionRect
                       captureParams:(AgoraScreenCaptureParameters *_Nonnull)captureParams;

/** Shares the whole or part of a window by specifying the window ID. (macOS only.)

@param windowId The ID of the window ( type of CGWindowId) to be shared. This parameter specifies which window you want to share. For information on how to get the windowId, see [Share the Screen](../../../screensharing_mac).
@param rectangle (Optional) The relative location of the region to the window. nil means sharing the whole window. This parameter contains the following properties:

- x: the horizontal offset from the top-left corner.
- y: the vertical offset from the top-left corner.
- width: the width of the region.
- height: the height of the region.

If the specified region overruns the window, the SDK shares only the region within it; if you set width or height as 0, the SDK shares the whole window.
@param captureParams The window sharing encoding parameters, see [AgoraScreenCaptureParameters](AgoraScreenCaptureParameters).

@return * 0: Success.
* < 0: Failure.

    - `ERR_INVALID_STATE`: the window sharing state is invalid, probably because another screen or window is being shared. Call [stopScreenCapture]([AgoraRtcEngineKit stopScreenCapture]) to stop sharing the current window.
    - `ERR_INVALID_ARGUMENT`: the argument is invalid.
 */
- (int)startScreenCaptureByWindowId:(UInt32)windowId
                         regionRect:(CGRect)regionRect
                      captureParams:(AgoraScreenCaptureParameters *_Nonnull)captureParams;
                           
/** Stops a screen capture.

 @note  This method applies to macOS only.

 @return * 0: Success.
* <0: Failure.
 */
- (int)stopScreenCapture;

/** Updates the screen capture region.

 @note  This method applies to macOS only.

 @return * 0: Success.
* <0: Failure.
 */
- (int)updateScreenCaptureRegion:(CGRect)rect;

/** Updates the screen sharing parameters. (macOS only.)

@param captureParams The screen sharing encoding parameters, see [AgoraScreenCaptureParameters](AgoraScreenCaptureParameters).

@return * 0: Success.
* < 0: Failure.

    - `ERR_NOT_READY`: no screen or windows is being shared.
 */
- (int)updateScreenCaptureParameters:(AgoraScreenCaptureParameters * _Nonnull)captureParams;
/// @endcond
#endif

#if TARGET_OS_IPHONE
#pragma mark Camera Control

/**-----------------------------------------------------------------------------
 * @name Camera Control
 * -----------------------------------------------------------------------------
 */

/** Checks whether camera zoom is supported.

 @note  This method applies to iOS only, not to macOS.

 @return * YES: The device supports the camera zoom function
 * NO: The device does not support the camera zoom function
 */
- (BOOL)isCameraZoomSupported;

/** get the max camera zoom ratio.

 @note  This method applies to iOS only, not to macOS.

 @return the max camera zoom ratio.
*/
- (CGFloat)cameraMaxZoomFactor;

/** Sets the camera zoom ratio.

 @note  This method applies to iOS only, not to macOS.

 @param zoomFactor The camera zoom factor ranging from 1.0 to maximum zoom.
 */
- (CGFloat)setCameraZoomFactor:(CGFloat)zoomFactor;

/** Checks whether the manual focus is supported.

 @note  This method applies to iOS only, not to macOS.

 @return * YES: The device supports the manual focus function
 * NO: The device does not support the manual focus function
 */
- (BOOL)isCameraFocusPositionInPreviewSupported;

/** Sets the manual focus position.

 @note  This method applies to iOS only, not to macOS.

 @param position * positionX: Horizontal coordinate of the touch point in the view
 * positionY: Vertical coordinate of the touch point in the view
 */
- (BOOL)setCameraFocusPositionInPreview:(CGPoint)position;

/** Checks whether the manual exposure is supported.

 @note  This method applies to iOS only, not to macOS.

 @return * YES: The device supports the manual exposure function
 * NO: The device does not support the manual exposure function
 */
- (BOOL)isCameraExposurePositionSupported;

/** Sets the manual exposure position.

 @note  This method applies to iOS only, not to macOS.

 @param position * positionX: Horizontal coordinate of the touch point in the view
 * positionY: Vertical coordinate of the touch point in the view
 */
- (BOOL)setCameraExposurePosition:(CGPoint)positionInView;

/** Checks whether camera flash is supported.

 @note

 * This method applies to iOS only, not to macOS.
 * The application generally enables the front camera by default. If your front camera does not support front camera torch, this method will return NO. If you want to check if the rear camera torch is supported, call switchCamera before using this method.

 @return * YES: The device supports the camera flash function
 * NO: The device does not support the camera flash function
 */
- (BOOL)isCameraTorchSupported;

/** Enables the camera flash.

 @note  This method applies to iOS only, not to macOS.

 @param isOn * YES: Enable the camera flash
 * NO: Disable the camera flash
 */
- (BOOL)setCameraTorchOn:(BOOL)isOn;

/** Checks whether the autofocus is supported.

 @note  This method applies to iOS only, not to macOS.

 @return * YES: The device supports the autofocus function
 * NO: The device does not support the autofocus function
 */
- (BOOL)isCameraAutoFocusFaceModeSupported;

/** Enables the camera autoFocus.

 @note  This method applies to iOS only, not to macOS.

 @param enable * YES: Enable the camera autofocus
 * NO: Disable the camera autofocus
 */
- (BOOL)setCameraAutoFocusFaceModeEnabled:(BOOL)enable;

/** Checks whether the autoexposure is supported.

 @note  This method applies to iOS only, not to macOS.

 @return * YES: The device supports the autoexposure function
 * NO: The device does not support the autoexposure function
 */
- (BOOL)isCameraAutoExposureFaceModeSupported;

/** Enables the camera autoExposure.

 @note  This method applies to iOS only, not to macOS.

 @param enable * YES: Enable the camera autoexposure
 * NO: Disable the camera autoexposure
 */
- (BOOL)setCameraAutoExposureFaceModeEnabled:(BOOL)enable;

/**
 * Switches between the front and rear cameras.
 * @note  This method applies to iOS only, not to macOS.
 *
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)switchCamera;

/** Sets the camera capture configuration.
 * @note Call this method before enabling the local camera.
 * That said, you can call this method before calling \ref IRtcEngine::joinChannel "joinChannel",
 * \ref IRtcEngine::enableVideo "enableVideo", or \ref IRtcEngine::enableLocalVideo "enableLocalVideo",
 * depending on which method you use to turn on your local camera.
 *
 * @param config Sets the camera capturer configuration. See AgoraCameraCapturerConfiguration.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setCameraCapturerConfiguration:(AgoraCameraCapturerConfiguration * _Nullable)config;
#endif


#if (!(TARGET_OS_IPHONE) && (TARGET_OS_MAC))
#pragma mark macOS Device
/**-----------------------------------------------------------------------------
 * @name macOS Device
 * -----------------------------------------------------------------------------
 */

/** Monitors the change of a device state.

 @note  This method applies to macOS only, not to iOS.

 @param enabled - YES: Enable the monitoring of a device state change
 - Fales: Disable the monitoring a device state change
 */
- (void)monitorDeviceChange:(BOOL)enabled;

/** Gets all the devices in the system.

 @note  This method applies to macOS only, not to iOS.

 This method returns an NSArray object, including all the devices in the system.
 Your application can use the AgoraRtcDeviceInfo array object to enumerate the devices.

 @note  Do not call this method in the main thread.

 @param type AgoraMediaDeviceType
 @return When called successfully, it returns an AgoraRtcDeviceInfo NSArray object including all the devices.
 */
- (NSArray<AgoraRtcDeviceInfo *> * _Nullable)enumerateDevices:(AgoraMediaDeviceType)type;

/** Gets the device info; such as a recording, playback, or video capture device.

 @note  This method applies to macOS only, not to iOS.

 @param type AgoraMediaDeviceType
 @return When called successfully, it returns the device info of the device. Otherwise, it returns nil.
 */
- (AgoraRtcDeviceInfo * _Nullable)getDeviceInfo:(AgoraMediaDeviceType)type;

/** Specifies the player, recording, or audio-sampling device.

 @note  This method applies to macOS only, not to iOS.

 @param type     AgoraMediaDeviceType
 @param deviceId Device ID of the device, which can be fetched by calling [enumerateDevices](enumerateDevices:). The deviceId does not change when plugged or unplugged.
 @return * 0: Success.
* <0: Failure.
 */

- (int)setDevice:(AgoraMediaDeviceType)type deviceId:(NSString * _Nonnull)deviceId;

/** Gets the specified device's volume.

 @note  This method applies to macOS only, not to iOS.

 @param type AgoraMediaDeviceType
 @return * 0: Success.
* <0: Failure.
 */
- (int)getDeviceVolume:(AgoraMediaDeviceType)type;

/** Sets the specified device's volume.

 @note  This method applies to macOS only, not to iOS.

 @param type   AgoraMediaDeviceType
 @param volume The volume to set, ranging from 0 to 255.
 @return * 0: Success.
* <0: Failure.
 */
- (int)setDeviceVolume:(AgoraMediaDeviceType)type volume:(int)volume;

/** Starts the microphone test.

 @note  This method applies to macOS only, not to iOS.

 This method tests whether the microphone works properly. Once the test starts, the SDK reports the volume information by using the [reportAudioVolumeIndicationOfSpeakers]([AgoraRtcEngineDelegate rtcEngine:reportAudioVolumeIndicationOfSpeakers:totalVolume:]) callback method.

 @param indicationInterval Interval (ms) at which to report the microphone volume.
 @return * 0: Success.
* <0: Failure.
 */
- (int)startRecordingDeviceTest:(int)indicationInterval;

/** Stops the microphone test.

 @note  This method applies to macOS only, not to iOS.

 This method stops testing the microphone. You must call this method to stop the test after calling the [startRecordingDeviceTest](startRecordingDeviceTest:) method.

 @return * 0: Success.
* <0: Failure.
 */
- (int)stopRecordingDeviceTest;

 /** Starts a playback device test.

 @note  This method applies to macOS only, not to iOS.

 This method tests whether the playback device works properly with the specified playback audio file.

 @param audioFileName File path of the audio file for the test, which is in utf8 absolute path:

 - Supported File Format: wav, mp3, m4a, and aac
 - Supported File Sampling Rate: 8000, 16000, 32000, 44100, and 48000

 @return * 0: Success.
* <0: Failure.
 */
- (int)startPlaybackDeviceTest:(NSString * _Nonnull)audioFileName;

/** Stops the playback device test.

 @note  This method applies to macOS only, not to iOS.

 This method stops testing the playback device. You must call this method to stop the test after calling [startPlaybackDeviceTest](startPlaybackDeviceTest:).

 @return * 0: Success.
* <0: Failure.
 */
- (int)stopPlaybackDeviceTest;

/** Starts the audio device loopback test. (macOS only.)

This method tests whether the local audio devices are working properly. After calling this method, the microphone captures the local audio and plays it through the speaker. The [reportAudioVolumeIndicationOfSpeakers]([AgoraRtcEngineDelegate rtcEngine:reportAudioVolumeIndicationOfSpeakers:totalVolume:]) callback returns the local audio volume information at the set interval.

**Note:**

This method tests the local audio devices and does not report the network conditions.

@param indicationInterval The time interval (ms) at which the [reportAudioVolumeIndicationOfSpeakers]([AgoraRtcEngineDelegate rtcEngine:reportAudioVolumeIndicationOfSpeakers:totalVolume:]) callback returns. We recommend setting it as greater than 200 ms. The minimum value is 10 ms.

@return * 0: Success.
* < 0: Failure.
*/
-(int)startAudioDeviceLoopbackTest:(int)indicationInterval;

/** Stops the audio device loopback test. (macOS only.)

Ensure that you call this method to stop the loopback test after calling the [startAudioDeviceLoopbackTest]([AgoraRtcEngineKit startAudioDeviceLoopbackTest:]) method.

@return * 0: Success.
* < 0: Failure.
*/
-(int)stopAudioDeviceLoopbackTest;

/** Starts the capture device test.

 @note  This method applies to macOS only, not to iOS.

 This method tests whether the current video capture device works properly. Ensure that you have called enableVideo before calling this method and that the parameter view window is valid.

 @param view Input parameter, for displaying the video window.
 */
- (int)startCaptureDeviceTest:(NSView * _Nonnull)view;

/** Stops the capture device test.

 @note  This method applies to macOS only, not to iOS.

 This method stops testing the capture device. You must call this method to stop the test after calling [startCaptureDeviceTest](startCaptureDeviceTest:).
 */
- (int)stopCaptureDeviceTest;
#endif


#pragma mark Server Recording

/**-----------------------------------------------------------------------------
 * @name Server Recording
 * -----------------------------------------------------------------------------
 */

/** Starts the recording service.
 */
- (int)startRecordingService:(NSString * _Nonnull)recordingKey;

/** Stops the recording service.
 */
- (int)stopRecordingService:(NSString * _Nonnull)recordingKey;

/** Refreshes the server recording service status.

 @return * 0: Success.
* <0: Failure.
 */
- (int)refreshRecordingServiceStatus;

#pragma mark Watermark

/**-----------------------------------------------------------------------------
 * @name Watermark
 * -----------------------------------------------------------------------------
 */

/** Adds a watermark in the PNG file format onto the local video stream so that the recording device and the audience in the channel and CDN can see or capture it.

 To add the PNG file onto a CDN publishing stream only, see the method described in [setLiveTranscoding](setLiveTranscoding:).

 @param watermark AgoraImage
 */
- (int)addVideoWatermark:(AgoraImage * _Nonnull)watermark NS_SWIFT_NAME(addVideoWatermark(_:))__deprecated_msg("use addVideoWatermark:url options instead.");

/** Adds a watermark image to the local video.

 This method adds a PNG watermark image to the local video in the interactive live streaming. Once the watermark image is added, all the audience in the channel (CDN audience included), and the capturing device can see and capture it. Agora supports adding only one watermark image onto the local video, and the newly watermark image replaces the previous one.

 The watermark position depends on the settings in the [setVideoEncoderConfiguration]([AgoraRtcEngineKit setVideoEncoderConfiguration:]) method:

 - If the orientation mode of the encoding video is AgoraVideoOutputOrientationModeFixedLandscape, or the landscape mode in AgoraVideoOutputOrientationModeAdaptative, the watermark uses the landscape orientation.
 - If the orientation mode of the encoding video is AgoraVideoOutputOrientationModeFixedPortrait, or the portrait mode in AgoraVideoOutputOrientationModeAdaptative, the watermark uses the portrait orientation.
 - When setting the watermark position, the region must be less than the dimensions set in the [setVideoEncoderConfiguration]([AgoraRtcEngineKit setVideoEncoderConfiguration:]) method. Otherwise, the watermark image will be cropped.

 **Note**

 - Ensure that you have called the [enableVideo]([AgoraRtcEngineKit enableVideo]) method to enable the video module before calling this method.
 - If you only want to add a watermark image to the local video for the audience in the CDN live streaming channel to see and capture, you can call this method or the [setLiveTranscoding]([AgoraRtcEngineKit setLiveTranscoding:]) method.
 - This method supports adding a watermark image in the PNG file format only. Supported pixel formats of the PNG image are RGBA, RGB, Palette, Gray, and Alpha_gray.
 - If the dimensions of the PNG image differ from your settings in this method, the image will be cropped or zoomed to conform to your settings.
 - If you have enabled the local video preview by calling the [startPreview]([AgoraRtcEngineKit startPreview]) method, you can use the `visibleInPreview` member in the WatermarkOptions class to set whether or not the watermark is visible in preview.
 - If you have enabled the mirror mode for the local video, the watermark on the local video is also mirrored. To avoid mirroring the watermark, Agora recommends that you do not use the mirror and watermark functions for the local video at the same time. You can implement the watermark function in your application layer.

 @param url The local file path of the watermark image to be added. This method supports adding a watermark image from the local file path. If the watermark image to be added is in the project file, you need to change the image's Type from PNG image to Data in the Xcode property, otherwise, the Agora Native SDK cannot recognize the image.
 @param options The options of the watermark image to be added. See WatermarkOptions.

 @return * 0: Success.
 * < 0: Failure.
 */
- (int)addVideoWatermark:(NSURL* _Nonnull)url options:(WatermarkOptions* _Nonnull)options;

/** Clears the watermark image on the video stream.
 */
- (int)clearVideoWatermarks;

/* switch to another channel
@return * 0: Success.
 * < 0: Failure.
 */
-(int)switchChannel:(NSString*  _Nonnull)token  channelName:(NSString*  _Nonnull)channelName;
#pragma mark String UID

/** Registers a user account.
 *
 * Once registered, the user account can be used to identify the local user when the user joins the channel.
 * After the user successfully registers a user account, the SDK triggers the \ref agora::rtc::IRtcEngineEventHandler::onLocalUserRegistered "onLocalUserRegistered" callback on the local client,
 * reporting the user ID and user account of the local user.
 *
 * To join a channel with a user account, you can choose either of the following:
 *
 * - Call the \ref agora::rtc::IRtcEngine::registerLocalUserAccount "registerLocalUserAccount" method to create a user account, and then the \ref agora::rtc::IRtcEngine::joinChannelWithUserAccount "joinChannelWithUserAccount" method to join the channel.
 * - Call the \ref agora::rtc::IRtcEngine::joinChannelWithUserAccount "joinChannelWithUserAccount" method to join the channel.
 *
 * The difference between the two is that for the former, the time elapsed between calling the \ref agora::rtc::IRtcEngine::joinChannelWithUserAccount "joinChannelWithUserAccount" method
 * and joining the channel is shorter than the latter.
 *
 * @note
 * - Ensure that you set the `userAccount` parameter. Otherwise, this method does not take effect.
 * - Ensure that the value of the `userAccount` parameter is unique in the channel.
 * - To ensure smooth communication, use the same parameter type to identify the user. For example, if a user joins the channel with a user ID, then ensure all the other users use the user ID too. The same applies to the user account. If a user joins the channel with the Agora Web SDK, ensure that the uid of the user is set to the same parameter type.
 *
 * @param appId The App ID of your project.
 * @param userAccount The user account. The maximum length of this parameter is 255 bytes. Ensure that you set this parameter and do not set it as null. Supported character scopes are:
 * - All lowercase English letters: a to z.
 * - All uppercase English letters: A to Z.
 * - All numeric characters: 0 to 9.
 * - The space character.
 * - Punctuation characters and other symbols, including: "!", "#", "$", "%", "&", "(", ")", "+", "-", ":", ";", "<", "=", ".", ">", "?", "@", "[", "]", "^", "_", " {", "}", "|", "~", ",".
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
     */
- (int)registerLocalUserAccountWithAppID:(NSString * _Nonnull)appID userAccount:(NSString * _Nonnull)userAccount;

/** Joins the channel with a user account.
 *
 * After the user successfully joins the channel, the SDK triggers the following callbacks:
 *
 * - The local client: \ref agora::rtc::IRtcEngineEventHandler::onLocalUserRegistered "onLocalUserRegistered" and \ref agora::rtc::IRtcEngineEventHandler::onJoinChannelSuccess "onJoinChannelSuccess" .
 * The remote client: \ref agora::rtc::IRtcEngineEventHandler::onUserJoined "onUserJoined" and \ref agora::rtc::IRtcEngineEventHandler::onUserInfoUpdated "onUserInfoUpdated" , if the user joining the channel is in the `COMMUNICATION` profile, or is a host in the `LIVE_BROADCASTING` profile.
 *
 * @note To ensure smooth communication, use the same parameter type to identify the user. For example, if a user joins the channel with a user ID, then ensure all the other users use the user ID too. The same applies to the user account.
 * If a user joins the channel with the Agora Web SDK, ensure that the uid of the user is set to the same parameter type.
 *
 * @param token The token generated at your server:
 * - For low-security requirements: You can use the temporary token generated at Console. For details, see [Get a temporary toke](https://docs.agora.io/en/Voice/token?platform=All%20Platforms#get-a-temporary-token).
 * - For high-security requirements: Set it as the token generated at your server. For details, see [Get a token](https://docs.agora.io/en/Voice/token?platform=All%20Platforms#get-a-token).
 * @param channelId The channel name. The maximum length of this parameter is 64 bytes. Supported character scopes are:
 * - All lowercase English letters: a to z.
 * - All uppercase English letters: A to Z.
 * - All numeric characters: 0 to 9.
 * - The space character.
 * - Punctuation characters and other symbols, including: "!", "#", "$", "%", "&", "(", ")", "+", "-", ":", ";", "<", "=", ".", ">", "?", "@", "[", "]", "^", "_", " {", "}", "|", "~", ",".
 * @param userAccount The user account. The maximum length of this parameter is 255 bytes. Ensure that you set this parameter and do not set it as null. Supported character scopes are:
 * - All lowercase English letters: a to z.
 * - All uppercase English letters: A to Z.
 * - All numeric characters: 0 to 9.
 * - The space character.
 * - Punctuation characters and other symbols, including: "!", "#", "$", "%", "&", "(", ")", "+", "-", ":", ";", "<", "=", ".", ">", "?", "@", "[", "]", "^", "_", " {", "}", "|", "~", ",".
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 *  - #ERR_INVALID_ARGUMENT (-2)
 *  - #ERR_NOT_READY (-3)
 *  - #ERR_REFUSED (-5)
 */
- (int)joinChannelByToken:(NSString * _Nullable)token
                channelId:(NSString * _Nonnull)channelId
              userAccount:(NSString * _Nonnull)userAccount
              joinSuccess:(void(^ _Nullable)(NSString * _Nonnull channel, NSUInteger uid, NSInteger elapsed))joinSuccessBlock;

/** Joins the channel with a user account.
 *
 * After the user successfully joins the channel, the SDK triggers the following callbacks:
 *
 * - The local client: \ref agora::rtc::IRtcEngineEventHandler::onLocalUserRegistered "onLocalUserRegistered" and \ref agora::rtc::IRtcEngineEventHandler::onJoinChannelSuccess "onJoinChannelSuccess" .
 * The remote client: \ref agora::rtc::IRtcEngineEventHandler::onUserJoined "onUserJoined" and \ref agora::rtc::IRtcEngineEventHandler::onUserInfoUpdated "onUserInfoUpdated" , if the user joining the channel is in the `COMMUNICATION` profile, or is a host in the `LIVE_BROADCASTING` profile.
 *
 * @note To ensure smooth communication, use the same parameter type to identify the user. For example, if a user joins the channel with a user ID, then ensure all the other users use the user ID too. The same applies to the user account.
 * If a user joins the channel with the Agora Web SDK, ensure that the uid of the user is set to the same parameter type.
 *
 * @param token The token generated at your server:
 * - For low-security requirements: You can use the temporary token generated at Console. For details, see [Get a temporary toke](https://docs.agora.io/en/Voice/token?platform=All%20Platforms#get-a-temporary-token).
 * - For high-security requirements: Set it as the token generated at your server. For details, see [Get a token](https://docs.agora.io/en/Voice/token?platform=All%20Platforms#get-a-token).
 * @param channelId The channel name. The maximum length of this parameter is 64 bytes. Supported character scopes are:
 * - All lowercase English letters: a to z.
 * - All uppercase English letters: A to Z.
 * - All numeric characters: 0 to 9.
 * - The space character.
 * - Punctuation characters and other symbols, including: "!", "#", "$", "%", "&", "(", ")", "+", "-", ":", ";", "<", "=", ".", ">", "?", "@", "[", "]", "^", "_", " {", "}", "|", "~", ",".
 * @param userAccount The user account. The maximum length of this parameter is 255 bytes. Ensure that you set this parameter and do not set it as null. Supported character scopes are:
 * - All lowercase English letters: a to z.
 * - All uppercase English letters: A to Z.
 * - All numeric characters: 0 to 9.
 * - The space character.
 * - Punctuation characters and other symbols, including: "!", "#", "$", "%", "&", "(", ")", "+", "-", ":", ";", "<", "=", ".", ">", "?", "@", "[", "]", "^", "_", " {", "}", "|", "~", ",".
 * @param options  The channel media options: \ref agora::rtc::ChannelMediaOptions::ChannelMediaOptions "ChannelMediaOptions"
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 *  - #ERR_INVALID_ARGUMENT (-2)
 *  - #ERR_NOT_READY (-3)
 *  - #ERR_REFUSED (-5)
 */
- (int)joinChannelByToken:(NSString * _Nullable)token
                channelId:(NSString * _Nonnull)channelId
              userAccount:(NSString * _Nonnull)userAccount
             mediaOptions:(AgoraRtcChannelMediaOptions * _Nonnull)mediaOptions
              joinSuccess:(void(^ _Nullable)(NSString * _Nonnull channel, NSUInteger uid, NSInteger elapsed))joinSuccessBlock;

/** Gets the user information by passing in the user account.

 * After a remote user joins the channel, the SDK gets the user ID and user account of the remote user, caches them in a mapping table object (`AgoraUserInfo`), and triggers the [didUpdatedUserInfo]([AgoraRtcEngineDelegate rtcEngine:didUpdatedUserInfo:withUid:]) callback on the local client.

 * After receiving the [didUpdatedUserInfo]([AgoraRtcEngineDelegate rtcEngine:didUpdatedUserInfo:withUid:]) callback, you can call this method to get the user ID of the remote user from the `userInfo` object by passing in the user account.

 * @param userAccount The user account of the user. Ensure that you set this parameter.
 * @param error The pointer to [AgoraErrorCode](AgoraErrorCode). It can be set as nil.

 * @return An [AgoraUserInfo](AgoraUserInfo) object that contains the user account and user ID of the user.
 */
- (AgoraUserInfo* _Nullable)getUserInfoByUserAccount:(NSString* _Nonnull)userAccount withError:(AgoraErrorCode* _Nullable)error;

/** Gets the user information by passing in the user ID.

 * After a user joins the channel, the SDK gets the user ID and user account of the remote user, caches them in a mapping table object (`AgoraUserInfo`), and triggers the [didUpdatedUserInfo]([AgoraRtcEngineDelegate rtcEngine:didUpdatedUserInfo:withUid:]) callback on the local client.

 * After receiving the [didUpdatedUserInfo]([AgoraRtcEngineDelegate rtcEngine:didUpdatedUserInfo:withUid:]) callback, you can call this method to get the user account of the user from the `userInfo` object by passing in the user ID.

 * @param uid The user ID of the user. Ensure that you set this parameter.
 * @param connection  {@link AgoraRtcConnection} by channelId and uid combine
 * @param error The pointer to [AgoraErrorCode](AgoraErrorCode). It can be set as nil.
 * @return An [AgoraUserInfo](AgoraUserInfo) object that contains the user account and user ID of the user.
 */
- (AgoraUserInfo* _Nullable)getUserInfoByUid:(NSUInteger)uid withError:(AgoraErrorCode* _Nullable)error;

#pragma mark Custom Audio PCM Frame

/**
  * @brief register & unregister the player audio observer
  *
  * @param observer observer object, pass nil to unregister
  * @return int <= 0 On behalf of an error, the value corresponds to one of PLAYER_ERROR
  */
- (BOOL)setAudioFrameDelegate:(id<AgoraAudioFrameDelegate> _Nullable)delegate;

#pragma mark Custom Video Frame

/**
 * Registers & unregister video frame observer object.
 *
 * @note
 * - Ensure that you call this method before joining the channel.
 *
 * @param observer An object to the video frame observer: id<AgoraVideoFrameDelegate>.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (BOOL)setVideoFrameDelegate:(id<AgoraVideoFrameDelegate> _Nullable)delegate;

#pragma mark Encoded Video Frame

/**
 * Obtain H264 video data before decoding.
 *
 * @note
 * - Ensure that you call this method before joining the channel.
 *
 * @param observer An object to the video frame observer: id<AgoraEncodedVideoFrameDelegate>.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (BOOL)setEncodedVideoFrameDelegate:(id<AgoraEncodedVideoFrameDelegate> _Nullable)delegate;

#pragma mark Custom Media Metadata

/**-----------------------------------------------------------------------------
 * @name Media Metadata
 * -----------------------------------------------------------------------------
 */

/** Sets the data source of the metadata.

 You need to implement the {@link AgoraMediaMetadataDataSource} protocol and specify the type of metadata in this method.

 Use this method with the {@link AgoraRtcEngineKit.setMediaMetadataDelegate:withType: setMediaMetadataDelegate} method to add synchronized metadata in the video stream. You can create more diversified live interactive streaming interactions, such as sending shopping links, digital coupons, and online quizzes.

 **Note**

 - Call this method before the `joinChannelByToken` method.
 - This method applies to the live interactive streaming channel profile only.

 @param metadataDataSource The AgoraMediaMetadataDataSource protocol.
 @param type The metadata type. See {@link AgoraMetadataType}. Currently, the SDK supports video metadata only.
 @return
 - YES: Success.
 - NO: Failure.
 */
- (BOOL)setMediaMetadataDataSource:(id<AgoraMediaMetadataDataSource> _Nullable)metadataDataSource withType:(AgoraMetadataType)type;

/** Sets the delegate of the metadata.

 You need to implement the AgoraMediaMetadataDelegate protocol and specify the type of metadata in this method.

 **Note**

 - Call this method before the `joinChannelByToken` method.
 - This method applies to the live interactive streaming channel profile only.

 @param metadataDelegate The AgoraMediaMetadataDelegate protocol.
 @param type The metadata type. See {@link AgoraMetadataType}. Currently, the SDK supports video metadata only.
 @return
 - YES: Success.
 - NO: Failure.
 */
- (BOOL)setMediaMetadataDelegate:(id<AgoraMediaMetadataDelegate> _Nullable)metadataDelegate withType:(AgoraMetadataType)type;

#pragma mark Miscellaneous Methods

/**-----------------------------------------------------------------------------
 * @name Miscellaneous Methods
 * -----------------------------------------------------------------------------
 */

/**
 * Gets the Agora SDK version.
 *
 * @return The version of the current SDK in the string format.
 */
+ (NSString * _Nonnull)getSdkVersion;

/**
 * Gets the warning or error description.
 * @param error The warning or error code.
 * @return The detailed warning or error description.
 */
+ (NSString* _Nonnull)getErrorDescription: (NSInteger)error;


/** Returns the native handler of the SDK Engine.

 This interface is used to get native the C++ handler of the SDK engine that can be used in special scenarios, such as register the audio and video frame observer.
 */
- (void * _Nullable)getNativeHandle;


/**
 * Specifies an SDK output log file.
 *
 * The log file records all log data for the SDK’s operation. Ensure that the
 * directory for the log file exists and is writable.
 *
 * @note
 * - The default log file location is as follows:
 *   - iOS: `App Sandbox/Library/caches/agorasdk.log`
 *   - macOS
 *       - Sandbox enabled: `App Sandbox/Library/Logs/agorasdk.log`, for
 * example `/Users/<username>/Library/Containers/<App Bundle Identifier>/Data/Library/Logs/agorasdk.log`.
 *       - Sandbox disabled: `～/Library/Logs/agorasdk.log`.
 * - Ensure that you call this method immediately after calling the
 * {@link sharedEngineWithAppId:delegate: sharedEngineWithAppId} method,
 * otherwise the output log might not be complete.
 * @param filePath Absolute path of the log file. The string of the log file is
 * in UTF-8 code.
 *
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)setLogFile:(NSString * _Nonnull)filePath;

/** Sets the output log filter level of the SDK.

You can use one or a combination of the filters. The log level follows the sequence of `Off`, `Critical`, `Error`, `Warning`, `Info` and `Debug`. Choose a level to see the logs preceding that level.

For example, if you set the log filter level to `Warning`, you see the logs within levels `Critical`, `Error`, and `Warning`.

 @see {@link AgoraRtcEngineKit.setLogFile: setLogFile}

 @param filter Log filter level: {@link AgoraLogFilter}.

 @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setLogFilter:(NSUInteger)filter;

/**
 * Sets the log file size (KB).
 *
 * The SDK has two log files, each with a default size of 512 KB. If you set
 * `fileSizeInBytes` as 1024 KB, the SDK outputs log files with a total
 * maximum size of 2 MB.
 * If the total size of the log files exceed the set value,
 * the new output log files overwrite the old output log files.
 *
 * @param fileSizeInKBytes The SDK log file size (KB).
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setLogFileSize:(NSUInteger)fileSizeInKBytes;

/** Upload current log file immediately to server.
 *  only use this when an error occurs
 *  block before log file upload success or timeout.
 *
 *  @return
 *  requestID  the id of this upload.
 */
- (NSString * _Nullable)uploadLogFile;

/**
 * Gets the current call ID.
 *
 * When a user joins a channel, a call ID is generated to identify the call.
 *
 * After a call ends, you can call `rate` or `complain` to gather feedback from
 * your customer.
 *
 * @return The call ID if the method call is successful.
 */
- (NSString * _Nullable)getCallId;

/**
 * Allows a user to rate the call.
 *
 * It is usually called after the call ends.
 *
 * @param callId The call ID retrieved from the {@link getCallId} method.
 * @param rating The rating of the call between 1 (the lowest score) to 5 (the
 * highest score). If you set a value out of this range, the
 * #AgoraErrorCodeInvalidArgument(-2) error occurs.
 * @param description (Optional) The description of the rating. The string
 * length must be less than 800 bytes.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 *   - -2: #AgoraErrorCodeInvalidArgument. The passed argument is invalid. For
 * example, `callId` is invalid.
 *   - -3: #AgoraErrorCodeNotReady. The SDK status is incorrect. For example,
 * initialization fails.
 */
- (int)rate:(NSString * _Nonnull)callId
     rating:(NSInteger)rating
description:(NSString * _Nullable)description;

/**
 * Allows a user to complain about the call quality.
 *
 * This method is usually called after the call ends.
 *
 * @param callId The call ID retrieved from the {@link getCallId} method.
 * @param description (Optional) The description of the complaint. The string
 * length must be less than 800 bytes.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 *   - -2: #AgoraErrorCodeInvalidArgument. The passed argument is invalid. For
 * example, `callId` is invalid.
 *   - -3: #AgoraErrorCodeNotReady. The SDK status is incorrect. For example,
 * initialization fails.
 */
- (int)complain:(NSString * _Nonnull)callId
    description:(NSString * _Nullable)description;


/** Enables/Disables dispatching the delegate to the main queue.

 If disabled, the application should dispatch the UI operating to the main queue.

 @param enabled * YES: Dispatch the delegate method to the main queue.
 * NO: Do not dispatch the delegate methods to the main queue

 @return * 0: Success.
* <0: Failure.
 */
- (int)enableMainQueueDispatch:(BOOL)enabled;


/**
 * Starts the last-mile network probe test.
 *
 * Starts the last-mile network probe test before joining a channel to get the uplink and downlink last-mile network statistics, including the bandwidth, packet loss, jitter, and round-trip time (RTT).
 *
 * Call this method to check the uplink network quality before users join a channel or before an audience switches to a host.
 *
 * Once this method is enabled, the SDK triggers the {@link AgoraRtcEngineDelegate.rtcEngine:lastmileProbeTestResult: lastmileProbeTestResult} callback
 * within 30 seconds depending on the network conditions. This callback reports the real-time statistics of the network conditions.
 *
 * @note
 * - Do not call other methods before receiving the `lastmileProbeTestResult` callback. Otherwise, the callback may be interrupted.
 * - This method consumes extra network traffic and may affect communication quality.
 *
 * @param config The configurations for the last-mile network probe test. See {@link AgoraLastmileProbeConfig}.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)startLastmileProbeTest:(AgoraLastmileProbeConfig *_Nullable)config;

/**
 * Stops the last-mile network probe test.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)stopLastmileProbeTest;

/** Provides the technical preview functionalities or special customizations by configuring the SDK with JSON options.

 @note  The JSON options are not public by default. Agora is working on making commonly used JSON options public in a standard way. Contact support@agora.io for more information.

 @param options SDK options in JSON format.
 */
- (int)setParameters:(NSString * _Nonnull)options;

/** Gets the Agora SDK's parameters for customization purposes.

 @note  This method is not public. Contact support@agora.io for more information.

 */
- (NSString * _Nullable)getParameter:(NSString * _Nonnull)parameter
                                args:(NSString * _Nullable)args;

#pragma mark MediaPlayer
/**-----------------------------------------------------------------------------
 * @name MediaPlayer publish
 * -----------------------------------------------------------------------------
 */
/**
 * create MediaPlayer
 * @param delegate An object to the mediaPlayer observer: id<AgoraRtcMediaPlayerDelegate>.
 * @return id<AgoraMediaPlayerProtocol>
 */
- (id<AgoraRtcMediaPlayerProtocol>_Nullable)createMediaPlayerWithDelegate:(id<AgoraRtcMediaPlayerDelegate>_Nullable)delegate;

/**
 * Destroy a media player source instance.
 * If a media player source instance is destroyed, the video and audio of it cannot
 * be published.
 *
 * @param mediaPlayer id<AgoraMediaPlayerProtocol>
 *
 * @return
 * - >0: The id of media player source instance.
 * - < 0: Failure.
 */
- (int)destroyMediaPlayer:(id<AgoraRtcMediaPlayerProtocol>_Nullable)mediaPlayer;

/**
 * getMediaPlayer
 * @param mediaPlayerId of the mediaPlayer.
 * @return id<AgoraMediaPlayerProtocol>
 */
- (id<AgoraRtcMediaPlayerProtocol> _Nullable)getMediaPlayer:(int)mediaPlayerId;

#pragma mark rhythm player

/** Enables the rhythm player.
 *
 * @param sound1 The absolute path or URL address (including the filename extensions) of the file for the downbeat.
 * @param sound2 The absolute path or URL address (including the filename extensions) of the file for the upbeats.
 * @param AgoraRhythmPlayerConfig The configuration of rhythm player.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)startRhythmPlayer:(NSString * _Nonnull)sound1 sound2:(NSString * _Nonnull)sound2 config:(AgoraRhythmPlayerConfig *  _Nullable)config;

/** Disables the rhythm player.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)stopRhythmPlayer;

/** Configures the rhythm player.
 *
 * @param AgoraRhythmPlayerConfig The configuration of rhythm player.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)configRhythmPlayer:(AgoraRhythmPlayerConfig * _Nullable)config;

#pragma mark Streaming Kit

/** Set audio parameters for direct streaming to CDN
 *
 * @note
 * Must call this api before "startDirectCdnStreaming"
 *
 * @param profile Sets the sample rate, bitrate, encoding mode, and the number of channels:
 * #AUDIO_PROFILE_TYPE.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setDirectCdnStreamingAudioProfile:(AgoraAudioProfile)profile;

/** Set video parameters for direct streaming to CDN
 *
 * Each configuration profile corresponds to a set of video parameters, including
 * the resolution, frame rate, and bitrate.
 *
 * @note
 * Must call this api before "startDirectCdnStreaming"
 *
 * @param config The local video encoder configuration: VideoEncoderConfiguration.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setDirectCdnStreamingVideoConfiguration:(AgoraVideoEncoderConfiguration * _Nonnull)config;

/** Start direct cdn streaming
 *
 * @param eventHandler A pointer to the direct cdn streaming event handler: \ref agora::rtc::IDirectCdnStreamingEventHandler
 * "IDirectCdnStreamingEventHandler".
 * @param publishUrl The url of the cdn used to publish the stream.
 * @param options The direct cdn streaming media options: DirectCdnStreamingMediaOptions.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)startDirectCdnStreaming:(id<AgoraDirectCdnStreamingEventDelegate> _Nonnull)delegate
                    publishUrl:(NSString * _Nonnull)url
                  mediaOptions:(AgoraDirectCdnStreamingMediaOptions * _Nonnull)options;

/** Stop direct cdn streaming
 *
 * @note
 * This method is temporarily not supported.
 *
 * @param options The direct cdn streaming media options: DirectCdnStreamingMediaOptions.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)stopDirectCdnStreaming;

/** Change the media source during the pushing
 *
 * @note
 * This method is synchronous.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)updateDirectCdnStreamingMediaOptions:(AgoraDirectCdnStreamingMediaOptions * _Nonnull)options;

/** Push external video data
 *
 * @param videoFrame The reference to the video frame to send.
 *
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)pushDirectCdnStreamingCustomVideoFrame:(AgoraVideoFrame * _Nonnull)frame;


#pragma mark Deprecated Methods

/**-----------------------------------------------------------------------------
 * @name Deprecated Methods
 * -----------------------------------------------------------------------------
 */

/** The user who is talking and the speaker’s volume.
 @deprecated From v1.1

 By default it is disabled. If needed, use the [enableAudioVolumeIndication]([AgoraRtcEngineKit enableAudioVolumeIndication:smooth:]) method to configure it.

 @param speakers The speakers (array). Each speaker ():

 - uid: User ID of the speaker.
 - volume：Volume of the speaker, between 0 (lowest volume) to 255 (highest volume).

 @param totalVolume Total volume after audio mixing between 0 (lowest volume) to 255 (highest volume).
 */
- (void)audioVolumeIndicationBlock:(void(^ _Nullable)(NSArray * _Nonnull speakers, NSInteger totalVolume))audioVolumeIndicationBlock __deprecated_msg("use delegate instead.");

/** The first local video frame is displayed on the screen.
 @deprecated From v1.1

 @param width   Width (pixels) of the video stream.
 @param height  Height (pixels) of the video stream.
 @param elapsed Time elapsed (ms) from a user joining the channel until this callback is triggered.
 */
- (void)firstLocalVideoFrameBlock:(void(^ _Nullable)(NSInteger width, NSInteger height, NSInteger elapsed))firstLocalVideoFrameBlock __deprecated_msg("use delegate instead.");

/** Occurs when the first remote video frame is received and decoded.

 @deprecated This callback is deprecated.

 @param uid     User ID of the user whose video streams are received.
 @param width   Width (pixels) of the video stream.
 @param height  Height (pixels) of the video stream.
 @param elapsed Time elapsed (ms) from the user joining the channel until this callback is triggered.
 */
- (void)firstRemoteVideoDecodedBlock:(void(^ _Nullable)(NSUInteger uid, NSInteger width, NSInteger height, NSInteger elapsed))firstRemoteVideoDecodedBlock __deprecated_msg("use delegate instead.");

/** The first remote video frame is received and decoded.
 @deprecated From v1.1

 @param uid     User ID of the user whose video streams are received.
 @param width   Width (pixels) of the video stream.
 @param height  Height (pixels) of the video stream.
 @param elapsed Time elapsed (ms) from the user joining the channel until this callback is triggered.
 */
- (void)firstRemoteVideoFrameBlock:(void(^ _Nullable)(NSUInteger uid, NSInteger width, NSInteger height, NSInteger elapsed))firstRemoteVideoFrameBlock __deprecated_msg("use delegate instead.");

/** A user has successfully joined the channel.
 @deprecated From v1.1

 If there are other users in the channel when this user joins, the SDK also reports to the application on the existing users who are already in the channel.

 @param uid     User ID. If the uid is specified in the `joinChannelByToken` method, it returns the specified ID; if not, it returns an ID that is automatically assigned by the Agora server.
 @param elapsed Time elapsed (ms) from calling joinChannelByToken until this callback is triggered.
 */
- (void)userJoinedBlock:(void(^ _Nullable)(NSUInteger uid, NSInteger elapsed))userJoinedBlock __deprecated_msg("use delegate instead.");

/** A user has left the call or gone offline.
 @deprecated From v1.1

 The SDK reads the timeout data to determine if a user has left the channel (or has gone offline). If no data package is received from the user in 15 seconds, the SDK assumes the user is offline. Sometimes a weak network connection may lead to false detections; therefore, Agora recommends using signaling for reliable offline detection.

 @param uid User ID.
 */
- (void)userOfflineBlock:(void(^ _Nullable)(NSUInteger uid))userOfflineBlock __deprecated_msg("use delegate instead.");

/** A user's audio stream has muted/unmuted.
 @deprecated From v1.1

 @param uid   User ID.
 @param muted - YES: Muted.
 - NO: Unmuted.
 */
- (void)userMuteAudioBlock:(void(^ _Nullable)(NSUInteger uid, BOOL muted))userMuteAudioBlock __deprecated_msg("use delegate instead.");

/** Occurs when a remote user pauses or resumes sending the video stream.

  @deprecated This callback is deprecated. Use [remoteVideoStateChangedOfUid](remoteVideoStateChangedOfUid:state:reason:elapsed:)
   instead.

  @note This callback is invalid when the number of users or broadacasters in a
  channel exceeds 20.

  @param userId ID of the remote user.
  @param muted

  - YES: The remote user has paused sending the video stream.
  - NO: The remote user has resumed sending the video stream.
  */
- (void)userMuteVideoBlock:(void(^ _Nullable)(NSUInteger uid, BOOL muted))userMuteVideoBlock __deprecated_msg("use delegate instead.");

/** The SDK updates the application about the statistics of the uploading local video streams once every two seconds.
 @deprecated From v1.1

 @param sentBytes  Total bytes sent since last count.
 @param sentFrames Total frames sent since last count.
 */
- (void)localVideoStatBlock:(void(^ _Nullable)(NSInteger sentBitrate, NSInteger sentFrameRate))localVideoStatBlock __deprecated_msg("use delegate instead.");

/** The SDK updates the application about the statistics of receiving remote video streams once every two seconds.
 @deprecated From v1.1

 @param uid           User ID that specifies whose video streams are received.
 @param rameCount     Total frames received since last count.
 @param delay         Time delay (ms)
 @param receivedBytes Total bytes received since last count.
 */
- (void)remoteVideoStatBlock:(void(^ _Nullable)(NSUInteger uid, NSInteger delay, NSInteger receivedBitrate, NSInteger receivedFrameRate))remoteVideoStatBlock __deprecated_msg("use delegate instead.");

/** The camera is turned on and ready to capture the video.
 @deprecated From v1.1
 */
- (void)cameraReadyBlock:(void(^ _Nullable)(void))cameraReadyBlock __deprecated_msg("use delegate instead.");

/** The SDK has lost network connection with the server.
 @deprecated From v1.1
 */
- (void)connectionLostBlock:(void(^ _Nullable)(void))connectionLostBlock __deprecated_msg("use delegate instead.");

/** A user has rejoined the channel with the reported channel ID and user ID.
 @deprecated From v1.1

 When the local machine loses connection with the server because of network problems, the SDK automatically attempts to reconnect, and then triggers this callback method upon reconnection.

 @param channel Channel name.
 @param uid     User ID.
 @param elapsed Time delay (ns) in rejoining the channel.
 */
- (void)rejoinChannelSuccessBlock:(void(^ _Nullable)(NSString * _Nonnull channel, NSUInteger uid, NSInteger elapsed))rejoinChannelSuccessBlock __deprecated_msg("use delegate instead.");

/** The RtcEngine runtime statistics reported once every two seconds.
 @deprecated From v1.1

 @param stat AgoraChannelStats
 */
- (void)rtcStatsBlock:(void(^ _Nullable)(AgoraChannelStats * _Nonnull stat))rtcStatsBlock __deprecated_msg("use delegate instead.");

/** A user has left the channel.
 @deprecated From v1.1

 This callback also provides call session statistics, including the duration of the call and the transmitting and receiving bytes.

 @param stat AgoraChannelStats
 */
- (void)leaveChannelBlock:(void(^ _Nullable)(AgoraChannelStats * _Nonnull stat))leaveChannelBlock __deprecated_msg("use delegate instead.");

/** The audio quality of the current call reported once every two seconds.
 @deprecated From v1.1

 @param uid     User ID of the speaker
 @param quality AgoraNetworkQuality
 @param delay   Time delay (ms)
 @param lost    The packet loss rate (%)
 */
- (void)audioQualityBlock:(void(^ _Nullable)(NSUInteger uid, AgoraNetworkQuality quality, NSUInteger delay, NSUInteger lost))audioQualityBlock __deprecated_msg("use delegate instead.");

/** The network quality of the specified user in a communication or live broadcast channel reported once every two seconds.
 @deprecated From v1.1

 @param uid       User ID. The network quality of the user with this UID will be reported. If uid is 0, the local network quality is reported.
 @param txQuality The transmission quality of the user: AgoraNetworkQuality
 @param rxQuality The receiving quality of the user: AgoraNetworkQuality
 */
- (void)networkQualityBlock:(void(^ _Nullable)(NSUInteger uid, AgoraNetworkQuality txQuality, AgoraNetworkQuality rxQuality))networkQualityBlock __deprecated_msg("use delegate instead.");

/** The network quality of the local user reported once after you have called [startLastmileProbeTest]([AgoraRtcEngineKit startLastmileProbeTest]).
 @deprecated From v1.1

 @param quality Quality of the last mile network: AgoraNetworkQuality
 */
- (void)lastmileQualityBlock:(void(^ _Nullable)(AgoraNetworkQuality quality))lastmileQualityBlock __deprecated_msg("use delegate instead.");

/** The media engine event.
 @deprecated From v1.1.
 */
- (void)mediaEngineEventBlock:(void(^ _Nullable)(NSInteger code))mediaEngineEventBlock __deprecated_msg("use delegate instead.");

/** Disables the audio function in the channel.

 Replaced with the disableAudio method from v2.3.

 @deprecated  Replaced with the disableAudio method from v2.3.

 @return * 0: Success.
* <0: Failure.
 */
- (int)pauseAudio __deprecated_msg("use disableAudio instead.");

/** Enables the audio function in the channel.

 Replaced with the enableAudio method from v2.3.

 @deprecated Replaced with the enableAudio method from v2.3.

 @return * 0: Success.
* <0: Failure.
 */
- (int)resumeAudio __deprecated_msg("use enableAudio instead.");

/** Initializes the The AgoraRtcEngineKit object.

 Replaced with [sharedEngineWithAppId]([AgoraRtcEngineKit sharedEngineWithAppId:delegate:]).

 @deprecated  Replaced with sharedEngineWithAppId.
 */
+ (instancetype _Nonnull)sharedEngineWithAppId:(NSString * _Nonnull)AppId
                                         error:(void(^ _Nullable)(AgoraErrorCode errorCode))errorBlock __deprecated_msg("use sharedEngineWithAppId:delegate: instead.");

/** Sets the high-quality audio parameters.
 @deprecated

 Replaced with [setAudioProfile](setAudioProfile:scenario:).
 */
- (int)setHighQualityAudioParametersWithFullband:(BOOL)fullband
                                          stereo:(BOOL)stereo
                                     fullBitrate:(BOOL)fullBitrate __deprecated_msg("use setAudioProfile:scenario: instead.");

/** Sets the video encoding profile.
 @deprecated From v2.3

 Each profile includes a set of parameters, such as the resolution, frame rate, and bitrate. When the camera does not support the specified resolution, the SDK chooses a suitable camera resolution, while the encoder resolution is the one specified by [setVideoProfile](setVideoProfile:swapWidthAndHeight:).

 @note

 * Always set the video profile after calling the enableVideo method.
 * Always set the video profile before calling the `joinChannelByToken` or startPreview method.

 @param profile            Enumeration definition about the video resolution, fps, and maximum kbit/s. See AgoraVideoProfile.
 @param swapWidthAndHeight The width and height of the output video is consistent with that of the video profile you set. This parameter sets whether to swap the width and height of the stream:

 * YES: Swap the width and height. After that the video will be in the portrait mode, that is, width < height.
 * NO: (Default) Do not swap the width and height, and the video remains in the landscape mode, that is, width > height.

 @return * 0: Success.
* <0: Failure.
 */
- (int)setVideoProfile:(AgoraVideoProfile)profile
    swapWidthAndHeight:(BOOL)swapWidthAndHeight __deprecated_msg("use setVideoEncoderConfiguration: instead.");

/** Sets the video encoding profile manually.
 @deprecated From v2.3

 @param size      Size of the video that you want to set. The highest value is 1280 x 720.
 @param frameRate Frame rate of the video that you want to set. The highest value is 30. You can set it to 5, 10, 15, 24, 30, and so on.
 @param bitrate   Bitrate of the video that you want to set. You need to manually work out the frame rate according to the width, height, and frame rate. With the same width and height, the bitrate varies with the change of the frame rate:

 * If the frame rate is 5 fps, divide the recommended bitrate by 2.
 * If the frame rate is 15 fps, use the recommended bitrate.
 * If the frame rate is 30 fps, multiply the recommended bitrate by 1.5.
 * Calculate your bitrate with the ratio if you choose other frame rates.

 For example, the resolution is 320 x 240 and the frame rate is 15 fps, hence, the bitrate is 200:

 * If the frame rate is 5 fps, the bitrate is 100.
 * If the frame rate is 30 fps, the bitrate is 300.
 * If the bitrate you set is beyond the proper range, the SDK will automatically adjust it to a value within the range.
 */
- (int)setVideoResolution:(CGSize)size andFrameRate:(NSInteger)frameRate bitrate:(NSInteger)bitrate __deprecated_msg("use setVideoEncoderConfiguration: instead.");

/**
 * Sets the audio parameters and application scenarios.
 * @deprecated This method is deprecated. You can use the
 * {@link AgoraRtcEngineKit.setAudioProfile: setAudioProfile}
 * method instead.
 *
 * @note
 * - Call this method before calling `joinChannelByToken`.
 * - In scenarios requiring high-quality audio, we recommend setting `profile`
 * as `AgoraAudioProfileMusicHighQuality`(4) and `scenario` as
 * `AgoraAudioScenarioGameStreaming`(3).
 * @param profile  Sets the sample rate, bitrate, encoding mode, and the number of channels. See #AgoraAudioProfile.
 * @param scenario Sets the audio application scenarios. See #AgoraAudioScenario.
 *
 * @return
 * - 0: Success.
 * - <0: Failure.
 */
- (int)setAudioProfile:(AgoraAudioProfile)profile scenario:(AgoraAudioScenario)scenario;

/** Gets the device type; such as a recording, playback, or video capture device.

 @note  This method applies to macOS only, not to iOS.

 @param type AgoraMediaDeviceType
 @return When called successfully, it returns the device ID of the device. Otherwise, it returns nil.
 */
- (NSString * _Nullable)getDeviceId:(AgoraMediaDeviceType)type __deprecated_msg("use getDeviceInfo: instead.");

#if (!(TARGET_OS_IPHONE) && (TARGET_OS_MAC))
/** Sets the speakerphone volume.

 @note  This method applies to macOS only, not to iOS.

 @param volume 0 (lowest volume) to 255 (highest volume).

 @return * 0: Success.
* <0: Failure.
 */
- (int)setSpeakerphoneVolume:(NSUInteger)volume __deprecated_msg("use setDeviceVolume:volume: instead.");

- (int)startScreenCapture:(NSUInteger)windowId
          withCaptureFreq:(NSInteger)captureFreq
                  bitRate:(NSInteger)bitRate
                  andRect:(CGRect)rect __deprecated_msg("use startScreenCaptureByWindowId:regionRect:captureParams: instead.");
#endif

/** Returns the Media Engine version.
 @deprecated From v2.3

 @return string, Media engine version
 */
+ (NSString * _Nonnull)getMediaEngineVersion __deprecated;

- (int)setAudioOptionParams:(NSString * _Nonnull)params;
- (NSString * _Nullable)getAudioOptionParams;
- (int)setAudioSessionParams:(NSString * _Nonnull)params;
- (NSString * _Nullable)getAudioSessionParams;

- (BOOL)isSecure;


/** Agora supports reporting and analyzing customized messages.
 *
 * This function is in the beta stage with a free trial. The ability provided
 * in its beta test version is reporting a maximum of 10 message pieces within
 * 6 seconds, with each message piece not exceeding 256 bytes.
 *
 * To try out this function, contact [support@agora.io](mailto:support@agora.io)
 * and discuss the format of customized messages with us.
 */
- (int)sendCustomReportMessage:(NSString * _Nullable)messageId
                      category:(NSString * _Nullable)category
                         event:(NSString * _Nullable)event
                         label:(NSString * _Nullable)label
                         value:(NSInteger)value;

/**
 * Sets the output log level of the SDK.
 *
 * You can set the SDK to ouput the log files of the specified level.
 *
 * @param level The log level:
    - `AgoraLogFilterOff (0)`: Do not output any log file.
    - `AgoraLogFilterInfo (0x000f)`: (Recommended) Output log files of the Info level.
    - `AgoraLogFilterWarning (0x000e)`: Output log files of the Warning level.
    - `AgoraLogFilterError (0x000c)`: Output log files of the Error level.
    - `AgoraLogFilterCritical (0x0008)`: Output log files of the Critical level.
 * @return
 * - 0: Success.
 * - < 0: Failure.
 */
- (int)setLogLevel:(AgoraLogLevel)level;

/** Sets the built-in encryption mode.
 @deprecated

 The Agora Native SDK supports built-in encryption. Call this API to set the encryption mode.
 All users in the same channel must use the same encryption mode and password. Refer to information related to the encryption algorithm on the differences between encryption modes.
 Call [setEncryptionSecret](setEncryptionSecret:) to enable the built-in encryption function before calling this API.

 @note  Do not use this function together with CDN.

 @param encryptionMode Sets the encryption mode.
 - "sm4-128-ecb": 128-bit SM4 encryption, ECB mode.

 @return * 0: Success.
* <0: Failure.
 */
- (int)setEncryptionMode:(NSString * _Nullable)encryptionMode __deprecated_msg("use enableEncryption: instead.");

/** Enables built-in encryption.
 @deprecated

 Use this method to specify an encryption password to enable built-in encryption before joining a channel.
 All users in a channel must set the same encryption password.
 The encryption password is automatically cleared once a user has left the channel.
 If the encryption password is not specified or set to empty, the encryption function will be disabled.

 @note  Do not use this function together with CDN.

 @param secret Encryption password
 @return * 0: Success.
* <0: Failure.
 */
- (int)setEncryptionSecret:(NSString * _Nullable)secret __deprecated_msg("use enableEncryption: instead.");

- (NSInteger)takeSnapshot:(NSString* _Nonnull)channel uid:(NSInteger)uid filePath:(NSString* _Nonnull)filePath;

- (int)enableContentInspect:(BOOL)enabled config:(AgoraContentInspectConfig* _Nonnull)config;
@end
