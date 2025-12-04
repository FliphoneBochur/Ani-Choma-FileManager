.class public Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;
.super Lcom/jrdcom/filemanager/task/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/task/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddPrivateModeFileTask"
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field private isExternalFile:Z

.field private mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field mPrivateFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field protected final mSrcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private resultCode:I


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 968
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 962
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->resultCode:I

    .line 964
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->isExternalFile:Z

    .line 965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mPrivateFileList:Ljava/util/ArrayList;

    .line 969
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 970
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->context:Landroid/content/Context;

    .line 971
    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSourceFileList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mSrcList:Ljava/util/List;

    .line 975
    return-void

    .line 972
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private insertPrivateFile()Ljava/lang/Integer;
    .locals 17

    .line 992
    move-object/from16 v1, p0

    .line 993
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 994
    nop

    .line 995
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v8

    .line 996
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v9

    .line 997
    invoke-virtual {v1, v0, v8}, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->getConditionCount(II)I

    move-result v11

    .line 998
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mSrcList:Ljava/util/List;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 999
    new-array v14, v12, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move v3, v8

    move-wide v4, v9

    move v7, v0

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v2

    aput-object v2, v14, v13

    invoke-virtual {v1, v14}, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 1002
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v13

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1003
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1004
    const/4 v0, -0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1006
    :cond_1
    rem-int v2, v15, v11

    if-nez v2, :cond_2

    .line 1007
    new-array v6, v12, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-virtual {v7}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-wide v4, v9

    move-object v12, v6

    move v6, v15

    move-object/from16 v16, v7

    move v7, v0

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v2

    aput-object v2, v12, v13

    invoke-virtual {v1, v12}, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 1006
    :cond_2
    move-object/from16 v16, v7

    .line 1009
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1010
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-boolean v4, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    invoke-static {v2, v3, v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1011
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    move-object/from16 v2, v16

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 1013
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-static {v3, v2, v4, v5}, Lcom/jrdcom/filemanager/utils/CommonUtils;->addCache(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileListCache;Lcom/jrdcom/filemanager/manager/MountManager;)V

    .line 1014
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    iget-object v3, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->addPrivateModeFile(Ljava/util/ArrayList;)V

    .line 1015
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x1

    goto :goto_2

    .line 1017
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->isExternalFile:Z

    .line 1020
    :goto_2
    if-ge v15, v0, :cond_4

    .line 1021
    add-int/lit8 v15, v15, 0x1

    .line 1025
    :cond_4
    move v12, v2

    goto :goto_0

    .line 1026
    :cond_5
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->isShowDir()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultCacheMap:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 1027
    sget-object v0, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultCacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1032
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1031
    const/16 v13, -0x10

    .line 1034
    :cond_6
    :goto_3
    nop

    .line 1035
    iget-boolean v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->isExternalFile:Z

    if-eqz v0, :cond_7

    .line 1036
    const/16 v13, -0x1a

    .line 1038
    :cond_7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1034
    :goto_4
    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 1

    .line 979
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 980
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setBaseTaskHashcode(I)V

    .line 981
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 982
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 983
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/16 v0, -0x11

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 984
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1

    .line 986
    :cond_0
    invoke-direct {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->insertPrivateFile()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->resultCode:I

    .line 987
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 988
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 956
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$AddPrivateModeFileTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method
