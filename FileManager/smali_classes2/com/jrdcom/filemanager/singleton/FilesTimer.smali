.class public Lcom/jrdcom/filemanager/singleton/FilesTimer;
.super Ljava/util/Timer;
.source "FilesTimer.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private static mFileTimer:Lcom/jrdcom/filemanager/singleton/FilesTimer;

.field private static mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

.field private static mPrivateModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

.field private static mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

.field private static nextQueryStartTime:J

.field private static uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-class v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->TAG:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    sput-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 34
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getAppHandler()Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->nextQueryStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 42
    new-instance v0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    sget-object v1, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-direct {v0, v1}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->getInstance()Ltct/util/privacymode/TctPrivacyModeHelper;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mPrivateModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    .line 43
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->uri:Landroid/net/Uri;

    .line 44
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 45
    return-void
.end method

.method private static getInstance()Lcom/jrdcom/filemanager/singleton/FilesTimer;
    .locals 5

    .line 48
    sget-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mFileTimer:Lcom/jrdcom/filemanager/singleton/FilesTimer;

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-wide v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mAppStartTime:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mAppStartTime:J

    .line 51
    new-instance v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/singleton/FilesTimer;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mFileTimer:Lcom/jrdcom/filemanager/singleton/FilesTimer;

    .line 53
    :cond_0
    new-instance v0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    sget-object v1, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-direct {v0, v1}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->getInstance()Ltct/util/privacymode/TctPrivacyModeHelper;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mPrivateModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    .line 54
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->uri:Landroid/net/Uri;

    .line 55
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 56
    sget-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mFileTimer:Lcom/jrdcom/filemanager/singleton/FilesTimer;

    return-object v0
.end method


