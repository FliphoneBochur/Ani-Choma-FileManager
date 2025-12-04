.class public Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;,
        Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditDialogFragmentBuilder;,
        Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;
    }
.end annotation


# static fields
.field private static final CANCELABLE:Ljava/lang/String; = "cancelable"

.field private static final ICON:Ljava/lang/String; = "icon"

.field public static final INVIND_RES_ID:I = -0x1

.field private static final LAYOUT:Ljava/lang/String; = "layout"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final NEGATIVE_TITLE:Ljava/lang/String; = "negativeTitle"

.field private static final POSITIVE_TITLE:Ljava/lang/String; = "positiveTitle"

.field public static final TAG:Ljava/lang/String; = "AlertDialogFragment"

.field private static final TITLE:Ljava/lang/String; = "title"

.field protected static mDoneListener:Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field protected mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field protected mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAlertDialogBuilder(Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;
    .locals 5

    .line 185
    nop

    .line 186
    if-nez p1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 189
    :cond_0
    nop

    .line 191
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    if-eqz p1, :cond_7

    .line 193
    const-string v1, "title"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 194
    if-eq v1, v2, :cond_1

    .line 195
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 198
    :cond_1
    const-string v1, "icon"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 199
    if-eq v1, v2, :cond_2

    .line 200
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 203
    :cond_2
    const-string v1, "message"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 204
    const-string v3, "layout"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 205
    if-eq v3, v2, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 209
    :cond_3
    if-eq v1, v2, :cond_4

    .line 210
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 209
    :cond_4
    :goto_1
    nop

    .line 213
    :goto_2
    const-string v1, "negativeTitle"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 215
    if-eq v1, v2, :cond_5

    .line 216
    new-instance v3, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$1;-><init>(Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    :cond_5
    const-string v1, "positiveTitle"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 227
    if-eq v1, v2, :cond_6

    .line 228
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    :cond_6
    new-instance v1, Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jrdcom/filemanager/view/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    .line 232
    const/4 v1, 0x1

    const-string v2, "cancelable"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 233
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 235
    :cond_7
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 166
    sget-object v0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->mDoneListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 168
    const/4 p1, 0x0

    sput-object p1, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->mDoneListener:Landroid/content/DialogInterface$OnClickListener;

    .line 170
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->createAlertDialogBuilder(Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 253
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 254
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 52
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 246
    return-void
.end method

.method public setOnDoneListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 161
    sput-object p1, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->mDoneListener:Landroid/content/DialogInterface$OnClickListener;

    .line 162
    return-void
.end method
