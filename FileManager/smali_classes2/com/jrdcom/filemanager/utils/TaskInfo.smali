.class public Lcom/jrdcom/filemanager/utils/TaskInfo;
.super Ljava/lang/Object;
.source "TaskInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private countCallback:Lcom/jrdcom/filemanager/manager/CategoryManager$CountTextCallback;

.field private createTaskTime:J

.field private errorCode:I

.field private folderCountCallback:Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;

.field private isShowDir:Z

.field private mAdapterMode:I

.field private mAllSize:J

.field private mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private mBaseTaskHashcode:I

.field private mBaseTaskType:I

.field private mCategoryIndex:I

.field private mDesPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDestPath:Ljava/lang/String;

.field private mDrmType:I

.field private mDstFile:Lcom/jrdcom/filemanager/utils/FileInfo;

.field private mFileFilter:I

.field private mFileSize:J

.field private mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

.field private mProgressInfo:Lcom/jrdcom/filemanager/task/ProgressInfo;

.field private mRefreshMode:I

.field private mResultCode:I

.field private mSearchContent:Ljava/lang/String;

.field private mSourceFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcFile:Lcom/jrdcom/filemanager/utils/FileInfo;

.field private mSrcPath:Ljava/lang/String;

.field private mStoragePercent:Landroid/widget/TextView;

.field private mStorageProgress:Landroid/widget/ProgressBar;

.field private mStorageSize:Landroid/widget/TextView;

.field private mStorageTask:Landroid/os/AsyncTask;

.field private mTask:Lcom/jrdcom/filemanager/task/BaseAsyncTask;

.field private mTitleStr:Ljava/lang/String;

.field private safeCountCallback:Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;

.field private taskInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/TaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mCategoryIndex:I

    .line 96
    iput p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mBaseTaskType:I

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/jrdcom/filemanager/FileManagerApplication;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mCategoryIndex:I

    .line 104
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mCategoryIndex:I

    .line 108
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 109
    iput-object p2, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    .line 110
    iput p3, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mBaseTaskType:I

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mCategoryIndex:I

    .line 100
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mSourceFileList:Ljava/util/List;

    .line 101
    return-void
.end method


# virtual methods
.method public getAdapterMode()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mAdapterMode:I

    return v0
.end method

.method public getAllSize()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mAllSize:J

    return-wide v0
.end method

.method public getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    return-object v0
.end method

.method public getBaseTaskHashcode()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mBaseTaskHashcode:I

    return v0
.end method

.method public getBaseTaskType()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mBaseTaskType:I

    return v0
.end method

.method public getCategoryIndex()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mCategoryIndex:I

    return v0
.end method

.method public getCountCallback()Lcom/jrdcom/filemanager/manager/CategoryManager$CountTextCallback;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->countCallback:Lcom/jrdcom/filemanager/manager/CategoryManager$CountTextCallback;

    return-object v0
.end method

.method public getCreateTaskTime()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->createTaskTime:J

    return-wide v0
.end method

.method public getDesPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mDesPathList:Ljava/util/List;

    return-object v0
.end method

.method public getDestPath()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mDestPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmType()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mDrmType:I

    return v0
.end method

.method public getDstFile()Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mDstFile:Lcom/jrdcom/filemanager/utils/FileInfo;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->errorCode:I

    return v0
.end method

.method public getFileFilter()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mFileFilter:I

    return v0
.end method

.method public getFileInfoManager()Lcom/jrdcom/filemanager/manager/FileInfoManager;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mFileSize:J

    return-wide v0
.end method

.method public getFolderCountCallback()Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->folderCountCallback:Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;

    return-object v0
.end method

.method public getListener()Lcom/jrdcom/filemanager/listener/OperationEventListener;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    return-object v0
.end method

.method public getProgressInfo()Lcom/jrdcom/filemanager/task/ProgressInfo;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mProgressInfo:Lcom/jrdcom/filemanager/task/ProgressInfo;

    return-object v0
.end method

.method public getRefreshMode()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mRefreshMode:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mResultCode:I

    return v0
.end method

.method public getSafeCountCallback()Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->safeCountCallback:Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;

    return-object v0
.end method

.method public getSearchContent()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mSearchContent:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mSourceFileList:Ljava/util/List;

    return-object v0
.end method

