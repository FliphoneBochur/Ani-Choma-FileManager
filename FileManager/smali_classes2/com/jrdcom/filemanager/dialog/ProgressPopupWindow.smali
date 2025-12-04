.class public Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;
.super Ljava/lang/Object;
.source "ProgressPopupWindow.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProgressPopupWindow"

.field private static dialog:Landroid/app/Dialog;

.field private static mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private static mBaseTaskType:I

.field private static mContext:Landroid/content/Context;

.field private static mFirstCancel:Landroid/widget/ImageButton;

.field public static mFirstProgressbar:Landroid/widget/ProgressBar;

.field public static mFirstTaskLayout:Landroid/widget/RelativeLayout;

.field public static mFirstTaskProgress:Landroid/widget/TextView;

.field private static mListenerInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field public static mMultiTaskLay:Landroid/widget/LinearLayout;

.field private static mProgressIndex:I

.field private static mProgressTitleTv:Landroid/widget/TextView;

.field public static mSingleTaskLay:Landroid/widget/LinearLayout;

.field private static mSingleTextView:Landroid/widget/TextView;

.field public static mTitle:Ljava/lang/String;

.field public static mTotalProgress:Landroid/widget/TextView;

.field public static mTotalProgressLayout:Landroid/widget/RelativeLayout;


# instance fields
.field private mCancelListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mProgressIndex:I

    .line 46
    sput v0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mBaseTaskType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCreateTaskTime()J
    .locals 2

    .line 130
    sget-object v0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mListenerInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 131
    :cond_0
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/TaskInfo;)Landroid/app/Dialog;
    .locals 2

    .line 52
    sput-object p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mContext:Landroid/content/Context;

    .line 53
    sput-object p1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mListenerInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 54
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getTitleStr()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mTitle:Ljava/lang/String;

    .line 55
    if-nez p0, :cond_0

    .line 56
    sget-object p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mContext:Landroid/content/Context;

    const p1, 0x7f0c002b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mTitle:Ljava/lang/String;

    .line 58
    :cond_0
    sget-object p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mListenerInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getFileFilter()I

    move-result p0

    sput p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mBaseTaskType:I

    .line 65
    sget-object p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mListenerInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getAdapterMode()I

    move-result p0

    .line 66
    sget p1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mBaseTaskType:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x7

    if-ne p0, p1, :cond_2

    .line 67
    :cond_1
    new-instance p0, Landroid/app/Dialog;

    sget-object p1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0212

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->dialog:Landroid/app/Dialog;

    goto :goto_0

    .line 69
    :cond_2
    new-instance p0, Landroid/app/Dialog;

    sget-object p1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0210

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->dialog:Landroid/app/Dialog;

    .line 73
    :goto_0
    sget-object p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->dialog:Landroid/app/Dialog;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 74
    sget-object p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 75
    const/high16 p1, 0x4000000

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 76
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x500

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 77
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 79
    sget-object p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->dialog:Landroid/app/Dialog;

    invoke-static {}, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->onCreateView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 80
    sget-object p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p0

    .line 81
    sget p1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mBaseTaskType:I

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isShowHorizontalProgressBar(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->clearDailogTag()V

    .line 83
    sget-object p1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mProgressTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    sget-object p1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mProgressTitleTv:Landroid/widget/TextView;

    sget-object v0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const/4 p1, 0x1

    const v0, 0x7f0c00a9

    invoke-virtual {p0, p1, v0}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    .line 88
    :cond_3
    sget-object p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static onCreateView()Landroid/view/View;
    .locals 4

    .line 102
    sget-object v0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 103
    const v1, 0x7f0b0062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/FileManagerApplication;

    sput-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 105
    const v1, 0x7f0800e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mMultiTaskLay:Landroid/widget/LinearLayout;

    .line 106
    const v1, 0x7f08016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mSingleTaskLay:Landroid/widget/LinearLayout;

    .line 108
    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mProgressTitleTv:Landroid/widget/TextView;

    .line 109
    sget v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mBaseTaskType:I

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isShowCircularProgressBar(I)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 110
    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mSingleTextView:Landroid/widget/TextView;

    .line 111
    sget-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mMultiTaskLay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    sget-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mSingleTaskLay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_0
    sget-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mMultiTaskLay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    sget-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mSingleTaskLay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    const v1, 0x7f08008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    sput-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mFirstTaskLayout:Landroid/widget/RelativeLayout;

    .line 120
    const v1, 0x7f08019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    sput-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mTotalProgressLayout:Landroid/widget/RelativeLayout;

    .line 121
    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    sput-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mFirstProgressbar:Landroid/widget/ProgressBar;

    .line 122
    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mFirstTaskProgress:Landroid/widget/TextView;

    .line 123
    const v1, 0x7f08019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mTotalProgress:Landroid/widget/TextView;

    .line 126
    :goto_0
    return-object v0
.end method


# virtual methods
.method public setCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 99
    return-void
.end method
