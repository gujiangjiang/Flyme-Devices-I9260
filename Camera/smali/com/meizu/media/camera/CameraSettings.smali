.class public Lcom/meizu/media/camera/CameraSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CURRENT_LOCAL_VERSION:I = 0x1

.field public static final CURRENT_VERSION:I = 0x0

.field public static final EXPOSURE_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final KEY_CAMERA_FIRST_USE_HINT_SHOWN:Ljava/lang/String; = "pref_camera_first_use_hint_shown_key"

.field public static final KEY_CAMERA_HDR:Ljava/lang/String; = "pref_camera_hdr_key"

.field public static final KEY_CAMERA_HDR_PLUS:Ljava/lang/String; = "pref_camera_hdr_plus_key"

.field public static final KEY_CAMERA_ID:Ljava/lang/String; = "pref_camera_id_key"

.field public static final KEY_EXPOSURE:Ljava/lang/String; = "pref_camera_exposure_key"

.field public static final KEY_FLASH_MODE:Ljava/lang/String; = "pref_camera_flashmode_key"

.field public static final KEY_FOCUS_MODE:Ljava/lang/String; = "pref_camera_focusmode_key"

.field public static final KEY_JPEG_QUALITY:Ljava/lang/String; = "pref_camera_jpegquality_key"

.field public static final KEY_LOCAL_VERSION:Ljava/lang/String; = "pref_local_version_key"

.field public static final KEY_PHOTOSPHERE_PICTURESIZE:Ljava/lang/String; = "pref_photosphere_picturesize_key"

.field public static final KEY_PICTURE_SIZE:Ljava/lang/String; = "pref_camera_picturesize_key"

.field public static final KEY_RECORD_LOCATION:Ljava/lang/String; = "pref_camera_recordlocation_key"

.field public static final KEY_SCENE_MODE:Ljava/lang/String; = "pref_camera_scenemode_key"

.field public static final KEY_STARTUP_MODULE_INDEX:Ljava/lang/String; = "camera.startup_module"

.field public static final KEY_TIMER:Ljava/lang/String; = "pref_camera_timer_key"

.field public static final KEY_TIMER_SOUND_EFFECTS:Ljava/lang/String; = "pref_camera_timer_sound_key"

.field public static final KEY_USER_GUIDE:Ljava/lang/String; = "camera.startup_userduide"

.field public static final KEY_VERSION:Ljava/lang/String; = "pref_version_key"

.field public static final KEY_VIDEOCAMERA_FLASH_MODE:Ljava/lang/String; = "pref_camera_video_flashmode_key"

.field public static final KEY_VIDEO_EFFECT:Ljava/lang/String; = "pref_video_effect_key"

.field public static final KEY_VIDEO_FIRST_USE_HINT_SHOWN:Ljava/lang/String; = "pref_video_first_use_hint_shown_key"

.field public static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "pref_video_quality_key"

.field public static final KEY_VIDEO_SIZE:Ljava/lang/String; = "pref_camera_videosize_key"

.field public static final KEY_VIDEO_TIME_LAPSE_FRAME_INTERVAL:Ljava/lang/String; = "pref_video_time_lapse_frame_interval_key"

.field public static final KEY_WHITE_BALANCE:Ljava/lang/String; = "pref_camera_whitebalance_key"

.field public static final MZ_KEY_CONTRAST:Ljava/lang/String; = "mz_pref_contrast"

.field public static final MZ_KEY_GPS:Ljava/lang/String; = "mz_pref_gps_key"

.field public static final MZ_KEY_HDR:Ljava/lang/String; = "mz_pref_hdr_key"

.field public static final MZ_KEY_ISO:Ljava/lang/String; = "mz_pref_iso_key"

.field public static final MZ_KEY_LEVEL:Ljava/lang/String; = "mz_pref_level_key"

.field public static final MZ_KEY_MANUALFOCUS:Ljava/lang/String; = "mz_pref_manualfocus"

.field public static final MZ_KEY_MESHLINE:Ljava/lang/String; = "mz_pref_meshline_key"

.field public static final MZ_KEY_METER_SEPARATE:Ljava/lang/String; = "mz_pref_meter_separate_key"

.field public static final MZ_KEY_MIRROR:Ljava/lang/String; = "mz_pref_mirror"