.method public getSrcFile()Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mSrcFile:Lcom/jrdcom/filemanager/utils/FileInfo;

    return-object v0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mSrcPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStoragePercent()Landroid/widget/TextView;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mStoragePercent:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStorageProgress()Landroid/widget/ProgressBar;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mStorageProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getStorageSize()Landroid/widget/TextView;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mStorageSize:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStorageTask()Landroid/os/AsyncTask;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mStorageTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method public getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mTask:Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    return-object v0
.end method

.method public getTaskInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/TaskInfo;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->taskInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getTitleStr()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mTitleStr:Ljava/lang/String;

    return-object v0
.end method

.method public isShowDir()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->isShowDir:Z

    return v0
.end method

.method public setAdapterMode(I)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mAdapterMode:I

    .line 273
    return-void
.end method

.method public setAllSize(J)V
    .locals 0

    .line 158
    iput-wide p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mAllSize:J

    .line 159
    return-void
.end method

.method public setApplication(Lcom/jrdcom/filemanager/FileManagerApplication;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 309
    return-void
.end method

.method public setBaseTaskHashcode(I)V
    .locals 0

    .line 300
    iput p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mBaseTaskHashcode:I

    .line 301
    return-void
.end method

.method public setBaseTaskType(I)V
    .locals 0

    .line 316
    iput p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mBaseTaskType:I

    .line 317
    return-void
.end method

.method public setCategoryIndex(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mCategoryIndex:I

    .line 225
    return-void
.end method

.method public setCountCallback(Lcom/jrdcom/filemanager/manager/CategoryManager$CountTextCallback;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->countCallback:Lcom/jrdcom/filemanager/manager/CategoryManager$CountTextCallback;

    .line 84
    return-void
.end method

.method public setCreateTaskTime(J)V
    .locals 0

    .line 134
    iput-wide p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->createTaskTime:J

    .line 135
    return-void
.end method

.method public setDesPathList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mDesPathList:Ljava/util/List;

    .line 215
    return-void
.end method

.method public setDestPath(Ljava/lang/String;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mDestPath:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setDrmType(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mDrmType:I

    .line 233
    return-void
.end method

.method public setDstFile(Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mDstFile:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 265
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->errorCode:I

    .line 175
    return-void
.end method

.method public setFileFilter(I)V
    .locals 0

    .line 348
    iput p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mFileFilter:I

    .line 349
    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 150
    iput-wide p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mFileSize:J

    .line 151
    return-void
.end method

.method public setFolderCountCallback(Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->folderCountCallback:Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;

    .line 88
    return-void
.end method

.method public setListener(Lcom/jrdcom/filemanager/listener/OperationEventListener;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mListener:Lcom/jrdcom/filemanager/listener/OperationEventListener;

    .line 293
    return-void
.end method

.method public setProgressInfo(Lcom/jrdcom/filemanager/task/ProgressInfo;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mProgressInfo:Lcom/jrdcom/filemanager/task/ProgressInfo;

    .line 183
    return-void
.end method

.method public setRefreshMode(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mRefreshMode:I

    .line 167
    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .line 280
    iput p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mResultCode:I

    .line 281
    return-void
.end method

.method public setSafeCountCallback(Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->safeCountCallback:Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;

    .line 66
    return-void
.end method

.method public setSearchContent(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mSearchContent:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setShowDir(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->isShowDir:Z

    .line 241
    return-void
.end method

.method public setSourceFileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mSourceFileList:Ljava/util/List;

    .line 333
    return-void
.end method

.method public setSrcFile(Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mSrcFile:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 257
    return-void
.end method

.method public setSrcPath(Ljava/lang/String;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mSrcPath:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setStoragePercent(Landroid/widget/TextView;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mStoragePercent:Landroid/widget/TextView;

    .line 199
    return-void
.end method

.method public setStorageProgress(Landroid/widget/ProgressBar;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mStorageProgress:Landroid/widget/ProgressBar;

    .line 207
    return-void
.end method

.method public setStorageSize(Landroid/widget/TextView;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mStorageSize:Landroid/widget/TextView;

    .line 191
    return-void
.end method

.method public setStorageTask(Landroid/os/AsyncTask;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mStorageTask:Landroid/os/AsyncTask;

    .line 119
    return-void
.end method

.method public setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mTask:Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    .line 127
    return-void
.end method

.method public setTaskInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/TaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->taskInfoList:Ljava/util/List;

    .line 74
    return-void
.end method

.method public setTitleStr(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/TaskInfo;->mTitleStr:Ljava/lang/String;

    .line 143
    return-void
.end method