# virtual methods
.method public changeFileInfo()V
    .locals 26

    .line 61
    const-string v0, " and "

    .line 62
    sget-object v1, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->checkAppPermission(Landroid/content/Context;)Z

    move-result v1

    .line 63
    sget-object v2, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v2

    .line 66
    :try_start_0
    sget-object v4, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v5, "date_modified"

    const-string v6, "date_added"

    const-string v7, "_size"

    const-string v8, "mime_type"

    const-string v9, "_data"

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 67
    :try_start_1
    const-string v10, "_data"

    const-string v11, "mime_type"

    const-string v12, "_size"

    const-string v13, "date_added"

    const-string v14, "date_modified"

    const-string v15, "is_drm"

    const-string v16, "tct_is_private"

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_0

    .line 73
    :cond_0
    sget-object v4, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z

    if-eqz v4, :cond_1

    .line 74
    const-string v10, "_data"

    const-string v11, "mime_type"

    const-string v12, "_size"

    const-string v13, "date_added"

    const-string v14, "date_modified"

    const-string v15, "is_drm"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_0

    .line 79
    :cond_1
    if-eqz v2, :cond_2

    .line 80
    const-string v10, "_data"

    const-string v11, "mime_type"

    const-string v12, "_size"

    const-string v13, "date_added"

    const-string v14, "date_modified"

    const-string v15, "tct_is_private"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_0

    .line 86
    :cond_2
    filled-new-array {v9, v8, v7, v6, v5}, [Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    .line 93
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v16, 0x3e8

    div-long v10, v10, v16

    .line 94
    sget-object v4, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-wide v13, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mAppStartTime:J

    cmp-long v4, v13, v10

    if-lez v4, :cond_3

    .line 95
    sget-object v4, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-wide v10, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mAppStartTime:J

    .line 97
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "date_added >= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-wide v14, v14, Lcom/jrdcom/filemanager/FileManagerApplication;->mAppStartTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "date_added <= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v13, " or "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "date_modified >= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-wide v14, v14, Lcom/jrdcom/filemanager/FileManagerApplication;->mAppStartTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "date_modified <= "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 107
    if-eqz v1, :cond_4

    .line 108
    sget-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    sget-object v4, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    sget-object v10, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    sget-object v11, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0, v4, v10, v11}, Lcom/jrdcom/filemanager/utils/FileListCache;->observerDataChanage(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;Lcom/jrdcom/filemanager/manager/MountManager;)V

    .line 110
    sget-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/jrdcom/filemanager/singleton/FilesTimer;->uri:Landroid/net/Uri;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v0

    goto :goto_1

    .line 107
    :cond_4
    const/4 v4, 0x0

    .line 113
    :goto_1
    if-eqz v4, :cond_13

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_13

    if-nez v1, :cond_5

    goto/16 :goto_6

    .line 117
    :cond_5
    if-eqz v4, :cond_e

    .line 118
    const-wide/16 v10, 0x0

    move-wide v12, v10

    .line 119
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 120
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 123
    nop

    .line 125
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 126
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 128
    cmp-long v15, v18, v10

    if-nez v15, :cond_6

    .line 129
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v24, v18

    goto :goto_3

    .line 128
    :cond_6
    move-wide/from16 v24, v18

    .line 132
    :goto_3
    const-string v15, "/"

    invoke-virtual {v1, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 133
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v10, Lcom/jrdcom/filemanager/utils/FileInfo;

    sget-object v19, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v20, 0x0

    move-object/from16 v18, v10

    move-object/from16 v22, v1

    move-object/from16 v23, v15

    invoke-direct/range {v18 .. v23}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 135
    invoke-virtual {v15}, Ljava/io/File;->isHidden()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 136
    move-object/from16 v18, v1

    mul-long v0, v24, v16

    invoke-virtual {v10, v13, v14, v0, v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(JJ)V

    .line 137
    invoke-virtual {v10, v12}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v10}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v0

    .line 139
    sget-object v1, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z

    if-eqz v1, :cond_8

    .line 140
    const-string v1, "is_drm"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 141
    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 142
    invoke-virtual {v10, v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->setDrm(Z)V

    move-object/from16 v12, v18

    goto :goto_4

    .line 141
    :cond_7
    move-object/from16 v12, v18

    goto :goto_4

    .line 145
    :cond_8
    if-nez v0, :cond_b

    .line 146
    sget-object v1, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v1

    move-object/from16 v12, v18

    invoke-virtual {v1, v12}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmFileExt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/4 v3, 0x1

    :cond_a
    invoke-virtual {v10, v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->setDrm(Z)V

    goto :goto_4

    .line 148
    :cond_b
    move-object/from16 v12, v18

    invoke-virtual {v10, v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->setDrm(Z)V

    .line 151
    :goto_4
    if-eqz v2, :cond_c

    if-nez v0, :cond_c

    sget-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-boolean v1, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    .line 152
    invoke-static {v12, v0, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mPrivateModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    .line 153
    invoke-static {v0, v12}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->isPrivateFile(Ltct/util/privacymode/TctPrivacyModeHelper;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 154
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 156
    :cond_c
    sget-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    sget-object v1, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    sget-object v3, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    const/4 v11, 0x1

    invoke-static {v0, v10, v1, v3, v11}, Lcom/jrdcom/filemanager/utils/CommonUtils;->addCache(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileListCache;Lcom/jrdcom/filemanager/manager/MountManager;Z)V

    .line 157
    move-wide/from16 v12, v24

    const-wide/16 v10, 0x0

    goto/16 :goto_2

    .line 158
    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-lez v0, :cond_e

    .line 159
    sget-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-wide/16 v1, 0x1

    add-long/2addr v12, v1

    iput-wide v12, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mAppStartTime:J

    .line 165
    :cond_e
    new-instance v0, Lcom/jrdcom/filemanager/utils/TaskInfo;

    sget-object v1, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 166
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 167
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setAdapterMode(I)V

    goto :goto_5

    .line 168
    :cond_f
    sget-object v1, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    sget-object v2, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 169
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setAdapterMode(I)V

    .line 171
    :cond_10
    :goto_5
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 172
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 173
    const-string v3, "TASKRESULT"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 174
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 175
    sget-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    if-nez v0, :cond_11

    .line 176
    sget-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getAppHandler()Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 178
    :cond_11
    sget-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    if-eqz v0, :cond_12

    .line 179
    sget-object v0, Lcom/jrdcom/filemanager/singleton/FilesTimer;->mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :cond_12
    if-eqz v4, :cond_15

    .line 186
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 185
    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_9

    .line 182
    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_7

    .line 185
    :cond_13
    :goto_6
    if-eqz v4, :cond_14

    .line 186
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_14
    return-void

    .line 185
    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto :goto_9

    .line 182
    :catch_1
    move-exception v0

    const/4 v3, 0x0

    .line 183
    :goto_7
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 185
    if-eqz v3, :cond_15

    .line 186
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_15
    :goto_8
    return-void

    .line 185
    :catchall_2
    move-exception v0

    :goto_9
    if-eqz v3, :cond_16

    .line 186
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_16
    throw v0
.end method
