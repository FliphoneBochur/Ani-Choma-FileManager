.class public Lcom/github/junrar/vfs2/provider/rar/RARFileProvider;
.super Lorg/apache/commons/vfs2/provider/AbstractLayeredFileProvider;
.source "RARFileProvider.java"

# interfaces
.implements Lorg/apache/commons/vfs2/provider/FileProvider;


# static fields
.field protected static final capabilities:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/vfs2/Capability;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/commons/vfs2/Capability;

    sget-object v1, Lorg/apache/commons/vfs2/Capability;->GET_LAST_MODIFIED:Lorg/apache/commons/vfs2/Capability;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/vfs2/Capability;->GET_TYPE:Lorg/apache/commons/vfs2/Capability;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/vfs2/Capability;->LIST_CHILDREN:Lorg/apache/commons/vfs2/Capability;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/vfs2/Capability;->READ_CONTENT:Lorg/apache/commons/vfs2/Capability;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/vfs2/Capability;->URI:Lorg/apache/commons/vfs2/Capability;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/vfs2/Capability;->COMPRESS:Lorg/apache/commons/vfs2/Capability;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/vfs2/Capability;->VIRTUAL:Lorg/apache/commons/vfs2/Capability;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/vfs2/provider/rar/RARFileProvider;->capabilities:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/vfs2/provider/AbstractLayeredFileProvider;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method protected doCreateFileSystem(Ljava/lang/String;Lorg/apache/commons/vfs2/FileObject;Lorg/apache/commons/vfs2/FileSystemOptions;)Lorg/apache/commons/vfs2/FileSystem;
    .locals 4
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "file"    # Lorg/apache/commons/vfs2/FileObject;
    .param p3, "fileSystemOptions"    # Lorg/apache/commons/vfs2/FileSystemOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/vfs2/FileSystemException;
        }
    .end annotation

    .line 72
    new-instance v0, Lorg/apache/commons/vfs2/provider/LayeredFileName;

    invoke-interface {p2}, Lorg/apache/commons/vfs2/FileObject;->getName()Lorg/apache/commons/vfs2/FileName;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/vfs2/FileType;->FOLDER:Lorg/apache/commons/vfs2/FileType;

    const-string v3, "/"

    invoke-direct {v0, p1, v1, v3, v2}, Lorg/apache/commons/vfs2/provider/LayeredFileName;-><init>(Ljava/lang/String;Lorg/apache/commons/vfs2/FileName;Ljava/lang/String;Lorg/apache/commons/vfs2/FileType;)V

    .line 74
    .local v0, "rootName":Lorg/apache/commons/vfs2/provider/AbstractFileName;
    new-instance v1, Lcom/github/junrar/vfs2/provider/rar/RARFileSystem;

    invoke-direct {v1, v0, p2, p3}, Lcom/github/junrar/vfs2/provider/rar/RARFileSystem;-><init>(Lorg/apache/commons/vfs2/provider/AbstractFileName;Lorg/apache/commons/vfs2/FileObject;Lorg/apache/commons/vfs2/FileSystemOptions;)V

    return-object v1
.end method

.method public getCapabilities()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/vfs2/Capability;",
            ">;"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/github/junrar/vfs2/provider/rar/RARFileProvider;->capabilities:Ljava/util/Collection;

    return-object v0
.end method
