.class Lcom/jrdcom/filemanager/adapter/FileShowAdapter$10;
.super Ljava/lang/Object;
.source "FileShowAdapter.java"

# interfaces
.implements Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->loadCountText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

.field final synthetic val$mFolderHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;Landroid/os/Handler;)V
    .locals 0

    .line 1537
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$10;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$10;->val$mFolderHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public folderCountTextCallback(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 3

    .line 1540
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$10;->val$mFolderHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCategoryIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSearchContent()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1541
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$10;->val$mFolderHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1542
    return-void
.end method
