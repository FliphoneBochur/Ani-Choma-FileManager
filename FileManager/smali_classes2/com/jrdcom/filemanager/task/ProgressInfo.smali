.class public Lcom/jrdcom/filemanager/task/ProgressInfo;
.super Ljava/lang/Object;
.source "ProgressInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final M_MODE:I = 0x1


# instance fields
.field private avaiableSize:J

.field private isSaveMap:Z

.field private mCreateTime:J

.field private mErrorCode:I

.field private mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

.field private final mIsFailInfo:Z

.field private final mProgress:I

.field private mProgressTaskType:I

.field private final mTotal:J

.field private mUnitStyle:I

.field private mUpdateInfo:Ljava/lang/String;

.field private taskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field private totalSize:J


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mUnitStyle:I

    .line 123
    iput p1, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mErrorCode:I

    .line 124
    iput v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mProgress:I

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mTotal:J

    .line 126
    iput-boolean p2, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mIsFailInfo:Z

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/jrdcom/filemanager/utils/FileInfo;IJ)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mUnitStyle:I

    .line 110
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 111
    iput p2, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mProgress:I

    .line 112
    iput-wide p3, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mTotal:J

    .line 113
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mIsFailInfo:Z

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mUnitStyle:I

    .line 87
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mUpdateInfo:Ljava/lang/String;

    .line 88
    iput p2, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mProgress:I

    .line 89
    iput-wide p3, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mTotal:J

    .line 90
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mIsFailInfo:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mUnitStyle:I

    .line 94
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mUpdateInfo:Ljava/lang/String;

    .line 95
    iput-wide p2, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->avaiableSize:J

    .line 96
    iput v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mProgress:I

    .line 97
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mTotal:J

    .line 98
    iput-wide p4, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->totalSize:J

    .line 99
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mIsFailInfo:Z

    .line 100
    return-void
.end method


# virtual methods
.method public getAvaiableSize()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->avaiableSize:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mCreateTime:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mErrorCode:I

    return v0
.end method

.method public getFileInfo()Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    return-object v0
.end method

.method public getProgeress()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mProgress:I

    return v0
.end method

.method public getProgressTaskType()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mProgressTaskType:I

    return v0
.end method

.method public getTaskInfo()Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->taskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object v0
.end method

.method public getTotal()J
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mTotal:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->totalSize:J

    return-wide v0
.end method

.method public getUnitStyle()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mUnitStyle:I

    return v0
.end method

.method public getUpdateInfo()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mUpdateInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isFailInfo()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mIsFailInfo:Z

    return v0
.end method

.method public isSaveMap()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->isSaveMap:Z

    return v0
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mCreateTime:J

    .line 60
    return-void
.end method

.method public setProgressTaskType(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mProgressTaskType:I

    .line 68
    return-void
.end method

.method public setSaveMap(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->isSaveMap:Z

    .line 52
    return-void
.end method

.method public setTaskInfo(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->taskInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 43
    return-void
.end method

.method public setUnitStyle(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/jrdcom/filemanager/task/ProgressInfo;->mUnitStyle:I

    .line 77
    return-void
.end method
