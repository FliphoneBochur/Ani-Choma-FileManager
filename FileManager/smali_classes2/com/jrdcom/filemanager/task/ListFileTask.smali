.class public Lcom/jrdcom/filemanager/task/ListFileTask;
.super Lcom/jrdcom/filemanager/task/BaseAsyncTask;
.source "ListFileTask.java"


# static fields
.field public static final LEVEL_ALL:I = 0x4

.field public static final LEVEL_FL:I = 0x1

.field public static final LEVEL_NONE:I = -0x2

.field public static final LEVEL_SD:I = 0x2


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbPath:Ljava/lang/String;

.field private dirprogress:I

.field private isSupportPrivateMode:Z

.field private isThirdAppSelect:Z

.field private mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field private mCategory:I

.field private mContext:Landroid/content/Context;

.field private mDrmLevel:I

.field private mFileCategory:Ljava/lang/String;

.field private final mFilterType:I

.field private mListMode:I

.field private final mOnlyShowDir:Z

.field private final mPath:Ljava/lang/String;

.field private mPrivateHelper:Lcom/jrdcom/filemanager/manager/PrivateHelper;

.field private mRefreshMode:I

.field private mTask:Lcom/jrdcom/filemanager/task/BaseAsyncTask;

.field private mountManager:Lcom/jrdcom/filemanager/manager/MountManager;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 3

    .line 71
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 39
    const-string v0, "all"

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileCategory:Ljava/lang/String;

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mDrmLevel:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->dirprogress:I

    .line 55
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->isThirdAppSelect:Z

    .line 56
    iput v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mRefreshMode:I

    .line 57
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->isSupportPrivateMode:Z

    .line 72
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 73
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mPath:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getFileFilter()I

    move-result v1

    iput v1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mFilterType:I

    .line 76
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->isShowDir()Z

    move-result v1

    iput-boolean v1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mOnlyShowDir:Z

    .line 77
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSrcPath()Ljava/lang/String;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    iput-object v1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileCategory:Ljava/lang/String;

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDrmType()I

    move-result v1

    iput v1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mDrmLevel:I

    .line 83
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCategoryIndex()I

    move-result v1

    iput v1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mCategory:I

    .line 84
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getAdapterMode()I

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mListMode:I

    .line 85
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 86
    iget p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mListMode:I

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->isThirdAppSelect:Z

    .line 87
    return-void
.end method

