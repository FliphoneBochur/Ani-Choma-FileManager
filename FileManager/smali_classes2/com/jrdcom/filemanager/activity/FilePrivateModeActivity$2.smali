.class Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$2;
.super Ljava/lang/Object;
.source "FilePrivateModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->onBackPressed()V
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

    .line 715
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearChecked()V

    .line 719
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->access$100(Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;)V

    .line 720
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateViewByTag()V

    .line 721
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileActionMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->access$200(Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;I)V

    .line 722
    return-void
.end method
