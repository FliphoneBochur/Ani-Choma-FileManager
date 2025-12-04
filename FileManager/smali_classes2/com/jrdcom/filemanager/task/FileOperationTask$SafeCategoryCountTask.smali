.class public Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;
.super Lcom/jrdcom/filemanager/task/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/task/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafeCategoryCountTask"
.end annotation


# instance fields
.field isTctPrivateColumn:Z

.field mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field mCallback:Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 1435
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1436
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 1437
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->mContext:Landroid/content/Context;

    .line 1438
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 1439
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSafeCountCallback()Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->mCallback:Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;

    .line 1440
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isTctPrivateColumn(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->isTctPrivateColumn:Z

    .line 1441
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 2

    .line 1445
    nop

    .line 1447
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->isTctPrivateColumn:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->getSafeCountFromMedia(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 1452
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v1, p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCategoryIndex(I)V

    .line 1453
    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSearchContent(Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->mCallback:Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;

    iget-object v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;->countTextCallback(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 1447
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1457
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->mBaseTaskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1427
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/task/FileOperationTask$SafeCategoryCountTask;->doInBackground([Ljava/lang/Void;)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    return-object p1
.end method
