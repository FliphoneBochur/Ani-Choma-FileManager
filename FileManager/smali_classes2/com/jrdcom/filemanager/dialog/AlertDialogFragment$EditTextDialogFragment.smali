.class public Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;
.super Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditTextDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_HINT:Ljava/lang/String; = "defaultHint"

.field public static final DEFAULT_SELCTION:Ljava/lang/String; = "defaultSelection"

.field public static final DEFAULT_STRING:Ljava/lang/String; = "defaultString"

.field public static final TAG:Ljava/lang/String; = "EditTextDialogFragment"

.field protected static mEditTextDoneListener:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;


# instance fields
.field isHighN:Z

.field private mEditText:Landroid/widget/EditText;

.field mHasToasted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 284
    invoke-direct {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;-><init>()V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mHasToasted:Z

    .line 292
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->isHighN:Z

    return-void
.end method

.method private setEditTextFilter(Landroid/widget/EditText;I)V
    .locals 2

    .line 373
    new-instance v0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$1;

    invoke-direct {v0, p0, p2, p2}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$1;-><init>(Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;II)V

    .line 443
    const/4 p2, 0x1

    new-array p2, p2, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 444
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 505
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 520
    sget-object p1, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mEditTextDoneListener:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;

    if-eqz p1, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;->onClick(Ljava/lang/String;)V

    .line 522
    const/4 p1, 0x0

    sput-object p1, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mEditTextDoneListener:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;

    .line 524
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 314
    invoke-virtual {p0, p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->setOnDoneListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->createAlertDialogBuilder(Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 316
    nop

    .line 317
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasHighN()Z

    move-result v1

    iput-boolean v1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->isHighN:Z

    .line 318
    if-nez p1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 321
    :cond_0
    nop

    .line 323
    :goto_0
    if-eqz p1, :cond_5

    .line 324
    const-string v1, "defaultString"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    const-string v2, "defaultSelection"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 326
    const-string v4, "defaultHint"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 327
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0037

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 328
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 329
    const v5, 0x7f08006f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 330
    if-eqz p1, :cond_1

    .line 331
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 333
    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt v2, p1, :cond_2

    .line 335
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 337
    :cond_2
    if-gez v2, :cond_3

    .line 338
    goto :goto_1

    .line 337
    :cond_3
    move v3, v2

    .line 340
    :goto_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f09000e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-lt v3, p1, :cond_4

    .line 341
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 343
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 346
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 351
    invoke-super {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->onResume()V

    .line 352
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    .line 354
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_0

    .line 356
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 361
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {p0, v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->setTextChangedCallback(Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    .line 362
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 305
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 306
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    const-string v2, "defaultString"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 308
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 307
    const-string v2, "defaultSelection"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    return-void
.end method

.method public setOnEditTextDoneListener(Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;)V
    .locals 0

    .line 515
    sput-object p1, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mEditTextDoneListener:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;

    .line 516
    return-void
.end method

.method protected setTextChangedCallback(Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 1

    .line 455
    const/16 v0, 0x32

    invoke-direct {p0, p1, v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->setEditTextFilter(Landroid/widget/EditText;I)V

    .line 456
    new-instance v0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$2;-><init>(Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 494
    return-void
.end method
