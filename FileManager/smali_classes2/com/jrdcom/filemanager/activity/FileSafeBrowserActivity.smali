.class public Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;
.super Lcom/jrdcom/filemanager/activity/FileBaseActivity;
.source "FileSafeBrowserActivity.java"

# interfaces
.implements Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$CategoryFragmentListener;
.implements Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static mActibarText:Landroid/widget/TextView;

.field public static mCurrentFragment:Landroid/app/Fragment;


# instance fields
.field protected Mainframe:Landroid/widget/RelativeLayout;

.field fragmentTransaction:Landroid/app/FragmentTransaction;

.field private isFirstEnter:Z

.field public isRefreshFilesCategory:Z

.field private mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

.field private mEditImg:Landroid/widget/ImageView;

.field mFragmentManager:Landroid/app/FragmentManager;

.field protected mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

.field private mMainToolbar:Landroid/support/v7/widget/Toolbar;

.field public mMoreImg:Landroid/widget/ImageView;

.field public mOKImg:Landroid/widget/ImageView;

.field private mOtgRootPath:Ljava/lang/String;

.field private mPrivateCountText:Landroid/widget/TextView;

.field private mSDCardRootPath:Ljava/lang/String;

.field public mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

.field private mSafeRootPath:Ljava/lang/String;

.field private mSafeTagMode:Ljava/lang/String;

.field private mSearchImg:Landroid/widget/ImageView;

.field private mlayout:Landroid/view/LayoutInflater;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    .line 68
    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    .line 81
    const-string v0, "category"

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeTagMode:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->isFirstEnter:Z

    .line 946
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->isRefreshFilesCategory:Z

    return-void
.end method

