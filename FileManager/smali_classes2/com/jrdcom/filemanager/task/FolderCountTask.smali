.class public Lcom/jrdcom/filemanager/task/FolderCountTask;
.super Lcom/jrdcom/filemanager/task/BaseAsyncTask;
.source "FolderCountTask.java"


# static fields
.field private static mFolderCountTask:Lcom/jrdcom/filemanager/task/FolderCountTask;


# instance fields
.field mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field private final mContext:Landroid/content/Context;

.field mFolderCallback:Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;

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
.method private constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 38
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 39
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 41
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getFolderCountCallback()Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mFolderCallback:Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;

    .line 42
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSourceFileList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mSrcList:Ljava/util/List;

    .line 43
    return-void
.end method

.method public static getInstance(Lcom/jrdcom/filemanager/utils/TaskInfo;Z)Lcom/jrdcom/filemanager/task/BaseAsyncTask;
    .locals 1

    .line 27
    if-nez p0, :cond_0

    sget-object v0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mFolderCountTask:Lcom/jrdcom/filemanager/task/FolderCountTask;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 28
    return-object v0

    .line 29
    :cond_0
    if-eqz p1, :cond_1

    .line 30
    const/4 p1, 0x0

    sput-object p1, Lcom/jrdcom/filemanager/task/FolderCountTask;->mFolderCountTask:Lcom/jrdcom/filemanager/task/FolderCountTask;

    .line 31
    new-instance p1, Lcom/jrdcom/filemanager/task/FolderCountTask;

    invoke-direct {p1, p0}, Lcom/jrdcom/filemanager/task/FolderCountTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    sput-object p1, Lcom/jrdcom/filemanager/task/FolderCountTask;->mFolderCountTask:Lcom/jrdcom/filemanager/task/FolderCountTask;

    .line 33
    :cond_1
    sget-object p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mFolderCountTask:Lcom/jrdcom/filemanager/task/FolderCountTask;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 5

    .line 47
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mSrcList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1

    .line 50
    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mSrcList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 51
    nop

    .line 52
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mSrcList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 53
    const-string v2, ""

    if-eqz v1, :cond_3

    .line 54
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 58
    const/4 v3, 0x0

    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mSrcList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_1

    .line 61
    :catch_0
    move-exception v4

    .line 62
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :goto_1
    aget-object v4, v1, p1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    aget-object v4, v1, p1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    goto :goto_3

    .line 67
    :cond_1
    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/FileUtils;->isShowHideCount([Ljava/io/File;)I

    move-result v1

    .line 68
    if-nez v1, :cond_2

    .line 69
    const-string v2, "0"

    goto :goto_2

    .line 71
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCategoryIndex(I)V

    .line 76
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSearchContent(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mFolderCallback:Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-interface {v1, v2}, Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;->folderCountTextCallback(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 50
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FolderCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FolderCountTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method
