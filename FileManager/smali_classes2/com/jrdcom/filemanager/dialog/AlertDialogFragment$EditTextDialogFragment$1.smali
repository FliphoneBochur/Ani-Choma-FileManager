.class Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->setEditTextFilter(Landroid/widget/EditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final VIBRATOR_TIME:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

.field final synthetic val$maxLength:I


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;II)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$1;->this$0:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    iput p3, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$1;->val$maxLength:I

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    .line 376
    const-string v0, "UTF-8"

    .line 380
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    .line 381
    iget v4, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$1;->val$maxLength:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v4, v3, :cond_0

    .line 383
    move v3, v1

    goto :goto_0

    .line 381
    :cond_0
    move v3, v2

    .line 388
    :goto_0
    goto :goto_1

    .line 385
    :catch_0
    move-exception v3

    .line 386
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v2

    .line 390
    :goto_1
    if-eqz v3, :cond_2

    .line 391
    iget-object v4, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$1;->this$0:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 392
    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 393
    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    .line 394
    if-eqz v5, :cond_1

    .line 395
    const/4 v5, 0x2

    new-array v5, v5, [J

    fill-array-data v5, :array_0

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 399
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$1;->this$0:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    iget-object v4, v4, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const v5, 0x7f0c007a

    invoke-virtual {v4, v5}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    goto :goto_2

    .line 400
    :catch_1
    move-exception v4

    .line 401
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 405
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$1;->this$0:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    iget-boolean v4, v4, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mHasToasted:Z

    if-nez v4, :cond_3

    if-nez p5, :cond_3

    .line 407
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_3

    .line 408
    iget-object v4, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$1;->this$0:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    iget-object v4, v4, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const v5, 0x7f0c0049

    invoke-virtual {v4, v5}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 409
    iget-object v4, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$1;->this$0:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    iput-boolean v1, v4, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->mHasToasted:Z

    .line 414
    :cond_3
    if-eqz v3, :cond_9

    .line 416
    :try_start_2
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 417
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_8

    .line 418
    :cond_4
    iget v1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$1;->val$maxLength:I

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v1, v3

    .line 419
    if-gtz v1, :cond_5

    .line 420
    const-string p1, ""

    return-object p1

    .line 421
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    if-lt v1, v3, :cond_6

    .line 422
    const/4 p1, 0x0

    return-object p1

    .line 424
    :cond_6
    nop

    .line 425
    move v3, v2

    move v4, v3

    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 426
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 427
    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    .line 428
    if-le v4, v1, :cond_7

    .line 429
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 425
    :cond_7
    move v3, v6

    goto :goto_3

    .line 436
    :cond_8
    goto :goto_4

    .line 434
    :catch_2
    move-exception v0

    .line 435
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 439
    :cond_9
    :goto_4
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 8
        0x64
        0x64
    .end array-data
.end method
