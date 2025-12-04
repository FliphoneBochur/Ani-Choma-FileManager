.class public Lcom/github/junrar/io/ReadOnlyAccessFile;
.super Ljava/io/RandomAccessFile;
.source "ReadOnlyAccessFile.java"

# interfaces
.implements Lcom/github/junrar/io/IReadOnlyAccess;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 39
    const-string v0, "r"

    invoke-direct {p0, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/github/junrar/io/ReadOnlyAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([BI)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    nop

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/github/junrar/io/ReadOnlyAccessFile;->readFully([BII)V

    .line 45
    return p2
.end method

.method public setPosition(J)V
    .locals 0
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/github/junrar/io/ReadOnlyAccessFile;->seek(J)V

    .line 54
    return-void
.end method
