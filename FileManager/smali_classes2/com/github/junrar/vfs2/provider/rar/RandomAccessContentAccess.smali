.class public Lcom/github/junrar/vfs2/provider/rar/RandomAccessContentAccess;
.super Ljava/lang/Object;
.source "RandomAccessContentAccess.java"

# interfaces
.implements Lcom/github/junrar/io/IReadOnlyAccess;


# instance fields
.field private final rac:Lorg/apache/commons/vfs2/RandomAccessContent;


# direct methods
.method public constructor <init>(Lorg/apache/commons/vfs2/FileObject;)V
    .locals 2
    .param p1, "file"    # Lorg/apache/commons/vfs2/FileObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/vfs2/FileSystemException;
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Lorg/apache/commons/vfs2/FileObject;->getContent()Lorg/apache/commons/vfs2/FileContent;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/vfs2/util/RandomAccessMode;->READ:Lorg/apache/commons/vfs2/util/RandomAccessMode;

    invoke-interface {v0, v1}, Lorg/apache/commons/vfs2/FileContent;->getRandomAccessContent(Lorg/apache/commons/vfs2/util/RandomAccessMode;)Lorg/apache/commons/vfs2/RandomAccessContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/junrar/vfs2/provider/rar/RandomAccessContentAccess;-><init>(Lorg/apache/commons/vfs2/RandomAccessContent;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/vfs2/RandomAccessContent;)V
    .locals 0
    .param p1, "rac"    # Lorg/apache/commons/vfs2/RandomAccessContent;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/github/junrar/vfs2/provider/rar/RandomAccessContentAccess;->rac:Lorg/apache/commons/vfs2/RandomAccessContent;

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/github/junrar/vfs2/provider/rar/RandomAccessContentAccess;->rac:Lorg/apache/commons/vfs2/RandomAccessContent;

    invoke-interface {v0}, Lorg/apache/commons/vfs2/RandomAccessContent;->close()V

    .line 74
    return-void
.end method

.method public getPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/github/junrar/vfs2/provider/rar/RandomAccessContentAccess;->rac:Lorg/apache/commons/vfs2/RandomAccessContent;

    invoke-interface {v0}, Lorg/apache/commons/vfs2/RandomAccessContent;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/github/junrar/vfs2/provider/rar/RandomAccessContentAccess;->rac:Lorg/apache/commons/vfs2/RandomAccessContent;

    invoke-interface {v0}, Lorg/apache/commons/vfs2/RandomAccessContent;->readByte()B

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/github/junrar/vfs2/provider/rar/RandomAccessContentAccess;->rac:Lorg/apache/commons/vfs2/RandomAccessContent;

    invoke-interface {v0}, Lorg/apache/commons/vfs2/RandomAccessContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public readFully([BI)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/github/junrar/vfs2/provider/rar/RandomAccessContentAccess;->rac:Lorg/apache/commons/vfs2/RandomAccessContent;

    invoke-interface {v0}, Lorg/apache/commons/vfs2/RandomAccessContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public setPosition(J)V
    .locals 1
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/github/junrar/vfs2/provider/rar/RandomAccessContentAccess;->rac:Lorg/apache/commons/vfs2/RandomAccessContent;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/vfs2/RandomAccessContent;->seek(J)V

    .line 58
    return-void
.end method
