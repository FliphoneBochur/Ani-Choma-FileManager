.class public Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;
.super Lcom/jrdcom/filemanager/activity/FileBaseActivity;
.source "FilePrivateModeActivity.java"

# interfaces
.implements Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment$PrivateFragmentListener;
.implements Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static isEnterSaveStateMethod:Z

.field public static mActibarText:Landroid/widget/TextView;

.field public static mCurrentFragment:Landroid/app/Fragment;


# instance fields
.field protected Mainframe:Landroid/widget/RelativeLayout;

.field private currentSafePath:Ljava/lang/String;

.field fragmentTransaction:Landroid/app/FragmentTransaction;

.field public isRefreshFilesCategory:Z

.field private mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

.field private mEditImg:Landroid/widget/ImageView;

.field mFragmentManager:Landroid/app/FragmentManager;

.field protected mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

.field private mMainToolbar:Landroid/support/v7/widget/Toolbar;

.field public mMoreImg:Landroid/widget/ImageView;

.field public mOKImg:Landroid/widget/ImageView;

.field private mOtgRootPath:Ljava/lang/String;

.field public mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

.field private mPrivateCountText:Landroid/widget/TextView;

.field private mSDCardRootPath:Ljava/lang/String;

.field private mSafeRootPath:Ljava/lang/String;

.field private mSafeTagMode:Ljava/lang/String;

.field private mSortImg:Landroid/widget/ImageView;

.field private mlayout:Landroid/view/LayoutInflater;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->isEnterSaveStateMethod:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    .line 69
    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    .line 81
    const-string v0, "category"

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSafeTagMode:Ljava/lang/String;

    .line 784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->isRefreshFilesCategory:Z

    return-void
.end method

