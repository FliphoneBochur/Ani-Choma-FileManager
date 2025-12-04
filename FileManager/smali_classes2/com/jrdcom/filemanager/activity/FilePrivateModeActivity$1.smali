.class Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$1;
.super Ljava/lang/Object;
.source "FilePrivateModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchViewContent(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateViewByTag()V

    .line 404
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->access$000(Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;I)V

    .line 405
    return-void
.end method
