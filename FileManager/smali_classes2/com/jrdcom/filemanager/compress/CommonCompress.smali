.class public abstract Lcom/jrdcom/filemanager/compress/CommonCompress;
.super Ljava/lang/Object;
.source "CommonCompress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;,
        Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;
    }
.end annotation


# static fields
.field public static final RAR:I = 0x3

.field public static final TAR:I = 0x2

.field public static final ZIP:I = 0x1


# instance fields
.field protected mDestPath:Ljava/lang/String;

.field protected mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;",
            ">;"
        }
    .end annotation
.end field

.field protected mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;

.field protected mPrepare:Z

.field protected mTotalSize:J

.field protected sInterrupt:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->sInterrupt:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mFileList:Ljava/util/ArrayList;

    .line 43
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mPrepare:Z

    return-void
.end method

.method public static createCompressType(I)Lcom/jrdcom/filemanager/compress/CommonCompress;
    .locals 1

    .line 75
    nop

    .line 77
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p0, Lcom/jrdcom/filemanager/compress/RarType;

    invoke-direct {p0}, Lcom/jrdcom/filemanager/compress/RarType;-><init>()V

    goto :goto_0

    .line 82
    :cond_1
    new-instance p0, Lcom/jrdcom/filemanager/compress/TarType;

    invoke-direct {p0}, Lcom/jrdcom/filemanager/compress/TarType;-><init>()V

    .line 83
    goto :goto_0

    .line 79
    :cond_2
    new-instance p0, Lcom/jrdcom/filemanager/compress/ZipType;

    invoke-direct {p0}, Lcom/jrdcom/filemanager/compress/ZipType;-><init>()V

    .line 80
    nop

    .line 90
    :goto_0
    return-object p0
.end method

.method private zipFileOrDirectory(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mFileList:Ljava/util/ArrayList;

    new-instance v1, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-wide v0, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mTotalSize:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mTotalSize:J

    goto :goto_1

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_2

    .line 174
    array-length v1, v0

    if-gtz v1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mFileList:Ljava/util/ArrayList;

    new-instance v1, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/jrdcom/filemanager/compress/CommonCompress;->zipFileOrDirectory(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->sInterrupt:Z

    .line 191
    const-string v0, "FileManager_YY"

    const-string v1, "CommonCompress->cancel:  User cancel process."

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public abstract doArchive()Z
.end method

.method public abstract doUnArchive(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public getAllFilesCount()I
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mTotalSize:J

    return-wide v0
.end method

.method public prepare(Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 147
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/io/File;

    .line 150
    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 151
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v4

    .line 152
    if-nez v4, :cond_1

    .line 153
    return v0

    .line 155
    :cond_1
    aput-object v4, v2, v3

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p0, v2, p2}, Lcom/jrdcom/filemanager/compress/CommonCompress;->prepare([Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 143
    :cond_3
    :goto_1
    const-string p1, "FileManager_YY"

    const-string p2, "CommonCompress->prepare(filesInfo):  No need to compress."

    invoke-static {p1, p2}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return v0
.end method

.method public prepare([Ljava/io/File;Ljava/lang/String;)Z
    .locals 9

    .line 100
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 106
    :cond_0
    iput-boolean v1, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->sInterrupt:Z

    .line 107
    iput-object p2, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mDestPath:Ljava/lang/String;

    .line 108
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mTotalSize:J

    .line 110
    array-length p2, p1

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_4

    aget-object v2, p1, v0

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    iget-object v3, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mFileList:Ljava/util/ArrayList;

    new-instance v4, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-wide v3, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mTotalSize:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mTotalSize:J

    goto :goto_2

    .line 115
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 116
    if-eqz v3, :cond_3

    .line 117
    array-length v4, v3

    if-gtz v4, :cond_2

    .line 118
    iget-object v3, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mFileList:Ljava/util/ArrayList;

    new-instance v4, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 120
    :cond_2
    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/jrdcom/filemanager/compress/CommonCompress;->zipFileOrDirectory(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 110
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mPrepare:Z

    .line 130
    return v1

    .line 101
    :cond_6
    :goto_3
    const-string p1, "FileManager_YY"

    const-string p2, "CommonCompress->prepare:  failed to prepare. Please check."

    invoke-static {p1, p2}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iput-boolean v1, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mPrepare:Z

    .line 103
    return v1
.end method

.method public setObserver(Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/jrdcom/filemanager/compress/CommonCompress;->mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;

    .line 66
    return-void
.end method
