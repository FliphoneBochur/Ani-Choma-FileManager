.class public Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;
.super Lcom/jrdcom/filemanager/task/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/task/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteFilesTask"
.end annotation


# instance fields
.field private mCategory:I

.field private mContext:Landroid/content/Context;

.field private mDeleteMode:I

.field private mDeletedFilesInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 306
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mDeleteMode:I

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mCategory:I

    .line 307
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 308
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSourceFileList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mDeletedFilesInfo:Ljava/util/List;

    .line 309
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mDeleteMode:I

    .line 310
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCategoryIndex()I

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mCategory:I

    .line 313
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 18

    .line 317
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 318
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setBaseTaskHashcode(I)V

    .line 319
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v0

    .line 320
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v8

    .line 321
    const/4 v10, 0x1

    new-array v11, v10, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    const-string v2, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, v0

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v2

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-virtual {v1, v11}, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->publishProgress([Ljava/lang/Object;)V

    .line 322
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 323
    nop

    .line 325
    iget-object v2, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mDeletedFilesInfo:Ljava/util/List;

    invoke-virtual {v1, v2, v11}, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->getAllDeleteFiles(Ljava/util/List;Ljava/util/List;)I

    move-result v13

    .line 326
    if-gez v13, :cond_0

    .line 327
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v0, v13}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 328
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object v0

    .line 334
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete files : deletefileList.size()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jrdcom/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    .line 336
    const/4 v15, 0x0

    .line 337
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 338
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 339
    new-array v7, v10, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move v3, v0

    move-wide v4, v8

    move v6, v15

    move-object v15, v7

    move v7, v14

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v2

    aput-object v2, v15, v12

    invoke-virtual {v1, v15}, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->publishProgress([Ljava/lang/Object;)V

    .line 341
    :cond_1
    invoke-virtual {v1, v14, v0}, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->getConditionCount(II)I

    move-result v15

    .line 343
    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/io/File;

    .line 344
    rem-int v2, v7, v15

    if-nez v2, :cond_2

    .line 345
    new-array v4, v10, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move v3, v0

    move-object v10, v4

    move-wide v4, v8

    move-object/from16 v16, v6

    move v6, v7

    move/from16 v17, v7

    move v7, v14

    invoke-static/range {v2 .. v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v2

    aput-object v2, v10, v12

    invoke-virtual {v1, v10}, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 344
    :cond_2
    move-object/from16 v16, v6

    move/from16 v17, v7

    .line 347
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 349
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/4 v2, -0x7

    invoke-static {v0, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 350
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget-object v1, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 350
    return-object v0

    .line 352
    :cond_3
    move-object/from16 v3, v16

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->deleteFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 353
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v4, v2}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 354
    new-instance v4, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileCategory(Ljava/lang/String;)I

    move-result v3

    iget-object v5, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v5, v5, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-static {v4, v3, v5}, Lcom/jrdcom/filemanager/utils/CommonUtils;->deleteCache(Lcom/jrdcom/filemanager/utils/FileInfo;ILcom/jrdcom/filemanager/utils/FileListCache;)V

    .line 355
    invoke-static {}, Lcom/jrdcom/filemanager/manager/IconManager;->getInstance()Lcom/jrdcom/filemanager/manager/IconManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jrdcom/filemanager/manager/IconManager;->removeCache(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 357
    :cond_4
    const/16 v2, -0xd

    move v13, v2

    .line 359
    :goto_2
    add-int/lit8 v2, v14, -0x1

    move/from16 v3, v17

    if-ge v3, v2, :cond_5

    .line 360
    add-int/lit8 v7, v3, 0x1

    goto :goto_3

    .line 359
    :cond_5
    move v7, v3

    .line 363
    :goto_3
    const/4 v10, 0x1

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 364
    :catch_0
    move-exception v0

    .line 365
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    :cond_6
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 368
    nop

    .line 370
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->restoreWallpaper()V

    .line 372
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v0, v13}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 373
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object v0

    .line 367
    :goto_4
    iget-object v1, v1, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 368
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 298
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$DeleteFilesTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method
