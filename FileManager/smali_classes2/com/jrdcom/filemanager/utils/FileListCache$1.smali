.class Lcom/jrdcom/filemanager/utils/FileListCache$1;
.super Ljava/lang/Object;
.source "FileListCache.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/utils/FileListCache;->observerDataChanage(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;Lcom/jrdcom/filemanager/manager/MountManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/utils/FileListCache;

.field final synthetic val$mFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/utils/FileListCache;Ljava/io/File;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/FileListCache$1;->this$0:Lcom/jrdcom/filemanager/utils/FileListCache;

    iput-object p2, p0, Lcom/jrdcom/filemanager/utils/FileListCache$1;->val$mFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/FileListCache$1;->val$mFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