.method private categoryFromFolder(Ljava/lang/String;II)I
    .locals 18

    .line 1037
    move-object/from16 v0, p0

    .line 1038
    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1039
    nop

    .line 1042
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 1043
    invoke-static {v1}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 1044
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 1045
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_2

    .line 1046
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1047
    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_1

    .line 1048
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 1045
    :cond_2
    move-object v1, v12

    .line 1051
    :goto_1
    const/4 v13, -0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_9

    .line 1052
    array-length v15, v1

    .line 1054
    move v9, v14

    :goto_2
    if-ge v9, v15, :cond_8

    .line 1055
    iget v2, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->dirprogress:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->dirprogress:I

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1058
    return v13

    .line 1060
    :cond_3
    aget-object v4, v1, v9

    .line 1061
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1062
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1063
    iget-object v6, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v6}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v2}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmFileExt(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    move v8, v14

    goto :goto_4

    :cond_5
    :goto_3
    move v8, v3

    .line 1064
    :goto_4
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 1065
    iget-object v2, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    invoke-static {v2, v12, v3, v6, v8}, Lcom/jrdcom/filemanager/utils/FileUtils;->getCategoryMIME(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 1066
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1067
    iget-boolean v2, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->isSupportPrivateMode:Z

    if-eqz v2, :cond_6

    .line 1068
    iget-object v2, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mPrivateModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    invoke-static {v2, v5}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->isPrivateFile(Ltct/util/privacymode/TctPrivacyModeHelper;Ljava/lang/String;)Z

    move-result v16

    .line 1069
    iget-object v8, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v2, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    move-object v3, v4

    move-object v4, v11

    move-object v5, v10

    move-object v12, v8

    move/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v16

    invoke-static/range {v2 .. v9}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addItem(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 1070
    goto :goto_5

    .line 1071
    :cond_6
    move/from16 v17, v9

    iget-object v9, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v2, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    move-object v3, v4

    move-object v4, v11

    move-object v5, v10

    invoke-static/range {v2 .. v8}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addItem(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    goto :goto_5

    .line 1066
    :cond_7
    move/from16 v17, v9

    .line 1054
    :goto_5
    add-int/lit8 v9, v17, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2

    .line 1076
    :cond_8
    move v13, v14

    goto :goto_6

    .line 1077
    :cond_9
    nop

    .line 1080
    :goto_6
    return v13
.end method

.method private refreshCategory()I
    .locals 28

    .line 447
    move-object/from16 v1, p0

    .line 448
    nop

    .line 449
    nop

    .line 452
    iget v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mCategory:I

    const/4 v2, 0x1

    const/4 v4, 0x2

    if-eq v4, v0, :cond_1b

    if-ne v2, v0, :cond_0

    move-object v3, v1

    goto/16 :goto_9

    .line 469
    :cond_0
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 470
    nop

    .line 471
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z

    const-string v5, "date_modified"

    const-string v6, "_size"

    const-string v7, "mime_type"

    const-string v8, "_data"

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->isSupportPrivateMode:Z

    if-eqz v4, :cond_1

    .line 472
    const-string v9, "_data"

    const-string v10, "mime_type"

    const-string v11, "_size"

    const-string v12, "date_modified"

    const-string v13, "is_drm"

    const-string v14, "tct_is_private"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_0

    .line 476
    :cond_1
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z

    if-eqz v4, :cond_2

    .line 477
    const-string v4, "is_drm"

    filled-new-array {v8, v7, v6, v5, v4}, [Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_0

    .line 481
    :cond_2
    iget-boolean v4, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->isSupportPrivateMode:Z

    if-eqz v4, :cond_3

    .line 482
    const-string v4, "tct_is_private"

    filled-new-array {v8, v7, v6, v5, v4}, [Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_0

    .line 487
    :cond_3
    filled-new-array {v8, v7, v6, v5}, [Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 492
    :goto_0
    const/4 v4, 0x4

    iget v9, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mCategory:I

    if-ne v4, v9, :cond_4

    .line 493
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v10, v0

    goto :goto_1

    .line 494
    :cond_4
    const/4 v4, 0x5

    if-ne v4, v9, :cond_5

    .line 495
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v10, v0

    goto :goto_1

    .line 496
    :cond_5
    const/4 v4, 0x3

    if-ne v4, v9, :cond_6

    .line 497
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v10, v0

    goto :goto_1

    .line 496
    :cond_6
    move-object v10, v0

    .line 499
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    const-string v4, "_data not like "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v4, "null"

    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 504
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isTctPrivateColumn(Landroid/content/Context;)Z

    move-result v4

    const-string v9, " and "

    const-string v12, "_data like "

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isAddPrivateFileMode(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 505
    :cond_7
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string v4, "tct_is_private != "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v4, "1"

    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 508
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isAddPrivateFileMode(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 509
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string v4, "/storage/emulated/0/%"

    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 517
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 518
    iget v14, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mCategory:I

    const-string v15, "%.pptx"

    const-string v3, "%.xlsm"

    const-string v2, "%.xlsx"

    const-string v13, "%.docx"

    move-object/from16 v17, v5

    const-string v5, "%.ppt"

    move-object/from16 v18, v6

    const-string v6, "%.xls"

    move-object/from16 v19, v7

    const-string v7, "%.doc"

    move-object/from16 v20, v8

    const-string v8, "text/%"

    move-object/from16 v21, v4

    const-string v4, "12289"

    move-object/from16 v22, v11

    const-string v11, "format!="

    move-object/from16 v23, v10

    const-string v10, ")"

    move-object/from16 v24, v10

    const-string v10, "mime_type like "

    move-object/from16 v25, v15

    const-string v15, " and ("

    move-object/from16 v26, v3

    const-string v3, " or "

    move-object/from16 v27, v2

    const/4 v2, 0x6

    if-ne v2, v14, :cond_a

    .line 521
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 526
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    .line 527
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-static {v0, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {v0, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-static {v0, v13}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    move-object/from16 v2, v27

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 545
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    move-object/from16 v4, v26

    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    move-object/from16 v9, v25

    invoke-static {v0, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 551
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string v2, "%.pdf"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string v2, "%.vcf"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v2, "%.vcs"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 558
    move-object/from16 v11, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 526
    :cond_9
    move-object/from16 v11, v24

    move-object/from16 v9, v25

    move-object/from16 v4, v26

    move-object/from16 v2, v27

    .line 560
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-static {v0, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 568
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-static {v0, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 574
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-static {v0, v13}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-static {v0, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v2, "%.pdf"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v2, "%.vcf"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v2, "%.vcs"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 596
    :cond_a
    move-object/from16 v1, v24

    move-object/from16 v2, v27

    const/4 v2, 0x7

    if-ne v2, v14, :cond_b

    .line 598
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string v2, "application/vnd.android.package-archive"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    const-string v2, "%.apk"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 610
    :cond_b
    if-nez v14, :cond_c

    .line 613
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bucket_display_name not like "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    const-string v2, ".thumbnails"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-static {v0, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 623
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-static {v0, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-static {v0, v13}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    move-object/from16 v2, v27

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    move-object/from16 v2, v26

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    move-object/from16 v2, v25

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const-string v2, "%.pdf"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const-string v2, "%.jpg"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const-string v2, "%.jpeg"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 653
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    const-string v2, "%.png"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string v2, "%.bmp"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v2, "%.mp3"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string v2, "%.wav"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const-string v2, "%.mp4"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 668
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    const-string v2, "%.avi"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string v2, "%.mid"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    const-string v2, "%.3g2"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const-string v2, "%.aac"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string v2, "%.amr"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const-string v2, "%.awb"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const-string v2, "%.mxmf"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 690
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string v2, "%.ogg"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 693
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const-string v2, "%.rtttl"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    const-string v2, "%.imy"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const-string v2, "%.xmf"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 702
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    const-string v2, "%.flac"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    const-string v2, "%.mov"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string v2, "%.zip"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    const-string v2, "%.rar"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 715
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string v2, "%.apk"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const-string v2, "%.vcf"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 720
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const-string v2, "%.vcs"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const-string v2, "%.m4a"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 724
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    const-string v2, "%.3gp"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    const-string v2, "%.dcf"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    const-string v2, "%.3gpp"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string v2, "%.gif"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    const-string v2, "%.pptm"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 735
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v2, "%.xps"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    const-string v2, "%.potx"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 739
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    const-string v2, "%.potm"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 741
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    const-string v2, "%.thmx"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const-string v2, "%.ppsx"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const-string v2, "%.ppsm"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    const-string v2, "%.pps"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 749
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    const-string v2, "%.ppam"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    const-string v2, "%.ppa"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const-string v2, "%.xml"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    const-string v2, "%.pot"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 757
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    const-string v2, "%.wmv"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string v2, "%.tif"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 761
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const-string v2, "%.wmf"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    const-string v2, "%.emf"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 765
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    const-string v2, "%.rtf"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const-string v2, "%.odp"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 769
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v2, "%.docm"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    const-string v2, "%.dotx"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 773
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    const-string v2, "%.dotm"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string v2, "%.dot"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 777
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    const-string v2, "%.mht"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const-string v2, "%.mhtml"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 781
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const-string v2, "%.htm"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 783
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    const-string v2, "%.html"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    const-string v2, "%.odt"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 787
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    const-string v2, "%.xlsb"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 789
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    const-string v2, "%.xltx"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 791
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    const-string v2, "%.xltm"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    const-string v2, "%.xlt"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    const-string v2, "%.csv"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    const-string v2, "%.prn"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    const-string v2, "%.dif"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    const-string v2, "%.slk"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const-string v2, "%.xlam"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const-string v2, "%.xla"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    const-string v2, "%.ods"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 809
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    const-string v2, "%.mpp"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    const-string v2, "%.mpt"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    const-string v2, "%.oft"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    const-string v2, "%.msg"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 819
    :cond_c
    const/16 v2, 0x8

    if-ne v2, v14, :cond_d

    .line 820
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    const-string v2, "application/zip"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 823
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    const-string v2, "%.rar"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 826
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    const-string v2, "%.zip"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    const-string v2, "%.tar"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 832
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const-string v2, "%.7z"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 835
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    :cond_d
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 840
    const/4 v1, 0x0

    .line 841
    const/4 v2, 0x4

    move-object/from16 v3, p0

    iget v4, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mCategory:I

    if-eq v2, v4, :cond_10

    const/4 v2, 0x5

    if-eq v2, v4, :cond_10

    const/4 v2, 0x3

    if-ne v2, v4, :cond_e

    goto :goto_3

    .line 856
    :cond_e
    const/4 v0, 0x6

    if-eq v0, v4, :cond_f

    const/4 v0, 0x7

    if-eq v0, v4, :cond_f

    const/16 v0, 0x8

    if-eq v0, v4, :cond_f

    if-nez v4, :cond_11

    .line 861
    :cond_f
    iget-object v0, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, v23

    move-object/from16 v11, v22

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_4

    .line 847
    :cond_10
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const-string v1, " and (_data not in (select _data from files where format==12289))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 854
    iget-object v0, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, v23

    move-object/from16 v11, v22

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 856
    :cond_11
    nop

    .line 865
    :goto_4
    if-nez v1, :cond_12

    .line 866
    const/4 v0, -0x1

    return v0

    .line 869
    :cond_12
    const/4 v0, 0x1

    .line 871
    :goto_5
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 877
    iget-boolean v2, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mCancelled:Z

    if-eqz v2, :cond_14

    .line 878
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/jrdcom/filemanager/task/ListFileTask;->cancel(Z)Z

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->onCancelled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    const/4 v0, -0x7

    .line 918
    nop

    .line 919
    if-eqz v1, :cond_13

    .line 920
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 880
    :cond_13
    return v0

    .line 882
    :cond_14
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 883
    nop

    .line 884
    goto/16 :goto_6

    .line 886
    :cond_15
    move-object/from16 v2, v20

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 887
    move-object/from16 v4, v19

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 888
    move-object/from16 v12, v18

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 889
    move-object/from16 v15, v17

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 891
    const-string v5, "/"

    invoke-virtual {v9, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v9, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 892
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 893
    new-instance v7, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v6, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    move-object v5, v7

    move-object/from16 v20, v2

    move-object v2, v7

    move/from16 v7, v18

    move-object/from16 v18, v10

    invoke-direct/range {v5 .. v10}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 894
    const-wide/16 v5, 0x3e8

    mul-long v5, v5, v16

    invoke-virtual {v2, v13, v14, v5, v6}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(JJ)V

    .line 895
    invoke-virtual {v2, v11}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    .line 896
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isHidden()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 897
    nop

    .line 898
    iget-object v5, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v5, v5, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z

    if-eqz v5, :cond_16

    .line 899
    const-string v5, "is_drm"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 900
    const/4 v6, 0x1

    if-ne v5, v6, :cond_16

    .line 901
    invoke-virtual {v2, v6}, Lcom/jrdcom/filemanager/utils/FileInfo;->setDrm(Z)V

    .line 904
    :cond_16
    nop

    .line 905
    iget-boolean v5, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->isSupportPrivateMode:Z

    if-eqz v5, :cond_17

    .line 906
    const-string v5, "tct_is_private"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 907
    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    .line 908
    invoke-virtual {v2, v6}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 911
    :cond_17
    iget-object v5, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v5, v2, v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addItem(Lcom/jrdcom/filemanager/utils/FileInfo;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    nop

    .line 914
    move-object/from16 v19, v4

    move-object/from16 v18, v12

    move-object/from16 v17, v15

    const/4 v0, 0x0

    goto/16 :goto_5

    .line 918
    :cond_18
    :goto_6
    nop

    .line 919
    if-eqz v1, :cond_19

    .line 920
    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 925
    :cond_19
    const/4 v0, 0x0

    goto :goto_b

    .line 918
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 915
    :catch_0
    move-exception v0

    .line 916
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 918
    nop

    .line 919
    if-eqz v1, :cond_19

    .line 920
    goto :goto_7

    .line 919
    :goto_8
    if-eqz v1, :cond_1a

    .line 920
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 922
    :cond_1a
    throw v0

    .line 452
    :cond_1b
    move-object v3, v1

    .line 454
    :goto_9
    iget-object v0, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v0

    .line 455
    iget-object v1, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    .line 456
    iget-object v2, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    iget v4, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mCategory:I

    invoke-static {v2, v4}, Lcom/jrdcom/filemanager/manager/CategoryManager;->getCountFromFiles(Landroid/content/Context;I)I

    move-result v2

    .line 457
    if-eqz v0, :cond_1c

    .line 458
    const/4 v6, 0x0

    iput v6, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->dirprogress:I

    .line 459
    iget v4, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mCategory:I

    invoke-static {v0, v4}, Lcom/jrdcom/filemanager/manager/CategoryManager;->getCategoryPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-direct {v3, v0, v2, v6}, Lcom/jrdcom/filemanager/task/ListFileTask;->categoryFromFolder(Ljava/lang/String;II)I

    move-result v0

    goto :goto_a

    .line 462
    :cond_1c
    const/4 v6, 0x0

    iput v6, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->dirprogress:I

    move v0, v6

    .line 464
    :goto_a
    if-eqz v1, :cond_1d

    .line 465
    iget v0, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mCategory:I

    invoke-static {v1, v0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->getCategoryPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-direct {v3, v0, v2, v6}, Lcom/jrdcom/filemanager/task/ListFileTask;->categoryFromFolder(Ljava/lang/String;II)I

    move-result v0

    .line 468
    :cond_1d
    nop

    .line 925
    :goto_b
    const/4 v1, -0x7

    if-eq v0, v1, :cond_1f

    .line 926
    iget-object v1, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    .line 927
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 928
    iget v2, v3, Lcom/jrdcom/filemanager/task/ListFileTask;->mCategory:I

    if-eqz v2, :cond_1e

    .line 929
    iget-object v2, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    .line 930
    invoke-virtual {v2, v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->updateCategoryList(I)V

    goto :goto_c

    .line 932
    :cond_1e
    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 933
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->updateCategoryList(I)V

    .line 937
    :cond_1f
    :goto_c
    return v0
.end method

.method private refreshPath()I
    .locals 21

    .line 372
    move-object/from16 v0, p0

    .line 373
    nop

    .line 375
    nop

    .line 376
    iget-object v1, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v3

    .line 377
    iget-object v1, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v4

    .line 378
    iget-object v1, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v8, -0x1

    if-eqz v1, :cond_0

    .line 379
    nop

    .line 380
    return v8

    .line 382
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-string v2, ""

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/task/ListFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 384
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 386
    nop

    .line 387
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 388
    invoke-static {v1}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 389
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 390
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 391
    if-eqz v4, :cond_1

    array-length v7, v4

    if-nez v7, :cond_3

    .line 392
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    goto :goto_0

    .line 387
    :cond_2
    move-object v4, v5

    move-object v6, v4

    .line 396
    :cond_3
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 397
    if-eqz v4, :cond_8

    .line 398
    array-length v7, v4

    .line 399
    iget-object v9, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mPath:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMimeTypeMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 401
    move v14, v3

    :goto_1
    if-ge v14, v7, :cond_8

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 407
    nop

    .line 408
    return v8

    .line 410
    :cond_4
    aget-object v9, v4, v14

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 411
    aget-object v10, v4, v14

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 412
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 413
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 414
    move-object v13, v5

    goto :goto_2

    .line 413
    :cond_5
    move-object v13, v10

    .line 421
    :goto_2
    invoke-static {v9}, Lcom/jrdcom/filemanager/task/ListFileTask;->hideAndroidDir(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 422
    move/from16 v19, v14

    move-object/from16 v20, v15

    goto :goto_3

    .line 425
    :cond_6
    aget-object v10, v4, v14

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    .line 426
    aget-object v11, v4, v14

    invoke-virtual {v11}, Ljava/io/File;->isHidden()Z

    move-result v16

    .line 427
    if-nez v10, :cond_7

    iget-boolean v10, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->isSupportPrivateMode:Z

    if-eqz v10, :cond_7

    .line 428
    iget-object v10, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mPrivateModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    invoke-static {v10, v9}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->isPrivateFile(Ltct/util/privacymode/TctPrivacyModeHelper;Ljava/lang/String;)Z

    move-result v17

    .line 429
    iget-object v9, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    aget-object v10, v4, v14

    const/16 v18, 0x0

    move-object v11, v6

    move-object v12, v2

    move/from16 v19, v14

    move/from16 v14, v16

    move-object/from16 v20, v15

    move/from16 v15, v18

    move/from16 v16, v17

    invoke-static/range {v9 .. v16}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    goto :goto_3

    .line 427
    :cond_7
    move/from16 v19, v14

    move-object/from16 v20, v15

    .line 432
    iget-object v9, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    aget-object v10, v4, v19

    const/4 v15, 0x0

    move-object v11, v6

    move-object v12, v2

    move/from16 v14, v16

    invoke-static/range {v9 .. v15}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :goto_3
    add-int/lit8 v14, v19, 0x1

    move-object/from16 v15, v20

    goto :goto_1

    .line 437
    :cond_8
    iget-object v2, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->removeAllItem()V

    .line 438
    iget-object v2, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearHideItem()V

    .line 439
    iget-object v0, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addAllItem(Ljava/util/List;)V

    .line 441
    return v3
.end method

.method public static refreshPathForChange(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 323
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 324
    nop

    .line 325
    nop

    .line 326
    nop

    .line 328
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 329
    return-object v8

    .line 332
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 334
    nop

    .line 335
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 336
    invoke-static {v1}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 337
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 339
    if-eqz v2, :cond_2

    array-length v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v10, v2

    move-object v11, v3

    goto :goto_1

    .line 340
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move-object v10, v2

    move-object v11, v3

    goto :goto_1

    .line 335
    :cond_3
    move-object v10, v8

    move-object v11, v10

    .line 344
    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 345
    if-eqz v10, :cond_6

    .line 346
    array-length v13, v10

    .line 347
    invoke-static {v0, p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMimeTypeMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 349
    const/4 v1, 0x0

    move v14, v1

    :goto_2
    if-ge v14, v13, :cond_6

    .line 350
    aget-object v1, v10, v14

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 351
    aget-object v2, v10, v14

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 352
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 353
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 354
    move-object v5, v8

    goto :goto_3

    .line 353
    :cond_4
    move-object v5, v2

    .line 357
    :goto_3
    invoke-static {v1}, Lcom/jrdcom/filemanager/task/ListFileTask;->hideAndroidDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 358
    goto :goto_4

    .line 361
    :cond_5
    aget-object v1, v10, v14

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 362
    aget-object v1, v10, v14

    invoke-virtual {v1}, Ljava/io/File;->isHidden()Z

    move-result v6

    .line 364
    aget-object v2, v10, v14

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, v11

    move-object v4, v9

    invoke-static/range {v1 .. v7}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 367
    :cond_6
    return-object v12
.end method

.method private refreshSafeCategory()I
    .locals 24

    .line 941
    move-object/from16 v1, p0

    .line 947
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 948
    nop

    .line 949
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z

    const-string v8, "is_drm"

    const-string v9, "date_modified"

    const-string v10, "_size"

    const-string v11, "mime_type"

    const-string v12, "_data"

    if-eqz v0, :cond_0

    .line 950
    filled-new-array {v12, v11, v10, v9, v8}, [Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 955
    :cond_0
    filled-new-array {v12, v11, v10, v9}, [Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 961
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 962
    const-string v2, "tct_is_private = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 964
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 965
    const/4 v13, 0x0

    .line 967
    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    if-nez v13, :cond_2

    .line 969
    const/4 v0, -0x1

    .line 1017
    nop

    .line 1018
    if-eqz v13, :cond_1

    .line 1019
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 969
    :cond_1
    return v0

    .line 972
    :cond_2
    move v0, v14

    .line 973
    :goto_1
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 979
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mCancelled:Z

    if-eqz v2, :cond_4

    .line 980
    invoke-virtual {v1, v14}, Lcom/jrdcom/filemanager/task/ListFileTask;->cancel(Z)Z

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->onCancelled()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 982
    const/4 v0, -0x7

    .line 1017
    nop

    .line 1018
    if-eqz v13, :cond_3

    .line 1019
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 982
    :cond_3
    return v0

    .line 984
    :cond_4
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 985
    nop

    .line 986
    goto/16 :goto_4

    .line 988
    :cond_5
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 989
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 990
    nop

    .line 991
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z

    if-eqz v4, :cond_6

    .line 992
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto :goto_2

    .line 991
    :cond_6
    move v4, v15

    .line 994
    :goto_2
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 995
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 997
    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 998
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 999
    new-instance v14, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v15, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    move-object/from16 v16, v14

    move-object/from16 v17, v15

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v21}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 1000
    const-wide/16 v15, 0x3e8

    move-object v2, v8

    move-object/from16 v17, v9

    mul-long v8, v22, v15

    invoke-virtual {v14, v5, v6, v8, v9}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(JJ)V

    .line 1001
    invoke-virtual {v14, v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v7}, Ljava/io/File;->isHidden()Z

    move-result v3

    invoke-virtual {v14, v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 1004
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z

    if-eqz v3, :cond_8

    .line 1005
    if-nez v4, :cond_7

    .line 1006
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->setDrm(Z)V

    goto :goto_3

    .line 1007
    :cond_7
    const/4 v3, 0x1

    if-ne v4, v3, :cond_8

    .line 1008
    invoke-virtual {v14, v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->setDrm(Z)V

    .line 1011
    :cond_8
    :goto_3
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v3, v14, v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addItem(Lcom/jrdcom/filemanager/utils/FileInfo;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1012
    nop

    .line 1013
    move-object v8, v2

    move-object/from16 v9, v17

    const/4 v0, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1017
    :cond_9
    :goto_4
    nop

    .line 1018
    if-eqz v13, :cond_a

    .line 1019
    :goto_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 1017
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1017
    nop

    .line 1018
    if-eqz v13, :cond_a

    .line 1019
    goto :goto_5

    .line 1023
    :cond_a
    :goto_6
    nop

    .line 1024
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    .line 1025
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 1026
    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 1027
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->updateCategoryList(I)V

    .line 1031
    const/4 v1, 0x0

    return v1

    .line 1018
    :goto_7
    if-eqz v13, :cond_b

    .line 1019
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1021
    :cond_b
    throw v0
.end method


# virtual methods
.method public categoryFromPhotoFolder(Ljava/lang/String;II)I
    .locals 12

    .line 1084
    nop

    .line 1085
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 1090
    invoke-static {p2}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object p3

    .line 1091
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 1093
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eqz p2, :cond_7

    .line 1094
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    .line 1095
    if-nez p2, :cond_0

    .line 1096
    goto/16 :goto_3

    .line 1098
    :cond_0
    array-length p3, p2

    .line 1099
    move v10, v9

    :goto_0
    if-ge v10, p3, :cond_6

    .line 1101
    iget v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->dirprogress:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->dirprogress:I

    .line 1103
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    return v8

    .line 1106
    :cond_1
    aget-object v0, p2, v10

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1107
    new-instance v2, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v3, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v4

    .line 1108
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 1110
    aget-object v3, p2, v10

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1111
    iget-object v11, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    aget-object v3, p2, v10

    iget-object v6, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v6}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmFileExt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v6, v9

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v1

    :goto_2
    move-object v0, v2

    move-object v1, v3

    move-object v2, v7

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addItem(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 1099
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1114
    :cond_6
    move v8, v9

    goto :goto_3

    .line 1116
    :cond_7
    nop

    .line 1118
    :goto_3
    return v8
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 3

    .line 91
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 92
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setBaseTaskHashcode(I)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mStartOperationTime:J

    .line 94
    nop

    .line 95
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getRefreshMode()I

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mRefreshMode:I

    .line 96
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 97
    iget-boolean p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->isThirdAppSelect:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mOnlyShowDir:Z

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->refreshOnlyShowDirPath()I

    goto :goto_0

    .line 99
    :cond_0
    iget-boolean p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->isThirdAppSelect:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileCategory:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->refreshSelectPath()I

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    sget-boolean v2, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    invoke-static {p1, v1, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 103
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->isSupportPrivateMode:Z

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->refreshPath()I

    move-result p1

    goto :goto_2

    .line 107
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 108
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isAddPrivateFileMode(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 109
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->isSupportPrivateMode:Z

    .line 111
    :cond_4
    invoke-direct {p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->refreshCategory()I

    move-result p1

    goto :goto_2

    .line 112
    :cond_5
    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 116
    :cond_6
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    .line 114
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->refreshSafeCategory()I

    move-result p1

    .line 116
    :goto_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setResultCode(I)V

    .line 117
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getListener()Lcom/jrdcom/filemanager/listener/OperationEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-interface {p1, v0}, Lcom/jrdcom/filemanager/listener/OperationEventListener;->onTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 118
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/ListFileTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method

.method public refreshOnlyShowDirPath()I
    .locals 19

    .line 123
    move-object/from16 v0, p0

    .line 124
    nop

    .line 126
    nop

    .line 127
    iget-object v1, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v3

    .line 128
    iget-object v1, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v4

    .line 129
    iget-object v1, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v8, -0x1

    if-eqz v1, :cond_0

    .line 130
    nop

    .line 131
    return v8

    .line 133
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-string v2, ""

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/task/ListFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 135
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 137
    nop

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 139
    invoke-static {v1}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 140
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 142
    if-eqz v4, :cond_2

    array-length v6, v4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v5

    move-object v5, v4

    goto :goto_1

    .line 143
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    move-object/from16 v18, v5

    move-object v5, v1

    move-object/from16 v1, v18

    goto :goto_1

    .line 138
    :cond_3
    move-object v1, v5

    .line 146
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 147
    if-eqz v5, :cond_b

    .line 148
    array-length v6, v5

    .line 149
    iget-object v7, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mPath:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMimeTypeMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 151
    move v15, v3

    :goto_2
    if-ge v15, v6, :cond_b

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 157
    nop

    .line 158
    return v8

    .line 160
    :cond_4
    aget-object v9, v5, v15

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 161
    aget-object v10, v5, v15

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 162
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 163
    iget-boolean v12, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->isThirdAppSelect:Z

    const-string v13, "."

    if-eqz v12, :cond_5

    if-eqz v10, :cond_5

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 164
    move/from16 v16, v15

    goto/16 :goto_4

    .line 166
    :cond_5
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 167
    aget-object v11, v5, v15

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 168
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 169
    const-string v11, "unknown_ext_mimeType"

    move-object v14, v11

    goto :goto_3

    .line 168
    :cond_6
    move-object v14, v11

    goto :goto_3

    .line 166
    :cond_7
    move-object v14, v11

    .line 172
    :goto_3
    iget-boolean v11, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->isThirdAppSelect:Z

    if-eqz v11, :cond_8

    if-eqz v10, :cond_8

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 173
    move/from16 v16, v15

    goto :goto_4

    .line 177
    :cond_8
    invoke-static {v9}, Lcom/jrdcom/filemanager/task/ListFileTask;->hideAndroidDir(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 178
    move/from16 v16, v15

    goto :goto_4

    .line 182
    :cond_9
    aget-object v9, v5, v15

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    .line 183
    aget-object v10, v5, v15

    invoke-virtual {v10}, Ljava/io/File;->isHidden()Z

    move-result v16

    .line 185
    if-eqz v9, :cond_a

    .line 186
    iget-object v9, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    aget-object v10, v5, v15

    const/16 v17, 0x0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v14

    move/from16 v14, v16

    move/from16 v16, v15

    move/from16 v15, v17

    invoke-static/range {v9 .. v15}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    goto :goto_4

    .line 185
    :cond_a
    move/from16 v16, v15

    .line 151
    :goto_4
    add-int/lit8 v15, v16, 0x1

    goto/16 :goto_2

    .line 192
    :cond_b
    iget-object v1, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->removeAllItem()V

    .line 193
    iget-object v1, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearHideItem()V

    .line 194
    iget-object v0, v0, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0, v4}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addAllItem(Ljava/util/List;)V

    .line 196
    return v3
.end method

.method public refreshSelectPath()I
    .locals 26

    .line 202
    move-object/from16 v1, p0

    .line 203
    nop

    .line 205
    nop

    .line 206
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v3

    .line 207
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v4

    .line 208
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v8, -0x1

    if-eqz v0, :cond_0

    .line 209
    nop

    .line 210
    return v8

    .line 212
    :cond_0
    const/4 v9, 0x1

    new-array v0, v9, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-string v2, ""

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/task/ListFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 214
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 216
    nop

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 218
    invoke-static {v0}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 219
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 221
    if-eqz v4, :cond_2

    array-length v6, v4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v25, v5

    move-object v5, v4

    move-object/from16 v4, v25

    goto :goto_1

    .line 222
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v4, v5

    move-object v5, v0

    goto :goto_1

    .line 217
    :cond_3
    move-object v4, v5

    .line 226
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileCategory:Ljava/lang/String;

    const-string v7, "image/*"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 229
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileCategory:Ljava/lang/String;

    const-string v15, "audio/*"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    .line 230
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileCategory:Ljava/lang/String;

    const-string v14, "video/*"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    .line 231
    if-eqz v5, :cond_21

    .line 232
    array-length v13, v5

    .line 233
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mPath:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMimeTypeMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 234
    move v11, v3

    :goto_2
    if-ge v11, v13, :cond_21

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/ListFileTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    nop

    .line 241
    return v8

    .line 243
    :cond_4
    aget-object v0, v5, v11

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 244
    aget-object v10, v5, v11

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    .line 245
    aget-object v16, v5, v11

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 247
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    if-nez v10, :cond_5

    .line 248
    aget-object v8, v5, v11

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jrdcom/filemanager/utils/FileUtils;->getSelectMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 249
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 250
    const-string v8, "unknown_ext_mimeType"

    .line 253
    :cond_5
    iget-boolean v3, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->isThirdAppSelect:Z

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 254
    move/from16 v19, v9

    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v20, v13

    move-object/from16 v22, v14

    move-object/from16 v21, v15

    goto/16 :goto_c

    .line 258
    :cond_6
    aget-object v3, v5, v11

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jrdcom/filemanager/task/ListFileTask;->hideAndroidDir(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 259
    move/from16 v19, v9

    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v20, v13

    move-object/from16 v22, v14

    move-object/from16 v21, v15

    goto/16 :goto_c

    .line 263
    :cond_7
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileCategory:Ljava/lang/String;

    const-string v9, "all"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    if-nez v10, :cond_1e

    .line 264
    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string v3, "video/"

    const-string v9, "audio/"

    if-eqz v0, :cond_10

    const-string v10, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 267
    iget-object v10, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileCategory:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move-object/from16 v16, v12

    const-string v12, "mp4"

    move/from16 v20, v13

    const-string v13, "mp3"

    move-object/from16 v21, v14

    const-string v14, "ogg"

    move-object/from16 v22, v15

    const-string v15, "3gp"

    if-eqz v10, :cond_b

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v23, v11

    move-object/from16 v24, v16

    move-object/from16 v11, v21

    move-object/from16 v21, v22

    goto :goto_4

    :cond_9
    :goto_3
    if-eqz v8, :cond_b

    .line 268
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 269
    iget-object v10, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    aget-object v0, v5, v11

    const/4 v15, 0x0

    const/4 v3, 0x0

    move/from16 v23, v11

    move-object v11, v0

    move-object/from16 v24, v16

    move-object v12, v4

    move-object v13, v2

    move-object/from16 v9, v21

    move-object v14, v8

    move-object/from16 v21, v22

    move/from16 v16, v3

    invoke-static/range {v10 .. v16}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    move-object/from16 v22, v9

    const/16 v19, 0x1

    goto/16 :goto_c

    .line 268
    :cond_a
    move/from16 v23, v11

    move-object/from16 v24, v16

    move-object/from16 v11, v21

    move-object/from16 v21, v22

    goto :goto_4

    .line 267
    :cond_b
    move/from16 v23, v11

    move-object/from16 v24, v16

    move-object/from16 v11, v21

    move-object/from16 v21, v22

    .line 271
    :goto_4
    iget-object v10, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileCategory:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    move-object/from16 v22, v11

    goto :goto_6

    :cond_d
    :goto_5
    if-eqz v8, :cond_f

    .line 272
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 273
    iget-object v10, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    aget-object v0, v5, v23

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v22, v11

    move-object v11, v0

    move-object v12, v4

    move-object v13, v2

    move-object v14, v8

    invoke-static/range {v10 .. v16}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    const/16 v19, 0x1

    goto/16 :goto_c

    .line 272
    :cond_e
    move-object/from16 v22, v11

    goto :goto_6

    .line 271
    :cond_f
    move-object/from16 v22, v11

    goto :goto_6

    .line 266
    :cond_10
    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v20, v13

    move-object/from16 v22, v14

    move-object/from16 v21, v15

    .line 278
    :goto_6
    :try_start_0
    aget-object v0, v5, v23

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v10, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 280
    iget-object v10, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->getDrmScheme(Ljava/lang/String;)I

    move-result v0

    .line 281
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v11, "image/"

    if-nez v10, :cond_1a

    .line 282
    :try_start_1
    iget v8, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mDrmLevel:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_12

    sget v8, Lcom/jrdcom/filemanager/drm/DrmManager;->METHOD_SD:I

    if-eq v0, v8, :cond_11

    goto :goto_7

    :cond_11
    const/4 v15, 0x1

    goto :goto_8

    :cond_12
    :goto_7
    iget v8, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mDrmLevel:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v15, 0x1

    if-ne v8, v15, :cond_13

    :try_start_2
    sget v8, Lcom/jrdcom/filemanager/drm/DrmManager;->METHOD_FL:I

    if-eq v0, v8, :cond_14

    :cond_13
    iget v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mDrmLevel:I

    const/4 v8, 0x4

    if-ne v0, v8, :cond_19

    :cond_14
    :goto_8
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileCategory:Ljava/lang/String;

    .line 285
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v14, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_15
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileCategory:Ljava/lang/String;

    .line 286
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileCategory:Ljava/lang/String;

    .line 287
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v14, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 288
    :cond_17
    iget-object v10, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    aget-object v11, v5, v23
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    const/16 v16, 0x1

    move-object v12, v4

    move-object v13, v2

    move/from16 v19, v15

    move v15, v0

    :try_start_3
    invoke-static/range {v10 .. v16}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 287
    :cond_18
    move/from16 v19, v15

    goto :goto_9

    .line 282
    :cond_19
    move/from16 v19, v15

    .line 290
    :goto_9
    goto/16 :goto_c

    .line 301
    :catch_0
    move-exception v0

    move/from16 v19, v15

    goto/16 :goto_a

    .line 291
    :cond_1a
    const/16 v19, 0x1

    if-eqz v8, :cond_1b

    if-eqz v7, :cond_1b

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 292
    iget-object v10, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    aget-object v11, v5, v23

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v4

    move-object v13, v2

    move-object v14, v8

    invoke-static/range {v10 .. v16}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    goto/16 :goto_c

    .line 301
    :catch_1
    move-exception v0

    goto :goto_a

    .line 294
    :cond_1b
    if-eqz v8, :cond_1c

    if-eqz v17, :cond_1c

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 295
    iget-object v10, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    aget-object v11, v5, v23

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v4

    move-object v13, v2

    move-object v14, v8

    invoke-static/range {v10 .. v16}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    goto/16 :goto_c

    .line 297
    :cond_1c
    if-eqz v8, :cond_1d

    if-eqz v18, :cond_1d

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 298
    iget-object v10, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    aget-object v11, v5, v23

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v4

    move-object v13, v2

    move-object v14, v8

    invoke-static/range {v10 .. v16}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 299
    goto :goto_c

    .line 303
    :cond_1d
    goto :goto_b

    .line 301
    :catch_2
    move-exception v0

    const/16 v19, 0x1

    .line 302
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    :goto_b
    goto :goto_c

    .line 263
    :cond_1e
    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v20, v13

    move-object/from16 v22, v14

    move-object/from16 v21, v15

    const/16 v19, 0x1

    .line 306
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileCategory:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 307
    iget-object v10, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    aget-object v11, v5, v23

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v4

    move-object v13, v2

    move-object v14, v8

    invoke-static/range {v10 .. v16}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 308
    :cond_1f
    if-eqz v10, :cond_20

    .line 309
    iget-object v10, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mContext:Landroid/content/Context;

    aget-object v11, v5, v23

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v4

    move-object v13, v2

    move-object v14, v8

    invoke-static/range {v10 .. v16}, Lcom/jrdcom/filemanager/utils/FileUtils;->createFileInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_20
    :goto_c
    add-int/lit8 v11, v23, 0x1

    move/from16 v9, v19

    move/from16 v13, v20

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    move-object/from16 v12, v24

    const/4 v3, 0x0

    const/4 v8, -0x1

    goto/16 :goto_2

    .line 314
    :cond_21
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->removeAllItem()V

    .line 315
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearHideItem()V

    .line 316
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/ListFileTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0, v6}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addAllItem(Ljava/util/List;)V

    .line 318
    const/4 v1, 0x0

    return v1
.end method
