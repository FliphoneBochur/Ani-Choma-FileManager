.class public Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;
.super Lcom/jrdcom/filemanager/task/BaseAsyncTask;
.source "SetRootSizeTextTask.java"


# instance fields
.field private mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private mFilePath:Ljava/lang/String;

.field private mStorageTaskInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/TaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStroageMode:I


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mStroageMode:I

    .line 36
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 37
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getTaskInfoList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mStorageTaskInfoList:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 12

    .line 42
    nop

    .line 43
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mStorageTaskInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 44
    nop

    .line 45
    nop

    .line 49
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mStorageTaskInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 50
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSrcPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mFilePath:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getAdapterMode()I

    move-result v1

    iput v1, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mStroageMode:I

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    nop

    .line 54
    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    .line 56
    :goto_1
    cmp-long v8, v4, v2

    if-gtz v8, :cond_0

    :try_start_0
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v8

    iget-object v9, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/jrdcom/filemanager/manager/MountManager;->isMountPoint(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 57
    new-instance v4, Landroid/os/StatFs;

    iget-object v5, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :try_start_1
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    .line 61
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    .line 62
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    goto :goto_2

    .line 63
    :catch_0
    move-exception v5

    .line 64
    :try_start_2
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    .line 65
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    .line 67
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 69
    :goto_2
    mul-long/2addr v4, v8

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception v4

    .line 72
    nop

    .line 73
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v4, v2

    move-wide v2, v6

    goto :goto_3

    .line 74
    :cond_0
    move-wide v2, v6

    .line 75
    :goto_3
    iget-object v6, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/jrdcom/filemanager/utils/FileUtils;->sizeToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 76
    iget-object v7, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mContext:Landroid/content/Context;

    sub-long v8, v4, v2

    invoke-static {v7, v8, v9}, Lcom/jrdcom/filemanager/utils/FileUtils;->sizeToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 77
    iget v8, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mStroageMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c007d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/ "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 85
    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :goto_4
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    iget v6, p0, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->mStroageMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getListener()Lcom/jrdcom/filemanager/listener/OperationEventListener;

    move-result-object v7

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;JJLcom/jrdcom/filemanager/utils/TaskInfo;)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v1

    invoke-interface {v7, v1}, Lcom/jrdcom/filemanager/listener/OperationEventListener;->onTaskProgress(Lcom/jrdcom/filemanager/task/ProgressInfo;)V

    goto :goto_5

    .line 92
    :cond_2
    if-ne v6, v9, :cond_3

    .line 93
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getListener()Lcom/jrdcom/filemanager/listener/OperationEventListener;

    move-result-object v7

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;JJLcom/jrdcom/filemanager/utils/TaskInfo;)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v1

    invoke-interface {v7, v1}, Lcom/jrdcom/filemanager/listener/OperationEventListener;->onTaskProgress(Lcom/jrdcom/filemanager/task/ProgressInfo;)V

    .line 43
    :cond_3
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 96
    :cond_4
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/SetRootSizeTextTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method
