.class public Lcom/github/junrar/vfs2/provider/rar/VFSVolume;
.super Ljava/lang/Object;
.source "VFSVolume.java"

# interfaces
.implements Lcom/github/junrar/Volume;


# instance fields
.field private final archive:Lcom/github/junrar/Archive;

.field private final file:Lorg/apache/commons/vfs2/FileObject;


# direct methods
.method public constructor <init>(Lcom/github/junrar/Archive;Lorg/apache/commons/vfs2/FileObject;)V
    .locals 0
    .param p1, "archive"    # Lcom/github/junrar/Archive;
    .param p2, "file"    # Lorg/apache/commons/vfs2/FileObject;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/github/junrar/vfs2/provider/rar/VFSVolume;->archive:Lcom/github/junrar/Archive;

    .line 45
    iput-object p2, p0, Lcom/github/junrar/vfs2/provider/rar/VFSVolume;->file:Lorg/apache/commons/vfs2/FileObject;

    .line 46
    return-void
.end method


# virtual methods
.method public getArchive()Lcom/github/junrar/Archive;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/github/junrar/vfs2/provider/rar/VFSVolume;->archive:Lcom/github/junrar/Archive;

    return-object v0
.end method

.method public getFile()Lorg/apache/commons/vfs2/FileObject;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/github/junrar/vfs2/provider/rar/VFSVolume;->file:Lorg/apache/commons/vfs2/FileObject;

    return-object v0
.end method

.method public getLength()J
    .locals 3

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/github/junrar/vfs2/provider/rar/VFSVolume;->file:Lorg/apache/commons/vfs2/FileObject;

    invoke-interface {v0}, Lorg/apache/commons/vfs2/FileObject;->getContent()Lorg/apache/commons/vfs2/FileContent;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/vfs2/FileContent;->getSize()J

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/commons/vfs2/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/apache/commons/vfs2/FileSystemException;
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public getReadOnlyAccess()Lcom/github/junrar/io/IReadOnlyAccess;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "input":Lcom/github/junrar/io/IReadOnlyAccess;
    :try_start_0
    iget-object v1, p0, Lcom/github/junrar/vfs2/provider/rar/VFSVolume;->file:Lorg/apache/commons/vfs2/FileObject;

    invoke-interface {v1}, Lorg/apache/commons/vfs2/FileObject;->getContent()Lorg/apache/commons/vfs2/FileContent;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/vfs2/util/RandomAccessMode;->READ:Lorg/apache/commons/vfs2/util/RandomAccessMode;

    invoke-interface {v1, v2}, Lorg/apache/commons/vfs2/FileContent;->getRandomAccessContent(Lorg/apache/commons/vfs2/util/RandomAccessMode;)Lorg/apache/commons/vfs2/RandomAccessContent;

    move-result-object v1

    .line 54
    .local v1, "rac":Lorg/apache/commons/vfs2/RandomAccessContent;
    new-instance v2, Lcom/github/junrar/vfs2/provider/rar/RandomAccessContentAccess;

    invoke-direct {v2, v1}, Lcom/github/junrar/vfs2/provider/rar/RandomAccessContentAccess;-><init>(Lorg/apache/commons/vfs2/RandomAccessContent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 58
    .end local v1    # "rac":Lorg/apache/commons/vfs2/RandomAccessContent;
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/github/junrar/io/InputStreamReadOnlyAccessFile;

    iget-object v3, p0, Lcom/github/junrar/vfs2/provider/rar/VFSVolume;->file:Lorg/apache/commons/vfs2/FileObject;

    invoke-interface {v3}, Lorg/apache/commons/vfs2/FileObject;->getContent()Lorg/apache/commons/vfs2/FileContent;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/vfs2/FileContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/github/junrar/io/InputStreamReadOnlyAccessFile;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
