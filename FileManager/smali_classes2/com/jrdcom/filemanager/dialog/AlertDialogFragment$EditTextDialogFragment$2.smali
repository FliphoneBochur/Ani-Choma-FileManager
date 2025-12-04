.class Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$2;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->setTextChangedCallback(Landroid/widget/EditText;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$2;->this$0:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    iput-object p2, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 459
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 464
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 469
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    const-string p4, ".*[/\\\\:*?\"<>|].*"

    const/4 v0, -0x1

    if-nez p2, :cond_4

    invoke-virtual {p1, p4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 480
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string p4, ".."

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 486
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 487
    if-eqz p1, :cond_7

    .line 488
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 481
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 482
    if-eqz p1, :cond_3

    .line 483
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 485
    :cond_3
    goto :goto_2

    .line 471
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {p1, p4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 472
    iget-object p1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$2;->this$0:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c0087

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 475
    :cond_5
    iget-object p1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 476
    if-eqz p1, :cond_6

    .line 477
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 479
    :cond_6
    nop

    .line 492
    :cond_7
    :goto_2
    return-void
.end method
