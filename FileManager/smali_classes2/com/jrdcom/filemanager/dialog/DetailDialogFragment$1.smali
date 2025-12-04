.class Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$1;
.super Ljava/lang/Object;
.source "DetailDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$1;->this$0:Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$1;->this$0:Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "detailDialogTag"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->dismissAllowingStateLoss()V

    .line 65
    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->access$002(Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;)Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

    .line 66
    return-void
.end method
