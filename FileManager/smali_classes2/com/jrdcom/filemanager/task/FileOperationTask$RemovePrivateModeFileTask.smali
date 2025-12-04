.class public Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;
.super Lcom/jrdcom/filemanager/task/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/task/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemovePrivateModeFileTask"
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

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

    .line 1055
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1050
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->resultCode:I

    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mPrivateFileList:Ljava/util/ArrayList;

    .line 1056
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 1057
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->context:Landroid/content/Context;

    .line 1058
    if-eqz v0, :cond_0

    .line 1061
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSourceFileList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mSrcList:Ljava/util/List;

    .line 1062
    return-void

    .line 1059
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private removePrivateFile()Ljava/lang/Integer;
    .locals 17

    .line 1079
    move-object/from16 v0, p0

    .line 1080
    iget-object v1, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1081
    nop

    .line 1082
    iget-object v2, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v8

    .line 1083
    iget-object v2, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v9

    .line 1084
    invoke-virtual {v0, v1, v8}, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->getConditionCount(II)I

    move-result v11

    .line 1085
    iget-object v2, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mSrcList:Ljava/util/List;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1086
    new-array v14, v12, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    iget-object v2, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move v3, v8

    move-wide v4, v9

    move v7, v1

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v2

    aput-object v2, v14, v13

    invoke-virtual {v0, v14}, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 1089
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v13

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1091
    const/4 v0, -0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1093
    :cond_1
    rem-int v2, v15, v11

    if-nez v2, :cond_2

    .line 1094
    new-array v6, v12, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-virtual {v7}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-wide v4, v9

    move-object v12, v6

    move v6, v15

    move-object/from16 v16, v7

    move v7, v1

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v2

    aput-object v2, v12, v13

    invoke-virtual {v0, v12}, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 1093
    :cond_2
    move-object/from16 v16, v7

    .line 1096
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1097
    iget-object v3, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    move-object/from16 v2, v16

    invoke-virtual {v2, v13}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 1099
    iget-object v3, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget-object v5, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-static {v3, v2, v4, v5}, Lcom/jrdcom/filemanager/utils/CommonUtils;->addCache(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileListCache;Lcom/jrdcom/filemanager/manager/MountManager;)V

    .line 1100
    iget-object v2, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    iget-object v3, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->removePrivateModeFile(Ljava/util/ArrayList;)V

    .line 1101
    iget-object v2, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mPrivateFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1102
    if-ge v15, v1, :cond_3

    .line 1103
    add-int/lit8 v15, v15, 0x1

    .line 1107
    :cond_3
    const/4 v12, 0x1

    goto :goto_0

    .line 1109
    :cond_4
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->isShowDir()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultCacheMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 1110
    sget-object v0, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultCacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1116
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    const/16 v13, -0x10

    .line 1118
    :cond_5
    :goto_2
    nop

    .line 1120
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1118
    :goto_3
    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 1

    .line 1066
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 1067
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setBaseTaskHashcode(I)V

    .line 1068
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 1069
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1070
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/16 v0, -0x11

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 1071
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1

    .line 1073
    :cond_0
    invoke-direct {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->removePrivateFile()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->resultCode:I

    .line 1074
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 1075
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1044
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$RemovePrivateModeFileTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method
