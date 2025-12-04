.class Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$1;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->createAlertDialogBuilder(Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$1;->this$0:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 219
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 220
    const/4 p1, 0x0

    sput-object p1, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->mDoneListener:Landroid/content/DialogInterface$OnClickListener;

    .line 221
    sput-object p1, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mEditTextDoneListener:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;

    .line 222
    return-void
.end method
