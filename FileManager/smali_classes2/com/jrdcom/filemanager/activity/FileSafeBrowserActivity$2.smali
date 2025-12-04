.class Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$2;
.super Ljava/lang/Object;
.source "FileSafeBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->onBackPressed()V
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

    .line 861
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearChecked()V

    .line 865
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->access$100(Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;)V

    .line 866
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateViewByTag()V

    .line 867
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->access$200(Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;I)V

    .line 868
    return-void
.end method
