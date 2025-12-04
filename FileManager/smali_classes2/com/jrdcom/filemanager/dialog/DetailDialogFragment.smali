.class public Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;
.super Landroid/app/DialogFragment;
.source "DetailDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SingleHolder;,
        Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SimPickerAdapter;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mFragmentManager:Landroid/app/FragmentManager;

.field private static mShowDetailDialogFragment:Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

.field private static mTitle:Ljava/lang/String;

.field private static mTitleAdapter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mValueAdapter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDetailListView:Landroid/widget/ListView;

.field public mDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mShowDetailDialogFragment:Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;)Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;
    .locals 0

    .line 28
    sput-object p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mShowDetailDialogFragment:Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

    return-object p0
.end method

.method public static createDetailDialog(Landroid/content/Context;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/FragmentManager;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;"
        }
    .end annotation

    .line 74
    sput-object p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mContext:Landroid/content/Context;

    .line 75
    sput-object p1, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mFragmentManager:Landroid/app/FragmentManager;

    .line 76
    sput-object p2, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mTitle:Ljava/lang/String;

    .line 77
    sput-object p3, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mTitleAdapter:Ljava/util/List;

    .line 78
    sput-object p4, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mValueAdapter:Ljava/util/List;

    .line 79
    const/4 p0, 0x0

    sput-object p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mShowDetailDialogFragment:Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

    .line 80
    new-instance p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

    invoke-direct {p0}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;-><init>()V

    sput-object p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mShowDetailDialogFragment:Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

    .line 81
    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 48
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    const v1, 0x7f0b0036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mDetailListView:Landroid/widget/ListView;

    .line 52
    new-instance v1, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SimPickerAdapter;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mTitleAdapter:Ljava/util/List;

    sget-object v4, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mValueAdapter:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SimPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 53
    iget-object v2, p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mDetailListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 56
    sget-object v0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$1;-><init>(Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;)V

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 69
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public showDialog()V
    .locals 3

    .line 150
    sget-object v0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mShowDetailDialogFragment:Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

    sget-object v1, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "detailDialogTag"

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 151
    return-void
.end method
