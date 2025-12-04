.class public abstract Lcom/jrdcom/filemanager/task/BaseAsyncTask;
.super Landroid/os/AsyncTask;
.source "BaseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Lcom/jrdcom/filemanager/task/ProgressInfo;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANDROID_DIR:Ljava/lang/String; = "/storage/emulated/0/Android"

.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field protected copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

.field protected deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

.field protected mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field protected mCancelled:Z

.field protected mContext:Landroid/content/Context;

.field protected mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

.field protected mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

.field protected mMediaProviderHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

.field protected mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

.field protected mPrivateModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

.field protected mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

.field private mResultTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field protected mStartOperationTime:J

.field private task:Lcom/jrdcom/filemanager/task/BaseAsyncTask;

.field protected taskTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->CPU_COUNT:I

    .line 35
    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->CORE_POOL_SIZE:I

    .line 36
    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->MAXIMUM_POOL_SIZE:I

    .line 62
    new-instance v0, Lcom/jrdcom/filemanager/task/BaseAsyncTask$1;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask$1;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 69
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 72
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->CORE_POOL_SIZE:I

    sget v4, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->MAXIMUM_POOL_SIZE:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getFileInfoManager()Lcom/jrdcom/filemanager/manager/FileInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mResultTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 112
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 114
    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 115
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getListener()Lcom/jrdcom/filemanager/listener/OperationEventListener;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    .line 116
    new-instance p1, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mMediaProviderHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    .line 117
    new-instance v0, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;-><init>(Lcom/jrdcom/filemanager/manager/MediaStoreHelper;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    .line 118
    new-instance p1, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mMediaProviderHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    invoke-direct {p1, v0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;-><init>(Lcom/jrdcom/filemanager/manager/MediaStoreHelper;)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    .line 119
    new-instance p1, Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-direct {p1, v0}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    .line 120
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->getInstance()Ltct/util/privacymode/TctPrivacyModeHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mPrivateModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    .line 121
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 122
    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static hideAndroidDir(Ljava/lang/String;)Z
    .locals 1

    .line 92
    const-string v0, "/storage/emulated/0/Android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 93
    const/4 p0, 0x1

    return p0

    .line 95
    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->setCancel(Z)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->cancel(Z)Z

    .line 187
    return-void
.end method

.method public getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->task:Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    return-object v0
.end method

.method public getTaskTime()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->taskTime:J

    return-wide v0
.end method

.method public getmResultTaskInfo()Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mResultTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object v0
.end method

.method public needUpdate()Z
    .locals 4

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mStartOperationTime:J

    sub-long/2addr v0, v2

    .line 177
    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mStartOperationTime:J

    .line 179
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCancelled()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mResultTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/4 v1, -0x7

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setResultCode(I)V

    .line 143
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    iget-object v1, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mResultTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/listener/OperationEventListener;->onTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    .line 146
    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p1}, Lcom/jrdcom/filemanager/listener/OperationEventListener;->onTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 135
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    .line 137
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Lcom/jrdcom/filemanager/listener/OperationEventListener;->onTaskPrepare()V

    .line 129
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/jrdcom/filemanager/task/ProgressInfo;)V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 151
    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Lcom/jrdcom/filemanager/listener/OperationEventListener;->onTaskProgress(Lcom/jrdcom/filemanager/task/ProgressInfo;)V

    .line 153
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->onProgressUpdate([Lcom/jrdcom/filemanager/task/ProgressInfo;)V

    return-void
.end method

.method protected removeListener()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    .line 163
    :cond_0
    return-void
.end method

.method public setCancel(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mCancelled:Z

    .line 60
    return-void
.end method

.method public setListener(Lcom/jrdcom/filemanager/listener/OperationEventListener;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    .line 172
    return-void
.end method

.method public setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->task:Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    .line 84
    return-void
.end method

.method public setTaskTime(J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->taskTime:J

    .line 56
    return-void
.end method
