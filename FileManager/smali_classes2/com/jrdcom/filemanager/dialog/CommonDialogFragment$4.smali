.class Lcom/jrdcom/filemanager/dialog/CommonDialogFragment$4;
.super Ljava/lang/Object;
.source "CommonDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment$4;->this$0:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment$4;->this$0:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    const-string p2, "SetPublicDialogTag"

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->closeDialogFragment(Ljava/lang/String;)V

    .line 160
    return-void
.end method
