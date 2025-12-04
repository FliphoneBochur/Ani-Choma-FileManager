.class public Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;
.super Lcom/jrdcom/filemanager/task/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/task/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CutPasteFilesTask"
.end annotation


# instance fields
.field isExteranalStorage:Z

.field private mCategory:I

.field private final mDstFolder:Ljava/lang/String;

.field mPrivateFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field private final mSrcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 423
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mCategory:I

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->isExteranalStorage:Z

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mPrivateFileList:Ljava/util/ArrayList;

    .line 424
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 425
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSourceFileList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    .line 426
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCategoryIndex()I

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mCategory:I

    .line 429
    return-void
.end method

.method private cutPasteInDiffCard()Ljava/lang/Integer;
    .locals 28

    .line 445
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    new-instance v2, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;

    invoke-direct {v2}, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;-><init>()V

    .line 447
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v3

    .line 448
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v10

    .line 449
    const/4 v12, 0x1

    new-array v13, v12, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    const-string v4, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, v3

    move-wide v6, v10

    invoke-static/range {v4 .. v9}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v4

    const/4 v14, 0x0

    aput-object v4, v13, v14

    invoke-virtual {v1, v13}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->publishProgress([Ljava/lang/Object;)V

    .line 450
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    invoke-virtual {v1, v4, v0, v2}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->getAllFileList(Ljava/util/List;Ljava/util/List;Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;)I

    move-result v2

    .line 451
    if-gez v2, :cond_0

    .line 452
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 454
    :cond_0
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->isEnoughSpace(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 455
    const/4 v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 458
    :cond_1
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v6, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    sget-boolean v6, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    invoke-static {v4, v5, v6}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 459
    :cond_2
    iput-boolean v12, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->isExteranalStorage:Z

    .line 462
    :cond_3
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 463
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 465
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 466
    nop

    .line 467
    new-array v8, v12, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x0

    move v5, v3

    move-wide v6, v10

    move-object v12, v8

    move/from16 v8, v16

    move/from16 v16, v9

    invoke-static/range {v4 .. v9}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v4

    aput-object v4, v12, v14

    invoke-virtual {v1, v12}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->publishProgress([Ljava/lang/Object;)V

    .line 468
    const/high16 v4, 0x40000

    new-array v12, v4, [B

    .line 469
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 470
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 471
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_4
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->setDstFolder(Ljava/lang/String;)V

    .line 475
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 476
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 477
    invoke-virtual {v5}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    goto :goto_0

    .line 479
    :cond_5
    move/from16 v6, v16

    invoke-virtual {v1, v6, v3}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->getConditionCount(II)I

    move-result v16

    .line 481
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v14

    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 482
    rem-int v17, v5, v16

    if-nez v17, :cond_6

    .line 483
    const/4 v7, 0x1

    new-array v14, v7, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v18, v0

    move-object v0, v4

    move-object v4, v7

    move v7, v5

    move v5, v3

    move/from16 v19, v2

    move/from16 v17, v6

    move/from16 v20, v7

    const/16 v2, -0xe

    move-wide v6, v10

    move-object v2, v8

    move/from16 v8, v20

    move/from16 v21, v3

    move-object v3, v9

    move/from16 v9, v17

    :try_start_2
    invoke-static/range {v4 .. v9}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v14, v5

    invoke-virtual {v1, v14}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_2

    .line 482
    :cond_6
    move-object/from16 v18, v0

    move/from16 v19, v2

    move/from16 v21, v3

    move-object v0, v4

    move/from16 v20, v5

    move/from16 v17, v6

    move-object v2, v8

    move-object v3, v9

    .line 485
    :goto_2
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v4}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->getDstFile(Ljava/util/HashMap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 487
    nop

    .line 488
    const/4 v7, -0x7

    goto/16 :goto_7

    .line 490
    :cond_7
    if-eqz v4, :cond_16

    if-nez v0, :cond_8

    move/from16 v14, v20

    goto/16 :goto_6

    .line 495
    :cond_8
    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-eqz v5, :cond_a

    .line 496
    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jrdcom/filemanager/manager/MountManager;->getRealMountPointPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 497
    iget-object v6, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jrdcom/filemanager/manager/MountManager;->getRealMountPointPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 498
    iget-object v7, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v7, v5}, Lcom/jrdcom/filemanager/manager/MountManager;->isMounted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v5, v6}, Lcom/jrdcom/filemanager/manager/MountManager;->isMounted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 499
    :cond_9
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    .line 500
    nop

    .line 501
    const/16 v7, -0xe

    goto/16 :goto_7

    .line 505
    :cond_a
    new-instance v5, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v6, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v4, v7}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;Z)V

    .line 506
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    const/16 v7, 0xa

    if-eqz v6, :cond_e

    .line 508
    invoke-virtual {v1, v3, v0, v4}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mkdir(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 509
    iget v6, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mCategory:I

    if-ltz v6, :cond_b

    iget v6, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mCategory:I

    if-ge v6, v7, :cond_b

    .line 510
    iget-object v6, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v6, v6, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget v7, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mCategory:I

    invoke-virtual {v6, v7, v0, v2}, Lcom/jrdcom/filemanager/utils/FileListCache;->deleteCacheFiles(ILjava/io/File;Ljava/util/HashMap;)Z

    .line 512
    :cond_b
    invoke-virtual {v4}, Ljava/io/File;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 513
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 515
    :cond_c
    iget-object v6, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v7, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v7, v7, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    const/16 v25, -0x1

    iget-object v8, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    const/16 v27, 0x1

    move-object/from16 v22, v6

    move-object/from16 v23, v5

    move-object/from16 v24, v7

    move-object/from16 v26, v8

    invoke-static/range {v22 .. v27}, Lcom/jrdcom/filemanager/utils/CommonUtils;->addCache(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileListCache;ILcom/jrdcom/filemanager/manager/MountManager;Z)V

    .line 516
    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 517
    const/4 v4, 0x0

    invoke-interface {v13, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 v6, v19

    goto/16 :goto_4

    .line 519
    :cond_d
    nop

    .line 520
    move-object v8, v2

    move-object v9, v3

    move/from16 v6, v17

    move-object/from16 v0, v18

    move/from16 v5, v20

    move/from16 v3, v21

    const/16 v2, -0xe

    const/4 v14, 0x0

    goto/16 :goto_1

    .line 523
    :cond_e
    invoke-virtual {v1, v12, v0, v4}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->copyFile([BLjava/io/File;Ljava/io/File;)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 524
    const/4 v8, -0x7

    if-ne v6, v8, :cond_f

    .line 525
    move v7, v6

    goto/16 :goto_7

    .line 526
    :cond_f
    if-gez v6, :cond_10

    .line 527
    const/4 v0, 0x1

    :try_start_3
    new-array v4, v0, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    new-instance v5, Lcom/jrdcom/filemanager/task/ProgressInfo;

    const/16 v7, -0xe

    invoke-direct {v5, v7, v0}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(IZ)V

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-virtual {v1, v4}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 529
    :cond_10
    iget v8, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mCategory:I

    if-ltz v8, :cond_11

    iget v8, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mCategory:I

    if-ge v8, v7, :cond_11

    .line 530
    iget-object v7, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v7, v7, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget v8, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mCategory:I

    invoke-virtual {v7, v8, v0, v2}, Lcom/jrdcom/filemanager/utils/FileListCache;->deleteCacheFiles(ILjava/io/File;Ljava/util/HashMap;)Z

    .line 532
    :cond_11
    invoke-virtual {v4}, Ljava/io/File;->isHidden()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 533
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 535
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 536
    iget-boolean v8, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->isExteranalStorage:Z

    if-nez v8, :cond_13

    iget-object v8, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v9, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    sget-boolean v9, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    invoke-static {v7, v8, v9}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mPrivateModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    .line 537
    invoke-static {v8, v7}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->isPrivateFile(Ltct/util/privacymode/TctPrivacyModeHelper;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 538
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 539
    iget-object v7, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 541
    :cond_13
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 543
    :goto_3
    iget-object v7, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v8, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v8, v8, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileCategory(Ljava/lang/String;)I

    move-result v25

    iget-object v9, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    const/16 v27, 0x1

    move-object/from16 v22, v7

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v26, v9

    invoke-static/range {v22 .. v27}, Lcom/jrdcom/filemanager/utils/CommonUtils;->addCache(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileListCache;ILcom/jrdcom/filemanager/manager/MountManager;Z)V

    .line 544
    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 545
    sget v5, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_14

    .line 546
    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->addItemWithMimeType(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;Lcom/jrdcom/filemanager/manager/FileInfoManager;)V

    .line 548
    :cond_14
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 551
    :goto_4
    add-int/lit8 v9, v17, -0x1

    move/from16 v14, v20

    if-ge v14, v9, :cond_15

    .line 552
    add-int/lit8 v5, v14, 0x1

    goto :goto_5

    .line 551
    :cond_15
    move v5, v14

    .line 554
    :goto_5
    move-object v8, v2

    move-object v9, v3

    move v2, v6

    move/from16 v6, v17

    move-object/from16 v0, v18

    move/from16 v3, v21

    const/4 v14, 0x0

    goto/16 :goto_1

    .line 555
    :catch_0
    move-exception v0

    move v2, v6

    goto/16 :goto_a

    .line 490
    :cond_16
    move/from16 v14, v20

    .line 491
    :goto_6
    const/4 v0, 0x1

    :try_start_4
    new-array v4, v0, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    new-instance v5, Lcom/jrdcom/filemanager/task/ProgressInfo;

    const/16 v6, -0xe

    invoke-direct {v5, v6, v0}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(IZ)V

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-virtual {v1, v4}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 492
    move-object v8, v2

    move-object v9, v3

    move v5, v14

    move/from16 v6, v17

    move-object/from16 v0, v18

    move/from16 v2, v19

    move/from16 v3, v21

    const/4 v14, 0x0

    goto/16 :goto_1

    .line 555
    :catch_1
    move-exception v0

    move/from16 v2, v19

    goto/16 :goto_a

    .line 481
    :cond_17
    move/from16 v19, v2

    move/from16 v7, v19

    .line 558
    :goto_7
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 559
    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 560
    new-instance v3, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileCategory(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v5, v5, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-static {v3, v4, v5}, Lcom/jrdcom/filemanager/utils/CommonUtils;->deleteCache(Lcom/jrdcom/filemanager/utils/FileInfo;ILcom/jrdcom/filemanager/utils/FileListCache;)V

    .line 561
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 563
    :cond_18
    goto :goto_8

    .line 564
    :cond_19
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 565
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_1a

    .line 566
    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 567
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 568
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 571
    :cond_1a
    goto :goto_9

    .line 572
    :cond_1b
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 573
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 575
    :cond_1c
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    .line 576
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 577
    iget-boolean v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->isExteranalStorage:Z

    if-nez v0, :cond_23

    .line 578
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    iget-object v1, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->addPrivateModeFile(Ljava/util/ArrayList;)V

    goto/16 :goto_d

    .line 555
    :catch_2
    move-exception v0

    move/from16 v19, v2

    goto :goto_a

    .line 558
    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 555
    :catch_3
    move-exception v0

    .line 556
    :goto_a
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 558
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 559
    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 560
    new-instance v4, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileCategory(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v6, v6, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-static {v4, v5, v6}, Lcom/jrdcom/filemanager/utils/CommonUtils;->deleteCache(Lcom/jrdcom/filemanager/utils/FileInfo;ILcom/jrdcom/filemanager/utils/FileListCache;)V

    .line 561
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 563
    :cond_1d
    goto :goto_b

    .line 564
    :cond_1e
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 565
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    if-gtz v4, :cond_1f

    .line 566
    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 567
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 568
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 571
    :cond_1f
    goto :goto_c

    .line 572
    :cond_20
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 573
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 575
    :cond_21
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    .line 576
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 577
    iget-boolean v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->isExteranalStorage:Z

    if-nez v0, :cond_22

    .line 578
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    iget-object v1, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->addPrivateModeFile(Ljava/util/ArrayList;)V

    .line 581
    :cond_22
    move v7, v2

    :cond_23
    :goto_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 558
    :goto_e
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 559
    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 560
    new-instance v4, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileCategory(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v6, v6, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-static {v4, v5, v6}, Lcom/jrdcom/filemanager/utils/CommonUtils;->deleteCache(Lcom/jrdcom/filemanager/utils/FileInfo;ILcom/jrdcom/filemanager/utils/FileListCache;)V

    .line 561
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 563
    :cond_24
    goto :goto_f

    .line 564
    :cond_25
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 565
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    if-gtz v4, :cond_26

    .line 566
    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 567
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 568
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 571
    :cond_26
    goto :goto_10

    .line 572
    :cond_27
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    if-eqz v2, :cond_28

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_28

    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 573
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 575
    :cond_28
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    .line 576
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 577
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->isExteranalStorage:Z

    if-nez v2, :cond_29

    .line 578
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    iget-object v1, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->addPrivateModeFile(Ljava/util/ArrayList;)V

    .line 580
    :cond_29
    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 1

    .line 433
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 434
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setBaseTaskHashcode(I)V

    .line 435
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 436
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/16 v0, -0xe

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 437
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->cutPasteInDiffCard()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 440
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 441
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 414
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method
