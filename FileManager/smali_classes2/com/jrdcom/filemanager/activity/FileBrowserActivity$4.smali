.class Lcom/jrdcom/filemanager/activity/FileBrowserActivity$4;
.super Ljava/lang/Object;
.source "FileBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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

    .line 662
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$4;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$4;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$4;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->access$200(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$4;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$4;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-static {v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->access$200(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 668
    :cond_0
    return-void
.end method
