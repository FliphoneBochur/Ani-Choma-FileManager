.class public Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditDialogFragmentBuilder;
.super Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditDialogFragmentBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;
    .locals 2

    .line 260
    new-instance v0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 262
    return-object v0
.end method

.method public bridge synthetic create()Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditDialogFragmentBuilder;->create()Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public setDefault(Ljava/lang/String;IZ)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditDialogFragmentBuilder;
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "defaultString"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v0, "defaultSelection"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    iget-object p1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string p2, "defaultHint"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    return-object p0
.end method
