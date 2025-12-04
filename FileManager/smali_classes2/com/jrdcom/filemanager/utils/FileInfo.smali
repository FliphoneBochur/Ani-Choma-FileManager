.class public Lcom/jrdcom/filemanager/utils/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# static fields
.field public static mountReceiver:Z

.field public static scanFinishReceiver:Z


# instance fields
.field private folderCount:I

.field private isDrm:Z

.field private isHideFile:Z

.field private isPrivateFile:Z

.field private final mAbsolutePath:Ljava/lang/String;

.field private mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private mContext:Landroid/content/Context;

.field private mDrmType:Ljava/lang/String;

.field private mDrm_right_type:Z

.field private mFile:Ljava/io/File;

.field private mFileSizeStr:Ljava/lang/String;

.field private mFileType:I

.field private mIsDir:Z

.field private mIsZip:Z

.field private mLastModifiedTime:J

.field private mMimeType:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mParentPath:Ljava/lang/String;

.field private mSize:J

.field private orientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    .line 30
    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 38
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 74
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    .line 76
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    .line 78
    iget-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    iput-boolean p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mIsDir:Z

    .line 79
    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 82
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    .line 30
    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 38
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object p3

    check-cast p3, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object p3, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 85
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    .line 87
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    .line 89
    iget-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    iput-boolean p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mIsDir:Z

    .line 90
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 93
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    .line 30
    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 38
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 115
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    .line 117
    iput-object p5, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    .line 118
    iput-boolean p3, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mIsDir:Z

    .line 119
    iput-object p4, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mParentPath:Ljava/lang/String;

    .line 120
    iput-boolean p6, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm:Z

    .line 121
    if-nez p3, :cond_0

    .line 122
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 124
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    .line 30
    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 38
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 103
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    .line 105
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    .line 107
    iget-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    iput-boolean p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mIsDir:Z

    .line 109
    if-nez p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 112
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    .line 30
    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 38
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 127
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mContext:Landroid/content/Context;

    .line 128
    iput-object p4, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    .line 129
    iput-boolean p2, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mIsDir:Z

    .line 130
    iput-object p3, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mParentPath:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    .line 30
    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 38
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 134
    iput-object p5, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    .line 135
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mContext:Landroid/content/Context;

    .line 136
    iput-object p4, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    .line 137
    iput-boolean p2, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mIsDir:Z

    .line 138
    iput-object p3, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mParentPath:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    .line 30
    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 38
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 142
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mName:Ljava/lang/String;

    .line 143
    iput-wide p2, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 144
    iput-wide p4, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    .line 145
    iput-object p6, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    .line 146
    return-void
.end method

.method private checkFile()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    .line 152
    :cond_0
    return-void
.end method

.method private getShowPath()Ljava/lang/String;
    .locals 2

    .line 211
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 400
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 401
    return v1

    .line 403
    :cond_0
    instance-of v0, p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    if-eqz v0, :cond_1

    .line 404
    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 405
    return v1

    .line 408
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 369
    invoke-direct {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->checkFile()V

    .line 370
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileAbsolutePath()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileLastModifiedTime()J
    .locals 2

    .line 350
    iget-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mName:Ljava/lang/String;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileParentPath()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mParentPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mParentPath:Ljava/lang/String;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mParentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    return-wide v0
.end method

.method public getFileSizeStr()Ljava/lang/String;
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFileSizeStr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    invoke-static {v0, v1, v2}, Lcom/jrdcom/filemanager/utils/FileUtils;->sizeToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFileSizeStr:Ljava/lang/String;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFileSizeStr:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderCount()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->folderCount:I

    return v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 5

    .line 275
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v3

    iget-boolean v4, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm:Z

    invoke-static {v1, v0, v2, v3, v4}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMIME(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mMimeType:Ljava/lang/String;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 4

    .line 282
    nop

    .line 283
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm:Z

    iget-object v1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMIMEType(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->orientation:I

    return v0
.end method

.method public getShareMime()Ljava/lang/String;
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v2

    iget-boolean v3, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm:Z

    iget-object v4, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jrdcom/filemanager/utils/FileUtils;->getShareMimeType(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getShowPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    return-object v0
.end method

.method public getUri(Z)Landroid/net/Uri;
    .locals 3

    .line 379
    invoke-direct {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->checkFile()V

    .line 380
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasBelowN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->isShareMediaURI:Z

    if-eqz v0, :cond_1

    .line 383
    iget-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMediaContentUri(Ljava/io/File;Lcom/jrdcom/filemanager/manager/FileInfoManager;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    iget-object v1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getContentUri(Ljava/io/File;Lcom/jrdcom/filemanager/manager/FileInfoManager;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getmDrmType()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mDrmType:Ljava/lang/String;

    return-object v0
.end method

.method public getmDrm_right_type()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mDrm_right_type:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mIsDir:Z

    return v0
.end method

.method public isDrm()Z
    .locals 3

    .line 300
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mIsDir:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v0

    iget-object v2, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mAbsolutePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmFileExt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm:Z

    .line 309
    return v1

    .line 304
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm:Z

    return v0

    .line 301
    :cond_5
    :goto_1
    return v1
.end method

.method public isDrmFile()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm:Z

    return v0
.end method

.method public isHideFile()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->isHideFile:Z

    return v0
.end method

.method public isPrivateFile()Z
    .locals 1

    .line 427
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->isPrivateFile:Z

    return v0
.end method

.method public isZip()Z
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    if-nez v0, :cond_1

    .line 182
    return v2

    .line 185
    :cond_1
    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    const-string v1, "tar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 187
    const-string v1, "rar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 185
    :cond_3
    return v2

    .line 178
    :cond_4
    :goto_0
    return v2
.end method

.method public setDrm(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm:Z

    .line 315
    return-void
.end method

.method public setFileMime(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mMimeType:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mName:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setFolderCount(I)V
    .locals 0

    .line 292
    iput p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->folderCount:I

    .line 293
    return-void
.end method

.method public setHideFile(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->isHideFile:Z

    .line 167
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->orientation:I

    .line 62
    return-void
.end method

.method public setPrivateFile(Z)V
    .locals 0

    .line 431
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->isPrivateFile:Z

    .line 432
    return-void
.end method

.method public setmDrmType(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mDrmType:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setmDrm_right_type(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mDrm_right_type:Z

    .line 331
    return-void
.end method

.method public updateSizeAndLastModifiedTime(JJ)V
    .locals 0

    .line 171
    iput-wide p1, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 172
    iput-wide p3, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    .line 173
    return-void
.end method

.method public updateSizeAndLastModifiedTime(Ljava/io/File;)V
    .locals 2

    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mIsDir:Z

    .line 158
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mLastModifiedTime:J

    .line 159
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mIsDir:Z

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/utils/FileInfo;->mSize:J

    .line 163
    :cond_0
    return-void
.end method
