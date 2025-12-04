.class public Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;
.super Lcom/jrdcom/filemanager/task/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/task/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameTask"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RenameTask"


# instance fields
.field isExteranalStorage:Z

.field private mCategory:I

.field private mCurrentMode:I

.field private mCurrentPath:Ljava/lang/String;

.field private final mDstFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

.field mFilterType:I

.field private mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field private mSearchTextString:Ljava/lang/String;

.field private final mSrcFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 2

    .line 835
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 826
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mFilterType:I

    .line 827
    const/4 v1, -0x1

    iput v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mCategory:I

    .line 832
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->isExteranalStorage:Z

    .line 836
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 838
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDstFile()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mDstFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 839
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSrcFile()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mSrcFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 840
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getFileFilter()I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mFilterType:I

    .line 841
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSearchContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mSearchTextString:Ljava/lang/String;

    .line 842
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mCurrentPath:Ljava/lang/String;

    .line 843
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getAdapterMode()I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mCurrentMode:I

    .line 844
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCategoryIndex()I

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mCategory:I

    .line 845
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 8

    .line 849
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 850
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setBaseTaskHashcode(I)V

    .line 851
    nop

    .line 853
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mDstFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object p1

    .line 854
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mSrcFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v0

    .line 855
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mDstFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 856
    nop

    .line 858
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 859
    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 860
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 861
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v3, v6

    sub-int/2addr v3, v5

    .line 862
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 864
    :cond_0
    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/FileUtils;->checkFileName(Ljava/lang/String;)I

    move-result v2

    .line 866
    if-gez v2, :cond_1

    .line 867
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {p1, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 868
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1

    .line 871
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 872
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTitleStr(Ljava/lang/String;)V

    .line 873
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/4 v0, -0x4

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 874
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1

    .line 876
    :cond_2
    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v3, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    sget-boolean v3, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    invoke-static {v1, v2, v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 877
    :cond_3
    iput-boolean v5, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->isExteranalStorage:Z

    .line 879
    :cond_4
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 881
    invoke-static {}, Lcom/jrdcom/filemanager/manager/IconManager;->getInstance()Lcom/jrdcom/filemanager/manager/IconManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/manager/IconManager;->removeCache(Ljava/lang/String;)V

    .line 883
    new-instance v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 884
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 885
    if-eqz v2, :cond_5

    .line 886
    invoke-virtual {v1, v5}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 889
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 890
    move v2, v5

    goto :goto_0

    .line 892
    :cond_6
    move v2, v4

    .line 894
    :goto_0
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 895
    iget v6, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mCurrentMode:I

    if-ne v6, v5, :cond_7

    move v6, v5

    goto :goto_1

    :cond_7
    move v6, v4

    .line 896
    :goto_1
    if-eqz v6, :cond_8

    .line 897
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mMediaProviderHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mSrcFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 898
    invoke-virtual {v7}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 897
    invoke-virtual {p1, v0, v7, v2}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->updateInMediaStore(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 900
    :cond_8
    iget-object v7, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mMediaProviderHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->scanMedia(Ljava/lang/String;)V

    .line 901
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mMediaProviderHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->scanMedia(Ljava/lang/String;)V

    .line 903
    :goto_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, v6}, Lcom/jrdcom/filemanager/utils/FileUtils;->getSingleFileMIME(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    .line 904
    if-nez v2, :cond_9

    iget-boolean p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->isExteranalStorage:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mPrivateModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    invoke-static {p1, v3}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;->isPrivateFile(Ltct/util/privacymode/TctPrivacyModeHelper;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 905
    invoke-virtual {v1, v5}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 907
    :cond_9
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mSrcFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getFileCategory(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-static {p1, v0, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->deleteCache(Lcom/jrdcom/filemanager/utils/FileInfo;ILcom/jrdcom/filemanager/utils/FileListCache;)V

    .line 908
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-static {p1, v1, v0, v2, v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->addCache(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileListCache;Lcom/jrdcom/filemanager/manager/MountManager;Z)V

    .line 910
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    if-eqz p1, :cond_c

    .line 911
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mSrcFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 912
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mSrcFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 914
    :cond_a
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mSrcFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isDownLoadFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 915
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 917
    :cond_b
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mSrcFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isBluetoothFile(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 918
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 921
    :cond_c
    sget p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 922
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mSrcFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->removeItem(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 923
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addItem(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 924
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getCategoryFileList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    :cond_d
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {p1, v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 927
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1

    .line 929
    :cond_e
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/16 v0, -0x19

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 930
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 821
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$RenameTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method
