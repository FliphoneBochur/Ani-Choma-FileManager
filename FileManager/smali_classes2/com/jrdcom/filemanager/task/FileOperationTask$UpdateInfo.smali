.class Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;
.super Ljava/lang/Object;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/task/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateInfo"
.end annotation


# static fields
.field protected static final NEED_UPDATE_TIME:I = 0xc8


# instance fields
.field private mProgressSize:J

.field private mStartOperationTime:J

.field private mTotalSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->mStartOperationTime:J

    .line 380
    iput-wide v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->mProgressSize:J

    .line 381
    iput-wide v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->mTotalSize:J

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->mStartOperationTime:J

    .line 385
    return-void
.end method


# virtual methods
.method public getProgress()J
    .locals 2

    .line 388
    iget-wide v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->mProgressSize:J

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .line 392
    iget-wide v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->mTotalSize:J

    return-wide v0
.end method

.method public needUpdate()Z
    .locals 4

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->mStartOperationTime:J

    sub-long/2addr v0, v2

    .line 405
    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->mStartOperationTime:J

    .line 407
    const/4 v0, 0x1

    return v0

    .line 409
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateProgress(J)V
    .locals 2

    .line 396
    iget-wide v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->mProgressSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->mProgressSize:J

    .line 397
    return-void
.end method

.method public updateTotal(J)V
    .locals 2

    .line 400
    iget-wide v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->mTotalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/jrdcom/filemanager/task/FileOperationTask$UpdateInfo;->mTotalSize:J

    .line 401
    return-void
.end method