.method private ShowCategoryContent()V
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchContent(Landroid/app/Fragment;)V

    .line 927
    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateFragmentView(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchSafeCategoryList()V

    return-void
.end method

.method static synthetic access$200(Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateView(I)V

    return-void
.end method

.method private acquireWakeLock(Landroid/content/Context;)V
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 757
    nop

    .line 758
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 759
    const/4 v0, 0x1

    const-string v1, "Paste Task"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 761
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 763
    :cond_0
    return-void
.end method

.method private getSafeTitle()Ljava/lang/String;
    .locals 1

    .line 1042
    const v0, 0x7f0c00cb

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 770
    :cond_0
    return-void
.end method

.method private switchCategoryViewContent(Landroid/app/Fragment;)V
    .locals 1

    .line 499
    const/4 v0, -0x1

    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 500
    move-object v0, p1

    check-cast v0, Lcom/jrdcom/filemanager/ISafeCategoryListener;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    .line 501
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearAdapter()V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getCategoryFileList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 505
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateViewByTag()V

    .line 506
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateCategoryNormalBar()V

    .line 507
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    if-eqz v0, :cond_1

    .line 508
    invoke-interface {v0}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->refreshSafeCategory()V

    .line 510
    :cond_1
    sput-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 511
    return-void
.end method

.method private switchFileTypeInterface()V
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearAdapter()V

    .line 914
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jrdcom/filemanager/manager/SafeManager;->isFileTypeInterface:Z

    .line 915
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchSafeCateogryFragment()V

    .line 916
    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 917
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setFileActionMode(I)V

    .line 918
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateBarView()V

    .line 919
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 920
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 922
    :cond_1
    return-void
.end method

.method private switchSafeCategoryList()V
    .locals 2

    .line 897
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

    if-eq v0, v1, :cond_0

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 903
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActibarText:Landroid/widget/TextView;

    const v1, 0x7f0c0036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 904
    const/16 v0, 0xc

    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 906
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateCategoryNormalBarView()V

    .line 907
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchContentByViewMode(Z)V

    .line 908
    return-void
.end method

.method private switchViewContent(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 2

    .line 479
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 480
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-static {v1}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->getInstance(Lcom/jrdcom/filemanager/IActivityListener;)Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 482
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->setAppHandler(Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;)V

    .line 484
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$1;-><init>(Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 495
    sput-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 496
    return-void
.end method

.method private updateEditBarWidgetState(I)V
    .locals 0

    .line 1038
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateViewByTag()V

    .line 1039
    return-void
.end method

.method private updateEditFragment()V
    .locals 1

    .line 1150
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->changePrivateEditMode()V

    .line 1151
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchContent(Landroid/app/Fragment;)V

    .line 1152
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updatePrivateEditMode()V

    .line 1153
    return-void
.end method

.method private varargs updateFragment(Ljava/lang/String;[Z)V
    .locals 1

    .line 930
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeTagMode:Ljava/lang/String;

    .line 931
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 932
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 933
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryTag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 935
    const-wide/16 p1, 0x1

    invoke-static {p1, p2}, Lcom/jrdcom/filemanager/manager/SafeManager;->setCurrentMode(J)V

    .line 936
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 937
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->ShowCategoryContent()V

    .line 938
    return-void

    .line 940
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchContentByViewMode(Z)V

    .line 941
    return-void
.end method

.method private updateFragmentView(I)V
    .locals 2

    .line 579
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->invalidateOptionsMenu()V

    .line 580
    const/4 v0, 0x1

    const-string v1, ""

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 587
    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 583
    const/4 p1, 0x0

    iput p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->selectCount:I

    .line 584
    nop

    .line 591
    :goto_0
    return-void
.end method

.method private updateView(I)V
    .locals 3

    .line 595
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 632
    :cond_0
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->changeStatusBarColor(Z)V

    .line 633
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 634
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    .line 635
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 637
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    .line 638
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 640
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 641
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 643
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mEditImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_e

    .line 644
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 618
    :cond_4
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->changeStatusBarColor(Z)V

    .line 619
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_5

    .line 620
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 622
    :cond_5
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_6

    .line 623
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 625
    :cond_6
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 626
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mEditImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    .line 627
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 629
    :cond_7
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 630
    goto :goto_0

    .line 597
    :cond_8
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->changeStatusBarColor(Z)V

    .line 598
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 599
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_9

    .line 600
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 602
    :cond_9
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_a

    .line 603
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 605
    :cond_a
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mEditImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    .line 606
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    :cond_b
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    .line 609
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 611
    :cond_c
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    .line 612
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 614
    :cond_d
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700fa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    iput v2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->selectCount:I

    .line 616
    nop

    .line 650
    :cond_e
    :goto_0
    return-void
.end method


# virtual methods
.method public HideActionbar(Z)V
    .locals 0

    .line 774
    return-void
.end method

.method public cancelScrollActionbar()V
    .locals 0

    .line 1158
    return-void
.end method

.method public changeFileTypeFragment()V
    .locals 3

    .line 243
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jrdcom/filemanager/manager/SafeManager;->isFileTypeInterface:Z

    .line 244
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 247
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_1

    .line 251
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    sput-object v1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 252
    const v2, 0x7f0800c3

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 253
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActibarText:Landroid/widget/TextView;

    const v1, 0x7f0c0036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 255
    :cond_1
    return-void
.end method

.method public changeSearchMode(Z)V
    .locals 0

    .line 740
    return-void
.end method

.method public checkPermission()V
    .locals 2

    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isUerGrant(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-static {v0, p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->popPermissionDialog(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 263
    :cond_0
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->permissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 264
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->permissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 265
    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->checkAndRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 269
    :cond_1
    :goto_0
    return-void
.end method

.method public clearAdapter()V
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearAdapter()V

    .line 1196
    :cond_0
    return-void
.end method

.method public doHideFloatButton()V
    .locals 0

    .line 802
    return-void
.end method

.method public enableScrollActionbar()V
    .locals 0

    .line 1163
    return-void
.end method

.method public getFileActionMode()I
    .locals 1

    .line 700
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileMode()I

    move-result v0

    return v0
.end method

.method public getSlideLimite()I
    .locals 1

    .line 782
    const/4 v0, 0x0

    return v0
.end method

.method public hideMoreMenu()V
    .locals 2

    .line 1279
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1280
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1282
    :cond_0
    return-void
.end method

.method public initActionBar()V
    .locals 4

    .line 124
    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    .line 125
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mlayout:Landroid/view/LayoutInflater;

    .line 126
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->Mainframe:Landroid/widget/RelativeLayout;

    .line 127
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mlayout:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 129
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v2}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 132
    new-instance v1, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 134
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 137
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 140
    nop

    .line 141
    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    .line 142
    nop

    .line 143
    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    .line 146
    nop

    .line 147
    const v1, 0x7f080145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBack:Landroid/widget/ImageView;

    .line 148
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->initSearchViewStyle()V

    .line 152
    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    .line 153
    const v1, 0x7f08011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mEditImg:Landroid/widget/ImageView;

    .line 154
    const v1, 0x7f08011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchImg:Landroid/widget/ImageView;

    .line 155
    const v1, 0x7f08011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActibarText:Landroid/widget/TextView;

    .line 156
    const v1, 0x7f08011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mOKImg:Landroid/widget/ImageView;

    .line 157
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mEditImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mOKImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mOKImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActibarText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getSafeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public initMorePopWindow()Landroid/view/View;
    .locals 15

    .line 955
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 956
    const v1, 0x7f0b0065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 957
    const v1, 0x7f08015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 958
    const v2, 0x7f080157

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 959
    const v3, 0x7f08001b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 960
    const v4, 0x7f0801a6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 961
    const v5, 0x7f080126

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 962
    const v6, 0x7f080054

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 963
    const v7, 0x7f080061

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 964
    const v8, 0x7f08012b

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 965
    const v9, 0x7f080163

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 967
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 968
    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 970
    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 971
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 972
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 973
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 974
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 975
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 976
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 977
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 978
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 979
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 980
    sget-object v11, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v12, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    const/4 v13, 0x0

    if-ne v11, v12, :cond_0

    .line 981
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 982
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 983
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 984
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 985
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 987
    :cond_0
    iget v11, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->selectCount:I

    if-eqz v11, :cond_2

    .line 988
    iget-object v11, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v11}, Lcom/jrdcom/filemanager/IActivityListener;->checkIsSelectAll()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 989
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 990
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 992
    :cond_1
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 993
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 996
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 997
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 998
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 999
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1000
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1002
    :cond_3
    sget v11, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    const/4 v14, 0x2

    if-ne v11, v14, :cond_4

    .line 1003
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1004
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1006
    :cond_4
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1007
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    :goto_1
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1011
    :goto_2
    iget v2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->selectCount:I

    if-nez v2, :cond_6

    .line 1012
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result v2

    if-ne v2, v12, :cond_5

    .line 1013
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1015
    :cond_5
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1016
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1018
    :goto_3
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1020
    :cond_6
    iget v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->selectCount:I

    if-ne v1, v12, :cond_7

    sget v1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne v1, v12, :cond_7

    .line 1021
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1022
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1023
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1024
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1025
    :cond_7
    sget v1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne v1, v12, :cond_8

    .line 1026
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1027
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1028
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1029
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1034
    :cond_8
    :goto_4
    return-object v0
.end method

.method public isDeleteFlag(Z)V
    .locals 0

    .line 778
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 273
    invoke-super {p0, p1, p2, p3}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 274
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->isRefreshFilesCategory:Z

    .line 275
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x11

    if-ne p1, p2, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchFragment()V

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->checkPermission()V

    .line 280
    :goto_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2

    .line 88
    :try_start_0
    instance-of v0, p1, Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 89
    move-object v0, p1

    check-cast v0, Lcom/jrdcom/filemanager/IActivityListener;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 92
    :cond_0
    instance-of v0, p1, Lcom/jrdcom/filemanager/ISafeCategoryListener;

    if-eqz v0, :cond_1

    .line 93
    move-object v0, p1

    check-cast v0, Lcom/jrdcom/filemanager/ISafeCategoryListener;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    .line 95
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 96
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-static {v1}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->getInstance(Lcom/jrdcom/filemanager/IActivityListener;)Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 98
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->setAppHandler(Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_2
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    :goto_0
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 104
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    .line 807
    invoke-static {}, Lcom/jrdcom/filemanager/manager/IconManager;->getInstance()Lcom/jrdcom/filemanager/manager/IconManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/IconManager;->clearAll()V

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jrdcom/filemanager/IActivityListener;->showNoSearchResults(ZLjava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/IActivityListener;->showNoFolderResultView(Z)V

    .line 813
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->isShowFileTypeInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne v0, v2, :cond_3

    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne v0, v4, :cond_3

    .line 814
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 815
    :cond_2
    sput-boolean v1, Lcom/jrdcom/filemanager/manager/SafeManager;->isFileTypeInterface:Z

    .line 816
    sput v3, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveCategory:I

    .line 817
    sput v3, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveSafeCategory:I

    .line 818
    sput v3, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveOperation:I

    .line 819
    sput v4, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveStatus:I

    .line 820
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setFileActionMode(I)V

    .line 821
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveCheckedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 822
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 823
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->finish()V

    .line 824
    return-void

    .line 827
    :cond_3
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->isShowFileTypeInterface()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 828
    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_5

    .line 829
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 830
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 832
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    invoke-interface {v0, v4}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->clickAddFileBtn(Z)V

    goto :goto_0

    .line 834
    :cond_5
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchFragment()V

    .line 836
    :goto_0
    return-void

    .line 839
    :cond_6
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    const/4 v2, 0x2

    if-ne v0, v1, :cond_7

    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne v0, v2, :cond_7

    .line 840
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchFileTypeInterface()V

    .line 841
    return-void

    .line 844
    :cond_7
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 845
    sput v4, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentmode:I

    .line 846
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setFileActionMode(I)V

    .line 847
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchSafeCategoryList()V

    .line 848
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateBarView()V

    .line 849
    return-void

    .line 851
    :cond_8
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne v0, v1, :cond_f

    .line 852
    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 853
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->finish()V

    .line 855
    :cond_9
    sget-wide v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentmode:J

    const-wide/16 v5, 0x1

    cmp-long v0, v0, v5

    if-nez v0, :cond_a

    .line 856
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result v0

    if-eq v0, v4, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result v0

    if-ne v0, v2, :cond_d

    .line 857
    :cond_b
    sput v4, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 858
    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_c

    .line 859
    sput v4, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentmode:I

    .line 860
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setFileActionMode(I)V

    .line 861
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$2;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity$2;-><init>(Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 870
    return-void

    .line 872
    :cond_c
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->ShowCategoryContent()V

    .line 873
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v1, "category"

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changeSafePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 874
    sput v4, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentmode:I

    .line 875
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setFileActionMode(I)V

    .line 876
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateView(I)V

    goto :goto_1

    .line 879
    :cond_d
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_e

    .line 880
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->onBackPressed()V

    .line 883
    :cond_e
    :goto_1
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateBarTitle(I)V

    .line 884
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateViewByTag()V

    .line 885
    return-void

    .line 887
    :cond_f
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActibarText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getSafeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 890
    :catch_0
    move-exception v0

    .line 891
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 888
    :catch_1
    move-exception v0

    .line 889
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 892
    :goto_2
    nop

    .line 893
    :goto_3
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onBackPressed()V

    .line 894
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1200
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance()Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object p1

    .line 1201
    const/4 v0, -0x2

    if-eq p2, v0, :cond_4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_5

    .line 1210
    if-eqz p1, :cond_3

    .line 1211
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDailogTag()Ljava/lang/String;

    move-result-object p1

    .line 1212
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "DeleteDialogTag"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1213
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->deleteFileResponse()V

    goto :goto_0

    .line 1214
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "removeprivateDialogTag"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1215
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->removePrivateMode()V

    .line 1217
    :cond_2
    :goto_0
    const/4 p1, 0x0

    sput-object p1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 1218
    goto :goto_1

    .line 1219
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, p2}, Lcom/jrdcom/filemanager/IActivityListener;->clickProgressBtn(I)V

    goto :goto_1

    .line 1203
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_5

    .line 1204
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {}, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->getCreateTaskTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->cancelTaskTime:J

    .line 1205
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, p2}, Lcom/jrdcom/filemanager/IActivityListener;->clickProgressBtn(I)V

    .line 1224
    :cond_5
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 414
    :sswitch_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_0

    .line 415
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_d

    .line 418
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 419
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickShareBtn()V

    goto/16 :goto_0

    .line 307
    :sswitch_1
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_1

    .line 308
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_d

    .line 311
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickSelectAllBtn()V

    goto/16 :goto_0

    .line 354
    :sswitch_2
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_2

    .line 355
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_d

    .line 358
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickEditBtn()V

    goto/16 :goto_0

    .line 382
    :sswitch_3
    sput v2, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentmode:I

    .line 383
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setFileActionMode(I)V

    .line 385
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchSafeCategoryList()V

    .line 386
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateBarView()V

    .line 387
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 388
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    goto/16 :goto_0

    .line 425
    :sswitch_4
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_3

    .line 426
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 428
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_d

    .line 429
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 430
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v1, 0x2712

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    .line 431
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mQueryText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/IActivityListener;->clickRenameBtn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    :sswitch_5
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_4

    .line 346
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 348
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_d

    .line 349
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 350
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickRemovePrivateMode()V

    goto/16 :goto_0

    .line 335
    :sswitch_6
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_5

    .line 336
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickSearchBtn()V

    .line 338
    :cond_5
    const/4 v0, 0x0

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveQueryText:Ljava/lang/String;

    .line 339
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setSearchMode(Z)V

    .line 340
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->saveListBeforeSearch()V

    .line 342
    goto/16 :goto_0

    .line 329
    :sswitch_7
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_d

    .line 330
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickAddPrivateMode()V

    goto/16 :goto_0

    .line 298
    :sswitch_8
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 299
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 300
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 301
    new-instance v3, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    .line 302
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->initMorePopWindow()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x2

    invoke-direct {v3, v4, v2, v5, p0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;-><init>(Landroid/view/View;IILandroid/app/Activity;)V

    sput-object v3, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    .line 303
    sget-object v2, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0, v1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->showAtLocationBasedAnchor(Landroid/view/View;II)V

    .line 304
    goto/16 :goto_0

    .line 362
    :sswitch_9
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 364
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne v0, v1, :cond_6

    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 365
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchFileTypeInterface()V

    .line 366
    return-void

    .line 368
    :cond_6
    sput v2, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 369
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setFileActionMode(I)V

    .line 370
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateBarView()V

    .line 371
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_d

    .line 372
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearChecked()V

    .line 373
    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_7

    .line 374
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchFragment()V

    goto :goto_0

    .line 376
    :cond_7
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchSafeCategoryList()V

    goto :goto_0

    .line 404
    :sswitch_a
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 405
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 407
    :cond_8
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_d

    .line 408
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 409
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickDetailsBtn()V

    goto :goto_0

    .line 393
    :sswitch_b
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_9

    .line 394
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 396
    :cond_9
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_d

    .line 397
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 398
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v1, 0x2711

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    .line 399
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/IActivityListener;->clickDelteBtn(I)V

    goto :goto_0

    .line 315
    :sswitch_c
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_a

    .line 316
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 318
    :cond_a
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 319
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    :cond_b
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->clearAdapter()V

    .line 322
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    if-eqz v0, :cond_c

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    if-ne v1, v2, :cond_c

    .line 323
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->clickAddFileBtn(Z)V

    goto :goto_0

    .line 325
    :cond_c
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->changeFileTypeFragment()V

    .line 327
    nop

    .line 435
    :cond_d
    :goto_0
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onClick(Landroid/view/View;)V

    .line 436
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08001b -> :sswitch_c
        0x7f080052 -> :sswitch_b
        0x7f080054 -> :sswitch_b
        0x7f08005d -> :sswitch_a
        0x7f080061 -> :sswitch_a
        0x7f08011a -> :sswitch_9
        0x7f08011c -> :sswitch_8
        0x7f08011d -> :sswitch_7
        0x7f08011f -> :sswitch_6
        0x7f080126 -> :sswitch_5
        0x7f080129 -> :sswitch_4
        0x7f08012b -> :sswitch_4
        0x7f080145 -> :sswitch_3
        0x7f080157 -> :sswitch_2
        0x7f08015a -> :sswitch_1
        0x7f08015d -> :sswitch_5
        0x7f080161 -> :sswitch_0
        0x7f080163 -> :sswitch_0
        0x7f0801a6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClose()Z
    .locals 1

    .line 1175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setSearchMode(Z)V

    .line 1176
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onClose()Z

    .line 1177
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1265
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1266
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_0

    .line 1267
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1269
    :cond_0
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_1

    .line 1270
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->reshowMorePop(Landroid/view/View;)V

    .line 1272
    :cond_1
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    const-string v0, "gridMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1273
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v0}, Lcom/jrdcom/filemanager/IActivityListener;->changeViewMode(Ljava/lang/String;)V

    .line 1275
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1047
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onDestroy()V

    .line 1048
    const/4 v0, 0x1

    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentmode:I

    .line 1049
    invoke-static {v0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->setCurrentMode(I)V

    .line 1050
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v2, "category"

    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setFileActionMode(I)V

    .line 1052
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v0, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 1053
    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 1054
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v1, :cond_0

    .line 1055
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v0, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    .line 1057
    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 1058
    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 1059
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jrdcom/filemanager/manager/SafeManager;->notQuitSafe:Z

    .line 1060
    const/4 v1, 0x0

    sput-object v1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 1061
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->isRefreshFilesCategory:Z

    .line 1062
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 950
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 951
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 290
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->onBackPressed()V

    .line 288
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 1189
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->queryTextChange(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    .line 1182
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->queryTextSubmit(Ljava/lang/String;)V

    .line 1183
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 1184
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 1066
    const/4 p3, 0x3

    if-ne p3, p1, :cond_3

    .line 1067
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_3

    aget-object v0, p2, p3

    .line 1068
    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x17

    if-eqz v0, :cond_0

    .line 1069
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 1070
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->setSecondRequestPermission(Landroid/content/Context;)V

    .line 1071
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->finish()V

    goto :goto_1

    .line 1074
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 1075
    sget v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->enterPermissionResultCount:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1076
    sput v2, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->enterPermissionResultCount:I

    .line 1077
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchFragment()V

    goto :goto_1

    .line 1079
    :cond_1
    sget v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->enterPermissionResultCount:I

    add-int/2addr v0, v2

    sput v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->enterPermissionResultCount:I

    .line 1067
    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1085
    :cond_3
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onRestart()V

    .line 117
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->finish()V

    .line 120
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1251
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1252
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    sget p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne p1, v0, :cond_0

    .line 1253
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateEditFragment()V

    goto :goto_0

    .line 1254
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result p1

    if-ne p1, v1, :cond_1

    sget p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne p1, v1, :cond_1

    .line 1255
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateEditFragment()V

    goto :goto_0

    .line 1256
    :cond_1
    sget p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveStatus:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    sget p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveOperation:I

    if-ne p1, v0, :cond_2

    .line 1257
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchSafeCategoryList()V

    .line 1258
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->searchStatusChanageScreen()V

    .line 1260
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateBarView()V

    .line 1261
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, 0x2

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    .line 112
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1228
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1229
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    sput p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveCategory:I

    .line 1230
    sget p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    sput p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveSafeCategory:I

    .line 1231
    sget p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    sput p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveOperation:I

    .line 1232
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/ISafeCategoryListener;

    if-eqz p1, :cond_0

    .line 1233
    invoke-interface {p1}, Lcom/jrdcom/filemanager/ISafeCategoryListener;->isShowFileTypeInterface()Z

    move-result p1

    sput-boolean p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->isshowFileTypeInterface:Z

    .line 1235
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mQueryText:Ljava/lang/String;

    sput-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveQueryText:Ljava/lang/String;

    .line 1236
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_1

    .line 1237
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result p1

    sput p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveStatus:I

    .line 1239
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_2

    .line 1240
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveCheckedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1241
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveSelectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1242
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_2

    .line 1243
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveCheckedList:Ljava/util/List;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->getCheckedList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1244
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveSelectedList:Ljava/util/List;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->saveSelectedList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1247
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1089
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onStop()V

    .line 1098
    return-void
.end method

.method public onUnmounted(Ljava/lang/String;)V
    .locals 1

    .line 1102
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onUnmounted(Ljava/lang/String;)V

    .line 1103
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeRootPath:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSDCardRootPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeRootPath:Ljava/lang/String;

    .line 1104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->isSDCardMounted()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mOtgRootPath:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeRootPath:Ljava/lang/String;

    .line 1105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->isOtgMounted()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1106
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->finish()V

    .line 1108
    :cond_2
    return-void
.end method

.method public pasteBtnUpdated()V
    .locals 0

    .line 748
    return-void
.end method

.method public reSearch()V
    .locals 0

    .line 690
    return-void
.end method

.method public refreashSafeFilesCategory()V
    .locals 0

    .line 787
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchFragment()V

    .line 788
    return-void
.end method

.method protected refreshPathAdapter(Ljava/lang/String;)V
    .locals 17

    .line 654
    move-object/from16 v0, p0

    .line 655
    sget v1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 656
    iget-object v1, v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x2

    iput v2, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    .line 657
    iget-object v3, v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v5, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_0

    .line 660
    :cond_0
    iget-object v10, v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v11, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v12, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v13, 0x2

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 664
    :goto_0
    return-void
.end method

.method public setCaseNotFinish(Z)V
    .locals 0

    .line 798
    return-void
.end method

.method public setFileActionMode(I)V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput p1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 695
    invoke-static {p0, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefsStatus(Landroid/content/Context;I)V

    .line 696
    return-void
.end method

.method public setMainContentView()V
    .locals 4

    .line 170
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setContentView(I)V

    .line 171
    const v0, 0x7f080170

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->snackbarLayout:Landroid/widget/LinearLayout;

    .line 172
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->snackTextView:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mainLayout:Landroid/widget/RelativeLayout;

    .line 174
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 175
    new-instance v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    .line 176
    new-instance v0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    .line 178
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mParams:Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 179
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->initActionBar()V

    .line 180
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->initFloatMenu()V

    .line 181
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    const-string v2, "isFirstEnter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->isFirstEnter:Z

    .line 184
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 186
    :cond_0
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 187
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-static {v2}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->getInstance(Lcom/jrdcom/filemanager/IActivityListener;)Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v2

    iput-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 189
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/FileManagerApplication;->setAppHandler(Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;)V

    .line 192
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

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    goto :goto_1

    .line 193
    :cond_3
    :goto_0
    const-string v0, "listMode"

    invoke-static {p0, v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefViewBy(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    :goto_1
    const-string v0, "category"

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeTagMode:Ljava/lang/String;

    .line 198
    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mPrivateCountText:Landroid/widget/TextView;

    .line 199
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v2, v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changeSafePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getCurrentSafeRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 202
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getCurrentSafeRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeRootPath:Ljava/lang/String;

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-eqz v0, :cond_6

    .line 205
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSDCardRootPath:Ljava/lang/String;

    .line 208
    :cond_5
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->isOtgMounted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mOtgRootPath:Ljava/lang/String;

    .line 212
    :cond_6
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    if-nez v0, :cond_7

    .line 213
    new-instance v0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    .line 214
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeTagMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->setMode(Ljava/lang/String;)V

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-nez v0, :cond_8

    .line 217
    new-instance v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    .line 219
    :cond_8
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->checkPermission()V

    .line 220
    sget v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveStatus:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 221
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->isFirstEnter:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->isshowFileTypeInterface:Z

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_9

    .line 222
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->changeFileTypeFragment()V

    goto :goto_2

    .line 224
    :cond_9
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchFragment()V

    goto :goto_2

    .line 226
    :cond_a
    sget v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    sget v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveOperation:I

    if-ne v0, v2, :cond_b

    .line 227
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setFileActionMode(I)V

    .line 228
    sput v2, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveStatus:I

    goto :goto_2

    .line 229
    :cond_b
    sget v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveStatus:I

    if-ne v0, v3, :cond_c

    sget v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveOperation:I

    if-ne v0, v3, :cond_c

    .line 230
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setFileActionMode(I)V

    .line 231
    sput v2, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveStatus:I

    .line 232
    sget v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveOperation:I

    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 233
    sput v2, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveOperation:I

    goto :goto_2

    .line 234
    :cond_c
    sget v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveStatus:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_d

    sget v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveOperation:I

    if-ne v0, v2, :cond_d

    .line 235
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setFileActionMode(I)V

    .line 236
    sput v2, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSaveStatus:I

    .line 238
    :cond_d
    :goto_2
    sput-boolean v1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->isshowFileTypeInterface:Z

    .line 239
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateViewByTag()V

    .line 240
    return-void
.end method

.method public showBottomView(Ljava/lang/String;)V
    .locals 0

    .line 793
    return-void
.end method

.method public switchContent(Landroid/app/Fragment;)V
    .locals 2

    .line 456
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    if-eq v0, v1, :cond_0

    .line 457
    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/manager/CategoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->clearMap()V

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 460
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eq v1, p1, :cond_3

    .line 461
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 462
    const v1, 0x7f0800c3

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 463
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 464
    sput-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 465
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_1

    .line 466
    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefsStatus(Landroid/content/Context;I)V

    .line 467
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchViewContent(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    if-ne p1, v0, :cond_2

    .line 469
    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchCategoryViewContent(Landroid/app/Fragment;)V

    .line 471
    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    if-ne p1, v0, :cond_4

    .line 472
    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchCategoryViewContent(Landroid/app/Fragment;)V

    goto :goto_1

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_5

    .line 474
    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchViewContent(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 476
    :cond_5
    :goto_1
    return-void
.end method

.method public switchContentByViewMode(Z)V
    .locals 0

    .line 448
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-nez p1, :cond_0

    .line 449
    new-instance p1, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {p1}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    .line 451
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchContent(Landroid/app/Fragment;)V

    .line 452
    return-void
.end method

.method public switchFragment()V
    .locals 3

    .line 1129
    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result v0

    .line 1130
    if-lez v0, :cond_1

    .line 1131
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1132
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 1133
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1134
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    .line 1135
    if-eqz v0, :cond_0

    .line 1136
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    sput-object v1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 1137
    const v2, 0x7f0800c3

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1139
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 1140
    const/16 v0, 0xc

    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 1141
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchSafeCategoryList()V

    goto :goto_0

    .line 1144
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->switchSafeCateogryFragment()V

    .line 1147
    :cond_2
    :goto_0
    return-void
.end method

.method public switchSafeCateogryFragment()V
    .locals 3

    .line 1111
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1112
    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_2

    .line 1116
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    sput-object v1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 1117
    const v2, 0x7f0800c3

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1118
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mPrivateCountText:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 1119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1121
    :cond_1
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActibarText:Landroid/widget/TextView;

    const v2, 0x7f0c0036

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1122
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1123
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1126
    :cond_2
    return-void
.end method

.method public toReleaseWakeLock()V
    .locals 0

    .line 752
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->releaseWakeLock()V

    .line 753
    return-void
.end method

.method public toShowForbiddenDialog()V
    .locals 0

    .line 744
    return-void
.end method

.method public updateActionbar()V
    .locals 1

    .line 710
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateBarTitle(I)V

    .line 711
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->invalidateOptionsMenu()V

    .line 712
    return-void
.end method

.method public updateBarTitle(I)V
    .locals 4

    .line 715
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez p1, :cond_0

    .line 716
    return-void

    .line 717
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez p1, :cond_1

    .line 718
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 721
    :cond_1
    sget-wide v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentmode:J

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 723
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 724
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActibarText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->selectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 726
    :cond_2
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActibarText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getSafeTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 729
    :cond_3
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mActibarText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getSafeTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    :goto_0
    return-void
.end method

.method public updateBarView()V
    .locals 1

    .line 705
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateView(I)V

    .line 706
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateViewByTag()V

    .line 707
    return-void
.end method

.method protected updateCategoryNormalBar()V
    .locals 0

    .line 445
    return-void
.end method

.method public updateCategoryNormalBarView()V
    .locals 0

    .line 440
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateCategoryNormalBar()V

    .line 441
    return-void
.end method

.method public updateEditBar(IZZZZZZ)V
    .locals 1

    .line 668
    iget-object p3, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mBtnMore:Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    .line 669
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mBtnMore:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 670
    return-void

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07006f

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 673
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 674
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    :cond_1
    iput p1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->selectCount:I

    .line 678
    iput-boolean p2, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mIsHasDir:Z

    .line 679
    iput-boolean p4, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mIsHasDrm:Z

    .line 680
    iput-boolean p5, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCanShare:Z

    .line 681
    iput-boolean p6, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mHasAllPrivate:Z

    .line 682
    iput-boolean p7, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mIsFLorSDDrm:Z

    .line 683
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateEditBarWidgetState(I)V

    .line 684
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->invalidateOptionsMenu()V

    .line 685
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateBarTitle(I)V

    .line 686
    return-void
.end method

.method public updateNormalBarView()V
    .locals 0

    .line 735
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->updateNormalBar()V

    .line 736
    return-void
.end method

.method public updateSearch(Ljava/lang/String;)V
    .locals 0

    .line 1171
    return-void
.end method

.method public updateViewByTag()V
    .locals 4

    .line 515
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSafeCategoryFragment:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_3

    .line 516
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 522
    :cond_1
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mOKImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 529
    :cond_3
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne v0, v1, :cond_e

    .line 530
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getFileActionMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto/16 :goto_1

    .line 564
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 565
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 567
    :cond_5
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    .line 568
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 570
    :cond_6
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 544
    :cond_7
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    .line 545
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 547
    :cond_8
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    .line 548
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 550
    :cond_9
    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne v0, v1, :cond_a

    .line 551
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mOKImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 556
    :cond_a
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mOKImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    goto :goto_1

    .line 532
    :cond_b
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c

    .line 533
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 535
    :cond_c
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    .line 536
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 538
    :cond_d
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mMoreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mSearchImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mEditImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->mOKImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    :cond_e
    :goto_1
    return-void
.end method
