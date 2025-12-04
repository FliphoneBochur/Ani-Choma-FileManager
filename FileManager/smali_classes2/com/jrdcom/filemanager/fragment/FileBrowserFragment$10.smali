.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$10;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showDeleteDialog(I)V
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

    .line 2803
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$10;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 2806
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$10;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$IPopWindowListener;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$10;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1700(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    sget-object v2, Lcom/jrdcom/filemanager/utils/PopWindowType;->POP_WINDOW_DISMISS:Lcom/jrdcom/filemanager/utils/PopWindowType;

    invoke-interface {v0, v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$IPopWindowListener;->setPopwindowType(Landroid/widget/PopupWindow;Lcom/jrdcom/filemanager/utils/PopWindowType;)V

    .line 2807
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$10;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateMenubarViewasFragment()V

    .line 2808
    return-void
.end method
