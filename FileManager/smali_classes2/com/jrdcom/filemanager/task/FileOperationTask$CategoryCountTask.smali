.class public Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;
.super Lcom/jrdcom/filemanager/task/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/task/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryCountTask"
.end annotation


# instance fields
.field isTctPrivateColumn:Z

.field mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field mCallback:Lcom/jrdcom/filemanager/manager/CategoryManager$CountTextCallback;

.field private final mContext:Landroid/content/Context;

.field mSizeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 1383
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1376
    const-string v0, ""

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mSizeStr:Ljava/lang/String;

    .line 1384
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 1385
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mContext:Landroid/content/Context;

    .line 1386
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 1387
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCountCallback()Lcom/jrdcom/filemanager/manager/CategoryManager$CountTextCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mCallback:Lcom/jrdcom/filemanager/manager/CategoryManager$CountTextCallback;

    .line 1388
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isTctPrivateColumn(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->isTctPrivateColumn:Z

    .line 1389
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 4

    .line 1393
    nop

    .line 1394
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1395
    const/16 p1, 0xa

    goto :goto_0

    .line 1394
    :cond_0
    const/16 p1, 0x9

    .line 1397
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_7

    .line 1399
    const-string v1, ""

    iput-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mSizeStr:Ljava/lang/String;

    .line 1400
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_2

    .line 1412
    :cond_1
    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->isTctPrivateColumn:Z

    invoke-virtual {p0, v0, v2, v3}, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->getCountFromMedia(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 1413
    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1414
    :cond_2
    const-string v2, "0"

    goto :goto_4

    .line 1401
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->getCountFromFiles(Landroid/content/Context;I)I

    move-result v2

    .line 1402
    iput-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mSizeStr:Ljava/lang/String;

    .line 1403
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1404
    iput-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mSizeStr:Ljava/lang/String;

    .line 1406
    :cond_4
    const/16 v1, 0x3e8

    const-string v3, ")"

    if-lt v2, v1, :cond_5

    .line 1407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "999+ ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_3

    .line 1409
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1411
    :goto_3
    nop

    .line 1417
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCategoryIndex(I)V

    .line 1418
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSearchContent(Ljava/lang/String;)V

    .line 1419
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mCallback:Lcom/jrdcom/filemanager/manager/CategoryManager$CountTextCallback;

    iget-object v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-interface {v1, v2}, Lcom/jrdcom/filemanager/manager/CategoryManager$CountTextCallback;->countTextCallback(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1397
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1422
    :cond_7
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1374
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CategoryCountTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method
