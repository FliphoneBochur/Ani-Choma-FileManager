.class public Lcom/github/junrar/impl/FileVolumeManager;
.super Ljava/lang/Object;
.source "FileVolumeManager.java"

# interfaces
.implements Lcom/github/junrar/VolumeManager;


# instance fields
.field private final firstVolume:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "firstVolume"    # Ljava/io/File;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/github/junrar/impl/FileVolumeManager;->firstVolume:Ljava/io/File;

    .line 37
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

    .line 42
    if-nez p2, :cond_0

    .line 43
    new-instance v0, Lcom/github/junrar/impl/FileVolume;

    iget-object v1, p0, Lcom/github/junrar/impl/FileVolumeManager;->firstVolume:Ljava/io/File;

    invoke-direct {v0, p1, v1}, Lcom/github/junrar/impl/FileVolume;-><init>(Lcom/github/junrar/Archive;Ljava/io/File;)V

    return-object v0

    .line 45
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/github/junrar/impl/FileVolume;

    .line 46
    .local v0, "lastFileVolume":Lcom/github/junrar/impl/FileVolume;
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

    .line 48
    .local v1, "oldNumbering":Z
    :goto_1
    invoke-virtual {v0}, Lcom/github/junrar/impl/FileVolume;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/github/junrar/util/VolumeHelper;->nextVolumeName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "nextName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v3, "nextVolume":Ljava/io/File;
    new-instance v4, Lcom/github/junrar/impl/FileVolume;

    invoke-direct {v4, p1, v3}, Lcom/github/junrar/impl/FileVolume;-><init>(Lcom/github/junrar/Archive;Ljava/io/File;)V

    return-object v4
.end method
