.class Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$1;
.super Ljava/lang/Object;
.source "FileSafeBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchViewContent(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateViewByTag()V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->access$000(Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;I)V

    .line 492
    return-void
.end method
