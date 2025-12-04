.class public Lcom/jrdcom/filemanager/task/SearchTask;
.super Lcom/jrdcom/filemanager/task/BaseAsyncTask;
.source "SearchTask.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static searchResultCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static searchResultExpireMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isNoExpireLimited:Z

.field private isSupportPrivateMode:Z

.field private mCategory:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFilesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Ljava/lang/String;

.field private mSearchName:Ljava/lang/String;

.field private mSearchResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field private mSearchType:I

.field private pathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lcom/jrdcom/filemanager/task/SearchTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/task/SearchTask;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultCacheMap:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultExpireMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->isNoExpireLimited:Z

    .line 48
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->isSupportPrivateMode:Z

    .line 53
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 54
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSourceFileList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mFilesInfoList:Ljava/util/List;

    .line 57
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSearchContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCategoryIndex()I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mCategory:I

    .line 59
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDesPathList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->pathList:Ljava/util/List;

    .line 60
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getFileFilter()I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchType:I

    .line 61
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mPath:Ljava/lang/String;

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x3e8

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchResult:Ljava/util/List;

    .line 63
    iget p1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/jrdcom/filemanager/task/SearchTask;->isExpire()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    sget-object p1, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultCacheMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 66
    sget-object p1, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultExpireMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 69
    :cond_0
    return-void
.end method

.method private isExpire()Z
    .locals 8

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 426
    nop

    .line 427
    sget-object v2, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultExpireMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 428
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 429
    sget-object v6, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultExpireMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-gez v6, :cond_0

    .line 430
    sget-object v3, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultExpireMap:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 432
    :cond_0
    goto :goto_0

    .line 434
    :cond_1
    sub-long/2addr v0, v3

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 435
    const/4 v0, 0x1

    return v0

    .line 437
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public categorySearch()I
    .locals 9

    .line 351
    nop

    .line 352
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 354
    sget-object v1, Lcom/jrdcom/filemanager/task/SearchTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Category search Source list size ==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    sget-object v1, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultCacheMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 357
    iget-boolean v2, p0, Lcom/jrdcom/filemanager/task/SearchTask;->isNoExpireLimited:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v2, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultExpireMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v2, v4, v6

    if-gez v2, :cond_3

    sget v2, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/16 v4, 0xc

    if-eq v2, v4, :cond_3

    .line 359
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 360
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v2

    .line 362
    if-eqz v2, :cond_0

    .line 363
    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    goto :goto_1

    .line 365
    :cond_0
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    .line 367
    :goto_1
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(Ljava/io/File;)V

    .line 368
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrmFile()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->setDrm(Z)V

    .line 369
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 370
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isPrivateFile()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 371
    iget-object v2, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchResult:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_1
    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchResult:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addToSearchResultList(Ljava/util/List;)V

    goto/16 :goto_4

    .line 376
    :cond_3
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mFilesInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 378
    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_8

    .line 379
    iget-boolean v4, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mCancelled:Z

    if-eqz v4, :cond_4

    .line 380
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/task/SearchTask;->cancel(Z)Z

    .line 381
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/SearchTask;->onCancelled()V

    .line 382
    const/4 v0, -0x7

    return v0

    .line 384
    :cond_4
    iget-object v4, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    .line 385
    const/4 v0, -0x1

    return v0

    .line 387
    :cond_5
    iget-object v4, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mFilesInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 388
    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 389
    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 390
    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v7

    .line 391
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 392
    new-instance v5, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v8, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8, v6}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 394
    if-eqz v7, :cond_6

    .line 395
    invoke-virtual {v5, v7}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    goto :goto_3

    .line 397
    :cond_6
    invoke-virtual {v5}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    .line 399
    :goto_3
    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->isPrivateFile()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 400
    invoke-virtual {v5}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->isHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 401
    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(Ljava/io/File;)V

    .line 402
    iget-object v4, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchResult:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 410
    :cond_8
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchResult:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 411
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchResult:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addToSearchResultList(Ljava/util/List;)V

    .line 412
    sget-object v1, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultCacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_9

    .line 413
    sget-object v1, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultCacheMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchResult:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v1, Lcom/jrdcom/filemanager/task/SearchTask;->searchResultExpireMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_9
    :goto_4
    return v3
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 3

    .line 74
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/SearchTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 75
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/SearchTask;->getTask()Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setBaseTaskHashcode(I)V

    .line 76
    nop

    .line 77
    iget p1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 78
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->isShowDir()Z

    move-result p1

    iput-boolean p1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->isNoExpireLimited:Z

    .line 79
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/SearchTask;->categorySearch()I

    move-result p1

    goto :goto_0

    .line 80
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 81
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    sget-boolean v2, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    invoke-static {p1, v0, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    iput-boolean v1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->isSupportPrivateMode:Z

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/SearchTask;->search()I

    move-result p1

    goto :goto_0

    .line 85
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 86
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 87
    iput-boolean v1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->isSupportPrivateMode:Z

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/SearchTask;->globalSearch()I

    move-result p1

    goto :goto_0

    .line 85
    :cond_4
    const/4 p1, 0x0

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->returnTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;I)V

    .line 93
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/SearchTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method

