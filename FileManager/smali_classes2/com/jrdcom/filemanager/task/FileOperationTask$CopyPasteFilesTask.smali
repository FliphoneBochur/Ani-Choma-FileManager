.class public Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;
.super Lcom/jrdcom/filemanager/task/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/task/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopyPasteFilesTask"
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x4000


# instance fields
.field isExteranalStorage:Z

.field isOTGStorage:Z

.field private mCategory:I

.field mDstFolder:Ljava/lang/String;

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

.field mSrcList:Ljava/util/List;
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

    .line 601
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mSrcList:Ljava/util/List;

    .line 588
    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isExteranalStorage:Z

    .line 590
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isOTGStorage:Z

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mPrivateFileList:Ljava/util/ArrayList;

    .line 598
    const/4 v0, -0x1

    iput v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mCategory:I

    .line 602
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSourceFileList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mSrcList:Ljava/util/List;

    .line 603
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    .line 604
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 605
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCategoryIndex()I

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mCategory:I

    .line 607
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 26

    .line 611
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 612
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setBaseTaskHashcode(I)V

    .line 613
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v0

    .line 614
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v8

    .line 615
    const/4 v10, 0x1

    new-array v11, v10, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    const-string v2, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, v0

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v2

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-virtual {v1, v11}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->publishProgress([Ljava/lang/Object;)V

    .line 616
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 617
    new-instance v2, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;

    invoke-direct {v2}, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;-><init>()V

    .line 618
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mSrcList:Ljava/util/List;

    invoke-virtual {v1, v3, v11, v2}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->getAllFileList(Ljava/util/List;Ljava/util/List;Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;)I

    move-result v13

    .line 619
    if-gez v13, :cond_0

    .line 620
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v0, v13}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 621
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object v0

    .line 623
    :cond_0
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    sget-boolean v4, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    invoke-static {v2, v3, v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 624
    :cond_1
    iput-boolean v10, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isExteranalStorage:Z

    .line 626
    :cond_2
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-static {v2, v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isOTGStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isOTGStorage:Z

    .line 627
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->setDstFolder(Ljava/lang/String;)V

    .line 632
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    .line 633
    nop

    .line 634
    new-array v15, v10, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move v3, v0

    move-wide v4, v8

    move v7, v14

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v2

    aput-object v2, v15, v12

    invoke-virtual {v1, v15}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->publishProgress([Ljava/lang/Object;)V

    .line 635
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v1, v11, v2}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isEnoughSpace(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 636
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/4 v2, -0x5

    invoke-static {v0, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 637
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object v0

    .line 639
    :cond_3
    const/16 v2, 0x4000

    new-array v15, v2, [B

    .line 640
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 641
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 642
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_4
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v6

    .line 646
    invoke-virtual {v1, v14, v0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->getConditionCount(II)I

    move-result v16

    .line 648
    const v4, 0x7f040004

    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/16 v5, -0xe

    move v3, v12

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 649
    rem-int v17, v3, v16

    if-nez v17, :cond_5

    .line 650
    new-array v12, v10, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    move-object v10, v2

    move-object/from16 v2, v17

    move/from16 v17, v3

    move v3, v0

    move/from16 v18, v0

    move v0, v5

    move-object/from16 v19, v11

    move v11, v4

    move-wide v4, v8

    move-object v0, v6

    move/from16 v6, v17

    move-object v11, v7

    move v7, v14

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v12, v3

    invoke-virtual {v1, v12}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 649
    :cond_5
    move/from16 v18, v0

    move-object v10, v2

    move/from16 v17, v3

    move-object v0, v6

    move-object/from16 v19, v11

    move-object v11, v7

    .line 652
    :goto_1
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v1, v11, v10, v2}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->getDstFile(Ljava/util/HashMap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isCancelled()Z

    move-result v3

    const/4 v4, -0x7

    if-eqz v3, :cond_9

    .line 654
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v0, v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 655
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mContext:Landroid/content/Context;

    const v3, 0x7f040004

    invoke-static {v2, v3}, Lcom/jrdcom/filemanager/PlfUtils;->getBoolResource(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 722
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    goto :goto_2

    .line 723
    :cond_6
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isOTGStorage:Z

    if-nez v2, :cond_7

    .line 724
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    .line 728
    :cond_7
    :goto_2
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isExteranalStorage:Z

    if-nez v2, :cond_8

    .line 729
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    iget-object v1, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->addPrivateModeFile(Ljava/util/ArrayList;)V

    .line 655
    :cond_8
    return-object v0

    .line 657
    :cond_9
    if-eqz v2, :cond_20

    if-nez v10, :cond_a

    .line 659
    move/from16 v12, v17

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, -0xe

    goto/16 :goto_d

    .line 661
    :cond_a
    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 662
    if-eqz v0, :cond_10

    .line 663
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/jrdcom/filemanager/manager/MountManager;->getRealMountPointPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 664
    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/manager/MountManager;->getRealMountPointPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 665
    invoke-virtual {v0, v5}, Lcom/jrdcom/filemanager/manager/MountManager;->isMounted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v0, v6}, Lcom/jrdcom/filemanager/manager/MountManager;->isMounted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    const/16 v5, -0xe

    goto :goto_5

    .line 666
    :cond_c
    :goto_3
    nop

    .line 667
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/16 v5, -0xe

    invoke-static {v0, v5}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 668
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mContext:Landroid/content/Context;

    const v3, 0x7f040004

    invoke-static {v2, v3}, Lcom/jrdcom/filemanager/PlfUtils;->getBoolResource(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 722
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    goto :goto_4

    .line 723
    :cond_d
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isOTGStorage:Z

    if-nez v2, :cond_e

    .line 724
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    .line 728
    :cond_e
    :goto_4
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isExteranalStorage:Z

    if-nez v2, :cond_f

    .line 729
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    iget-object v1, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->addPrivateModeFile(Ljava/util/ArrayList;)V

    .line 668
    :cond_f
    return-object v0

    .line 662
    :cond_10
    const/16 v5, -0xe

    .line 671
    :goto_5
    :try_start_2
    new-instance v6, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v7, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-direct {v6, v7, v2, v12}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;Z)V

    .line 672
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMimeTypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 674
    invoke-virtual {v1, v11, v10, v2}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mkdir(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 675
    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 676
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 678
    :cond_11
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    const/16 v23, -0x1

    iget-object v7, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    const/16 v25, 0x1

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v22, v4

    move-object/from16 v24, v7

    invoke-static/range {v20 .. v25}, Lcom/jrdcom/filemanager/utils/CommonUtils;->addCache(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileListCache;ILcom/jrdcom/filemanager/manager/MountManager;Z)V

    .line 679
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_a

    .line 681
    :cond_12
    nop

    .line 682
    move-object v6, v0

    move v13, v5

    move-object v7, v11

    move/from16 v3, v17

    move/from16 v0, v18

    move-object/from16 v11, v19

    const v4, 0x7f040004

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 685
    :cond_13
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmFileExt(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1f

    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_14

    move/from16 v12, v17

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_c

    .line 690
    :cond_14
    invoke-virtual {v1, v15, v10, v2}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyFile([BLjava/io/File;Ljava/io/File;)I

    move-result v7

    .line 691
    if-ne v7, v4, :cond_18

    .line 692
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v0, v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 693
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 721
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mContext:Landroid/content/Context;

    const v3, 0x7f040004

    invoke-static {v2, v3}, Lcom/jrdcom/filemanager/PlfUtils;->getBoolResource(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 722
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    goto :goto_6

    .line 723
    :cond_15
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isOTGStorage:Z

    if-nez v2, :cond_16

    .line 724
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    .line 728
    :cond_16
    :goto_6
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isExteranalStorage:Z

    if-nez v2, :cond_17

    .line 729
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    iget-object v1, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->addPrivateModeFile(Ljava/util/ArrayList;)V

    .line 693
    :cond_17
    return-object v0

    .line 694
    :cond_18
    if-gez v7, :cond_19

    .line 695
    const/4 v2, 0x1

    :try_start_3
    new-array v3, v2, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    new-instance v4, Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-direct {v4, v7, v2}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(IZ)V

    const/4 v2, 0x0

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_9

    .line 697
    :cond_19
    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 698
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 700
    :cond_1a
    iget-boolean v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isExteranalStorage:Z

    if-nez v4, :cond_1d

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v10, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    sget-boolean v10, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    .line 701
    invoke-static {v3, v4, v10}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mPrivateModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    .line 702
    invoke-static {v4, v3}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->isPrivateFile(Ltct/util/privacymode/TctPrivacyModeHelper;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 703
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 704
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_8

    .line 702
    :cond_1b
    const/4 v3, 0x1

    goto :goto_7

    .line 701
    :cond_1c
    const/4 v3, 0x1

    goto :goto_7

    .line 700
    :cond_1d
    const/4 v3, 0x1

    .line 706
    :goto_7
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 708
    :goto_8
    iget-object v10, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v12, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v12, v12, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileCategory(Ljava/lang/String;)I

    move-result v23

    iget-object v13, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    const/16 v25, 0x1

    move-object/from16 v20, v10

    move-object/from16 v21, v6

    move-object/from16 v22, v12

    move-object/from16 v24, v13

    invoke-static/range {v20 .. v25}, Lcom/jrdcom/filemanager/utils/CommonUtils;->addCache(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileListCache;ILcom/jrdcom/filemanager/manager/MountManager;Z)V

    .line 709
    iget-object v6, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->addRecord(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 713
    :goto_9
    move v13, v7

    :goto_a
    add-int/lit8 v2, v14, -0x1

    move/from16 v12, v17

    if-ge v12, v2, :cond_1e

    .line 714
    add-int/lit8 v2, v12, 0x1

    goto :goto_b

    .line 713
    :cond_1e
    move v2, v12

    .line 717
    :goto_b
    move-object v6, v0

    move v10, v3

    move v12, v4

    move-object v7, v11

    move/from16 v0, v18

    move-object/from16 v11, v19

    const v4, 0x7f040004

    move v3, v2

    goto/16 :goto_0

    .line 685
    :cond_1f
    move/from16 v12, v17

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 686
    :goto_c
    nop

    .line 688
    move-object v6, v0

    move v10, v3

    move v13, v5

    move-object v7, v11

    move v3, v12

    move/from16 v0, v18

    move-object/from16 v11, v19

    move v12, v4

    const v4, 0x7f040004

    goto/16 :goto_0

    .line 657
    :cond_20
    move/from16 v12, v17

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, -0xe

    .line 648
    :goto_d
    move-object v6, v0

    move v10, v3

    move-object v7, v11

    move v3, v12

    move/from16 v0, v18

    move-object/from16 v11, v19

    move v12, v4

    const v4, 0x7f040004

    goto/16 :goto_0

    .line 721
    :cond_21
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mContext:Landroid/content/Context;

    const v2, 0x7f040004

    invoke-static {v0, v2}, Lcom/jrdcom/filemanager/PlfUtils;->getBoolResource(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 722
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    goto :goto_e

    .line 723
    :cond_22
    iget-boolean v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isOTGStorage:Z

    if-nez v0, :cond_23

    .line 724
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    .line 728
    :cond_23
    :goto_e
    iget-boolean v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isExteranalStorage:Z

    if-nez v0, :cond_24

    .line 729
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->addPrivateModeFile(Ljava/util/ArrayList;)V

    .line 732
    :cond_24
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v0, v13}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 733
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object v0

    .line 721
    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mContext:Landroid/content/Context;

    const v3, 0x7f040004

    invoke-static {v2, v3}, Lcom/jrdcom/filemanager/PlfUtils;->getBoolResource(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 722
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    goto :goto_f

    .line 723
    :cond_25
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isOTGStorage:Z

    if-nez v2, :cond_26

    .line 724
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    .line 728
    :cond_26
    :goto_f
    iget-boolean v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->isExteranalStorage:Z

    if-nez v2, :cond_27

    .line 729
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    iget-object v1, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->addPrivateModeFile(Ljava/util/ArrayList;)V

    .line 731
    :cond_27
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 585
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method
