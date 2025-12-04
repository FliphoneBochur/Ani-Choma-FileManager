.class public Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;
.super Landroid/app/DialogFragment;
.source "CommonDialogFragment.java"


# static fields
.field private static dialogTag:Ljava/lang/String;

.field private static mCompressEditText:Landroid/widget/EditText;

.field private static mExtractEditText:Landroid/widget/EditText;

.field private static mFragmentManager:Landroid/app/FragmentManager;

.field private static mMessage:Ljava/lang/String;

.field public static mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;


# instance fields
.field private mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private mButtonStr:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mKeepText:Landroid/widget/TextView;

.field private mRenameText:Landroid/widget/TextView;

.field private mShowMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 40
    const-string v0, "DeleteDialogTag"

    sput-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    return-object v0
.end method

.method public static clearDailogTag()V
    .locals 2

    .line 223
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    const-string v1, "ExtractRenameDialogTag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    .line 224
    const-string v1, "CompressRenameDialogTag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    .line 227
    :cond_1
    return-void
.end method

.method public static getDailogTag()Ljava/lang/String;
    .locals 1

    .line 219
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    return-object v0
.end method

.method public static getFolderName()Ljava/lang/String;
    .locals 2

    .line 230
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mCompressEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    const-string v1, "CompressRenameDialogTag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mCompressEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mExtractEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    const-string v1, "ExtractRenameDialogTag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mExtractEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 235
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;
    .locals 1

    .line 203
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    return-object v0
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;
    .locals 0

    .line 194
    sput-object p2, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    .line 195
    sput-object p1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mMessage:Ljava/lang/String;

    .line 196
    sput-object p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mFragmentManager:Landroid/app/FragmentManager;

    .line 197
    const/4 p0, 0x0

    sput-object p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 198
    new-instance p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    invoke-direct {p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;-><init>()V

    sput-object p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 199
    return-object p0
.end method


# virtual methods
.method public closeDialogFragment(Ljava/lang/String;)V
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 240
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dismissAllowingStateLoss()V

    .line 243
    :cond_0
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->clearDailogTag()V

    .line 244
    const/4 p1, 0x0

    sput-object p1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 245
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    .line 56
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    sget-boolean v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 61
    const v1, 0x7f0b0025

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_0
    const v1, 0x7f0b0024

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    :goto_0
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 67
    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessage:Landroid/widget/TextView;

    .line 69
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "SetPublicDialogTag"

    const-string v3, "SetPrivateDialogTag"

    const-string v4, "ExtractNameExistDialogTag"

    const/4 v5, 0x1

    const-string v6, "ExtractRenameDialogTag"

    const-string v7, "availablestorageDialogTag"

    const-string v8, "exitDialogTag"

    const-string v9, "CompressRenameDialogTag"

    const/4 v10, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    const-string v11, "DeleteDialogTag"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const v1, 0x7f0c0050

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mButtonStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 72
    :cond_1
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const v11, 0x7f0c00a9

    if-nez v1, :cond_3

    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    :cond_2
    invoke-virtual {p0, v11}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mButtonStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 75
    :cond_3
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    const-string v12, "ExtractDialogTag"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    const v1, 0x7f0c0074

    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mButtonStr:Ljava/lang/String;

    .line 77
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    .line 78
    :cond_4
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mKeepText:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mRenameText:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mKeepText:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mRenameText:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mKeepText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mRenameText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f0c007b

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    .line 86
    :cond_5
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    .line 87
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 88
    :cond_6
    invoke-virtual {p0, v11}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mButtonStr:Ljava/lang/String;

    .line 89
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 90
    const v1, 0x7f08003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mCompressEditText:Landroid/widget/EditText;

    .line 91
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 97
    :try_start_0
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v11, 0xfa

    if-le v1, v11, :cond_7

    .line 98
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mMessage:Ljava/lang/String;

    .line 100
    :cond_7
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mCompressEditText:Landroid/widget/EditText;

    sget-object v11, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mCompressEditText:Landroid/widget/EditText;

    sget-object v11, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 106
    :cond_8
    :goto_1
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mCompressEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    .line 108
    :cond_9
    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mExtractEditText:Landroid/widget/EditText;

    .line 109
    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 111
    :goto_2
    iget-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessage:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 112
    :cond_a
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 113
    const v1, 0x7f0c00c1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mButtonStr:Ljava/lang/String;

    goto :goto_4

    .line 115
    :cond_b
    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 116
    const v1, 0x7f0c00c3

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mButtonStr:Ljava/lang/String;

    goto :goto_4

    .line 119
    :cond_c
    iget-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v11, 0x2

    if-eq v1, v11, :cond_e

    iget-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    if-ne v1, v5, :cond_d

    goto :goto_3

    .line 124
    :cond_d
    const v1, 0x7f0c00c6

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mButtonStr:Ljava/lang/String;

    goto :goto_4

    .line 121
    :cond_e
    :goto_3
    const v1, 0x7f0c00da

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mButtonStr:Ljava/lang/String;

    .line 128
    :goto_4
    iget-object v1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessage:Landroid/widget/TextView;

    sget-object v11, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 131
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const v1, 0x7f0c002f

    if-nez v0, :cond_10

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 133
    :cond_f
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment$1;-><init>(Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mButtonStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5

    .line 140
    :cond_10
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 141
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mButtonStr:Ljava/lang/String;

    new-instance v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment$2;-><init>(Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 147
    :cond_11
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 148
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment$3;-><init>(Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mButtonStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 155
    :cond_12
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 156
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment$4;-><init>(Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mButtonStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 164
    :cond_13
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mButtonStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment$5;-><init>(Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    :goto_5
    invoke-virtual {p1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 180
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    .line 181
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 182
    :cond_14
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 185
    :cond_15
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 186
    :cond_16
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->fieldDialog(Landroid/app/AlertDialog;)V

    .line 187
    invoke-virtual {p1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 190
    :cond_17
    iget-object p1, p0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 249
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 250
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    const-string v1, "ExtractRenameDialogTag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    .line 251
    const-string v1, "CompressRenameDialogTag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 255
    :cond_1
    return-void
.end method

.method public showDialog()V
    .locals 3

    .line 207
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->setCancelable(Z)V

    .line 212
    :try_start_0
    sget-object v0, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    sget-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mFragmentManager:Landroid/app/FragmentManager;

    sget-object v2, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dialogTag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "DeleteDialogTag"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    :goto_1
    return-void
.end method
