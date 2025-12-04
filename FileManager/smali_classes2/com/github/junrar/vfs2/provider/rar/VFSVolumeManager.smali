.class public Lcom/github/junrar/vfs2/provider/rar/VFSVolumeManager;
.super Ljava/lang/Object;
.source "VFSVolumeManager.java"

# interfaces
.implements Lcom/github/junrar/VolumeManager;


# instance fields
.field private final firstVolume:Lorg/apache/commons/vfs2/FileObject;


# direct methods
.method public constructor <init>(Lorg/apache/commons/vfs2/FileObject;)V
    .locals 0
    .param p1, "firstVolume"    # Lorg/apache/commons/vfs2/FileObject;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/github/junrar/vfs2/provider/rar/VFSVolumeManager;->firstVolume:Lorg/apache/commons/vfs2/FileObject;

    .line 40
    return-void
.end method


# virtual methods
.method public nextArchive(Lcom/github/junrar/Archive;Lcom/github/junrar/Volume;)Lcom/github/junrar/Volume;
    .locals 5
    .param p1, "archive"    # Lcom/github/junrar/Archive;
    .param p2, "last"    # Lcom/github/junrar/Volume;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    if-nez p2, :cond_0

    .line 45
    new-instance v0, Lcom/github/junrar/vfs2/provider/rar/VFSVolume;

    iget-object v1, p0, Lcom/github/junrar/vfs2/provider/rar/VFSVolumeManager;->firstVolume:Lorg/apache/commons/vfs2/FileObject;

    invoke-direct {v0, p1, v1}, Lcom/github/junrar/vfs2/provider/rar/VFSVolume;-><init>(Lcom/github/junrar/Archive;Lorg/apache/commons/vfs2/FileObject;)V

    return-object v0

    .line 47
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/github/junrar/vfs2/provider/rar/VFSVolume;

    .line 48
    .local v0, "vfsVolume":Lcom/github/junrar/vfs2/provider/rar/VFSVolume;
    invoke-virtual {p1}, Lcom/github/junrar/Archive;->getMainHeader()Lcom/github/junrar/rarfile/MainHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/junrar/rarfile/MainHeader;->isNewNumbering()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/github/junrar/Archive;->isOldFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 50
    .local v1, "oldNumbering":Z
    :goto_1
    invoke-virtual {v0}, Lcom/github/junrar/vfs2/provider/rar/VFSVolume;->getFile()Lorg/apache/commons/vfs2/FileObject;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/vfs2/FileObject;->getName()Lorg/apache/commons/vfs2/FileName;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/vfs2/FileName;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/github/junrar/util/VolumeHelper;->nextVolumeName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "nextName":Ljava/lang/String;
    iget-object v3, p0, Lcom/github/junrar/vfs2/provider/rar/VFSVolumeManager;->firstVolume:Lorg/apache/commons/vfs2/FileObject;

    invoke-interface {v3}, Lorg/apache/commons/vfs2/FileObject;->getParent()Lorg/apache/commons/vfs2/FileObject;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/commons/vfs2/FileObject;->resolveFile(Ljava/lang/String;)Lorg/apache/commons/vfs2/FileObject;

    move-result-object v3

    .line 55
    .local v3, "nextVolumeFile":Lorg/apache/commons/vfs2/FileObject;
    new-instance v4, Lcom/github/junrar/vfs2/provider/rar/VFSVolume;

    invoke-direct {v4, p1, v3}, Lcom/github/junrar/vfs2/provider/rar/VFSVolume;-><init>(Lcom/github/junrar/Archive;Lorg/apache/commons/vfs2/FileObject;)V

    return-object v4
.end method
