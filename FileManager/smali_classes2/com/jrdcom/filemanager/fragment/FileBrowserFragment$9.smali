.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$9;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
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

    .line 2746
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$9;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2749
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$9;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$9;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$9;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getCheckedItemsCount()I

    move-result p1

    if-lez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$9;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    .line 2750
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2751
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$9;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 2753
    :cond_1
    return-void
.end method
