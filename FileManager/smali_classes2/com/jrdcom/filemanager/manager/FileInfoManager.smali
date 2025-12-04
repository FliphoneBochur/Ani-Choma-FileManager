.class public Lcom/jrdcom/filemanager/manager/FileInfoManager;
.super Ljava/lang/Object;
.source "FileInfoManager.java"


# instance fields
.field private final mAddFilesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAddHideFilesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field public mBeforeSearchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCategory:I

.field private final mCategoryFilesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field private mLastAccessPath:Ljava/lang/String;

.field protected mModifiedTime:J

.field private final mPasteFilesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPasteOperation:I

.field private final mRemoveFilesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

.field private final mSearchFilesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchFilesInfoListTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowFilesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSearchFilesInfoList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSearchFilesInfoListTS:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategoryFilesInfoList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddHideFilesInfoList:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mBeforeSearchList:Ljava/util/List;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteOperation:I

    .line 57
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mModifiedTime:J

    .line 58
    iput v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategory:I

    .line 64
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 66
    return-void
.end method

.method private filterPasteList(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 791
    nop

    .line 792
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 793
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 795
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 800
    add-int/lit8 v0, v0, 0x1

    .line 803
    :cond_0
    goto :goto_0

    .line 804
    :cond_1
    return v0
.end method

.method private isCutSamePath(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 808
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 809
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    const/4 p1, 0x1

    return p1

    .line 812
    :cond_0
    goto :goto_0

    .line 813
    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addAllHideItem(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddHideFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    return-void
.end method

.method public addAllItem(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    return-void
.end method

.method public addHideItem(Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddHideFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method public addItem(Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 2

    .line 145
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/storage/emulated/0/Locker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    return-void
.end method

.method public addItem(Lcom/jrdcom/filemanager/utils/FileInfo;Z)V
    .locals 0

    .line 163
    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 164
    iget-object p2, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 165
    iget-object p2, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_0
    iget-object p2, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_0
    return-void
.end method

.method public addItemList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 371
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 372
    return-void
.end method

.method public addNewTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 8

    .line 600
    nop

    .line 601
    const/4 v0, 0x0

    .line 602
    nop

    .line 603
    :try_start_0
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v1

    .line 604
    nop

    .line 605
    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isDialogProgressTask(I)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 606
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTaskSize()I

    move-result v2

    if-lt v2, v3, :cond_1

    .line 607
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->getWaittingTaskSize()I

    move-result v2

    if-lt v2, v3, :cond_1

    .line 608
    const/16 v0, -0x16

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setResultCode(I)V

    .line 609
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getListener()Lcom/jrdcom/filemanager/listener/OperationEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getListener()Lcom/jrdcom/filemanager/listener/OperationEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jrdcom/filemanager/listener/OperationEventListener;->onTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 612
    :cond_0
    return-void

    .line 615
    :cond_1
    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_5

    if-eq v1, v3, :cond_5

    const/4 v5, 0x3

    if-eq v1, v5, :cond_4

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/4 v5, 0x5

    if-eq v1, v5, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 724
    :pswitch_0
    new-instance v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 725
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 726
    invoke-virtual {v0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    goto/16 :goto_0

    .line 714
    :pswitch_1
    new-instance v0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 715
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 716
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 717
    return-void

    .line 719
    :pswitch_2
    new-instance v0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 720
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 721
    invoke-virtual {v0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 722
    goto/16 :goto_0

    .line 709
    :pswitch_3
    invoke-static {p1, v2}, Lcom/jrdcom/filemanager/task/FolderCountTask;->getInstance(Lcom/jrdcom/filemanager/utils/TaskInfo;Z)Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    .line 710
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 711
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 712
    return-void

    .line 704
    :pswitch_4
    new-instance v0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 705
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 706
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 707
    return-void

    .line 699
    :pswitch_5
    new-instance v0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 700
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 701
    invoke-virtual {v0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 702
    goto/16 :goto_0

    .line 694
    :pswitch_6
    new-instance v0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 695
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 696
    invoke-virtual {v0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 697
    goto/16 :goto_0

    .line 689
    :pswitch_7
    new-instance v0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 690
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->setTaskTime(J)V

    .line 691
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 692
    return-void

    .line 683
    :pswitch_8
    new-instance v0, Lcom/jrdcom/filemanager/task/DetailInfoTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/DetailInfoTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 684
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 685
    invoke-virtual {v0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 686
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 687
    return-void

    .line 677
    :pswitch_9
    new-instance v0, Lcom/jrdcom/filemanager/task/SearchTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/SearchTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 678
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 679
    invoke-virtual {v0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 680
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 681
    return-void

    .line 670
    :pswitch_a
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsShowHidenFile(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setFileFilter(I)V

    .line 671
    new-instance v0, Lcom/jrdcom/filemanager/task/ListFileTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/ListFileTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 672
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 673
    invoke-virtual {v0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 674
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 675
    return-void

    .line 657
    :cond_2
    new-instance v0, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 658
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 659
    invoke-virtual {v0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 660
    goto/16 :goto_0

    .line 662
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsShowHidenFile(Landroid/content/Context;)I

    move-result v0

    .line 663
    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setFileFilter(I)V

    .line 664
    new-instance v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 665
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 666
    invoke-virtual {v0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 667
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 668
    return-void

    .line 617
    :cond_4
    new-instance v0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 618
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 619
    invoke-virtual {v0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 620
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 621
    return-void

    .line 624
    :cond_5
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSourceFileList()Ljava/util/List;

    move-result-object v1

    .line 625
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object v5

    .line 626
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getListener()Lcom/jrdcom/filemanager/listener/OperationEventListener;

    move-result-object v6

    .line 628
    invoke-direct {p0, v1, v5}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->filterPasteList(Ljava/util/List;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_6

    .line 629
    const/4 v7, -0x8

    invoke-virtual {p1, v7}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setResultCode(I)V

    .line 630
    invoke-interface {v6, p1}, Lcom/jrdcom/filemanager/listener/OperationEventListener;->onTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 632
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 633
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v0

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_7

    .line 650
    const/16 v0, -0x9

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setResultCode(I)V

    .line 651
    invoke-interface {v6, p1}, Lcom/jrdcom/filemanager/listener/OperationEventListener;->onTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 652
    return-void

    .line 645
    :cond_7
    new-instance v0, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CopyPasteFilesTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 646
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 647
    invoke-virtual {v0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 648
    goto :goto_0

    .line 635
    :cond_8
    invoke-direct {p0, v1, v5}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->isCutSamePath(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 636
    const/16 v0, -0xc

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setResultCode(I)V

    .line 637
    invoke-interface {v6, p1}, Lcom/jrdcom/filemanager/listener/OperationEventListener;->onTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 638
    return-void

    .line 640
    :cond_9
    new-instance v0, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CutPasteFilesTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 641
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTaskTime(J)V

    .line 642
    invoke-virtual {v0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 729
    :cond_a
    :goto_0
    if-nez v0, :cond_b

    .line 730
    return-void

    .line 732
    :cond_b
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTaskSize()I

    move-result v1

    if-lt v1, v3, :cond_c

    .line 733
    invoke-static {v0}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->addWaittingningTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 734
    const/16 v0, -0x17

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setResultCode(I)V

    .line 735
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getListener()Lcom/jrdcom/filemanager/listener/OperationEventListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 736
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getListener()Lcom/jrdcom/filemanager/listener/OperationEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jrdcom/filemanager/listener/OperationEventListener;->onTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    goto :goto_1

    .line 739
    :cond_c
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->addRunningTask(JLcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 740
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :cond_d
    :goto_1
    goto :goto_2

    .line 744
    :catch_0
    move-exception p1

    .line 745
    const-string v0, "AsyncTask"

    const-string v1, "maximum pool size is exceed"

    invoke-static {v0, v1, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 750
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addToSearchResultList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSearchFilesInfoListTS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 480
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSearchFilesInfoListTS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 481
    return-void
.end method

.method public cancel(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V
    .locals 0

    .line 823
    if-eqz p1, :cond_0

    .line 824
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->cancel()V

    .line 826
    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSearchFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategoryFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddHideFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mBeforeSearchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSafeFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 78
    return-void
.end method

.method public clearHideItem()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddHideFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 188
    return-void
.end method

.method public clearPasteList()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 406
    const/4 v0, -0x1

    iput v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategory:I

    .line 407
    iput v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteOperation:I

    .line 408
    return-void
.end method

.method public clearShowFiles()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategoryFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    return-void
.end method

.method public getAddFilesInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getBeforeSearchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mBeforeSearchList:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategory:I

    return v0
.end method

.method public getCategoryFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategoryFilesInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getCategoryItemsCount()I
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategoryFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHideItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddHideFilesInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getPasteCount()I
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPasteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPasteType()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteOperation:I

    return v0
.end method

.method public getSafeFileInfo()Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSafeFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    return-object v0
.end method

.method public getSearchFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSearchFilesInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getSearchItemsCount()I
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSearchFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getShowFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    return-object v0
.end method

.method public isBusy(Ljava/lang/String;)Z
    .locals 0

    .line 574
    const/4 p1, 0x0

    return p1
.end method

.method public isPasteItem(Lcom/jrdcom/filemanager/utils/FileInfo;)Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isPathModified(Ljava/lang/String;)Z
    .locals 6

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 110
    return v1

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mModifiedTime:J

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    .line 114
    return v1

    .line 116
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public loadFileInfoList(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;I)V"
        }
    .end annotation

    .line 357
    if-eqz p2, :cond_0

    .line 358
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 359
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    invoke-virtual {p0, p3}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->sort(I)V

    .line 362
    :cond_0
    return-void
.end method

.method public loadFileInfoList(Ljava/lang/String;I)V
    .locals 4

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 316
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mModifiedTime:J

    .line 318
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 319
    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v2

    .line 321
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/manager/MountManager;->isMountPoint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_1
    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 326
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/manager/MountManager;->isRootPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 327
    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->sort(I)V

    .line 330
    :cond_3
    return-void
.end method

.method public loadFileInfoList(Ljava/lang/String;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;I)V"
        }
    .end annotation

    .line 339
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    .line 342
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mModifiedTime:J

    .line 343
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 344
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jrdcom/filemanager/manager/MountManager;->isRootPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 345
    invoke-virtual {p0, p3}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->sort(I)V

    .line 348
    :cond_0
    return-void
.end method

.method public removeAllItem()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 379
    return-void
.end method

.method public removeHideItem(Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddHideFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public removeHideItemList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 196
    return-void
.end method

.method public removeItem(Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSearchFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategoryFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mBeforeSearchList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public saveListBeforeSearch()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mBeforeSearchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 424
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mBeforeSearchList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 425
    return-void
.end method

.method public savePasteList(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategory:I

    .line 93
    iput p2, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteOperation:I

    .line 94
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 95
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    return-void
.end method

.method public setSafeFileInfo(Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSafeFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 549
    return-void
.end method

.method public showCategoryResultView(I)V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 530
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategoryFilesInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 531
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->sort(I)V

    .line 532
    return-void
.end method

.method public sort(I)V
    .locals 1

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-static {p1}, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->getInstance(I)Lcom/jrdcom/filemanager/manager/FileInfoComparator;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception p1

    .line 447
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 444
    :catch_1
    move-exception p1

    .line 445
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 448
    :goto_0
    nop

    .line 449
    :goto_1
    return-void
.end method

.method public updateCategoryList(I)V
    .locals 2

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategoryFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 500
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 501
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 502
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategoryFilesInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 503
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 504
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->sort(I)V

    .line 505
    return-void
.end method

.method public updateFileInfoList(Ljava/lang/String;I)V
    .locals 5

    .line 225
    :try_start_0
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    .line 226
    if-eqz p1, :cond_0

    .line 227
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mModifiedTime:J

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 230
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 231
    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 232
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_2
    nop

    :goto_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 239
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 244
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 245
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 246
    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->sort(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 249
    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 247
    :catch_1
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 251
    :goto_2
    nop

    .line 252
    :goto_3
    return-void
.end method

.method public updateOneCategoryFileInfoList(I)Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 3

    .line 293
    nop

    .line 294
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 296
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 299
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 300
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 301
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 302
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->sort(I)V

    .line 304
    return-object v0
.end method

.method public updateOneFileInfoList(Ljava/lang/String;I)Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 2

    .line 265
    nop

    .line 266
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    .line 267
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mModifiedTime:J

    .line 268
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 270
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_0
    const/4 p1, 0x0

    .line 274
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 275
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 276
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 278
    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->sort(I)V

    .line 280
    return-object p1
.end method

.method public updateSearchList(I)V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSearchFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 458
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 459
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSearchFilesInfoListTS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 460
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSearchFilesInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSearchFilesInfoListTS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mSearchFilesInfoListTS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 462
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->sort(I)V

    .line 463
    return-void
.end method

.method public updatingCategoryList(I)V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 509
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mCategoryFilesInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 510
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 511
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->sort(I)V

    .line 512
    return-void
.end method

.method public wakeWaittingTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 5

    .line 753
    if-eqz p1, :cond_2

    .line 754
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->removeRunningTask(J)V

    .line 755
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v0, :cond_0

    .line 756
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 763
    :cond_2
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTaskSize()I

    move-result p1

    .line 764
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->getWaittingTaskSize()I

    move-result v0

    .line 765
    nop

    .line 766
    if-lez v0, :cond_4

    .line 768
    const/4 v1, 0x2

    if-ge p1, v1, :cond_4

    .line 769
    sub-int/2addr v1, p1

    if-ge v1, v0, :cond_3

    .line 770
    move v0, v1

    goto :goto_0

    .line 772
    :cond_3
    nop

    .line 774
    :goto_0
    const/4 p1, 0x0

    move v1, p1

    :goto_1
    if-ge v1, v0, :cond_4

    .line 775
    :try_start_0
    invoke-static {v1}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->getWaittingTask(I)Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v2

    .line 776
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->getTaskTime()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->addRunningTask(JLcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 777
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, p1, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 778
    invoke-static {v2}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->removeWaittingTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 783
    :catch_0
    move-exception p1

    .line 784
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 781
    :catch_1
    move-exception p1

    .line 782
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 787
    :cond_4
    :goto_2
    return-void
.end method