.field public static final MZ_KEY_SATURATION:Ljava/lang/String; = "mz_pref_saturation"

.field public static final MZ_KEY_SHUTTER_SPEED:Ljava/lang/String; = "mz_pref_shutterspeed_key"

.field public static final MZ_KEY_STORAGE:Ljava/lang/String; = "mz_pref_storage_key"

.field private static final NOT_FOUND:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CameraSettings"


# instance fields
.field private final mCameraId:I

.field private final mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private final mContext:Landroid/content/Context;

.field private final mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/meizu/media/camera/CameraSettings;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/meizu/media/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 102
    iput p3, p0, Lcom/meizu/media/camera/CameraSettings;->mCameraId:I

    .line 103
    iput-object p4, p0, Lcom/meizu/media/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 104
    return-void
.end method

.method public static getDefaultVideoQuality(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .prologue
    const v2, 0x7f0f0112

    const v1, 0x7f0f010f

    .line 337
    .line 338
    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_MX2:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_MX3:Z

    if-eqz v0, :cond_2

    .line 339
    :cond_0
    invoke-static {}, Lcom/meizu/media/camera/CameraHolder;->instance()Lcom/meizu/media/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraHolder;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    const v0, 0x7f0f0161

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    .line 342
    :cond_1
    const v0, 0x7f0f0160

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_2
    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M75:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M76_OR_M86:Z

    if-eqz v0, :cond_5

    .line 345
    :cond_3
    invoke-static {}, Lcom/meizu/media/camera/CameraHolder;->instance()Lcom/meizu/media/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraHolder;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    const v0, 0x7f0f0113

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 348
    :cond_4
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_5
    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M71_OR_M81_OR_M81C:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M79_OR_M88_OR_M88C:Z

    if-eqz v0, :cond_8

    .line 351
    :cond_6
    invoke-static {}, Lcom/meizu/media/camera/CameraHolder;->instance()Lcom/meizu/media/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraHolder;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 352
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_7
    const v0, 0x7f0f010e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 356
    :cond_8
    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M85:Z

    const/4 v0, 0x1

    if-eqz v0, :cond_a

    .line 357
    invoke-static {}, Lcom/meizu/media/camera/CameraHolder;->instance()Lcom/meizu/media/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraHolder;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 358
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_9
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 363
    :cond_a
    invoke-static {p1}, Lcom/meizu/media/camera/CameraSettings;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 364
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMaxVideoDuration(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 209
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 212
    :goto_0
    return v0

    .line 210
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getSupportedVideoQuality(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    sget-boolean v1, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M71_OR_M81_OR_M81C:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M79_OR_M88_OR_M88C:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M71C:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M85:Z

    if-eqz v1, :cond_5

    .line 395
    :cond_0
    sget v1, Lcom/meizu/media/camera/MzCamcorderProfileManager;->QUALITY_VGA:I

    invoke-static {p0, v1}, Lcom/meizu/media/camera/MzCamcorderProfileManager;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    sget v1, Lcom/meizu/media/camera/MzCamcorderProfileManager;->QUALITY_VGA:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_1
    :goto_0
    invoke-static {p0, v3}, Lcom/meizu/media/camera/MzCamcorderProfileManager;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_2
    invoke-static {p0, v4}, Lcom/meizu/media/camera/MzCamcorderProfileManager;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 410
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_3
    sget v1, Lcom/meizu/media/camera/MzCamcorderProfileManager;->QUALITY_4K:I

    invoke-static {p0, v1}, Lcom/meizu/media/camera/MzCamcorderProfileManager;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 413
    sget v1, Lcom/meizu/media/camera/MzCamcorderProfileManager;->QUALITY_4K:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_4
    return-object v0

    .line 400
    :cond_5
    sget-boolean v1, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_MEIZU:Z

    if-eqz v1, :cond_1

    .line 401
    invoke-static {p0, v2}, Lcom/meizu/media/camera/MzCamcorderProfileManager;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getVideoQuality(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 382
    invoke-static {p0}, Lcom/meizu/media/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/meizu/media/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_video_quality_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    if-nez v0, :cond_0

    .line 384
    invoke-static {p0, p1}, Lcom/meizu/media/camera/CameraSettings;->setDefaultVideoQuality(Landroid/content/Context;I)V

    .line 385
    invoke-static {p0, p1}, Lcom/meizu/media/camera/CameraSettings;->getDefaultVideoQuality(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_0
    return-object v0
.end method

.method private initPreference(Lcom/meizu/media/camera/PreferenceGroup;)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public static initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 7

    .prologue
    const v4, 0x7f0f0110

    const v2, 0x7f0f010d

    .line 117
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 118
    if-nez v3, :cond_0

    .line 177
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v1, 0x0

    .line 122
    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_MX2:Z

    if-eqz v0, :cond_3

    .line 123
    invoke-static {}, Lcom/meizu/media/camera/CameraHolder;->instance()Lcom/meizu/media/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraHolder;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const v0, 0x7f0f0133

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/meizu/media/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/meizu/media/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 175
    const-string v2, "pref_camera_picturesize_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 126
    :cond_2
    const v0, 0x7f0f0132

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 128
    :cond_3
    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_MX3:Z

    if-eqz v0, :cond_5

    .line 129
    invoke-static {}, Lcom/meizu/media/camera/CameraHolder;->instance()Lcom/meizu/media/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraHolder;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    const v0, 0x7f0f0135

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 132
    :cond_4
    const v0, 0x7f0f0134

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 134
    :cond_5
    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M75:Z

    if-eqz v0, :cond_7

    .line 135
    invoke-static {}, Lcom/meizu/media/camera/CameraHolder;->instance()Lcom/meizu/media/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraHolder;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    const v0, 0x7f0f0111

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 138
    :cond_6
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 140
    :cond_7
    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M76:Z

    if-eqz v0, :cond_9

    .line 141
    invoke-static {}, Lcom/meizu/media/camera/CameraHolder;->instance()Lcom/meizu/media/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraHolder;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 142
    const v0, 0x7f0f0115

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 144
    :cond_8
    const v0, 0x7f0f0114

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 146
    :cond_9
    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M71_OR_M81_OR_M81C:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M79_OR_M88_OR_M88C:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M71C:Z

    if-eqz v0, :cond_c

    .line 148
    :cond_a
    invoke-static {}, Lcom/meizu/media/camera/CameraHolder;->instance()Lcom/meizu/media/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraHolder;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 149
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 151
    :cond_b
    const v0, 0x7f0f010c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 153
    :cond_c
    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M85:Z

    if-eqz v0, :cond_e

    .line 154
    invoke-static {}, Lcom/meizu/media/camera/CameraHolder;->instance()Lcom/meizu/media/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraHolder;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 155
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 157
    :cond_d
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 159
    :cond_e
    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M86:Z

    if-eqz v0, :cond_10

    .line 160
    invoke-static {}, Lcom/meizu/media/camera/CameraHolder;->instance()Lcom/meizu/media/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraHolder;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 161
    const v0, 0x7f0f0117

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 163
    :cond_f
    const v0, 0x7f0f0116

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 166
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v5, :cond_11

    aget-object v0, v4, v2

    .line 168
    invoke-static {v0, v3, p1}, Lcom/meizu/media/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 166
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_11
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static initialVideoPictureSize(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 370
    invoke-static {p0, p1}, Lcom/meizu/media/camera/CameraSettings;->getVideoQuality(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 372
    new-instance v1, Lcom/meizu/media/camera/MzCamcorderProfileManager;

    invoke-direct {v1}, Lcom/meizu/media/camera/MzCamcorderProfileManager;-><init>()V

    .line 373
    invoke-virtual {v1, p1, v0}, Lcom/meizu/media/camera/MzCamcorderProfileManager;->initCamcorderProfile(II)V

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/meizu/media/camera/MzCamcorderProfileManager;->getVideoFrameWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/meizu/media/camera/MzCamcorderProfileManager;->getVideoFrameHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {p0}, Lcom/meizu/media/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/meizu/media/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 377
    const-string v2, "pref_camera_videosize_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 378
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 379
    return-void
.end method

.method public static readExposure(Lcom/meizu/media/camera/ComboPreferences;)I
    .locals 4

    .prologue
    .line 318
    const-string v0, "pref_camera_exposure_key"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 325
    :goto_0
    return v0

    .line 322
    :catch_0
    move-exception v1

    .line 323
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid exposure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readPictureSize(Lcom/meizu/media/camera/ComboPreferences;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    const-string v0, "pref_camera_picturesize_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2

    .prologue
    .line 278
    const-string v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static readStorage(Lcom/meizu/media/camera/ComboPreferences;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    sget-object v0, Lcom/meizu/media/camera/Storage;->STORAGE_PATH_SD1:Ljava/lang/String;

    .line 298
    sget-boolean v1, Lcom/meizu/media/camera/util/ApiHelper;->SUPPORT_SD_CARD:Z

    if-eqz v1, :cond_0

    .line 299
    sget-object v0, Lcom/meizu/media/camera/Storage;->STORAGE_PATH_SD2:Ljava/lang/String;

    .line 301
    :cond_0
    const-string v1, "mz_pref_storage_key"

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readVideoSize(Lcom/meizu/media/camera/ComboPreferences;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    const-string v0, "pref_camera_videosize_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 181
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 182
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v2

    .line 184
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 185
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v1, v2

    .line 186
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 187
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 188
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v5, v3, :cond_2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    if-ne v0, v4, :cond_2

    .line 189
    invoke-virtual {p2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 190
    const/4 v2, 0x1

    goto :goto_0

    .line 186
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static setDefaultVideoQuality(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 330
    invoke-static {p0, p1}, Lcom/meizu/media/camera/CameraSettings;->getDefaultVideoQuality(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {p0}, Lcom/meizu/media/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/meizu/media/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 332
    const-string v2, "pref_video_quality_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    return-void
.end method

.method public static setVideoCapturePictureSize(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .prologue
    .line 197
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 198
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 201
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 202
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 203
    const-string v2, "video-size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static upgradeCameraId(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 267
    invoke-static {p0}, Lcom/meizu/media/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 268
    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-static {}, Lcom/meizu/media/camera/CameraHolder;->instance()Lcom/meizu/media/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraHolder;->getNumberOfCameras()I

    move-result v1

    .line 272
    if-ltz v0, :cond_2

    if-lt v0, v1, :cond_0

    .line 273
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/meizu/media/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    goto :goto_0
.end method

.method public static upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 243
    invoke-static {p0}, Lcom/meizu/media/camera/CameraSettings;->upgradeOldVersion(Landroid/content/SharedPreferences;)V

    .line 244
    invoke-static {p0}, Lcom/meizu/media/camera/CameraSettings;->upgradeCameraId(Landroid/content/SharedPreferences;)V

    .line 245
    return-void
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 221
    :try_start_0
    const-string v1, "pref_local_version_key"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 225
    :goto_0
    if-ne v0, v3, :cond_0

    .line 240
    :goto_1
    return-void

    .line 228
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 229
    if-nez v0, :cond_1

    .line 230
    sget-boolean v0, Lcom/meizu/media/camera/util/ApiHelper;->DEVICE_IS_M75:Z

    if-eqz v0, :cond_1

    .line 231
    if-ne v3, p1, :cond_1

    .line 232
    const-string v0, "pref_camera_picturesize_key"

    const-string v2, "1920x1152"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 238
    :cond_1
    const-string v0, "pref_local_version_key"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 222
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static upgradeOldVersion(Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 250
    :try_start_0
    const-string v0, "pref_version_key"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 254
    :goto_0
    if-nez v0, :cond_0

    .line 260
    :goto_1
    return-void

    .line 251
    :catch_0
    move-exception v0

    move v0, v1

    .line 252
    goto :goto_0

    .line 257
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    const-string v2, "pref_version_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3

    .prologue
    .line 282
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 283
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 285
    return-void
.end method

.method public static writePreferredFlashMode(Lcom/meizu/media/camera/ComboPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/meizu/media/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    const-string v1, "pref_camera_flashmode_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    return-void
.end method

.method public static writePreferredManualValue(Lcom/meizu/media/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/meizu/media/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 313
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 315
    return-void
.end method


# virtual methods
.method public getPreferenceGroup(I)Lcom/meizu/media/camera/PreferenceGroup;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/meizu/media/camera/PreferenceInflater;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/media/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v0, p1}, Lcom/meizu/media/camera/PreferenceInflater;->inflate(I)Lcom/meizu/media/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PreferenceGroup;

    .line 109
    iget-object v1, p0, Lcom/meizu/media/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 110
    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraSettings;->initPreference(Lcom/meizu/media/camera/PreferenceGroup;)V

    .line 111
    :cond_0
    return-object v0
.end method