.method public globalSearch()I
    .locals 22

    .line 233
    move-object/from16 v1, p0

    .line 234
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isDRMColumn(Landroid/content/Context;)Z

    move-result v2

    .line 235
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 236
    nop

    .line 237
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isDRMColumn(Landroid/content/Context;)Z

    move-result v0

    const-string v10, "tct_is_private"

    const-string v11, "is_drm"

    const-string v12, "mime_type"

    const-string v13, "_data"

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/jrdcom/filemanager/task/SearchTask;->isSupportPrivateMode:Z

    if-eqz v0, :cond_0

    .line 238
    filled-new-array {v13, v12, v11, v10}, [Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z

    if-eqz v0, :cond_1

    .line 241
    filled-new-array {v13, v12, v11}, [Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_0

    .line 243
    :cond_1
    iget-boolean v0, v1, Lcom/jrdcom/filemanager/task/SearchTask;->isSupportPrivateMode:Z

    if-eqz v0, :cond_2

    .line 244
    filled-new-array {v13, v12, v10}, [Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_0

    .line 247
    :cond_2
    filled-new-array {v13, v12}, [Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 250
    :goto_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 252
    const/16 v16, 0x0

    move/from16 v3, v16

    :goto_1
    if-ge v3, v0, :cond_5

    .line 253
    iget-object v4, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 254
    const/16 v5, 0x5f

    if-eq v4, v5, :cond_4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_3

    goto :goto_2

    .line 258
    :cond_3
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 255
    :cond_4
    :goto_2
    const/16 v5, 0x2f

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 261
    :cond_5
    move/from16 v8, v16

    :goto_4
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/SearchTask;->pathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_16

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/SearchTask;->pathList:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 264
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 265
    const-string v5, "//"

    if-eqz v3, :cond_6

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 266
    const-string v4, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 267
    move-object v4, v5

    .line 269
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    const-string v6, "_data like "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 273
    const-string v5, " escape \'/\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_7
    iget-object v5, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v5, v5, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    if-nez v5, :cond_8

    .line 276
    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_data not like "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".%"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-static {v0, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 281
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 282
    iget-object v3, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object v4, v9

    move-object v5, v14

    move/from16 v17, v8

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 283
    if-nez v3, :cond_9

    .line 284
    const/4 v0, -0x1

    return v0

    .line 290
    :cond_9
    :try_start_0
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 291
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 292
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 293
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 294
    iget-boolean v6, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mCancelled:Z

    const/4 v7, -0x7

    const/4 v8, 0x1

    if-eqz v6, :cond_b

    .line 295
    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/task/SearchTask;->cancel(Z)Z

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/SearchTask;->onCancelled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    nop

    .line 340
    if-eqz v3, :cond_a

    .line 341
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_a
    return v7

    .line 299
    :cond_b
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/task/SearchTask;->isCancelled()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_d

    .line 300
    nop

    .line 340
    if-eqz v3, :cond_c

    .line 341
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_c
    return v7

    .line 302
    :cond_d
    :try_start_2
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 304
    nop

    .line 305
    if-eqz v2, :cond_e

    .line 306
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_6

    .line 305
    :cond_e
    move/from16 v8, v16

    .line 308
    :goto_6
    nop

    .line 309
    move/from16 v19, v0

    iget-boolean v0, v1, Lcom/jrdcom/filemanager/task/SearchTask;->isSupportPrivateMode:Z

    if-eqz v0, :cond_f

    .line 310
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 309
    :cond_f
    move/from16 v0, v16

    .line 313
    :goto_7
    move/from16 v20, v2

    :try_start_3
    new-instance v2, Lcom/jrdcom/filemanager/utils/FileInfo;

    move/from16 v21, v4

    iget-object v4, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v6}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 317
    invoke-virtual {v2, v7}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(Ljava/io/File;)V

    .line 320
    const/4 v4, 0x1

    if-ne v8, v4, :cond_10

    .line 321
    invoke-virtual {v2, v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->setDrm(Z)V

    .line 324
    :cond_10
    if-ne v0, v4, :cond_11

    .line 325
    invoke-virtual {v2, v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 327
    :cond_11
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 329
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_12
    move/from16 v0, v19

    move/from16 v2, v20

    move/from16 v4, v21

    goto/16 :goto_5

    .line 336
    :cond_13
    move/from16 v20, v2

    iget-object v0, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchResult:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 340
    if-eqz v3, :cond_14

    .line 341
    goto :goto_9

    .line 337
    :catch_0
    move-exception v0

    goto :goto_8

    .line 340
    :catchall_0
    move-exception v0

    goto :goto_a

    .line 337
    :catch_1
    move-exception v0

    move/from16 v20, v2

    .line 338
    :goto_8
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 340
    if-eqz v3, :cond_14

    .line 341
    :goto_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_14
    add-int/lit8 v8, v17, 0x1

    move/from16 v2, v20

    goto/16 :goto_4

    .line 340
    :goto_a
    if-eqz v3, :cond_15

    .line 341
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_15
    throw v0

    .line 345
    :cond_16
    iget-object v0, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v1, v1, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchResult:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addToSearchResultList(Ljava/util/List;)V

    .line 346
    return v16
.end method

.method public search()I
    .locals 15

    .line 98
    nop

    .line 99
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 100
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isDRMColumn(Landroid/content/Context;)Z

    move-result v0

    .line 101
    nop

    .line 102
    const-string v7, "tct_is_private"

    const-string v8, "is_drm"

    const-string v9, "mime_type"

    const-string v10, "_data"

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->isSupportPrivateMode:Z

    if-eqz v1, :cond_0

    .line 103
    filled-new-array {v10, v9, v8, v7}, [Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z

    if-eqz v1, :cond_1

    .line 106
    filled-new-array {v10, v9, v8}, [Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    .line 108
    :cond_1
    iget-boolean v1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->isSupportPrivateMode:Z

    if-eqz v1, :cond_2

    .line 109
    filled-new-array {v10, v9, v7}, [Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    .line 112
    :cond_2
    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 116
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    iget-object v5, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 120
    const/4 v11, 0x0

    move v6, v11

    :goto_1
    if-ge v6, v5, :cond_5

    .line 121
    iget-object v12, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchName:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 122
    const/16 v13, 0x5f

    if-eq v12, v13, :cond_4

    const/16 v13, 0x25

    if-ne v12, v13, :cond_3

    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 123
    :cond_4
    :goto_2
    const/16 v13, 0x2f

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 130
    :cond_5
    iget-object v5, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mPath:Ljava/lang/String;

    .line 131
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchName:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "//"

    if-nez v12, :cond_6

    .line 134
    iget-object v5, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mPath:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 135
    move-object v6, v13

    .line 138
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 140
    const-string v12, "_data like "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {v1, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 144
    const-string v4, " escape \'/\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_7
    iget-object v4, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    if-nez v4, :cond_8

    .line 147
    const-string v4, " and "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_data not like "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {v1, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 152
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    const/4 v12, 0x0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_4

    .line 157
    :catch_0
    move-exception v1

    .line 160
    :goto_4
    if-nez v12, :cond_9

    .line 161
    const/4 v0, -0x1

    return v0

    .line 164
    :cond_9
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 165
    const/4 v2, 0x1

    new-array v3, v2, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    new-instance v4, Lcom/jrdcom/filemanager/task/ProgressInfo;

    int-to-long v5, v1

    const-string v1, ""

    invoke-direct {v4, v1, v11, v5, v6}, Lcom/jrdcom/filemanager/task/ProgressInfo;-><init>(Ljava/lang/String;IJ)V

    aput-object v4, v3, v11

    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/task/SearchTask;->publishProgress([Ljava/lang/Object;)V

    .line 168
    :try_start_1
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 169
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 173
    :goto_5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 174
    iget-boolean v5, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mCancelled:Z

    const/4 v6, -0x7

    if-eqz v5, :cond_b

    .line 175
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/task/SearchTask;->cancel(Z)Z

    .line 176
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/SearchTask;->onCancelled()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    nop

    .line 225
    if-eqz v12, :cond_a

    .line 226
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_a
    return v6

    .line 179
    :cond_b
    :try_start_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/task/SearchTask;->isCancelled()Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_d

    .line 180
    nop

    .line 225
    if-eqz v12, :cond_c

    .line 226
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_c
    return v6

    .line 182
    :cond_d
    :try_start_3
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 184
    nop

    .line 185
    if-eqz v0, :cond_e

    .line 186
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    goto :goto_6

    .line 185
    :cond_e
    move v9, v11

    .line 188
    :goto_6
    nop

    .line 189
    iget-boolean v10, p0, Lcom/jrdcom/filemanager/task/SearchTask;->isSupportPrivateMode:Z

    if-eqz v10, :cond_f

    .line 190
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    goto :goto_7

    .line 189
    :cond_f
    move v10, v11

    .line 194
    :goto_7
    invoke-static {v5}, Lcom/jrdcom/filemanager/task/SearchTask;->hideAndroidDir(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 195
    goto :goto_5

    .line 199
    :cond_10
    new-instance v13, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v14, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14, v5}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v2

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v14, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchName:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 203
    invoke-virtual {v13, v6}, Lcom/jrdcom/filemanager/utils/FileInfo;->setFileMime(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v13}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/jrdcom/filemanager/utils/FileInfo;->updateSizeAndLastModifiedTime(Ljava/io/File;)V

    .line 205
    if-ne v9, v2, :cond_11

    .line 206
    invoke-virtual {v13, v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->setDrm(Z)V

    .line 208
    :cond_11
    if-ne v10, v2, :cond_12

    .line 209
    invoke-virtual {v13, v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->setPrivateFile(Z)V

    .line 211
    :cond_12
    invoke-virtual {v13}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->isHidden()Z

    move-result v5

    invoke-virtual {v13, v5}, Lcom/jrdcom/filemanager/utils/FileInfo;->setHideFile(Z)V

    .line 212
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_13
    goto/16 :goto_5

    .line 220
    :cond_14
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchResult:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/task/SearchTask;->mSearchResult:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addToSearchResultList(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    if-eqz v12, :cond_16

    .line 226
    goto :goto_8

    .line 225
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_15

    .line 226
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_15
    throw v0

    .line 222
    :catch_1
    move-exception v0

    .line 225
    if-eqz v12, :cond_16

    .line 226
    :goto_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_16
    return v11
.end method
