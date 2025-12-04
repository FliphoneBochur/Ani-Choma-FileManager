.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12$1;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;

.field final synthetic val$drmRefreshPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;Ljava/lang/String;)V
    .locals 0

    .line 3498
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12$1;->this$1:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12$1;->val$drmRefreshPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 3501
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12$1;->val$drmRefreshPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3502
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12$1;->val$drmRefreshPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3503
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3504
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12$1;->this$1:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->reloadContent()V

    .line 3507
    :cond_0
    return-void
.end method
