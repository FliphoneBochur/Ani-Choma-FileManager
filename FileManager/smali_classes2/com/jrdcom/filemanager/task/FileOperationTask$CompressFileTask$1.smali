.class Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask$1;
.super Ljava/lang/Object;
.source "FileOperationTask.java"

# interfaces
.implements Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->compressFile()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;

.field final synthetic val$mTaskCreateTime:J

.field final synthetic val$mTaskType:I


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;IJ)V
    .locals 0

    .line 1214
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask$1;->this$0:Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;

    iput p2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask$1;->val$mTaskType:I

    iput-wide p3, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask$1;->val$mTaskCreateTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArchiveComplete(Ljava/io/File;II)V
    .locals 9

    .line 1217
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask$1;->this$0:Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;

    invoke-static {v0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->access$000(Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask$1;->this$0:Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;

    iget v1, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask$1;->val$mTaskType:I

    invoke-virtual {v0, p3, v1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->getConditionCount(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->access$002(Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;I)I

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask$1;->this$0:Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;

    invoke-static {v0}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->access$000(Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;)I

    move-result v0

    rem-int v0, p2, v0

    if-nez v0, :cond_1

    .line 1221
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask$1;->this$0:Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/jrdcom/filemanager/task/ProgressInfo;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask$1;->val$mTaskType:I

    iget-wide v5, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask$1;->val$mTaskCreateTime:J

    move v7, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getProgressInfo(Ljava/lang/String;IJII)Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->access$100(Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;[Ljava/lang/Object;)V

    .line 1223
    :cond_1
    return-void
.end method

.method public onUnArchiveComplete(Ljava/io/File;II)V
    .locals 0

    .line 1227
    return-void
.end method
