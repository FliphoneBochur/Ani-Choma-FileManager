.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$13;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->reloadContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 0

    .line 3549
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$13;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3553
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$13;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemCount()I

    move-result v0

    .line 3554
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3555
    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$13;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v3, v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItem(I)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3556
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$13;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mTaskResultHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$13;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v2, v2, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mTaskResultHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3557
    goto :goto_1

    .line 3554
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3562
    :cond_1
    :goto_1
    goto :goto_2

    .line 3560
    :catch_0
    move-exception v0

    .line 3561
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3563
    :goto_2
    return-void
.end method
