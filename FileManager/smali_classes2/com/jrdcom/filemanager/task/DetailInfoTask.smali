.class public Lcom/jrdcom/filemanager/task/DetailInfoTask;
.super Lcom/jrdcom/filemanager/task/BaseAsyncTask;
.source "DetailInfoTask.java"


# instance fields
.field private mDetailFileType:I

.field private mDetailTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field private final mDetailfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 34
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSrcFile()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/DetailInfoTask;->mDetailfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 35
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getAdapterMode()I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/task/DetailInfoTask;->mDetailFileType:I

    .line 36
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/DetailInfoTask;->mDetailTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 37
    return-void
.end method

.method private static getSize(Ljava/io/File;)J
    .locals 2

    .line 54
    nop

    .line 56
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0}, Lcom/jrdcom/filemanager/task/DetailInfoTask;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 66
    :goto_0
    goto :goto_1

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    .line 67
    :goto_1
    return-wide v0
.end method

.method private static sizeOfDirectory(Ljava/io/File;)J
    .locals 6

    .line 71
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    nop

    .line 83
    invoke-static {p0}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 85
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 86
    return-wide v0

    .line 89
    :cond_0
    array-length v2, p0

    .line 90
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 91
    aget-object v4, p0, v3

    .line 93
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    invoke-static {v4}, Lcom/jrdcom/filemanager/task/DetailInfoTask;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 90
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_2
    return-wide v0

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not a directory"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 2

    .line 41
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/DetailInfoTask;->mDetailTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/DetailInfoTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 42
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/DetailInfoTask;->mDetailTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/DetailInfoTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setBaseTaskHashcode(I)V

    .line 43
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/DetailInfoTask;->mDetailfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/DetailInfoTask;->mDetailTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/DetailInfoTask;->mDetailfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/task/DetailInfoTask;->getSize(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setFileSize(J)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/DetailInfoTask;->mDetailTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/DetailInfoTask;->mDetailfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setFileSize(J)V

    .line 49
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/DetailInfoTask;->mDetailTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 50
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/DetailInfoTask;->mDetailTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/DetailInfoTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method
