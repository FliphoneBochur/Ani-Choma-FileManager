.class Lcom/jrdcom/filemanager/activity/FileBrowserActivity$5;
.super Ljava/lang/Object;
.source "FileBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchViewContent(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$5;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$5;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    const-string v1, "global_search"

    if-eq v0, v1, :cond_0

    .line 746
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$5;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->access$300(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V

    .line 747
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$5;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getFileMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->access$400(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;I)V

    .line 749
    :cond_0
    return-void
.end method
