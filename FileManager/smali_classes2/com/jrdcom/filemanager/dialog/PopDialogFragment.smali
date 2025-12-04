.class public Lcom/jrdcom/filemanager/dialog/PopDialogFragment;
.super Ljava/lang/Object;
.source "PopDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SingleHolder;,
        Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;
    }
.end annotation


# static fields
.field public static SORT_ITEM:Ljava/lang/String;

.field public static TYPE:Ljava/lang/String;

.field public static VIEW_ITEM:Ljava/lang/String;


# instance fields
.field public textAdapter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, "sort_item"

    sput-object v0, Lcom/jrdcom/filemanager/dialog/PopDialogFragment;->SORT_ITEM:Ljava/lang/String;

    .line 21
    const-string v0, "view_item"

    sput-object v0, Lcom/jrdcom/filemanager/dialog/PopDialogFragment;->VIEW_ITEM:Ljava/lang/String;

    .line 22
    const-string v0, "type"

    sput-object v0, Lcom/jrdcom/filemanager/dialog/PopDialogFragment;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/dialog/PopDialogFragment;->textAdapter:Ljava/util/List;

    return-void
.end method

.method public static createSingleChoice(Landroid/content/Context;Ljava/lang/String;ILjava/util/List;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .line 27
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v1, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;

    invoke-direct {v1, p0, p3}, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 29
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;->setSingleChoice(Z)V

    .line 30
    invoke-virtual {v1, p2}, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;->setSingleChoiceIndex(I)V

    .line 31
    const/4 p0, -0x1

    invoke-virtual {v0, v1, p0, p4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 32
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
