.class public Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;
.super Lcom/jrdcom/filemanager/task/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/task/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtractFileTask"
.end annotation


# instance fields
.field private condition:I

.field protected dstFolder:Ljava/lang/String;

.field private folderName:Ljava/lang/String;

.field private mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

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


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 1260
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1251
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->condition:I

    .line 1261
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 1262
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSourceFileList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mSrcList:Ljava/util/List;

    .line 1263
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->dstFolder:Ljava/lang/String;

    .line 1264
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 1265
    return-void
.end method

.method static synthetic access$200(Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;)I
    .locals 0

    .line 1242
    iget p0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->condition:I

    return p0
.end method

.method static synthetic access$202(Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;I)I
    .locals 0

    .line 1242
    iput p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->condition:I

    return p1
.end method

.method static synthetic access$300(Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;[Ljava/lang/Object;)V
    .locals 0

    .line 1242
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ExtractFile()I
    .locals 15

    .line 1290
    nop

    .line 1291
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mSrcList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 1292
    nop

    .line 1293
    return v2

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1296
    iget-object v3, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jrdcom/filemanager/utils/FileUtils;->getOriginalFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1297
    nop

    .line 1298
    iget-object v4, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->folderName:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->dstFolder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->folderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1301
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->dstFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1304
    :goto_0
    nop

    .line 1305
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1306
    move v5, v1

    move-object v6, v3

    .line 1307
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    .line 1308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1309
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1310
    add-int/2addr v5, v8

    goto :goto_1

    .line 1312
    :cond_2
    nop

    .line 1313
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1314
    nop

    .line 1315
    return v2

    .line 1317
    :cond_3
    iget-object v3, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1318
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1319
    nop

    .line 1320
    return v2

    .line 1321
    :cond_4
    const-string v4, "zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1322
    invoke-static {v8}, Lcom/jrdcom/filemanager/compress/CommonCompress;->createCompressType(I)Lcom/jrdcom/filemanager/compress/CommonCompress;

    move-result-object v2

    iput-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

    goto :goto_2

    .line 1323
    :cond_5
    const-string v4, "tar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1324
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/jrdcom/filemanager/compress/CommonCompress;->createCompressType(I)Lcom/jrdcom/filemanager/compress/CommonCompress;

    move-result-object v2

    iput-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

    goto :goto_2

    .line 1325
    :cond_6
    const-string v4, "rar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1326
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/jrdcom/filemanager/compress/CommonCompress;->createCompressType(I)Lcom/jrdcom/filemanager/compress/CommonCompress;

    move-result-object v2

    iput-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

    .line 1332
    :goto_2
    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v2

    .line 1333
    iget-object v3, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v3

    .line 1334
    iget-object v5, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mSrcList:Ljava/util/List;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 1335
    new-array v5, v8, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    iget-object v7, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v7}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v10, v2

    move-wide v11, v3

    invoke-static/range {v9 .. v14}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {p0, v5}, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 1338
    :cond_7
    iget-object v5, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

    new-instance v7, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask$1;

    invoke-direct {v7, p0, v2, v3, v4}, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask$1;-><init>(Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;IJ)V

    invoke-virtual {v5, v7}, Lcom/jrdcom/filemanager/compress/CommonCompress;->setObserver(Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;)V

    .line 1357
    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/jrdcom/filemanager/compress/CommonCompress;->doUnArchive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1358
    goto :goto_3

    .line 1360
    :cond_8
    const/16 v1, -0x18

    .line 1363
    :goto_3
    if-ltz v1, :cond_9

    .line 1364
    iget-object v5, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->dstFolder:Ljava/lang/String;

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v8, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget-object v9, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    const/4 v10, -0x1

    invoke-static/range {v5 .. v10}, Lcom/jrdcom/filemanager/utils/CommonUtils;->addCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileListCache;Lcom/jrdcom/filemanager/manager/MountManager;I)V

    .line 1365
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->copyMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$CopyMediaStoreHelper;->updateRecords()V

    .line 1368
    :cond_9
    return v1

    .line 1328
    :cond_a
    nop

    .line 1329
    return v2
.end method

.method public cancel()V
    .locals 1

    .line 1255
    invoke-super {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask;->cancel()V

    .line 1256
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mCompress:Lcom/jrdcom/filemanager/compress/CommonCompress;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/compress/CommonCompress;->cancel()V

    .line 1257
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 1

    .line 1276
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 1277
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setBaseTaskHashcode(I)V

    .line 1278
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSearchContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->folderName:Ljava/lang/String;

    .line 1279
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1280
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/16 v0, -0x11

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 1281
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1

    .line 1283
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->ExtractFile()I

    move-result p1

    .line 1284
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 1286
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1242
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method

.method public isSourceExists()Z
    .locals 3

    .line 1268
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mSrcList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1271
    :cond_0
    return v1

    .line 1269
    :cond_1
    :goto_0
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->mSrcList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isMountPoint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