.method private ShowCategoryContent()V
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchContent(Landroid/app/Fragment;)V

    .line 765
    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateFragmentView(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchSafeCategoryList()V

    return-void
.end method

.method static synthetic access$200(Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateView(I)V

    return-void
.end method

.method private acquireWakeLock(Landroid/content/Context;)V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 630
    nop

    .line 631
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 632
    const/4 v0, 0x1

    const-string v1, "Paste Task"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 634
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 636
    :cond_0
    return-void
.end method

.method private getSafeTitle()Ljava/lang/String;
    .locals 1

    .line 855
    const v0, 0x7f0c00cb

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 643
    :cond_0
    return-void
.end method

.method private switchCategoryViewContent(Landroid/app/Fragment;)V
    .locals 1

    .line 412
    const/4 v0, -0x1

    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 413
    move-object v0, p1

    check-cast v0, Lcom/jrdcom/filemanager/ISafeCategoryListener;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    .line 414
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearAdapter()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getCategoryFileList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 418
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateViewByTag()V

    .line 419
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateCategoryNormalBar()V

    .line 420
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    if-eqz v0, :cond_1

    .line 421
    invoke-interface {v0}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->refreshSafeCategory()V

    .line 423
    :cond_1
    sput-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 424
    return-void
.end method

.method private switchSafeCategoryList()V
    .locals 2

    .line 751
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 756
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActibarText:Landroid/widget/TextView;

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 757
    const/16 v0, 0xc

    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateCategoryNormalBarView()V

    .line 760
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchContentByViewMode(Z)V

    .line 761
    return-void
.end method

.method private switchViewContent(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 2

    .line 394
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 395
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-static {v1}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->getInstance(Lcom/jrdcom/filemanager/IActivityListener;)Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 397
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->setAppHandler(Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;)V

    .line 399
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$1;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$1;-><init>(Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    sput-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 409
    return-void
.end method

.method private updateEditBarWidgetState(I)V
    .locals 0

    .line 851
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateViewByTag()V

    .line 852
    return-void
.end method

.method private updateEditFragment()V
    .locals 1

    .line 1036
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->changePrivateEditMode()V

    .line 1037
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchContent(Landroid/app/Fragment;)V

    .line 1038
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updatePrivateEditMode()V

    .line 1039
    return-void
.end method

.method private varargs updateFragment(Ljava/lang/String;[Z)V
    .locals 1

    .line 768
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSafeTagMode:Ljava/lang/String;

    .line 769
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 770
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 771
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryTag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 773
    const-wide/16 p1, 0x1

    invoke-static {p1, p2}, Lcom/jrdcom/filemanager/manager/SafeManager;->setCurrentMode(J)V

    .line 774
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 775
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->ShowCategoryContent()V

    .line 776
    return-void

    .line 778
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchContentByViewMode(Z)V

    .line 779
    return-void
.end method

.method private updateFragmentView(I)V
    .locals 2

    .line 463
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->invalidateOptionsMenu()V

    .line 464
    const/4 v0, 0x1

    const-string v1, ""

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 471
    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 467
    const/4 p1, 0x0

    iput p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->selectCount:I

    .line 468
    nop

    .line 475
    :goto_0
    return-void
.end method

.method private updateView(I)V
    .locals 3

    .line 479
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 499
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    .line 500
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 502
    :cond_1
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 503
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mEditImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 504
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSortImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 481
    :cond_3
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 482
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mEditImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 483
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 486
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->isShowFileTypeInterface()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 487
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 489
    :cond_5
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    :cond_6
    :goto_0
    sget-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSortImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    .line 493
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    :cond_7
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700fb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    iput v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->selectCount:I

    .line 497
    nop

    .line 509
    :goto_1
    return-void
.end method


# virtual methods
.method public HideActionbar(Z)V
    .locals 0

    .line 647
    return-void
.end method

.method public cancelScrollActionbar()V
    .locals 0

    .line 982
    return-void
.end method

.method public changeFileTypeFragment()V
    .locals 2

    .line 220
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jrdcom/filemanager/manager/SafeManager;->isPrivateFileTypeInterface:Z

    .line 221
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSortImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 224
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_1

    .line 228
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    sput-object v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 230
    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->commitFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 231
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActibarText:Landroid/widget/TextView;

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 233
    :cond_1
    return-void
.end method

.method public changeSearchMode(Z)V
    .locals 0

    .line 603
    return-void
.end method

.method public checkPermission()V
    .locals 2

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isUerGrant(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-static {v0, p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->popPermissionDialog(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 241
    :cond_0
    sget-object v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->permissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 242
    sget-object v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->permissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 243
    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->checkAndRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 247
    :cond_1
    :goto_0
    return-void
.end method

.method public clearAdapter()V
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearAdapter()V

    .line 998
    :cond_0
    return-void
.end method

.method public doHideFloatButton()V
    .locals 0

    .line 620
    return-void
.end method

.method public enableScrollActionbar()V
    .locals 0

    .line 987
    return-void
.end method

.method public getFileActionMode()I
    .locals 1

    .line 558
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileMode()I

    move-result v0

    return v0
.end method

.method public getSlideLimite()I
    .locals 1

    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public initActionBar()V
    .locals 4

    .line 117
    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    .line 118
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mlayout:Landroid/view/LayoutInflater;

    .line 119
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->Mainframe:Landroid/widget/RelativeLayout;

    .line 120
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mlayout:Landroid/view/LayoutInflater;

    const v1, 0x7f0b005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 122
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v2}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 125
    new-instance v1, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 127
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 129
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 134
    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    .line 135
    const v1, 0x7f08011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mEditImg:Landroid/widget/ImageView;

    .line 136
    const v1, 0x7f080120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSortImg:Landroid/widget/ImageView;

    .line 137
    const v1, 0x7f08011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActibarText:Landroid/widget/TextView;

    .line 138
    const v1, 0x7f08011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mOKImg:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mEditImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSortImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mOKImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSortImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mOKImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActibarText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getSafeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public initMorePopWindow()Landroid/view/View;
    .locals 11

    .line 793
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 794
    const v1, 0x7f0b005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 795
    const v1, 0x7f08015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 796
    const v2, 0x7f080157

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 797
    const v3, 0x7f08001b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 798
    const v4, 0x7f0801a6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 799
    const v5, 0x7f080126

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 800
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    sget-object v6, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v7, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    const/16 v8, 0x8

    if-ne v6, v7, :cond_0

    .line 806
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 808
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 812
    :cond_0
    iget v6, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->selectCount:I

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 813
    iget-object v6, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v6}, Lcom/jrdcom/filemanager/IActivityListener;->checkIsSelectAll()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 814
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 815
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 817
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 818
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 821
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileActionMode()I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_3

    .line 822
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 823
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 824
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 825
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 827
    :cond_3
    sget v6, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    const/4 v10, 0x2

    if-ne v6, v10, :cond_4

    .line 828
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 829
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 831
    :cond_4
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 832
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 834
    :goto_1
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 836
    :goto_2
    iget v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->selectCount:I

    if-nez v2, :cond_6

    .line 837
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileActionMode()I

    move-result v2

    if-ne v2, v9, :cond_5

    .line 838
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 840
    :cond_5
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 841
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 843
    :goto_3
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 847
    :cond_6
    :goto_4
    return-object v0
.end method

.method public isDeleteFlag(Z)V
    .locals 0

    .line 651
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 251
    invoke-super {p0, p1, p2, p3}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 252
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->isRefreshFilesCategory:Z

    .line 253
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x11

    if-ne p1, p2, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchFragment()V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->checkPermission()V

    .line 258
    :goto_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2

    .line 89
    :try_start_0
    instance-of v0, p1, Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 90
    move-object v0, p1

    check-cast v0, Lcom/jrdcom/filemanager/IActivityListener;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 93
    :cond_0
    instance-of v0, p1, Lcom/jrdcom/filemanager/ISafeCategoryListener;

    if-eqz v0, :cond_1

    .line 94
    move-object v0, p1

    check-cast v0, Lcom/jrdcom/filemanager/ISafeCategoryListener;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    .line 96
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 97
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-static {v1}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->getInstance(Lcom/jrdcom/filemanager/IActivityListener;)Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 99
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->setAppHandler(Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_2
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    :goto_0
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 105
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    .line 670
    invoke-static {}, Lcom/jrdcom/filemanager/manager/IconManager;->getInstance()Lcom/jrdcom/filemanager/manager/IconManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/IconManager;->clearAll()V

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jrdcom/filemanager/IActivityListener;->showNoSearchResults(ZLjava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/IActivityListener;->showNoFolderResultView(Z)V

    .line 676
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->isShowFileTypeInterface()Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    sput-boolean v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->isEnterSaveStateMethod:Z

    .line 678
    sput-boolean v1, Lcom/jrdcom/filemanager/manager/SafeManager;->isPrivateFileTypeInterface:Z

    .line 679
    sput v3, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveCategory:I

    .line 680
    sput v3, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveSafeCategory:I

    .line 681
    sput v3, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveOperation:I

    .line 682
    sput v4, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveStatus:I

    .line 683
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setFileActionMode(I)V

    .line 684
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveCheckedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 685
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 686
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->finish()V

    .line 687
    return-void

    .line 689
    :cond_1
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->isShowFileTypeInterface()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 690
    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    invoke-interface {v0, v4}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->clickAddFileBtn(Z)V

    .line 692
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->isShowFileTypeInterface()Z

    move-result v0

    if-nez v0, :cond_3

    .line 693
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 696
    :cond_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchFragment()V

    .line 698
    :cond_3
    :goto_0
    return-void

    .line 700
    :cond_4
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    const/4 v2, 0x2

    if-ne v0, v1, :cond_5

    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne v0, v2, :cond_5

    .line 701
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchFileTypeInterface()V

    .line 702
    return-void

    .line 705
    :cond_5
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne v0, v1, :cond_c

    .line 706
    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileActionMode()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 707
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->finish()V

    .line 709
    :cond_6
    sget-wide v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentmode:J

    const-wide/16 v5, 0x1

    cmp-long v0, v0, v5

    if-nez v0, :cond_7

    .line 710
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileActionMode()I

    move-result v0

    if-eq v0, v4, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileActionMode()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 711
    :cond_8
    sput v4, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 712
    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_9

    .line 713
    sput v4, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentmode:I

    .line 714
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setFileActionMode(I)V

    .line 715
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$2;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity$2;-><init>(Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 724
    return-void

    .line 726
    :cond_9
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->ShowCategoryContent()V

    .line 727
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v1, "category"

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changeSafePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 728
    sput v4, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentmode:I

    .line 729
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setFileActionMode(I)V

    .line 730
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileActionMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateView(I)V

    goto :goto_1

    .line 733
    :cond_a
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_b

    .line 734
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->onBackPressed()V

    .line 737
    :cond_b
    :goto_1
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateBarTitle(I)V

    .line 738
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateViewByTag()V

    .line 739
    return-void

    .line 741
    :cond_c
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActibarText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getSafeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 744
    :catch_0
    move-exception v0

    .line 745
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 742
    :catch_1
    move-exception v0

    .line 743
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 746
    :goto_2
    nop

    .line 747
    :goto_3
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onBackPressed()V

    .line 748
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1043
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance()Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object p1

    .line 1044
    const/4 v0, -0x2

    if-eq p2, v0, :cond_4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_5

    .line 1053
    if-eqz p1, :cond_3

    .line 1054
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDailogTag()Ljava/lang/String;

    move-result-object p1

    .line 1055
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "DeleteDialogTag"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1056
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->deleteFileResponse()V

    goto :goto_0

    .line 1057
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "removeprivateDialogTag"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1058
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->removePrivateMode()V

    .line 1060
    :cond_2
    :goto_0
    const/4 p1, 0x0

    sput-object p1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 1061
    goto :goto_1

    .line 1062
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, p2}, Lcom/jrdcom/filemanager/IActivityListener;->clickProgressBtn(I)V

    goto :goto_1

    .line 1046
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_5

    .line 1047
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {}, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->getCreateTaskTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->cancelTaskTime:J

    .line 1048
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, p2}, Lcom/jrdcom/filemanager/IActivityListener;->clickProgressBtn(I)V

    .line 1067
    :cond_5
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 285
    :sswitch_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_8

    .line 289
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickSelectAllBtn()V

    goto/16 :goto_0

    .line 324
    :sswitch_1
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_1

    .line 325
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_8

    .line 328
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickEditBtn()V

    goto/16 :goto_0

    .line 316
    :sswitch_2
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_2

    .line 317
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_8

    .line 320
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickRemovePrivateMode()V

    goto/16 :goto_0

    .line 313
    :sswitch_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->showChoiceResourceDialog(ILandroid/view/View;)V

    .line 314
    goto/16 :goto_0

    .line 307
    :sswitch_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_8

    .line 308
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickAddPrivateMode()V

    goto/16 :goto_0

    .line 276
    :sswitch_5
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 277
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 278
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 279
    new-instance v3, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    .line 280
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->initMorePopWindow()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x2

    invoke-direct {v3, v4, v2, v5, p0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;-><init>(Landroid/view/View;IILandroid/app/Activity;)V

    sput-object v3, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    .line 281
    sget-object v2, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0, v1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->showAtLocationBasedAnchor(Landroid/view/View;II)V

    .line 282
    goto :goto_0

    .line 332
    :sswitch_6
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 334
    sget-object v2, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne v2, v3, :cond_3

    sget v2, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne v2, v1, :cond_3

    .line 335
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchFileTypeInterface()V

    .line 336
    return-void

    .line 338
    :cond_3
    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 339
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setFileActionMode(I)V

    .line 340
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateBarView()V

    .line 341
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_8

    .line 342
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearChecked()V

    .line 343
    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 344
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchFragment()V

    goto :goto_0

    .line 346
    :cond_4
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchSafeCategoryList()V

    goto :goto_0

    .line 293
    :sswitch_7
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_5

    .line 294
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 296
    :cond_5
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 297
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    :cond_6
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->clearAdapter()V

    .line 300
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    if-eqz v0, :cond_7

    sget-object v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    if-ne v1, v2, :cond_7

    .line 301
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->clickAddFileBtn(Z)V

    goto :goto_0

    .line 303
    :cond_7
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->changeFileTypeFragment()V

    .line 305
    nop

    .line 351
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onClick(Landroid/view/View;)V

    .line 352
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08001b -> :sswitch_7
        0x7f08011a -> :sswitch_6
        0x7f08011c -> :sswitch_5
        0x7f08011d -> :sswitch_4
        0x7f080120 -> :sswitch_3
        0x7f080126 -> :sswitch_2
        0x7f080157 -> :sswitch_1
        0x7f08015a -> :sswitch_0
        0x7f0801a6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1071
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1072
    sget-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_0

    .line 1073
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->reshowMorePop(Landroid/view/View;)V

    .line 1075
    :cond_0
    sget-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    const-string v0, "gridMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1076
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v0}, Lcom/jrdcom/filemanager/IActivityListener;->changeViewMode(Ljava/lang/String;)V

    .line 1078
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 860
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onDestroy()V

    .line 861
    const/4 v0, 0x1

    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentmode:I

    .line 862
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setFileActionMode(I)V

    .line 863
    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 864
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCountText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 865
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v1, :cond_0

    .line 866
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v0, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    .line 868
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jrdcom/filemanager/manager/SafeManager;->notQuitSafe:Z

    .line 869
    const/4 v1, -0x1

    sput v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 870
    sput v1, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 871
    const/4 v1, 0x0

    sput-object v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 872
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->isRefreshFilesCategory:Z

    .line 873
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 788
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 789
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 263
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 268
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->onBackPressed()V

    .line 266
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 877
    const/4 p3, 0x3

    if-ne p3, p1, :cond_3

    .line 878
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_3

    aget-object v0, p2, p3

    .line 879
    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x17

    if-eqz v0, :cond_0

    .line 880
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 881
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->setSecondRequestPermission(Landroid/content/Context;)V

    .line 882
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->finish()V

    goto :goto_1

    .line 885
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 886
    sget v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->enterPermissionResultCount:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 887
    sput v2, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->enterPermissionResultCount:I

    .line 888
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchFragment()V

    goto :goto_1

    .line 890
    :cond_1
    sget v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->enterPermissionResultCount:I

    add-int/2addr v0, v2

    sput v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->enterPermissionResultCount:I

    .line 878
    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 896
    :cond_3
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1026
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1027
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileActionMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1028
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateEditFragment()V

    goto :goto_0

    .line 1029
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileActionMode()I

    move-result p1

    if-ne p1, v0, :cond_1

    sget p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne p1, v0, :cond_1

    .line 1030
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateEditFragment()V

    .line 1032
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateBarView()V

    .line 1033
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, 0x3

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    .line 113
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1002
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1003
    const/4 p1, 0x1

    sput-boolean p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->isEnterSaveStateMethod:Z

    .line 1004
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    sput p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveCategory:I

    .line 1005
    sget p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    sput p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveSafeCategory:I

    .line 1006
    sget p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    sput p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveOperation:I

    .line 1007
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    if-eqz p1, :cond_0

    .line 1008
    invoke-interface {p1}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->isShowFileTypeInterface()Z

    move-result p1

    sput-boolean p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->isshowFileTypeInterface:Z

    .line 1010
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mQueryText:Ljava/lang/String;

    sput-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveQueryText:Ljava/lang/String;

    .line 1011
    sget-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_1

    .line 1012
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileActionMode()I

    move-result p1

    sput p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveStatus:I

    .line 1014
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_2

    .line 1015
    sget-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveCheckedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1016
    sget-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveSelectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1017
    sget-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_2

    .line 1018
    sget-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveCheckedList:Ljava/util/List;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->getCheckedList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1019
    sget-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveSelectedList:Ljava/util/List;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->saveSelectedList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1022
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 900
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onStop()V

    .line 909
    return-void
.end method

.method public onUnmounted(Ljava/lang/String;)V
    .locals 1

    .line 913
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onUnmounted(Ljava/lang/String;)V

    .line 914
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSafeRootPath:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSDCardRootPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSafeRootPath:Ljava/lang/String;

    .line 915
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->isSDCardMounted()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mOtgRootPath:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSafeRootPath:Ljava/lang/String;

    .line 916
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->isOtgMounted()Z

    move-result p1

    if-nez p1, :cond_2

    .line 917
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->finish()V

    .line 919
    :cond_2
    return-void
.end method

.method public pasteBtnUpdated()V
    .locals 0

    .line 611
    return-void
.end method

.method public reSearch()V
    .locals 0

    .line 548
    return-void
.end method

.method public refreashSafeFilesCategory()V
    .locals 0

    .line 660
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchFragment()V

    .line 661
    return-void
.end method

.method protected refreshPathAdapter(Ljava/lang/String;)V
    .locals 17

    .line 513
    move-object/from16 v0, p0

    .line 514
    sget v1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 515
    iget-object v3, v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v5, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_0

    .line 518
    :cond_0
    iget-object v10, v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v11, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v12, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 522
    :goto_0
    return-void
.end method

.method public setCaseNotFinish(Z)V
    .locals 0

    .line 616
    return-void
.end method

.method public setFileActionMode(I)V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput p1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 553
    invoke-static {p0, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefsStatus(Landroid/content/Context;I)V

    .line 554
    return-void
.end method

.method public setMainContentView()V
    .locals 4

    .line 151
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setContentView(I)V

    .line 152
    const v0, 0x7f080170

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->snackbarLayout:Landroid/widget/LinearLayout;

    .line 153
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->snackTextView:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mainLayout:Landroid/widget/RelativeLayout;

    .line 155
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 156
    new-instance v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    .line 157
    new-instance v0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    .line 159
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mParams:Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 160
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->initActionBar()V

    .line 161
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->initFloatMenu()V

    .line 162
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 164
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    if-nez v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-static {v3}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->getInstance(Lcom/jrdcom/filemanager/IActivityListener;)Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 166
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/FileManagerApplication;->setAppHandler(Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;)V

    .line 168
    :cond_0
    if-eqz v0, :cond_1

    .line 169
    const-string v2, "currentsafepath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->currentSafePath:Ljava/lang/String;

    .line 171
    :cond_1
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    goto :goto_1

    .line 172
    :cond_3
    :goto_0
    const-string v0, "listMode"

    invoke-static {p0, v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefViewBy(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    :goto_1
    const-string v0, "category"

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSafeTagMode:Ljava/lang/String;

    .line 177
    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCountText:Landroid/widget/TextView;

    .line 178
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v2, v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changeSafePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getCurrentSafeRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 180
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getCurrentSafeRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSafeRootPath:Ljava/lang/String;

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-eqz v0, :cond_6

    .line 183
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSDCardRootPath:Ljava/lang/String;

    .line 186
    :cond_5
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->isOtgMounted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mOtgRootPath:Ljava/lang/String;

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-nez v0, :cond_7

    .line 191
    new-instance v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    .line 193
    :cond_7
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    if-nez v0, :cond_8

    .line 194
    new-instance v0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    .line 195
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSafeTagMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->setMode(Ljava/lang/String;)V

    .line 197
    :cond_8
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->checkPermission()V

    .line 198
    sget v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveStatus:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 199
    sget-boolean v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->isEnterSaveStateMethod:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->isshowFileTypeInterface:Z

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_9

    .line 200
    sput-boolean v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->isEnterSaveStateMethod:Z

    .line 201
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->changeFileTypeFragment()V

    goto :goto_2

    .line 203
    :cond_9
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchFragment()V

    goto :goto_2

    .line 205
    :cond_a
    sget v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    sget v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveOperation:I

    if-ne v0, v2, :cond_b

    .line 206
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setFileActionMode(I)V

    .line 207
    sput v2, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveStatus:I

    goto :goto_2

    .line 208
    :cond_b
    sget v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveStatus:I

    if-ne v0, v3, :cond_c

    sget v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveOperation:I

    if-ne v0, v3, :cond_c

    .line 209
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setFileActionMode(I)V

    .line 210
    sput v2, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveStatus:I

    .line 211
    sget v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveOperation:I

    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 212
    sput v2, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSaveOperation:I

    .line 214
    :cond_c
    :goto_2
    sput-boolean v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->isshowFileTypeInterface:Z

    .line 215
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateViewByTag()V

    .line 216
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateViewByTag()V

    .line 217
    return-void
.end method

.method public showBottomView(Ljava/lang/String;)V
    .locals 0

    .line 666
    return-void
.end method

.method public switchContent(Landroid/app/Fragment;)V
    .locals 2

    .line 372
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    if-eq v0, v1, :cond_0

    .line 373
    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/manager/CategoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->clearMap()V

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 376
    sget-object v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eq v1, p1, :cond_3

    .line 377
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 378
    const v1, 0x7f0800c3

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 379
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 380
    sput-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 381
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_1

    .line 382
    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchViewContent(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    if-ne p1, v0, :cond_2

    .line 384
    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchCategoryViewContent(Landroid/app/Fragment;)V

    .line 386
    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    if-ne p1, v0, :cond_4

    .line 387
    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchCategoryViewContent(Landroid/app/Fragment;)V

    goto :goto_1

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_5

    .line 389
    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchViewContent(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 391
    :cond_5
    :goto_1
    return-void
.end method

.method public switchContentByViewMode(Z)V
    .locals 0

    .line 364
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-nez p1, :cond_0

    .line 365
    new-instance p1, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {p1}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    .line 367
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchContent(Landroid/app/Fragment;)V

    .line 368
    return-void
.end method

.method public switchFileTypeInterface()V
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearAdapter()V

    .line 943
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jrdcom/filemanager/manager/SafeManager;->isPrivateFileTypeInterface:Z

    .line 944
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchSafeCateogryFragment()V

    .line 945
    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 946
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setFileActionMode(I)V

    .line 947
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateBarView()V

    .line 948
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 949
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 951
    :cond_1
    return-void
.end method

.method public switchFragment()V
    .locals 4

    .line 955
    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v0

    .line 956
    if-lez v0, :cond_1

    .line 957
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 958
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 959
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 960
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    .line 961
    if-eqz v1, :cond_0

    .line 962
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    sput-object v2, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 963
    const v3, 0x7f0800c3

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 965
    :cond_0
    const/4 v1, 0x1

    sput v1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 966
    const/16 v1, 0xc

    sput v1, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 968
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCountText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 969
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCountText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0c00cb

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchSafeCategoryList()V

    goto :goto_0

    .line 974
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->switchSafeCateogryFragment()V

    .line 977
    :cond_2
    :goto_0
    return-void
.end method

.method public switchSafeCateogryFragment()V
    .locals 3

    .line 922
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 923
    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_2

    .line 927
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    sput-object v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 928
    const v2, 0x7f0800c3

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 929
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActibarText:Landroid/widget/TextView;

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 930
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCountText:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 931
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSortImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 934
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 937
    :cond_2
    return-void
.end method

.method public toReleaseWakeLock()V
    .locals 0

    .line 625
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->releaseWakeLock()V

    .line 626
    return-void
.end method

.method public toShowForbiddenDialog()V
    .locals 0

    .line 607
    return-void
.end method

.method public updateActionbar()V
    .locals 1

    .line 568
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateBarTitle(I)V

    .line 569
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->invalidateOptionsMenu()V

    .line 570
    return-void
.end method

.method public updateBarTitle(I)V
    .locals 4

    .line 573
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez p1, :cond_0

    .line 574
    return-void

    .line 575
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez p1, :cond_1

    .line 576
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 578
    :cond_1
    sget p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    if-eq p1, v0, :cond_2

    .line 579
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCountText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCountText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0c00cb

    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 582
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCountText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    :goto_0
    sget-wide v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentmode:J

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    .line 586
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileActionMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 587
    sget-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActibarText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->selectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 589
    :cond_3
    sget-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActibarText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getSafeTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 592
    :cond_4
    sget-object p1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActibarText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getSafeTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :goto_1
    return-void
.end method

.method public updateBarView()V
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateView(I)V

    .line 564
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateViewByTag()V

    .line 565
    return-void
.end method

.method protected updateCategoryNormalBar()V
    .locals 0

    .line 361
    return-void
.end method

.method public updateCategoryNormalBarView()V
    .locals 0

    .line 356
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateCategoryNormalBar()V

    .line 357
    return-void
.end method

.method public updateEditBar(IZZZZZZ)V
    .locals 1

    .line 526
    iget-object p3, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mBtnMore:Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    .line 527
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mBtnMore:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 528
    return-void

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07006f

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 532
    iget-object p3, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mBtnEditBack:Landroid/widget/ImageView;

    if-eqz p3, :cond_1

    .line 533
    iget-object p3, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mBtnEditBack:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    :cond_1
    iput p1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->selectCount:I

    .line 536
    iput-boolean p2, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mIsHasDir:Z

    .line 537
    iput-boolean p4, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mIsHasDrm:Z

    .line 538
    iput-boolean p5, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCanShare:Z

    .line 539
    iput-boolean p6, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mHasAllPrivate:Z

    .line 540
    iput-boolean p7, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mIsFLorSDDrm:Z

    .line 541
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateEditBarWidgetState(I)V

    .line 542
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->invalidateOptionsMenu()V

    .line 543
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateBarTitle(I)V

    .line 544
    return-void
.end method

.method public updateNormalBarView()V
    .locals 0

    .line 598
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->updateNormalBar()V

    .line 599
    return-void
.end method

.method public updateSearch(Ljava/lang/String;)V
    .locals 0

    .line 992
    return-void
.end method

.method public updateViewByTag()V
    .locals 4

    .line 427
    sget-object v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mPrivateCategoryFragment:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    .line 428
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->isShowFileTypeInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSortImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mOKImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne v0, v1, :cond_5

    .line 437
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->getFileActionMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 445
    :cond_2
    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne v0, v1, :cond_3

    .line 446
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSortImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mOKImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 451
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mOKImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSortImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 439
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mSortImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;->mOKImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    :cond_5
    :goto_1
    return-void
.end method
