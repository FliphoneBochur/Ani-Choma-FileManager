.class public Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogFragmentBuilder"
.end annotation


# instance fields
.field protected final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public create()Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;
    .locals 2

    .line 64
    new-instance v0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-object v0
.end method

.method public setCancelTitle(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "negativeTitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    return-object p0
.end method

.method public setCancelable(Z)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "cancelable"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    return-object p0
.end method

.method public setDoneTitle(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "positiveTitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    return-object p0
.end method

.method public setIcon(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "icon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    return-object p0
.end method

.method public setLayout(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "layout"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    return-object p0
.end method

.method public setMessage(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    return-object p0
.end method

.method public setTitle(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    return-object p0
.end method
