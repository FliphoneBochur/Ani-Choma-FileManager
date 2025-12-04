.class public Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;
.super Lcom/jrdcom/filemanager/task/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/task/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateFolderTask"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CreateFolderTask"


# instance fields
.field private mDstFolder:Ljava/lang/String;

.field mFilterType:I

.field mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 767
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 768
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 769
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mDstFolder:Ljava/lang/String;

    .line 770
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getFileFilter()I

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mFilterType:I

    .line 771
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 5

    .line 775
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 776
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setBaseTaskHashcode(I)V

    .line 777
    nop

    .line 778
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mDstFolder:Ljava/lang/String;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->checkFileName(Ljava/lang/String;)I

    move-result p1

    .line 779
    if-gez p1, :cond_0

    .line 780
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 781
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1

    .line 785
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    const-string v0, "sdcard"

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getStorageRootPath(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Ljava/lang/String;

    move-result-object p1

    .line 786
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 787
    const-string p1, "\\.+$"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 788
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 789
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mDstFolder:Ljava/lang/String;

    .line 793
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 795
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTitleStr(Ljava/lang/String;)V

    .line 796
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/4 v0, -0x4

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 797
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1

    .line 799
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mDstFolder:Ljava/lang/String;

    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    .line 801
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/4 v0, -0x5

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 802
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1

    .line 804
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 805
    new-instance v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 806
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v2

    .line 808
    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 809
    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mMediaProviderHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->scanPathforMediaStore(Ljava/lang/String;)V

    .line 810
    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/jrdcom/filemanager/utils/FileListCache;->addCacheFiles(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    .line 811
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSrcFile(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 812
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 813
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1

    .line 815
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/16 v0, -0x19

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 816
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 760
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CreateFolderTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method
