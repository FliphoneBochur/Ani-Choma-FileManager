.class public Lcom/jrdcom/filemanager/activity/FileBrowserActivity;
.super Lcom/jrdcom/filemanager/activity/FileBaseActivity;
.source "FileBrowserActivity.java"

# interfaces
.implements Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;
.implements Lcom/jrdcom/filemanager/listener/CategoryFragmentListener;
.implements Lcom/jrdcom/filemanager/adapter/PathBarAdapter$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$IPopWindowListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static comparepath:Ljava/lang/String;

.field private static isEnterSaveInstanceState:Z


# instance fields
.field private absolutePath:Ljava/lang/StringBuilder;

.field private caseNotFinish:Z

.field private deleteFlag:Z

.field private finishDirectly:Z

.field private isCancelTask:Z

.field private isClickHomeIcon:Z

.field private isClickNotification:Z

.field isFromPermission:Z

.field private isFromShortcut:Z

.field private isNeedFinishFromSetting:Z

.field private isShowDialog:Z

.field listcount:I

.field mBrowserHandler:Landroid/os/Handler;

.field private mBuilderTemp:Landroid/app/AlertDialog$Builder;

.field private mPopupWidow:Landroid/widget/PopupWindow;

.field private mSearchFromEdit:Z

.field private mShareFlag:Z

.field private mStartFromSettingType:I

.field private path:Ljava/lang/String;

.field private paths:[Ljava/lang/String;

.field private popWindowType:Lcom/jrdcom/filemanager/utils/PopWindowType;

.field private shortcutNotFinishDir:Z

.field private syncCurrentStatus:Ljava/lang/String;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wirelessReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    const-class v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isEnterSaveInstanceState:Z

    .line 2627
    const-string v0, ""

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->comparepath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->deleteFlag:Z

    .line 112
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mShareFlag:Z

    .line 113
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchFromEdit:Z

    .line 114
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isShowDialog:Z

    .line 115
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isCancelTask:Z

    .line 117
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isClickNotification:Z

    .line 119
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finishDirectly:Z

    .line 122
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->shortcutNotFinishDir:Z

    .line 123
    sget-object v1, Lcom/jrdcom/filemanager/utils/PopWindowType;->POP_WINDOW_DISMISS:Lcom/jrdcom/filemanager/utils/PopWindowType;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->popWindowType:Lcom/jrdcom/filemanager/utils/PopWindowType;

    .line 127
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isNeedFinishFromSetting:Z

    .line 132
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isClickHomeIcon:Z

    .line 136
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isFromShortcut:Z

    .line 166
    new-instance v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;-><init>(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBrowserHandler:Landroid/os/Handler;

    .line 2693
    new-instance v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$6;-><init>(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessReceiver:Landroid/content/BroadcastReceiver;

    .line 2864
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isFromPermission:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finishDirectly:Z

    return p0
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showPhoneOrSDFragment()V

    return-void
.end method

.method static synthetic access$200(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)[Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->paths:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateViewByTag()V

    return-void
.end method

.method static synthetic access$400(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateView(I)V

    return-void
.end method

.method private acquireWakeLock(Landroid/content/Context;)V
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 1045
    nop

    .line 1046
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 1047
    const/4 v0, 0x1

    const-string v1, "Paste Task"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1049
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1051
    :cond_0
    return-void
.end method

.method private clearForPrivate()V
    .locals 2

    .line 3541
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 3542
    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 3543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isClickHomeIcon:Z

    .line 3544
    sput-boolean v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isEnterSaveInstanceState:Z

    .line 3545
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finishDirectly:Z

    .line 3546
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 3548
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3549
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 3551
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_item:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3552
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_item:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 3555
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    if-eqz v0, :cond_2

    .line 3556
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->clearCache()V

    .line 3559
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_3

    .line 3560
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearAdapter()V

    .line 3562
    :cond_3
    return-void
.end method

.method private commitPathFragment(Z)V
    .locals 3

    .line 581
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchShortcut(Ljava/lang/String;Z)V

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    iput-object v2, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-nez v1, :cond_1

    .line 586
    new-instance v1, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {v1}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->commitFragment(Landroid/app/Fragment;ZIZ)V

    .line 589
    if-eqz p1, :cond_2

    .line 590
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchShortcut(Ljava/lang/String;Z)V

    .line 592
    :cond_2
    const/4 p1, 0x2

    invoke-static {p1}, Lcom/jrdcom/filemanager/manager/CategoryManager;->setCurrentMode(I)V

    .line 593
    return-void
.end method

.method private createProgressDialog(J)V
    .locals 4

    .line 2980
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2981
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    .line 2982
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2983
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    goto :goto_0

    .line 2985
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    .line 2988
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2991
    goto :goto_1

    .line 2989
    :catch_0
    move-exception v0

    .line 2990
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2992
    :goto_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    .line 2994
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    if-ne v0, v1, :cond_4

    .line 2996
    :cond_2
    invoke-static {p1, p2}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->getTaskInfo(J)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object v0

    .line 2997
    if-nez v0, :cond_3

    return-void

    .line 2998
    :cond_3
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p0, v0}, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->newInstance(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/TaskInfo;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    .line 3000
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    .line 3001
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getProgressInfo()Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getProgressTaskType()I

    move-result v0

    .line 3000
    invoke-static {p0, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getNotificationTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3002
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3003
    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3004
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3007
    :cond_4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3008
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3009
    invoke-static {p1, p2}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->getTaskInfo(J)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object p1

    const-string p2, "TASKRESULT"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3010
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3011
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, p2, :cond_5

    .line 3012
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mTaskResultHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 3013
    :cond_5
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, p2, :cond_6

    .line 3014
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mTaskResultHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3016
    :cond_6
    :goto_2
    return-void
.end method

.method private deleteFiles()V
    .locals 2

    .line 3328
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 3329
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 3330
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v1, 0x2711

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    .line 3331
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/IActivityListener;->clickDelteBtn(I)V

    .line 3333
    :cond_0
    return-void
.end method

.method private enterRootDir(Ljava/lang/String;I)V
    .locals 4

    .line 1778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 1779
    const/4 v0, -0x1

    sput v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 1780
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1781
    :cond_0
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 1783
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 1784
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 1786
    :cond_2
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 1789
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 1790
    new-array v0, v3, [Z

    invoke-direct {p0, p1, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateFragment(Ljava/lang/String;[Z)V

    .line 1791
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 1793
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 1794
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1798
    :cond_3
    return-void
.end method

.method private getAbsolutePath(I)Ljava/lang/StringBuilder;
    .locals 6

    .line 2645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2646
    nop

    .line 2648
    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPhoneTag(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2649
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 2650
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSDCARDTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2651
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 2652
    :cond_1
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isOTGUSBTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2653
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2654
    :cond_2
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isGlobalSearchTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2655
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/manager/MountManager;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2656
    aget-object v3, v1, v2

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2657
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2658
    :cond_3
    aget-object v3, v1, v2

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2659
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2660
    :cond_4
    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2661
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2664
    :cond_5
    const/4 v1, 0x0

    :goto_0
    nop

    :goto_1
    if-gt v2, p1, :cond_9

    .line 2665
    if-ne v2, p1, :cond_6

    if-eqz p1, :cond_6

    .line 2666
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->paths:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2667
    :cond_6
    if-nez v2, :cond_7

    if-eq v2, p1, :cond_7

    .line 2668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2669
    :cond_7
    if-ne v2, p1, :cond_8

    if-nez p1, :cond_8

    .line 2670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2672
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->paths:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2664
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2677
    :catch_0
    move-exception p1

    .line 2678
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2675
    :catch_1
    move-exception p1

    .line 2676
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 2679
    :cond_9
    nop

    .line 2680
    :goto_3
    return-object v0
.end method

.method private getListLandLimita()I
    .locals 2

    .line 3238
    nop

    .line 3239
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x320

    if-gt v0, v1, :cond_0

    .line 3240
    const/4 v0, 0x3

    goto :goto_0

    .line 3242
    :cond_0
    const/4 v0, 0x4

    .line 3244
    :goto_0
    return v0
.end method

.method private getListPortLimita()I
    .locals 2

    .line 3248
    nop

    .line 3249
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_0

    .line 3250
    const/4 v0, 0x6

    goto :goto_0

    .line 3252
    :cond_0
    const/4 v0, 0x7

    .line 3254
    :goto_0
    return v0
.end method

.method private hideFloatButton()V
    .locals 3

    .line 868
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFloatBtnHideAnim()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 870
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 873
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFloatBtnHideAnim()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 874
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 876
    :cond_1
    return-void
.end method

.method public static isMorePopShow()Z
    .locals 1

    .line 2821
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_0

    .line 2822
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result v0

    return v0

    .line 2824
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private mounted(Ljava/lang/String;Z)V
    .locals 5

    .line 975
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->onBackPressed()V

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isGlobalSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->onBackGlobalSearch()V

    .line 983
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne v0, v1, :cond_5

    .line 984
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateCategoryContent()V

    .line 986
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-nez v0, :cond_3

    .line 987
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne v0, v1, :cond_3

    .line 988
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    .line 989
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 992
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-eqz v0, :cond_4

    .line 993
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;->refreshCategory()V

    .line 995
    :cond_4
    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_c

    .line 996
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->unMountUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 999
    :cond_5
    const-string v0, "category"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    :try_start_1
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1000
    sget-object v3, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->sortPop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v3, :cond_6

    sget-object v3, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->sortPop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1001
    sget-object v3, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->sortPop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1003
    :cond_6
    sget-object v3, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v3, :cond_7

    sget-object v3, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1004
    sget-object v3, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1006
    :cond_7
    invoke-static {v2}, Lcom/jrdcom/filemanager/manager/CategoryManager;->setCurrentMode(I)V

    .line 1007
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    const/16 v4, 0x2714

    if-eq v3, v4, :cond_8

    .line 1008
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v3}, Lcom/jrdcom/filemanager/IActivityListener;->unMountUpdate()V

    .line 1010
    :cond_8
    new-array v3, v1, [Z

    invoke-direct {p0, v0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateFragment(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 1011
    :cond_9
    if-eqz p2, :cond_a

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne v3, v2, :cond_a

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-gez v3, :cond_a

    .line 1012
    new-array v3, v1, [Z

    invoke-direct {p0, v0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateFragment(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 1013
    :cond_a
    if-nez p2, :cond_b

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 1014
    sput-boolean v2, Lcom/jrdcom/filemanager/utils/FileInfo;->mountReceiver:Z

    .line 1015
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateCategoryItems()V

    .line 1020
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-nez v0, :cond_c

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-gez v0, :cond_c

    .line 1022
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 1025
    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-nez v0, :cond_d

    if-eqz p2, :cond_d

    .line 1026
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    .line 1027
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1031
    :cond_d
    goto :goto_2

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1032
    :goto_2
    if-eqz p2, :cond_e

    .line 1033
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showToastForUnmountCurrentSDCard(Ljava/lang/String;)V

    .line 1035
    :cond_e
    return-void
.end method

.method private onBackGlobalSearch()V
    .locals 3

    .line 3295
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 3296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->changeStatusBarColor(Z)V

    .line 3297
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 3298
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v2, "category"

    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 3299
    iput-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 3300
    new-array v0, v0, [Z

    invoke-direct {p0, v2, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateFragment(Ljava/lang/String;[Z)V

    .line 3301
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3302
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3303
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3305
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1

    .line 3306
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->onGlobalSearchBackPressed()V

    .line 3308
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    .line 3309
    return-void
.end method

.method private pasteFiles()V
    .locals 2

    .line 3315
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 3316
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 3317
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v1, 0x2714

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    .line 3318
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->acquireWakeLock(Landroid/content/Context;)V

    .line 3319
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickPasteBtn()V

    .line 3321
    :cond_0
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 3322
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1056
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1058
    :cond_0
    return-void
.end method

.method private setActionBarElevation(F)V
    .locals 1

    .line 3258
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 3259
    if-eqz v0, :cond_0

    .line 3260
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 3262
    :cond_0
    return-void
.end method

.method private setFilePrivate()V
    .locals 2

    .line 3337
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 3338
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 3339
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v1, 0x2716

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    .line 3340
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickSetPrivateBtn()V

    .line 3342
    :cond_0
    return-void
.end method

.method private setFilePublic()V
    .locals 2

    .line 3345
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 3346
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 3347
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v1, 0x2717

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    .line 3348
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickSetPublicBtn()V

    .line 3350
    :cond_0
    return-void
.end method

.method private showFloatButton()V
    .locals 3

    .line 857
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 858
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFloatBtnShowAnim()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 859
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 862
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFloatBtnShowAnim()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 863
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->floatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 865
    :cond_1
    return-void
.end method

.method private showPhoneOrSDFragment()V
    .locals 3

    .line 250
    iget v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mStartFromSettingType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 251
    const v0, 0x7f0c00be

    const-string v1, "phone"

    invoke-direct {p0, v1, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->enterRootDir(Ljava/lang/String;I)V

    goto :goto_0

    .line 252
    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 253
    const v0, 0x7f0c00cf

    const-string v1, "sdcard"

    invoke-direct {p0, v1, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->enterRootDir(Ljava/lang/String;I)V

    goto :goto_0

    .line 255
    :cond_1
    const/4 v2, 0x3

    if-ne v2, v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v2, "/storage/emulated/0/Download"

    iput-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v2, "listMode"

    iput-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    .line 258
    sput v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    .line 259
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContent(Landroid/app/Fragment;)V

    .line 262
    :cond_2
    :goto_0
    return-void
.end method

.method private switchCategoryViewContent(Landroid/app/Fragment;)V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getCategoryFileList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 761
    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 762
    move-object v0, p1

    check-cast v0, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    .line 763
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearAdapter()V

    .line 766
    :cond_1
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateViewByTag()V

    .line 767
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateMoreButtonMenu()V

    .line 768
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateCategoryNormalBar()V

    .line 769
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showActionBar()V

    .line 770
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-eqz v0, :cond_2

    .line 771
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;->onChangeMainlayout()V

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, v0, :cond_3

    .line 776
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->cancelScrollActionbar()V

    .line 778
    :cond_3
    return-void
.end method

.method private switchViewContent(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 1

    .line 736
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 737
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_0

    .line 738
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-static {v0}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->getInstance(Lcom/jrdcom/filemanager/IActivityListener;)Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v0

    iput-object v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 739
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->setAppHandler(Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;)V

    .line 741
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$5;-><init>(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 752
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    const-string v0, "global_search"

    if-eq p1, v0, :cond_1

    .line 753
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 755
    :cond_1
    return-void
.end method

.method private updateCategoryContent()V
    .locals 1

    .line 2391
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 2392
    return-void
.end method

.method private updateCategoryFragment(Ljava/lang/String;Z)V
    .locals 2

    .line 817
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 819
    if-eqz p2, :cond_0

    .line 820
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearAll()V

    .line 822
    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/jrdcom/filemanager/manager/CategoryManager;->setCurrentMode(I)V

    .line 823
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    if-eq v0, v1, :cond_1

    .line 824
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 826
    :cond_1
    if-nez p2, :cond_3

    .line 827
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContentByViewMode(Z)V

    .line 828
    if-eqz p2, :cond_2

    .line 829
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    goto :goto_0

    .line 831
    :cond_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showActionBar()V

    goto :goto_0

    .line 834
    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContentByViewMode(Z)V

    .line 836
    :goto_0
    return-void
.end method

.method private updateCategoryItems()V
    .locals 1

    .line 2345
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/FileInfo;->mountReceiver:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/jrdcom/filemanager/utils/FileInfo;->scanFinishReceiver:Z

    if-eqz v0, :cond_0

    .line 2346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContentByViewMode(Z)V

    .line 2348
    :cond_0
    return-void
.end method

.method private updateEditBarWidgetState(I)V
    .locals 2

    .line 1818
    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 1819
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1820
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnDelete:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1822
    :cond_0
    iget-boolean p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCanShare:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mIsFLorSDDrm:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1825
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1823
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1827
    :goto_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnDelete:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1829
    :goto_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnMore:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1831
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const-string v1, "/storage/emulated/0/Locker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1832
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1835
    :cond_3
    return-void
.end method

.method private varargs updateFragment(Ljava/lang/String;[Z)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 791
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPhoneTag(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 792
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updatePathFragment(Ljava/lang/String;)V

    .line 793
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 794
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    const p2, 0x7f0c00bf

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 796
    :cond_0
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSDCARDTag(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 797
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updatePathFragment(Ljava/lang/String;)V

    .line 798
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 799
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    const p2, 0x7f0c00ce

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 801
    :cond_1
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryTag(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 802
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateCategoryFragment(Ljava/lang/String;Z)V

    .line 803
    return-void

    .line 804
    :cond_2
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isOTGUSBTag(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 805
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updatePathFragment(Ljava/lang/String;)V

    .line 806
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 807
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    const p2, 0x7f0c00f6

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 809
    :cond_3
    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isGlobalSearchTag(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 810
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateCategoryFragment(Ljava/lang/String;Z)V

    .line 813
    :cond_4
    :goto_0
    return-void
.end method

.method private updateMoreButtonMenu()V
    .locals 3

    .line 2415
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnMore:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2416
    return-void

    .line 2417
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    const/16 v2, 0x8

    if-ne v0, v1, :cond_1

    .line 2418
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2425
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2426
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2427
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnMore:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2434
    :cond_2
    :goto_0
    return-void
.end method

.method private updatePathFragment(Ljava/lang/String;)V
    .locals 2

    .line 840
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->setCurrentMode(I)V

    .line 841
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-static {p1, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getStorageRootPath(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 842
    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-static {p1, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getStorageRootPath(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 847
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    if-eq p1, v0, :cond_2

    .line 848
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    iput-object v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 849
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 851
    :cond_2
    const/4 p1, -0x2

    sput p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mLastCagegory:I

    .line 852
    const/4 p1, -0x1

    sput p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 853
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContentByViewMode(Z)V

    .line 854
    return-void
.end method

.method private updateView(I)V
    .locals 10

    .line 1929
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateview(), mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const v0, 0x7f0700fa

    const-string v1, " mApplication.mCurrentPath = "

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "/storage/emulated/0/Locker"

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eq p1, v4, :cond_17

    const/4 v8, 0x2

    if-eq p1, v8, :cond_10

    const/4 v3, 0x3

    if-eq p1, v3, :cond_f

    const/4 v3, 0x4

    if-eq p1, v3, :cond_d

    const/4 v3, 0x6

    if-eq p1, v3, :cond_0

    goto/16 :goto_9

    .line 2103
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->cancelScrollActionbar()V

    .line 2104
    invoke-virtual {p0, v6}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->changeStatusBarColor(Z)V

    .line 2105
    invoke-virtual {p0, v6}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->changeStatusBarTextColor(Z)V

    .line 2106
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2107
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2108
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2109
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnDelete:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2111
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v8, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-eq v3, v8, :cond_3

    .line 2112
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 2113
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2114
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2116
    :cond_1
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2119
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2121
    :cond_3
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    iget-object v8, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v3, v8}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMultiScreenChanage(Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2122
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 2123
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->syncCurrentStatus:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2124
    :cond_4
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2127
    :cond_5
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getPathBrowerText()V

    .line 2129
    :cond_6
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2132
    nop

    .line 2133
    nop

    .line 2134
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 2135
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2136
    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2137
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2138
    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    move v3, v4

    goto :goto_1

    :cond_9
    move v3, v6

    goto :goto_1

    .line 2134
    :cond_a
    move v3, v6

    .line 2140
    :goto_1
    sget-object v5, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showButtonCopy = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " pastePathCopy = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v1

    if-lez v1, :cond_b

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-eq v1, v4, :cond_b

    if-eqz v3, :cond_b

    .line 2142
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showFloatButton()V

    goto :goto_2

    .line 2144
    :cond_b
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 2148
    :goto_2
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v1

    if-eqz v1, :cond_c

    .line 2149
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    .line 2150
    invoke-virtual {p0, v6}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 2151
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2154
    :cond_c
    iput v6, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->selectCount:I

    .line 2155
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2156
    goto/16 :goto_9

    .line 2086
    :cond_d
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->cancelScrollActionbar()V

    .line 2087
    invoke-virtual {p0, v6}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->changeStatusBarColor(Z)V

    .line 2088
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2089
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2090
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2091
    nop

    .line 2092
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2093
    if-eqz v0, :cond_e

    .line 2094
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2098
    :cond_e
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_33

    .line 2099
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto/16 :goto_9

    .line 2076
    :cond_f
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->cancelScrollActionbar()V

    .line 2077
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2078
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2079
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2080
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 2081
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    if-eqz v0, :cond_33

    .line 2082
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->notifyAndScroll(Landroid/support/v7/widget/RecyclerView;)V

    goto/16 :goto_9

    .line 2036
    :cond_10
    invoke-virtual {p0, v6}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->changeStatusBarColor(Z)V

    .line 2037
    invoke-virtual {p0, v6}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->changeStatusBarTextColor(Z)V

    .line 2038
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->cancelScrollActionbar()V

    .line 2039
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 2040
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2041
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2042
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2043
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2044
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2045
    invoke-virtual {p0, v6}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 2046
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2047
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2048
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2049
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2050
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2051
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 2053
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_11

    .line 2054
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 2057
    :cond_11
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_12

    .line 2058
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 2061
    :cond_12
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMultiScreenChanage(Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2062
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_14

    .line 2063
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->syncCurrentStatus:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2064
    :cond_13
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2067
    :cond_14
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getPathBrowerText()V

    .line 2069
    :cond_15
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne v0, v4, :cond_16

    .line 2070
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarElevation(F)V

    goto/16 :goto_9

    .line 2072
    :cond_16
    invoke-direct {p0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarElevation(F)V

    .line 2074
    goto/16 :goto_9

    .line 1932
    :cond_17
    invoke-virtual {p0, v6}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->changeStatusBarColor(Z)V

    .line 1933
    invoke-virtual {p0, v6}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->changeStatusBarTextColor(Z)V

    .line 1934
    invoke-direct {p0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarElevation(F)V

    .line 1935
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mainLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_18

    .line 1936
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f05005e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1938
    :cond_18
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_19

    .line 1939
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1941
    :cond_19
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    if-eqz v3, :cond_1b

    .line 1942
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1943
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1945
    :cond_1a
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1948
    :cond_1b
    :goto_3
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchBar:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1c

    .line 1949
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1951
    :cond_1c
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    if-eqz v3, :cond_1d

    .line 1952
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1954
    :cond_1d
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnDelete:Landroid/widget/ImageView;

    if-eqz v3, :cond_1e

    .line 1955
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnDelete:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1957
    :cond_1e
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    if-eqz v3, :cond_1f

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-eqz v3, :cond_1f

    .line 1958
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 1959
    :cond_1f
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    if-eqz v3, :cond_20

    .line 1960
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1963
    :cond_20
    :goto_4
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    if-eqz v3, :cond_21

    .line 1964
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    iget-object v8, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v8}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->notifyAndScroll(Landroid/support/v7/widget/RecyclerView;)V

    .line 1966
    :cond_21
    iput-boolean v6, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isSearchMode:Z

    .line 1967
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 1968
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    if-eqz v3, :cond_22

    .line 1969
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1971
    :cond_22
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_23

    .line 1972
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1974
    :cond_23
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1975
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    const/16 v3, 0x2712

    if-ne v0, v3, :cond_24

    .line 1976
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearPasteList()V

    .line 1980
    :cond_24
    nop

    .line 1981
    nop

    .line 1982
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v0

    if-lez v0, :cond_28

    .line 1983
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1984
    if-eqz v2, :cond_27

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 1985
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1986
    :cond_25
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_26
    move v0, v4

    goto :goto_5

    :cond_27
    move v0, v6

    goto :goto_5

    .line 1982
    :cond_28
    move v0, v6

    .line 1988
    :goto_5
    sget-object v3, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showButtonNormal = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " pastePathNormal = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v1

    if-lez v1, :cond_29

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-eq v1, v4, :cond_29

    if-eqz v0, :cond_29

    .line 1991
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showFloatButton()V

    goto :goto_6

    .line 1993
    :cond_29
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 1997
    :goto_6
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    .line 1998
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 1999
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->syncCurrentStatus:Ljava/lang/String;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2000
    :cond_2a
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2002
    :cond_2b
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    if-eqz v0, :cond_2d

    .line 2003
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2004
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 2006
    :cond_2c
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2009
    :cond_2d
    :goto_7
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2011
    :cond_2e
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-eq v0, v4, :cond_2f

    .line 2012
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->isShowNoFolderView()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 2013
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->enableScrollActionbar()V

    .line 2016
    :cond_2f
    iput v6, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->selectCount:I

    .line 2017
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 2018
    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2019
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v1

    if-lez v1, :cond_30

    goto :goto_8

    .line 2021
    :cond_30
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 2022
    nop

    .line 2023
    sget-object v1, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2024
    sget-object v1, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    .line 2025
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v4

    .line 2024
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2026
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_8

    .line 2028
    :cond_31
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 2031
    :cond_32
    :goto_8
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_33

    .line 2032
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 2160
    :cond_33
    :goto_9
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateMenubarView(I)V

    .line 2161
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateMoreButtonMenu()V

    .line 2162
    return-void
.end method

.method private updateViewByTag()V
    .locals 4

    .line 1860
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0x8

    if-ne v0, v1, :cond_7

    .line 1861
    invoke-direct {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarElevation(F)V

    .line 1862
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1869
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 1870
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1873
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1874
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1876
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1877
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1878
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1880
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnDelete:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1881
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1883
    :cond_5
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 1884
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1886
    :cond_6
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalView:Landroid/widget/ImageView;

    .line 1889
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_2

    .line 1890
    :cond_7
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isGlobalSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    const-string v1, "/storage/emulated/0/Locker"

    if-eqz v0, :cond_a

    .line 1891
    invoke-direct {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarElevation(F)V

    .line 1892
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1893
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1894
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1895
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1896
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 1897
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1898
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1900
    :cond_8
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1903
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1905
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarElevation(F)V

    .line 1906
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1907
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1911
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1913
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 1914
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1915
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1917
    :cond_b
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1920
    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1921
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1923
    :goto_2
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateMoreButtonMenu()V

    .line 1924
    return-void
.end method


# virtual methods
.method public HideActionbar(Z)V
    .locals 1

    .line 3279
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mPortraitOrientation:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3280
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-eq p1, v0, :cond_0

    .line 3281
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideActionBar()V

    goto :goto_0

    .line 3283
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    if-eq p1, v0, :cond_2

    .line 3284
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showActionBar()V

    goto :goto_0

    .line 3288
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    if-eq p1, v0, :cond_2

    .line 3289
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showActionBar()V

    .line 3292
    :cond_2
    :goto_0
    return-void
.end method

.method public cancelScrollActionbar()V
    .locals 2

    .line 3360
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    const-string v1, "cancelScrollActionbar()"

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3361
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    .line 3363
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mParams:Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 3364
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mParams:Landroid/support/design/widget/AppBarLayout$LayoutParams;

    if-nez v0, :cond_1

    return-void

    .line 3366
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mParams:Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3367
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mParams:Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 3368
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-eq v0, v1, :cond_2

    .line 3369
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 3372
    :cond_2
    return-void
.end method

.method public changeSearchMode(Z)V
    .locals 0

    .line 2321
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setSearchMode(Z)V

    .line 2322
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 2494
    sget-object v0, Lcom/jrdcom/filemanager/utils/PopWindowType;->POP_WINDOW_DISMISS:Lcom/jrdcom/filemanager/utils/PopWindowType;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->popWindowType:Lcom/jrdcom/filemanager/utils/PopWindowType;

    if-eq v0, v1, :cond_1

    .line 2495
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 2501
    return v1

    .line 2499
    :cond_0
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2504
    :cond_1
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2686
    :try_start_0
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2687
    :catch_0
    move-exception p1

    .line 2688
    const/4 p1, 0x0

    return p1
.end method

.method public doHideFloatButton()V
    .locals 2

    .line 2307
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_0

    .line 2308
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 2311
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1

    .line 2312
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 2315
    :cond_1
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 2316
    return-void
.end method

.method public enableScrollActionbar()V
    .locals 2

    .line 3376
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    const-string v1, "enableScrollActionbar()"

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3377
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    .line 3379
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mParams:Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 3380
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mParams:Landroid/support/design/widget/AppBarLayout$LayoutParams;

    if-nez v0, :cond_1

    return-void

    .line 3382
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mParams:Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 3383
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mParams:Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 3385
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 3386
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->refreshNavBar()V

    .line 3387
    return-void
.end method

.method public getFileActionMode()I
    .locals 1

    .line 2283
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getFileMode()I

    move-result v0

    return v0
.end method

.method public getFrom()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isFromShortcut:Z

    return v0
.end method

.method public getPathBrowerText()V
    .locals 2

    .line 2595
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 2596
    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->path:Ljava/lang/String;

    .line 2598
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setPhonePathRootIcon(Ljava/lang/String;)V

    .line 2599
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isPhoneRootPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2600
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 2601
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2602
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2606
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->path:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2608
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->paths:[Ljava/lang/String;

    .line 2609
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->path:Ljava/lang/String;

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->comparepath:Ljava/lang/String;

    .line 2610
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    if-eqz v0, :cond_2

    .line 2611
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->paths:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->setList([Ljava/lang/String;)V

    .line 2612
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->notifyAndScroll(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_1

    .line 2614
    :cond_2
    new-instance v0, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->paths:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    .line 2615
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 2616
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->setOnItemClickListener(Lcom/jrdcom/filemanager/adapter/PathBarAdapter$OnItemClickListener;)V

    .line 2617
    new-instance v0, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;-><init>(Landroid/content/Context;)V

    .line 2618
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;->setOrientation(I)V

    .line 2619
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 2620
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->paths:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 2623
    :cond_3
    :goto_1
    return-void
.end method

.method public getSlideLimite()I
    .locals 2

    .line 3222
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mPortraitOrientation:Z

    const-string v1, "gridMode"

    if-eqz v0, :cond_1

    .line 3223
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3224
    const/16 v0, 0xc

    return v0

    .line 3226
    :cond_0
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getListPortLimita()I

    move-result v0

    return v0

    .line 3229
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3230
    const/16 v0, 0xa

    return v0

    .line 3232
    :cond_2
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getListLandLimita()I

    move-result v0

    return v0
.end method

.method public getSortPop()Landroid/widget/PopupWindow;
    .locals 1

    .line 3536
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSortPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public hidPopwindow()V
    .locals 0

    .line 3573
    return-void
.end method

.method public hideActionBar()V
    .locals 3

    .line 3272
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 3273
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-eq v1, v2, :cond_0

    .line 3274
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 3276
    :cond_0
    return-void
.end method

.method public isDeleteFlag(Z)V
    .locals 0

    .line 2829
    if-eqz p1, :cond_0

    .line 2830
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->deleteFlag:Z

    goto :goto_0

    .line 2832
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->deleteFlag:Z

    .line 2834
    :goto_0
    return-void
.end method

.method public notifyCategoryDone(Z)V
    .locals 0

    .line 1838
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 3119
    invoke-super {p0, p1, p2, p3}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3120
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3121
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasM()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3122
    const/16 p2, 0x11

    const/4 p3, 0x1

    if-ne p1, p2, :cond_0

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->runCreateCount:I

    if-le p1, p3, :cond_0

    .line 3123
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->recreate()V

    goto :goto_0

    .line 3125
    :cond_0
    iput-boolean p3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isFromPermission:Z

    .line 3126
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->onPemissinRequestResult(Z)V

    .line 3127
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBrowserHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3131
    :cond_1
    :goto_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 4

    .line 145
    :try_start_0
    instance-of v0, p1, Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1

    .line 146
    move-object v0, p1

    check-cast v0, Lcom/jrdcom/filemanager/IActivityListener;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 147
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-static {v1}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->getInstance(Lcom/jrdcom/filemanager/IActivityListener;)Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 152
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->setAppHandler(Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;)V

    .line 156
    :cond_1
    instance-of v0, p1, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-eqz v0, :cond_2

    .line 157
    move-object v0, p1

    check-cast v0, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_2
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttachFragment happen exception --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    :goto_0
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 164
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    .line 435
    sget-object v0, Lcom/jrdcom/filemanager/utils/PopWindowType;->POP_WINDOW_TYPE_DELTE:Lcom/jrdcom/filemanager/utils/PopWindowType;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->popWindowType:Lcom/jrdcom/filemanager/utils/PopWindowType;

    if-ne v0, v1, :cond_0

    .line 436
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed, is delete pop window, return."

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void

    .line 440
    :cond_0
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finishDirectly:Z

    const-string v1, "exitDialogTag"

    const v2, 0x7f0c0073

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 442
    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 443
    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 444
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const-string v6, "/storage/emulated/0/Locker"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 445
    const-string v6, "/storage/emulated/0/WirelessTool"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 446
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTaskSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 447
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 448
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-static {v0, v2, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mExitDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 449
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mExitDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->showDialog()V

    .line 450
    return-void

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v3, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 454
    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 455
    iput-boolean v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isClickHomeIcon:Z

    .line 456
    sput-boolean v5, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isEnterSaveInstanceState:Z

    .line 457
    iput-boolean v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finishDirectly:Z

    .line 458
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 460
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 461
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_item:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 464
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_item:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 467
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    if-eqz v0, :cond_5

    .line 468
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->clearCache()V

    .line 471
    :cond_5
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_6

    .line 472
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearAdapter()V

    .line 475
    :cond_6
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finish()V

    .line 476
    return-void

    .line 481
    :cond_7
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_8

    .line 482
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v4, v5}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 484
    :cond_8
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_b

    .line 485
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0, v5, v3}, Lcom/jrdcom/filemanager/IActivityListener;->showNoSearchResults(ZLjava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0, v5}, Lcom/jrdcom/filemanager/IActivityListener;->showNoFolderResultView(Z)V

    .line 488
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne v0, v3, :cond_b

    .line 489
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTaskSize()I

    move-result v0

    if-lez v0, :cond_9

    .line 490
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 491
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-static {v0, v2, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mExitDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 492
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mExitDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->showDialog()V

    .line 493
    return-void

    .line 495
    :cond_9
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 496
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, v4}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefsStatus(Landroid/content/Context;I)V

    .line 497
    sput-boolean v5, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isEnterSaveInstanceState:Z

    .line 498
    sput-boolean v5, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isShowNoStorageDialog:Z

    .line 499
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->clearFinishTask()V

    .line 500
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    .line 501
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_a

    .line 502
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 504
    :cond_a
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->clearCache()V

    .line 508
    :cond_b
    iput-boolean v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isSearchingDone:Z

    .line 509
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 510
    :cond_c
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v0

    if-nez v0, :cond_1c

    .line 511
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateBarTitle(I)V

    .line 518
    :cond_d
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathNormalMode(I)Z

    move-result v0

    const-string v3, "category"

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isClickHomeIcon:Z

    if-eqz v0, :cond_e

    goto :goto_0

    .line 551
    :cond_e
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 552
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 554
    :cond_f
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasM()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 555
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v1, "permissions"

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 556
    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    goto :goto_1

    .line 558
    :cond_10
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, v3}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 559
    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    goto :goto_1

    .line 519
    :cond_11
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isClickHomeIcon:Z

    if-nez v0, :cond_12

    .line 520
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 521
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    :cond_12
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isNeedFinishFromSetting:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v6, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v6, v6, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 527
    invoke-virtual {v0, v6}, Lcom/jrdcom/filemanager/manager/MountManager;->isSdOrPhonePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v6, 0x6

    if-ne v0, v6, :cond_13

    .line 528
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 529
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 528
    invoke-static {v0, v2, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mExitDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 530
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mExitDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->showDialog()V

    .line 531
    return-void

    .line 535
    :cond_13
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 536
    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isSdOrPhonePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v0

    if-lez v0, :cond_14

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-eq v0, v4, :cond_1a

    :cond_14
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isClickHomeIcon:Z

    if-eqz v0, :cond_15

    goto :goto_3

    .line 562
    :cond_15
    :goto_1
    iput-boolean v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isClickHomeIcon:Z

    .line 563
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 564
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getActionbarItemTheme(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 566
    :cond_16
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne v0, v1, :cond_19

    .line 567
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryNormalMode(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 568
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 569
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContentByViewMode(Z)V

    goto :goto_2

    .line 571
    :cond_17
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_18

    .line 572
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->onBackPressed()V

    .line 575
    :cond_18
    :goto_2
    return-void

    .line 577
    :cond_19
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onBackPressed()V

    .line 578
    return-void

    .line 538
    :cond_1a
    :goto_3
    iput-boolean v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isClickHomeIcon:Z

    .line 539
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, v3}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 540
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 541
    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 542
    invoke-static {v4}, Lcom/jrdcom/filemanager/manager/CategoryManager;->setCurrentMode(I)V

    .line 543
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, v3}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1b

    .line 545
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearAdapter()V

    .line 547
    :cond_1b
    new-array v0, v5, [Z

    invoke-direct {p0, v3, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateFragment(Ljava/lang/String;[Z)V

    .line 548
    return-void

    .line 513
    :cond_1c
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->switchToCopyView()V

    .line 514
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clearChecked()V

    .line 515
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 3447
    const-string p1, "category"

    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance()Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object v0

    .line 3448
    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_b

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    .line 3487
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_f

    .line 3488
    const/4 p1, 0x2

    const/4 v1, 0x5

    const-string v4, "CompressRenameDialogTag"

    const-string v5, "ExtractRenameDialogTag"

    if-eqz v0, :cond_8

    .line 3489
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDailogTag()Ljava/lang/String;

    move-result-object p2

    .line 3490
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DeleteDialogTag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3491
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->deleteFileResponse()V

    goto/16 :goto_0

    .line 3492
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "removeprivateDialogTag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3493
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->removePrivateMode()V

    goto/16 :goto_0

    .line 3494
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ExtractDialogTag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3495
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/4 p2, 0x3

    invoke-interface {p1, p2, v2}, Lcom/jrdcom/filemanager/IActivityListener;->clickExtractBtn(ILjava/lang/String;)V

    goto :goto_0

    .line 3496
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3497
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getFolderName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/jrdcom/filemanager/IActivityListener;->clickExtractBtn(ILjava/lang/String;)V

    goto :goto_0

    .line 3498
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3499
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickCompressBtn(ILjava/lang/String;)V

    goto :goto_0

    .line 3500
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "SetPrivateDialogTag"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3501
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->moveToPrivate()V

    goto :goto_0

    .line 3502
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "SetPublicDialogTag"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3503
    iput-boolean v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->caseNotFinish:Z

    .line 3504
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->moveToPublic()V

    .line 3506
    :cond_7
    :goto_0
    sput-object v2, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 3507
    goto/16 :goto_1

    .line 3508
    :cond_8
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDailogTag()Ljava/lang/String;

    move-result-object v0

    .line 3509
    if-eqz v0, :cond_9

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3510
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getFolderName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/jrdcom/filemanager/IActivityListener;->clickExtractBtn(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 3511
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3512
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickCompressBtn(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 3514
    :cond_a
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, p2}, Lcom/jrdcom/filemanager/IActivityListener;->clickProgressBtn(I)V

    goto :goto_1

    .line 3450
    :cond_b
    if-eqz v0, :cond_d

    .line 3451
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDailogTag()Ljava/lang/String;

    move-result-object p2

    .line 3452
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "exitDialogTag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 3456
    :try_start_0
    iget-boolean p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isNeedFinishFromSetting:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    .line 3457
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isClickHomeIcon:Z

    .line 3458
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 3459
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 3460
    invoke-static {v3}, Lcom/jrdcom/filemanager/manager/CategoryManager;->setCurrentMode(I)V

    .line 3461
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p2, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 3462
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_c

    .line 3463
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clearAdapter()V

    .line 3467
    :cond_c
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->clearWaittingTask()V

    .line 3468
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/4 p2, -0x3

    invoke-interface {p1, p2}, Lcom/jrdcom/filemanager/IActivityListener;->clickProgressBtn(I)V

    .line 3469
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v3, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 3470
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1, v3}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefsStatus(Landroid/content/Context;I)V

    .line 3471
    sput-boolean v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isEnterSaveInstanceState:Z

    .line 3472
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->clearCache()V

    .line 3473
    sput-object v2, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 3474
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3477
    goto :goto_1

    .line 3475
    :catch_0
    move-exception p1

    .line 3476
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3478
    goto :goto_1

    .line 3481
    :cond_d
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_e

    .line 3482
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {}, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->getCreateTaskTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->cancelTaskTime:J

    .line 3483
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, p2}, Lcom/jrdcom/filemanager/IActivityListener;->clickProgressBtn(I)V

    goto :goto_1

    .line 3481
    :cond_e
    nop

    .line 3520
    :cond_f
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 1244
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v1, 0x2713

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    .line 1245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x4

    const-string v1, "view_key"

    const/4 v2, 0x6

    const/4 v3, -0x1

    const-string v4, "ExtractNameExistDialogTag"

    const/4 v5, 0x2

    const-string v6, ""

    const-string v7, "global_search"

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 1288
    :sswitch_0
    invoke-virtual {p0, v5, v8}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showChoiceResourceDialog(ILandroid/view/View;)V

    .line 1289
    goto/16 :goto_7

    .line 1687
    :sswitch_1
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_0

    .line 1688
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1690
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1691
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1692
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickShortcutBtn()V

    goto/16 :goto_7

    .line 1631
    :sswitch_2
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_1

    .line 1632
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1634
    :cond_1
    iput-boolean v10, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mShareFlag:Z

    .line 1636
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_2

    .line 1637
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1638
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickShareBtn()V

    .line 1639
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1641
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_48

    .line 1642
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v0, "share_num"

    invoke-static {p0, v0, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordCountNumForFA(Landroid/content/Context;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    goto/16 :goto_7

    .line 1676
    :sswitch_3
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_3

    .line 1677
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1679
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTexSelect:Landroid/widget/TextView;

    invoke-virtual {p1, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1680
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnMore:Landroid/widget/ImageView;

    invoke-virtual {p1, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1681
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1682
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickSelectAllBtn()V

    goto/16 :goto_7

    .line 1512
    :sswitch_4
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_4

    .line 1513
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1515
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1516
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickEditBtn()V

    goto/16 :goto_7

    .line 1347
    :sswitch_5
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, v1, :cond_6

    .line 1348
    invoke-static {p0, v7}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 1349
    iput-object v7, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 1350
    new-array p1, v11, [Z

    invoke-direct {p0, v7, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateFragment(Ljava/lang/String;[Z)V

    .line 1351
    sput v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 1352
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 1354
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    .line 1355
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1357
    :cond_5
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->saveListBeforeSearch()V

    .line 1358
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_8

    .line 1359
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickGlobalSearchBtn()V

    goto :goto_0

    .line 1362
    :cond_6
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_7

    .line 1363
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickSearchBtn()V

    .line 1365
    :cond_7
    sput-object v6, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSaveQueryText:Ljava/lang/String;

    .line 1366
    invoke-virtual {p0, v10}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setSearchMode(Z)V

    .line 1367
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->saveListBeforeSearch()V

    .line 1369
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v0, "search_num"

    invoke-static {p0, v0, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordCountNumForFA(Landroid/content/Context;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    .line 1370
    goto/16 :goto_7

    .line 1486
    :sswitch_6
    const p1, 0x7f0c00cf

    const-string v0, "sdcard"

    invoke-direct {p0, v0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->enterRootDir(Ljava/lang/String;I)V

    .line 1487
    goto/16 :goto_7

    .line 1647
    :sswitch_7
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_9

    .line 1648
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1650
    :cond_9
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1651
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1652
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v0, 0x2712

    iput v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    .line 1653
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mQueryText:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickRenameBtn(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1737
    :sswitch_8
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_a

    .line 1738
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1740
    :cond_a
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 1741
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_b

    .line 1742
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1743
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1744
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickRemovePrivateMode()V

    .line 1746
    :cond_b
    return-void

    .line 1483
    :sswitch_9
    const p1, 0x7f0c00be

    const-string v0, "phone"

    invoke-direct {p0, v0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->enterRootDir(Ljava/lang/String;I)V

    .line 1484
    goto/16 :goto_7

    .line 1716
    :sswitch_a
    nop

    .line 1720
    const/16 p1, 0x11

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.tct.MANAGE_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1721
    const-string v1, "android.intent.extra.tct.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1722
    invoke-virtual {p0, v0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1725
    move v10, v11

    goto :goto_1

    .line 1723
    :catch_0
    move-exception v0

    .line 1724
    nop

    .line 1726
    :goto_1
    if-eqz v10, :cond_48

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1729
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1730
    invoke-virtual {p0, v1, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1731
    goto/16 :goto_7

    .line 1621
    :sswitch_b
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_c

    .line 1622
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1624
    :cond_c
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_d

    .line 1625
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1627
    :cond_d
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pasteFiles()V

    .line 1628
    goto/16 :goto_7

    .line 1302
    :sswitch_c
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->isItemMorePop()Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_e
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-eq p1, v10, :cond_48

    .line 1303
    :cond_f
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060150

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1304
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1305
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1306
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1307
    sput-object v8, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    .line 1309
    :cond_10
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v1, v10}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1310
    new-instance v1, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    .line 1311
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->initMorePopWindow()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePopWidth:I

    const/4 v4, -0x2

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;-><init>(Landroid/view/View;IILandroid/app/Activity;)V

    sput-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    .line 1313
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnMore:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, p1, v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->showAtLocationBasedAnchor(Landroid/view/View;II)V

    .line 1314
    goto/16 :goto_7

    .line 1492
    :sswitch_d
    const-string p1, "category"

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 1493
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v8, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 1494
    iput-boolean v10, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isClickHomeIcon:Z

    .line 1495
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 1496
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1497
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700fa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1499
    :cond_11
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    if-ne p1, v5, :cond_12

    .line 1500
    invoke-virtual {p0, v10}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 1501
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_12

    .line 1502
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1505
    :cond_12
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1506
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1507
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1508
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1509
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->onBackPressed()V

    .line 1510
    goto/16 :goto_7

    .line 1402
    :sswitch_e
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    const-string v0, "/storage/emulated/0/Locker"

    if-eqz p1, :cond_1a

    .line 1403
    invoke-virtual {p0, v10}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 1404
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    if-eqz p1, :cond_13

    .line 1405
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1407
    :cond_13
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnDelete:Landroid/widget/ImageView;

    if-eqz p1, :cond_14

    .line 1408
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnDelete:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1410
    :cond_14
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    if-eqz p1, :cond_15

    .line 1411
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1413
    :cond_15
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    if-eqz p1, :cond_16

    .line 1414
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1416
    :cond_16
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    if-eqz p1, :cond_18

    .line 1417
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1418
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1420
    :cond_17
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1423
    :cond_18
    :goto_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_19

    .line 1424
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clearChecked()V

    .line 1425
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1427
    :cond_19
    invoke-virtual {p0, v10}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 1428
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->enableScrollActionbar()V

    goto :goto_3

    .line 1429
    :cond_1a
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1430
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1431
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1432
    invoke-virtual {p0, v10}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 1433
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1b

    .line 1434
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalView:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1436
    :cond_1b
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    if-eqz p1, :cond_1c

    .line 1437
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1439
    :cond_1c
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_1d

    .line 1440
    iput-object v8, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mQueryText:Ljava/lang/String;

    .line 1441
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mQueryText:Ljava/lang/String;

    invoke-interface {p1, v11, v1}, Lcom/jrdcom/filemanager/IActivityListener;->showNoSearchResults(ZLjava/lang/String;)V

    .line 1443
    :cond_1d
    invoke-virtual {p0, v10}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 1444
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->enableScrollActionbar()V

    .line 1446
    :cond_1e
    :goto_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez p1, :cond_1f

    .line 1447
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 1449
    :cond_1f
    nop

    .line 1450
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz p1, :cond_20

    .line 1451
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getCurrentTag(Lcom/jrdcom/filemanager/manager/MountManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1453
    :cond_20
    if-eqz v8, :cond_21

    .line 1454
    iput-object v8, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 1456
    :cond_21
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPhoneTag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 1457
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    goto :goto_4

    .line 1458
    :cond_22
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSDCARDTag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 1459
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    goto :goto_4

    .line 1460
    :cond_23
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isOTGUSBTag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 1461
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 1465
    :cond_24
    :goto_4
    nop

    .line 1466
    nop

    .line 1467
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result p1

    if-lez p1, :cond_28

    .line 1468
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1469
    if-eqz v6, :cond_27

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz p1, :cond_27

    .line 1470
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 1471
    :cond_25
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_27

    :cond_26
    move v11, v10

    goto :goto_5

    :cond_27
    nop

    .line 1473
    :cond_28
    :goto_5
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showButton = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " pastePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mApplication.mCurrentPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result p1

    if-lez p1, :cond_29

    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-eq p1, v10, :cond_29

    if-eqz v11, :cond_29

    .line 1476
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showFloatButton()V

    goto/16 :goto_7

    .line 1478
    :cond_29
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 1481
    goto/16 :goto_7

    .line 1520
    :sswitch_f
    const-string p1, "listMode"

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->viewModeChanage(Ljava/lang/String;)V

    .line 1521
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_48

    .line 1522
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v2, "list_view_sta"

    invoke-static {p1, v1, v2, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    goto/16 :goto_7

    .line 1537
    :sswitch_10
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_2a

    .line 1538
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1540
    :cond_2a
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_2b

    .line 1541
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1543
    :cond_2b
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pasteFiles()V

    .line 1544
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 1545
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_48

    .line 1546
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefsShowHidenFile(Landroid/content/Context;)Z

    .line 1547
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->isShowHidden(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    .line 1548
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1528
    :sswitch_11
    const-string p1, "gridMode"

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->viewModeChanage(Ljava/lang/String;)V

    .line 1529
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_48

    .line 1530
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v2, "grid_view_sta"

    invoke-static {p1, v1, v2, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    goto/16 :goto_7

    .line 1317
    :sswitch_12
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1318
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1319
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1320
    invoke-static {p0, v7}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 1321
    iput-object v7, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 1322
    new-array p1, v11, [Z

    invoke-direct {p0, v7, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateFragment(Ljava/lang/String;[Z)V

    .line 1323
    sput v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 1324
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    if-eqz p1, :cond_2c

    .line 1325
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1327
    :cond_2c
    nop

    .line 1328
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 1329
    if-eqz p1, :cond_2d

    .line 1330
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v11}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1334
    :cond_2d
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    if-eqz p1, :cond_2e

    .line 1335
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    :cond_2e
    iput-boolean v10, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isSearchMode:Z

    .line 1338
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_2f

    .line 1339
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickGlobalSearchBtn()V

    .line 1340
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clearAdapter()V

    .line 1342
    :cond_2f
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_48

    .line 1343
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v0, "global_search_num"

    invoke-static {p0, v0, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordCountNumForFA(Landroid/content/Context;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    goto/16 :goto_7

    .line 1372
    :sswitch_13
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_30

    .line 1373
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1375
    :cond_30
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_31

    .line 1376
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1378
    :cond_31
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pasteFiles()V

    .line 1379
    goto/16 :goto_7

    .line 1293
    :sswitch_14
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1294
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickShareBtn()V

    .line 1295
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    goto/16 :goto_7

    .line 1699
    :sswitch_15
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_32

    .line 1700
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1702
    :cond_32
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez p1, :cond_33

    .line 1703
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 1706
    :cond_33
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 1707
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_34

    .line 1708
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1709
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1710
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickAddPrivateMode()V

    .line 1712
    :cond_34
    return-void

    .line 1611
    :sswitch_16
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_35

    .line 1612
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1614
    :cond_35
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_36

    .line 1615
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1617
    :cond_36
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pasteFiles()V

    .line 1618
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 1619
    goto/16 :goto_7

    .line 1251
    :sswitch_17
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v10, v8}, Lcom/jrdcom/filemanager/IActivityListener;->clickExtractBtn(ILjava/lang/String;)V

    .line 1252
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_37

    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 1253
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1255
    :cond_37
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1256
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1257
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    goto/16 :goto_7

    .line 1760
    :sswitch_18
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 1761
    if-eqz p1, :cond_38

    .line 1762
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dismissAllowingStateLoss()V

    .line 1764
    :cond_38
    sput-object v8, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 1765
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1766
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v5, v8}, Lcom/jrdcom/filemanager/IActivityListener;->clickExtractBtn(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 1750
    :sswitch_19
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 1751
    if-eqz p1, :cond_39

    .line 1752
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dismissAllowingStateLoss()V

    .line 1754
    :cond_39
    sput-object v8, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 1755
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1756
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v0, v8}, Lcom/jrdcom/filemanager/IActivityListener;->clickExtractBtn(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 1489
    :sswitch_1a
    const p1, 0x7f0700dc

    const-string v0, "usbotg"

    invoke-direct {p0, v0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->enterRootDir(Ljava/lang/String;I)V

    .line 1490
    goto/16 :goto_7

    .line 1382
    :sswitch_1b
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCopyNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1383
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearPasteList()V

    .line 1384
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1385
    invoke-virtual {p0, v10}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 1386
    invoke-virtual {p0, v10}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 1387
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 1388
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateBarView()V

    .line 1389
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_3b

    .line 1390
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clearChecked()V

    .line 1391
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v10}, Lcom/jrdcom/filemanager/IActivityListener;->updateActionMode(I)V

    goto :goto_6

    .line 1394
    :cond_3a
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->onBackPressed()V

    .line 1397
    :cond_3b
    :goto_6
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_48

    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 1398
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    goto/16 :goto_7

    .line 1658
    :sswitch_1c
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_3c

    .line 1659
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1661
    :cond_3c
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1662
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1663
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickDetailsBtn()V

    goto/16 :goto_7

    .line 1555
    :sswitch_1d
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_3d

    .line 1556
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1558
    :cond_3d
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_3e

    .line 1559
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v10}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1561
    :cond_3e
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->deleteFiles()V

    .line 1562
    goto/16 :goto_7

    .line 1299
    :sswitch_1e
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->deleteFiles()V

    .line 1300
    goto/16 :goto_7

    .line 1590
    :sswitch_1f
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_3f

    .line 1591
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1593
    :cond_3f
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 1594
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    if-eqz p1, :cond_40

    .line 1595
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->notifyAndScroll(Landroid/support/v7/widget/RecyclerView;)V

    .line 1597
    :cond_40
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 1598
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 1600
    :cond_41
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1601
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1602
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickCutBtn()V

    .line 1603
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/16 v2, 0xbc

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, ""

    invoke-interface/range {v0 .. v6}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1604
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clearChecked()V

    .line 1605
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    goto/16 :goto_7

    .line 1667
    :sswitch_20
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_42

    .line 1668
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1670
    :cond_42
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1671
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickNewFolderBtn()V

    goto/16 :goto_7

    .line 1567
    :sswitch_21
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_43

    .line 1568
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1570
    :cond_43
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 1571
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    if-eqz p1, :cond_44

    .line 1572
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->notifyAndScroll(Landroid/support/v7/widget/RecyclerView;)V

    .line 1574
    :cond_44
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 1575
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 1577
    :cond_45
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1578
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1579
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickCopyBtn()V

    .line 1580
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/16 v2, 0xbc

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, ""

    invoke-interface/range {v0 .. v6}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1581
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clearChecked()V

    .line 1582
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    goto :goto_7

    .line 1264
    :sswitch_22
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v10, v8}, Lcom/jrdcom/filemanager/IActivityListener;->clickCompressBtn(ILjava/lang/String;)V

    .line 1265
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_46

    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 1266
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1268
    :cond_46
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1269
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1270
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    goto :goto_7

    .line 1275
    :sswitch_23
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    if-eqz p1, :cond_47

    .line 1276
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    :cond_47
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_48

    .line 1279
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v11, v6}, Lcom/jrdcom/filemanager/IActivityListener;->showNoSearchResults(ZLjava/lang/String;)V

    goto :goto_7

    .line 1283
    :sswitch_24
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearAll()V

    .line 1284
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->onBackPressed()V

    .line 1285
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContent(Landroid/app/Fragment;)V

    .line 1286
    nop

    .line 1775
    :cond_48
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080029 -> :sswitch_24
        0x7f080037 -> :sswitch_23
        0x7f08003d -> :sswitch_22
        0x7f08003e -> :sswitch_22
        0x7f080045 -> :sswitch_21
        0x7f080046 -> :sswitch_21
        0x7f080047 -> :sswitch_20
        0x7f08004b -> :sswitch_1f
        0x7f08004c -> :sswitch_1f
        0x7f08004f -> :sswitch_1e
        0x7f080052 -> :sswitch_1d
        0x7f080053 -> :sswitch_1d
        0x7f08005d -> :sswitch_1c
        0x7f080060 -> :sswitch_1c
        0x7f08006a -> :sswitch_1b
        0x7f08007c -> :sswitch_1a
        0x7f08007e -> :sswitch_19
        0x7f08007f -> :sswitch_18
        0x7f080082 -> :sswitch_17
        0x7f080083 -> :sswitch_17
        0x7f080093 -> :sswitch_22
        0x7f080094 -> :sswitch_22
        0x7f080095 -> :sswitch_21
        0x7f080096 -> :sswitch_21
        0x7f080097 -> :sswitch_1f
        0x7f080098 -> :sswitch_1f
        0x7f080099 -> :sswitch_1d
        0x7f08009a -> :sswitch_1d
        0x7f08009b -> :sswitch_17
        0x7f08009c -> :sswitch_17
        0x7f08009d -> :sswitch_16
        0x7f08009e -> :sswitch_16
        0x7f08009f -> :sswitch_15
        0x7f0800a0 -> :sswitch_15
        0x7f0800a1 -> :sswitch_14
        0x7f0800a2 -> :sswitch_14
        0x7f0800a3 -> :sswitch_13
        0x7f0800a8 -> :sswitch_12
        0x7f0800ad -> :sswitch_11
        0x7f0800b0 -> :sswitch_10
        0x7f0800c8 -> :sswitch_f
        0x7f0800d6 -> :sswitch_e
        0x7f0800d7 -> :sswitch_d
        0x7f0800e0 -> :sswitch_c
        0x7f0800e2 -> :sswitch_15
        0x7f0800e3 -> :sswitch_15
        0x7f080103 -> :sswitch_b
        0x7f08010e -> :sswitch_a
        0x7f080115 -> :sswitch_9
        0x7f080127 -> :sswitch_8
        0x7f080129 -> :sswitch_7
        0x7f08012a -> :sswitch_7
        0x7f080143 -> :sswitch_6
        0x7f080145 -> :sswitch_1b
        0x7f080148 -> :sswitch_5
        0x7f080156 -> :sswitch_4
        0x7f08015a -> :sswitch_3
        0x7f08015d -> :sswitch_8
        0x7f08015f -> :sswitch_14
        0x7f080161 -> :sswitch_2
        0x7f080162 -> :sswitch_2
        0x7f080166 -> :sswitch_1
        0x7f080167 -> :sswitch_1
        0x7f08016b -> :sswitch_10
        0x7f080174 -> :sswitch_0
        0x7f0801a6 -> :sswitch_3
    .end sparse-switch
.end method

.method public onClickCSK()Z
    .locals 3

    .line 1227
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 1228
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1229
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_1

    .line 1230
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1232
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_2

    .line 1233
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1235
    :cond_2
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pasteFiles()V

    .line 1236
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 1237
    return v1

    .line 1239
    :cond_3
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onClickCSK()Z

    move-result v0

    return v0
.end method

.method public onClickLSK()Z
    .locals 3

    .line 2465
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    .line 2466
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    if-ne v0, v2, :cond_2

    .line 2468
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->isShowNoFolderView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2469
    return v2

    .line 2472
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1

    .line 2473
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickSearchBtn()V

    .line 2475
    :cond_1
    const-string v0, ""

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSaveQueryText:Ljava/lang/String;

    .line 2476
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setSearchMode(Z)V

    .line 2477
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->saveListBeforeSearch()V

    .line 2478
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v1, "search_num"

    invoke-static {p0, v1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordCountNumForFA(Landroid/content/Context;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    goto :goto_0

    .line 2480
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2481
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_3

    .line 2482
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 2484
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_4

    .line 2485
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickSelectAllBtn()V

    .line 2489
    :cond_4
    :goto_0
    return v2
.end method

.method public onClickRSK()Z
    .locals 2

    .line 2450
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->isShowNoFolderView()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2452
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_0

    .line 2453
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 2455
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1

    .line 2456
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickNewFolderBtn()V

    .line 2458
    :cond_1
    return v1

    .line 2460
    :cond_2
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onClickRSK()Z

    move-result v0

    return v0
.end method

.method public onClose()Z
    .locals 1

    .line 1842
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setSearchMode(Z)V

    .line 1843
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onClose()Z

    .line 1844
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 600
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 601
    const/4 p1, 0x0

    iput p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->listcount:I

    .line 602
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isChangeMultiScreen:Z

    .line 603
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mPortraitOrientation:Z

    if-eqz v0, :cond_2

    .line 610
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getListPortLimita()I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->listcount:I

    .line 611
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 613
    :cond_2
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getListLandLimita()I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->listcount:I

    .line 615
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->HideActionbar(Z)V

    .line 617
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_3

    .line 618
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/jrdcom/filemanager/IActivityListener;->changeViewMode(Ljava/lang/String;)V

    .line 621
    :cond_3
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->sortPop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    const-wide/16 v0, 0xc8

    if-eqz p1, :cond_4

    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->sortPop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 622
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$2;

    invoke-direct {v2, p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$2;-><init>(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 634
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_5

    .line 638
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$3;

    invoke-direct {v2, p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$3;-><init>(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 647
    :cond_5
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_6

    .line 648
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnMore:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->reshowMorePop(Landroid/view/View;)V

    .line 651
    :cond_6
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-eqz p1, :cond_7

    .line 652
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;->onChangeMainlayout()V

    .line 654
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateNewCategoryFragment()V

    goto :goto_1

    .line 658
    :cond_7
    new-instance p1, Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-direct {p1}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;-><init>()V

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    .line 662
    :goto_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$4;-><init>(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 670
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 2438
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2439
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMenuBar:Landroid/widget/MenuBar;

    .line 2440
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 2443
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateOptionMenuItemBackground()V

    .line 2446
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 898
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onDestroy()V

    .line 899
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v0, :cond_0

    .line 900
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->clearAll()V

    .line 905
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mQueryText:Ljava/lang/String;

    .line 909
    invoke-static {}, Lcom/jrdcom/filemanager/manager/IconManager;->getInstance()Lcom/jrdcom/filemanager/manager/IconManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/IconManager;->clearAll()V

    .line 910
    sget-object v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCategoryItemMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 911
    sget-object v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCategoryItemMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 913
    :cond_2
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v1, :cond_3

    .line 916
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v1, :cond_3

    .line 917
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearAll()V

    .line 926
    :cond_3
    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 929
    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/manager/CategoryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/CategoryManager;->clearMap()V

    .line 930
    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 931
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 932
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 934
    :cond_4
    return-void
.end method

.method public onEject()V
    .locals 6

    .line 939
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->getInstance()Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    .line 942
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/FileManagerApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    .line 944
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 945
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 946
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 947
    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTask(J)Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v3

    .line 948
    invoke-virtual {v3}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->getmResultTaskInfo()Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 949
    invoke-virtual {v3}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->getmResultTaskInfo()Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v4

    .line 950
    const/16 v5, 0x23

    if-ne v4, v5, :cond_1

    move-object v5, v3

    check-cast v5, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/task/FileOperationTask$ExtractFileTask;->isSourceExists()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/16 v5, 0x22

    if-ne v4, v5, :cond_3

    move-object v4, v3

    check-cast v4, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;

    .line 951
    invoke-virtual {v4}, Lcom/jrdcom/filemanager/task/FileOperationTask$CompressFileTask;->isSourceExists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 952
    :cond_2
    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v4, v3}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->cancel(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 953
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    long-to-int v4, v1

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 954
    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->removeRunningTask(J)V

    .line 955
    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->removeFinishTask(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    :cond_3
    goto :goto_0

    .line 961
    :cond_4
    goto :goto_1

    .line 959
    :catch_0
    move-exception v0

    .line 960
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 962
    :goto_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-eqz v0, :cond_5

    .line 963
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;->disableCategoryEvent(Z)V

    .line 965
    :cond_5
    return-void
.end method

.method public onItemClick(I)V
    .locals 1

    .line 2632
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getAbsolutePath(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->absolutePath:Ljava/lang/StringBuilder;

    .line 2633
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2634
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1

    .line 2635
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->onBackPressed()V

    .line 2638
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->paths:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_2

    .line 2639
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->absolutePath:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 2640
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 2642
    :cond_2
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 2509
    invoke-super {p0, p1, p2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 2510
    sget-object v0, Lcom/jrdcom/filemanager/utils/PopWindowType;->POP_WINDOW_DISMISS:Lcom/jrdcom/filemanager/utils/PopWindowType;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->popWindowType:Lcom/jrdcom/filemanager/utils/PopWindowType;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_6

    .line 2511
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_0

    if-eq p1, v0, :cond_3

    .line 2543
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 2545
    return v4

    .line 2528
    :cond_0
    sget-object p1, Lcom/jrdcom/filemanager/utils/PopWindowType;->POP_WINDOW_TYPE_DELTE:Lcom/jrdcom/filemanager/utils/PopWindowType;

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->popWindowType:Lcom/jrdcom/filemanager/utils/PopWindowType;

    if-ne p1, p2, :cond_1

    .line 2529
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->changeStatusBarTextColor(Z)V

    .line 2531
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->deleteFileResponse()V

    .line 2532
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPopupWidow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2534
    :cond_1
    sget-object p1, Lcom/jrdcom/filemanager/utils/PopWindowType;->POP_WINDOW_TYPE_CREATE_FOLDER:Lcom/jrdcom/filemanager/utils/PopWindowType;

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->popWindowType:Lcom/jrdcom/filemanager/utils/PopWindowType;

    if-ne p1, p2, :cond_2

    .line 2535
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPopupWidow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2538
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 2540
    return v4

    .line 2515
    :cond_3
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->changeStatusBarTextColor(Z)V

    .line 2516
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPopupWidow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_4

    .line 2517
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2521
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-eq p1, v0, :cond_5

    .line 2522
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 2526
    :cond_5
    return v4

    .line 2549
    :cond_6
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    .line 2550
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne p1, v4, :cond_9

    .line 2551
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearPasteList()V

    .line 2552
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2553
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 2554
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 2555
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 2556
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateBarView()V

    .line 2557
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_7

    .line 2558
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clearChecked()V

    .line 2559
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v4}, Lcom/jrdcom/filemanager/IActivityListener;->updateActionMode(I)V

    .line 2561
    :cond_7
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, v0, :cond_8

    .line 2562
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 2563
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2564
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2565
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2567
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMenuBar:Landroid/widget/MenuBar;

    sget p2, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    const/4 v0, 0x0

    invoke-virtual {p1, v3, p2, v3, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 2572
    :cond_8
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    goto :goto_1

    .line 2574
    :cond_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne p1, v2, :cond_d

    .line 2575
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, p2, :cond_a

    return v4

    .line 2576
    :cond_a
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_b

    .line 2577
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 2579
    :cond_b
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_c

    .line 2580
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v3}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 2582
    :cond_c
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pasteFiles()V

    .line 2583
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 2586
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 2589
    :cond_d
    :goto_1
    return v4

    .line 2591
    :cond_e
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMounted()V
    .locals 2

    .line 969
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onMounted()V

    .line 970
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mounted(Ljava/lang/String;Z)V

    .line 971
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .line 2935
    const-string v0, "pathType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mStartFromSettingType:I

    .line 2936
    if-eqz v2, :cond_0

    .line 2937
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showPhoneOrSDFragment()V

    .line 2939
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2941
    const-string v0, "foldername"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 2942
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2943
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    const-string v3, "/storage/emulated/0/Locker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2944
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 2945
    if-eqz v2, :cond_1

    if-eqz v2, :cond_2

    const-string v3, "com.android.privatefolder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.blackberry.camera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2946
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finish()V

    .line 2950
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2951
    const-string v0, "notification"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isClickNotification:Z

    .line 2952
    const-string v0, "turnTime"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2953
    const-string v0, "showDialog"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isShowDialog:Z

    .line 2954
    const-string v0, "createTime"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2955
    const-string v0, "cancel"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isCancelTask:Z

    .line 2956
    const-string v0, "cancelTime"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2957
    iget-boolean p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isShowDialog:Z

    if-eqz p1, :cond_3

    .line 2958
    invoke-direct {p0, v6, v7}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->createProgressDialog(J)V

    .line 2960
    :cond_3
    iget-boolean p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isCancelTask:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_4

    .line 2961
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-wide v2, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->cancelTaskTime:J

    .line 2962
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/4 v0, -0x2

    invoke-interface {p1, v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickProgressBtn(I)V

    .line 2964
    :cond_4
    iget-boolean p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isClickNotification:Z

    if-eqz p1, :cond_5

    .line 2965
    invoke-direct {p0, v4, v5}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->createProgressDialog(J)V

    .line 2967
    :cond_5
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 2971
    :cond_6
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-eqz p1, :cond_7

    .line 2972
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;->dismissSafeDialog()V

    .line 2974
    :cond_7
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 2975
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->onPemissinRequestResult(Z)V

    .line 2977
    :cond_8
    return-void

    .line 2968
    :cond_9
    :goto_0
    iput-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isFromShortcut:Z

    .line 2969
    return-void
.end method

.method public onOptionMenuClick(I)V
    .locals 11

    .line 1062
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onOptionMenuClick(I)V

    .line 1063
    const-string v0, "view_key"

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1078
    :sswitch_0
    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showChoiceResourceDialog(ILandroid/view/View;)V

    .line 1079
    goto/16 :goto_0

    .line 1173
    :sswitch_1
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_0

    .line 1174
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1176
    :cond_0
    iput-boolean v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mShareFlag:Z

    .line 1178
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_1

    .line 1179
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1180
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickShareBtn()V

    .line 1181
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v3}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1183
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_12

    .line 1184
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v0, "share_num"

    invoke-static {p0, v0, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordCountNumForFA(Landroid/content/Context;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    goto/16 :goto_0

    .line 1065
    :sswitch_2
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_2

    .line 1066
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1068
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_12

    .line 1069
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickEditBtn()V

    goto/16 :goto_0

    .line 1152
    :sswitch_3
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_3

    .line 1153
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1155
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_12

    .line 1156
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1157
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v0, 0x2712

    iput v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    .line 1158
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mQueryText:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickRenameBtn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1090
    :sswitch_4
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_4

    .line 1091
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1093
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_5

    .line 1094
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v3}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1096
    :cond_5
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pasteFiles()V

    .line 1097
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 1098
    goto/16 :goto_0

    .line 1198
    :sswitch_5
    const-string p1, "listMode"

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->viewModeChanage(Ljava/lang/String;)V

    .line 1199
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_12

    .line 1200
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v2, "list_view_sta"

    invoke-static {p1, v0, v2, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    goto/16 :goto_0

    .line 1073
    :sswitch_6
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 1074
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 1075
    goto/16 :goto_0

    .line 1189
    :sswitch_7
    const-string p1, "gridMode"

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->viewModeChanage(Ljava/lang/String;)V

    .line 1190
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_12

    .line 1191
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v2, "grid_view_sta"

    invoke-static {p1, v0, v2, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    goto/16 :goto_0

    .line 1207
    :sswitch_8
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1208
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->changeStatusBarColor(Z)V

    .line 1209
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 1210
    new-array p1, v3, [Z

    const-string v0, "category"

    invoke-direct {p0, v0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateFragment(Ljava/lang/String;[Z)V

    .line 1211
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700fa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1212
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    if-eqz p1, :cond_6

    .line 1213
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalSearchView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 1215
    :cond_6
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_7

    .line 1216
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->onGlobalSearchBackPressed()V

    .line 1218
    :cond_7
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 1163
    :sswitch_9
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_8

    .line 1164
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1166
    :cond_8
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_12

    .line 1167
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1168
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickDetailsBtn()V

    goto/16 :goto_0

    .line 1141
    :sswitch_a
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_9

    .line 1142
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1144
    :cond_9
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_a

    .line 1145
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v2}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1147
    :cond_a
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->changeStatusBarTextColor(Z)V

    .line 1148
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->deleteFiles()V

    .line 1149
    goto/16 :goto_0

    .line 1101
    :sswitch_b
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_b

    .line 1102
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1104
    :cond_b
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 1105
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    if-eqz p1, :cond_c

    .line 1106
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->notifyAndScroll(Landroid/support/v7/widget/RecyclerView;)V

    .line 1108
    :cond_c
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1109
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 1111
    :cond_d
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_12

    .line 1112
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1113
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickCutBtn()V

    .line 1114
    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/16 v6, 0xbc

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, ""

    invoke-interface/range {v4 .. v10}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1115
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clearChecked()V

    .line 1116
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v3}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    goto :goto_0

    .line 1081
    :sswitch_c
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_e

    .line 1082
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1084
    :cond_e
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_12

    .line 1085
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickNewFolderBtn()V

    goto :goto_0

    .line 1121
    :sswitch_d
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_f

    .line 1122
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1124
    :cond_f
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 1125
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    if-eqz p1, :cond_10

    .line 1126
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->notifyAndScroll(Landroid/support/v7/widget/RecyclerView;)V

    .line 1128
    :cond_10
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1129
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 1131
    :cond_11
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_12

    .line 1132
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1133
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clickCopyBtn()V

    .line 1134
    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/16 v6, 0xbc

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, ""

    invoke-interface/range {v4 .. v10}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1135
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->clearChecked()V

    .line 1136
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1, v3}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1223
    :cond_12
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080045 -> :sswitch_d
        0x7f080047 -> :sswitch_c
        0x7f08004b -> :sswitch_b
        0x7f080052 -> :sswitch_a
        0x7f08005d -> :sswitch_9
        0x7f08006a -> :sswitch_8
        0x7f0800ad -> :sswitch_7
        0x7f0800bd -> :sswitch_6
        0x7f0800c8 -> :sswitch_5
        0x7f080102 -> :sswitch_4
        0x7f080129 -> :sswitch_3
        0x7f080156 -> :sswitch_2
        0x7f080161 -> :sswitch_1
        0x7f080174 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2402
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 2410
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 2404
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->onBackPressed()V

    .line 2405
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_1

    .line 2406
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v0, "actionbar_home_click_num"

    invoke-static {p0, v0, p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordCountNumForFA(Landroid/content/Context;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    .line 2408
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 2802
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onPause()V

    .line 2805
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishDirectly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finishDirectly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mApplication.mCurrentPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " caseNotFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->caseNotFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2806
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 2807
    const-string v1, "/storage/emulated/0/Locker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->caseNotFinish:Z

    if-nez v0, :cond_0

    .line 2808
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTaskSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 2809
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->clearForPrivate()V

    .line 2810
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finish()V

    .line 2814
    :cond_0
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finishDirectly:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const-string v1, "/storage/emulated/0/WirelessTool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2815
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2817
    :cond_1
    return-void
.end method

.method public onPemissinRequestResult(Z)V
    .locals 6

    .line 3019
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 3020
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showActionBar()V

    .line 3022
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 3023
    iput-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isFromShortcut:Z

    .line 3024
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    if-nez v0, :cond_1

    .line 3025
    new-instance v0, Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/view/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    .line 3027
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3028
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const v5, 0x7f0c00e0

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 3035
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isPathInvalid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3036
    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 3037
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-virtual {v0, v5}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 3038
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 3040
    return-void

    .line 3042
    :cond_3
    const/4 v0, 0x2

    const/16 v4, 0x8

    if-nez p1, :cond_8

    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v5, :cond_8

    .line 3043
    invoke-static {v0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->setCurrentMode(I)V

    .line 3044
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3045
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 3047
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_5

    .line 3048
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 3050
    :cond_5
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v4, :cond_7

    .line 3051
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->syncCurrentStatus:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3052
    :cond_6
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3055
    :cond_7
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    iput-object v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 3056
    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 3057
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContentByViewMode(Z)V

    .line 3059
    return-void

    .line 3060
    :cond_8
    if-eqz p1, :cond_e

    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v5, :cond_e

    .line 3061
    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v5}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    .line 3062
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->hideFloatButton()V

    .line 3063
    invoke-static {v0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->setCurrentMode(I)V

    .line 3064
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3065
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 3067
    :cond_9
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 3068
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3069
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-eqz v0, :cond_a

    .line 3070
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->clearAdapter()V

    .line 3073
    :cond_a
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_b

    .line 3074
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->clickShortcutToNormal()V

    .line 3076
    :cond_b
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 3077
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->syncCurrentStatus:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3078
    :cond_c
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3081
    :cond_d
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    iput-object v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 3082
    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 3083
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContentByViewMode(Z)V

    goto :goto_0

    .line 3084
    :cond_e
    if-eqz p1, :cond_12

    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v5, v5, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-nez v5, :cond_12

    .line 3085
    sget-object v5, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v5, :cond_f

    sget-object v5, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3086
    sget-object v5, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 3088
    :cond_f
    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v5}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 3089
    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_11

    .line 3090
    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->syncCurrentStatus:Ljava/lang/String;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 3091
    :cond_10
    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3094
    :cond_11
    invoke-static {v0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->setCurrentMode(I)V

    .line 3095
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    iput-object v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 3096
    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 3097
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContentByViewMode(Z)V

    goto :goto_2

    .line 3084
    :cond_12
    :goto_0
    goto :goto_2

    .line 3029
    :cond_13
    :goto_1
    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 3030
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-virtual {v0, v5}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 3031
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 3033
    return-void

    .line 3100
    :cond_14
    :goto_2
    if-nez p1, :cond_18

    iget-boolean p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isFromPermission:Z

    if-nez p1, :cond_15

    goto :goto_3

    .line 3103
    :cond_15
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    if-eq p1, v0, :cond_16

    .line 3104
    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 3106
    :cond_16
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz p1, :cond_17

    .line 3107
    return-void

    .line 3109
    :cond_17
    iput-boolean v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isFromPermission:Z

    .line 3110
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContent(Landroid/app/Fragment;)V

    .line 3111
    invoke-static {v1}, Lcom/jrdcom/filemanager/manager/CategoryManager;->setCurrentMode(I)V

    .line 3115
    return-void

    .line 3101
    :cond_18
    :goto_3
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 2396
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateMoreButtonMenu()V

    .line 2397
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 1856
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->queryTextChange(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    .line 1849
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->queryTextSubmit(Ljava/lang/String;)V

    .line 1850
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 1851
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 2867
    const/4 p3, 0x3

    if-ne p3, p1, :cond_6

    .line 2868
    const/4 p1, 0x0

    sput-boolean p1, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isShowPermissionDialog:Z

    .line 2869
    array-length p3, p2

    move v0, p1

    :goto_0
    if-ge v0, p3, :cond_6

    aget-object v1, p2, v0

    .line 2870
    invoke-static {p0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2872
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasM()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    sget-object v3, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    if-ne v1, v3, :cond_1

    .line 2875
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isSecondRequestPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2876
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->updateView(I)V

    .line 2878
    :cond_0
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->setSecondRequestPermission(Landroid/content/Context;)V

    goto :goto_1

    .line 2880
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 2881
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v1, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 2882
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finish()V

    goto :goto_1

    .line 2884
    :cond_2
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasM()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2885
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->runCreateCount:I

    if-le v1, v2, :cond_3

    .line 2886
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->recreate()V

    goto :goto_1

    .line 2888
    :cond_3
    iput-boolean v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isFromPermission:Z

    .line 2889
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->onPemissinRequestResult(Z)V

    .line 2890
    sget v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->enterPermissionResultCount:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 2891
    sput v2, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->enterPermissionResultCount:I

    .line 2892
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBrowserHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2894
    :cond_4
    sget v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->enterPermissionResultCount:I

    add-int/2addr v1, v2

    sput v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->enterPermissionResultCount:I

    .line 2869
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2901
    :cond_6
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 3440
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 3441
    const/4 p1, 0x0

    sput-boolean p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isEnterSaveInstanceState:Z

    .line 3442
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBrowserHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3443
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 2724
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onResume()V

    .line 2725
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isChangeMultiScreen:Z

    .line 2726
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2727
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v2, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    .line 2729
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2730
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchShortcut(Ljava/lang/String;Z)V

    .line 2733
    :cond_1
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    if-eqz v1, :cond_2

    .line 2734
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->startFileTimerWatcher()V

    .line 2738
    :cond_2
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->syncCurrentStatus:Ljava/lang/String;

    const/16 v3, 0x8

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2739
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2740
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncStatus:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2741
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncText:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 2742
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->syncCurrentStatus:Ljava/lang/String;

    const-string v3, "open"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2743
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncText:Landroid/widget/TextView;

    const v3, 0x7f0c0101

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2744
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncIcon:Landroid/widget/ImageView;

    const v3, 0x7f070142

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2745
    :cond_3
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->syncCurrentStatus:Ljava/lang/String;

    const-string v3, "sync"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2746
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncText:Landroid/widget/TextView;

    const v3, 0x7f0c0103

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2747
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncIcon:Landroid/widget/ImageView;

    const v3, 0x7f070144

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2748
    :cond_4
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->syncCurrentStatus:Ljava/lang/String;

    const-string v3, "close"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f070143

    if-eqz v1, :cond_5

    .line 2749
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncText:Landroid/widget/TextView;

    const v4, 0x7f0c0102

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2750
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2752
    :cond_5
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncText:Landroid/widget/TextView;

    const v4, 0x7f0c00f3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2753
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2757
    :cond_6
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessSyncStatus:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2761
    :cond_7
    :goto_0
    iget-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finishDirectly:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const-string v3, "/storage/emulated/0/WirelessTool"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2762
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2763
    const-string v3, "com.android.wirelesstool.sync.status"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2764
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->wirelessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2769
    :cond_8
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    .line 2770
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v3, "category"

    invoke-static {v1, v3}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 2771
    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 2772
    invoke-static {v2}, Lcom/jrdcom/filemanager/manager/CategoryManager;->setCurrentMode(I)V

    .line 2773
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1, v3}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 2774
    new-array v1, v0, [Z

    invoke-direct {p0, v3, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateFragment(Ljava/lang/String;[Z)V

    .line 2777
    :cond_a
    iget-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finishDirectly:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2778
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    const-string v2, "exit search status if finish directly"

    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->onBackPressed()V

    .line 2780
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2781
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 2783
    :cond_b
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchView:Landroid/widget/EditText;

    if-eqz v1, :cond_c

    .line 2784
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 2788
    :cond_c
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->caseNotFinish:Z

    .line 2792
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMenuBar:Landroid/widget/MenuBar;

    if-nez v0, :cond_d

    .line 2793
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMenuBar:Landroid/widget/MenuBar;

    .line 2795
    :cond_d
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateOptionMenuItemBackground()V

    .line 2797
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 3392
    :try_start_0
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3395
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const-string v1, "/storage/emulated/0/Locker"

    .line 3396
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3397
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTaskSize()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez p1, :cond_0

    .line 3399
    :try_start_1
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->clearWaittingTask()V

    .line 3400
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/4 v1, -0x3

    invoke-interface {p1, v1}, Lcom/jrdcom/filemanager/IActivityListener;->clickProgressBtn(I)V

    .line 3401
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 3402
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefsStatus(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3405
    goto :goto_0

    .line 3403
    :catch_0
    move-exception p1

    .line 3404
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3409
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mQueryText:Ljava/lang/String;

    sput-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSaveQueryText:Ljava/lang/String;

    .line 3410
    sput-boolean v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isEnterSaveInstanceState:Z

    .line 3411
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p1, :cond_2

    .line 3412
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSaveCheckedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3413
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->getCheckedList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3414
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSaveCheckedList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v1}, Lcom/jrdcom/filemanager/IActivityListener;->getCheckedList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3416
    :cond_1
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSaveSelectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3417
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->saveSelectedList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3418
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSaveSelectedList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v1}, Lcom/jrdcom/filemanager/IActivityListener;->saveSelectedList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3421
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz p1, :cond_4

    .line 3422
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSavePastedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3423
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3424
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSavePastedList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3426
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteType()I

    move-result p1

    sput p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPasteOperation:I

    .line 3428
    :cond_4
    const/4 p1, 0x0

    sput-boolean p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isShowNoStorageDialog:Z

    .line 3430
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mNoStorageDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mNoStorageDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3431
    sput-boolean v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isShowNoStorageDialog:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3435
    :cond_5
    goto :goto_1

    .line 3433
    :catch_1
    move-exception p1

    .line 3434
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3436
    :goto_1
    return-void
.end method

.method public onScannerFinished()V
    .locals 2

    .line 2352
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-nez v0, :cond_1

    .line 2353
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-nez v0, :cond_0

    .line 2354
    new-instance v0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    .line 2356
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    .line 2357
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 2359
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2360
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;->disableCategoryEvent(Z)V

    .line 2362
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;->onScannerFinished()V

    .line 2367
    :cond_2
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isMounted:Z

    if-eqz v0, :cond_3

    .line 2368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isMounted:Z

    .line 2369
    invoke-virtual {p0, v1, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->removeCategoryCache(ZZ)V

    .line 2371
    :cond_3
    return-void
.end method

.method public onScannerStarted()V
    .locals 1

    .line 2375
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-nez v0, :cond_1

    .line 2376
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-nez v0, :cond_0

    .line 2377
    new-instance v0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    .line 2379
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    .line 2380
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 2382
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-eqz v0, :cond_2

    .line 2383
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;->onScannerStarted()V

    .line 2384
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_2

    .line 2385
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->onScannerStarted()V

    .line 2388
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 2906
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onStart()V

    .line 2908
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2909
    if-eqz v0, :cond_2

    .line 2910
    const-string v1, "foldername"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2911
    const-string v2, "/storage/emulated/0/Locker"

    if-eqz v1, :cond_1

    .line 2912
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2913
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 2914
    if-eqz v3, :cond_0

    if-eqz v3, :cond_1

    const-string v4, "com.android.privatefolder"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.blackberry.camera"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2915
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finish()V

    .line 2919
    :cond_1
    const/4 v3, 0x0

    const-string v4, "finish_directly"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2923
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->shortcutNotFinishDir:Z

    if-nez v0, :cond_2

    .line 2924
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2925
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->clearForPrivate()V

    .line 2929
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 890
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onStop()V

    .line 891
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->cancelFileTimerWatcher()V

    .line 894
    :cond_0
    return-void
.end method

.method public onUnmounted(Ljava/lang/String;)V
    .locals 1

    .line 1039
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onUnmounted(Ljava/lang/String;)V

    .line 1040
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mounted(Ljava/lang/String;Z)V

    .line 1041
    return-void
.end method

.method public pasteBtnUpdated()V
    .locals 0

    .line 2332
    return-void
.end method

.method public reSearch()V
    .locals 3

    .line 2838
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mQueryText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2839
    return-void

    .line 2841
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2712

    if-eqz v0, :cond_1

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    if-eq v0, v2, :cond_1

    .line 2846
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mQueryText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->requestSearch(Ljava/lang/String;)V

    goto :goto_1

    .line 2847
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    if-eq v0, v2, :cond_2

    .line 2848
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 2849
    iput-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchFromEdit:Z

    .line 2852
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2855
    goto :goto_0

    .line 2853
    :catch_0
    move-exception v0

    .line 2856
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mQueryText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->requestSearch(Ljava/lang/String;)V

    .line 2858
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    .line 2859
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2860
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->notifyAndScroll(Landroid/support/v7/widget/RecyclerView;)V

    .line 2862
    :cond_3
    return-void
.end method

.method public refreashSafeFilesCategory()V
    .locals 0

    .line 3356
    return-void
.end method

.method protected refreshPathAdapter(Ljava/lang/String;)V
    .locals 8

    .line 782
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->refreshPathAdapter(Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    .line 784
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getRefreshMode(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 787
    :cond_0
    return-void
.end method

.method public refreshStorageInfoUiForLand(Landroid/view/View;)V
    .locals 1

    .line 3208
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez v0, :cond_0

    .line 3209
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 3212
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mPortraitOrientation:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 3213
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->isOtgMounted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->isSDCardMounted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3214
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3216
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3219
    :cond_2
    :goto_0
    return-void
.end method

.method public setCaseNotFinish(Z)V
    .locals 0

    .line 2302
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->caseNotFinish:Z

    .line 2303
    return-void
.end method

.method public setFileActionMode(I)V
    .locals 1

    .line 2206
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput p1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 2207
    invoke-static {p0, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefsStatus(Landroid/content/Context;I)V

    .line 2208
    return-void
.end method

.method public setMainContentView()V
    .locals 8

    .line 266
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setMainContentView()V

    .line 267
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-static {v1}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->getInstance(Lcom/jrdcom/filemanager/IActivityListener;)Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 269
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->setAppHandler(Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;)V

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 272
    const/4 v1, 0x0

    const-string v2, "foldername"

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 273
    const-string v4, "finish_directly"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finishDirectly:Z

    .line 274
    const-string v4, "current_status"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->syncCurrentStatus:Ljava/lang/String;

    .line 275
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 276
    const-string v4, "pathType"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mStartFromSettingType:I

    .line 278
    if-eqz v5, :cond_1

    .line 279
    invoke-virtual {v0, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 283
    :cond_1
    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    const/16 v5, 0x2000

    if-eqz v4, :cond_4

    .line 284
    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    const-string v6, "/storage/emulated/0/Locker"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 285
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 286
    if-eqz v4, :cond_3

    if-eqz v4, :cond_2

    const-string v6, "com.android.privatefolder"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.blackberry.camera"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1

    .line 287
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finish()V

    .line 291
    :goto_1
    goto :goto_2

    .line 293
    :cond_4
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 295
    :cond_5
    :goto_2
    const-string v4, "shortcutNotFinishDir"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->shortcutNotFinishDir:Z

    .line 296
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMultiScreenChanage(Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isEnterSaveInstanceState:Z

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finishDirectly:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->shortcutNotFinishDir:Z

    if-nez v0, :cond_7

    .line 301
    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 303
    :cond_7
    sput-boolean v3, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isEnterSaveInstanceState:Z

    .line 306
    :cond_8
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    const-string v4, ""

    const-string v5, "category"

    const/16 v6, 0x8

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 307
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    if-nez v2, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 309
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isPathInvalid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    .line 319
    :cond_a
    iput-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    goto :goto_4

    .line 310
    :cond_b
    :goto_3
    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    if-nez v0, :cond_c

    .line 312
    new-instance v0, Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/view/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    .line 314
    :cond_c
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const v1, 0x7f0c00e0

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 315
    iput-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, v5}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    :goto_4
    goto/16 :goto_5

    :cond_d
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasM()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 322
    const-string v0, "permissions"

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    goto/16 :goto_5

    .line 323
    :cond_e
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    iget-object v7, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, v7}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMultiScreenChanage(Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5

    .line 324
    :cond_f
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 325
    iput-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, v5}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 329
    :cond_10
    nop

    .line 330
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 331
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    :cond_11
    if-eqz v1, :cond_12

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPermissionPrefCurrTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPermissionTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 334
    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefCurrTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 335
    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPermissionTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isPathInvalid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 336
    :cond_13
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, v5}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 339
    :cond_14
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 340
    iput-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, v5}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 345
    :cond_15
    :goto_5
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMultiScreenChanage(Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 346
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->resetPrefsStatus(Landroid/content/Context;)V

    .line 350
    :cond_16
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPermissionTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 351
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finishDirectly:Z

    if-eqz v1, :cond_18

    .line 352
    :cond_17
    new-instance v1, Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    invoke-direct {v1}, Lcom/jrdcom/filemanager/fragment/PermissionFragment;-><init>()V

    sput-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    .line 354
    :cond_18
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    invoke-virtual {p0, v1, v3, v6, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->commitFragment(Landroid/app/Fragment;ZIZ)V

    goto/16 :goto_8

    .line 355
    :cond_19
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 356
    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-ltz v1, :cond_1b

    .line 357
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateCategoryNormalBarView()V

    .line 358
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-nez v1, :cond_1a

    .line 359
    new-instance v1, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {v1}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    .line 361
    :cond_1a
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {p0, v1, v3, v6, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->commitFragment(Landroid/app/Fragment;ZIZ)V

    .line 362
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    goto/16 :goto_7

    .line 363
    :cond_1b
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isGlobalSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 364
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-nez v1, :cond_1c

    .line 365
    new-instance v1, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {v1}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    .line 367
    :cond_1c
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {p0, v1, v3, v6, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->commitFragment(Landroid/app/Fragment;ZIZ)V

    .line 368
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 369
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 370
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1d

    .line 371
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    :cond_1d
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSaveQueryText:Ljava/lang/String;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mQueryText:Ljava/lang/String;

    .line 374
    sput-object v4, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSaveQueryText:Ljava/lang/String;

    .line 375
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateViewByTag()V

    .line 376
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getFileMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateView(I)V

    .line 377
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mQueryText:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mQueryText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_6

    .line 380
    :cond_1e
    return-void

    .line 378
    :cond_1f
    :goto_6
    return-void

    .line 382
    :cond_20
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-nez v1, :cond_21

    .line 383
    new-instance v1, Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-direct {v1}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;-><init>()V

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    .line 387
    :cond_21
    iget v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mStartFromSettingType:I

    if-nez v1, :cond_22

    .line 388
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    const-string v2, "setMainContentView commit CategoryFragment"

    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {p0, v1, v3, v6, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->commitFragment(Landroid/app/Fragment;ZIZ)V

    .line 390
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 391
    const v1, 0x7f0c002b

    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    .line 392
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateViewByTag()V

    goto :goto_7

    .line 394
    :cond_22
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->setContentInvisible()V

    .line 395
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {p0, v1, v3, v6, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->commitFragment(Landroid/app/Fragment;ZIZ)V

    .line 396
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 397
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 398
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isNeedFinishFromSetting:Z

    .line 403
    :goto_7
    invoke-static {v0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->setCurrentMode(I)V

    goto :goto_8

    .line 404
    :cond_23
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 405
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchShortcut(Ljava/lang/String;Z)V

    .line 406
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->laucherFolderName:Ljava/lang/String;

    iput-object v2, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 407
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-nez v1, :cond_24

    .line 408
    new-instance v1, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {v1}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    .line 410
    :cond_24
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {p0, v1, v0, v3, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->commitFragment(Landroid/app/Fragment;ZIZ)V

    .line 411
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    goto :goto_8

    .line 413
    :cond_25
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMultiScreenChanage(Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 414
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-nez v1, :cond_26

    .line 415
    new-instance v1, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {v1}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    .line 417
    :cond_26
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->commitFragment(Landroid/app/Fragment;ZIZ)V

    .line 418
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    goto :goto_8

    .line 420
    :cond_27
    invoke-direct {p0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->commitPathFragment(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 424
    :catch_0
    move-exception v1

    .line 425
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 422
    :catch_1
    move-exception v1

    .line 423
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 426
    :goto_8
    nop

    .line 429
    :goto_9
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBrowserHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 430
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBrowserHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 431
    return-void
.end method

.method public setPhonePathRootIcon(Ljava/lang/String;)V
    .locals 4

    .line 3134
    const-string v0, "usbotg"

    const-string v1, "sdcard"

    const-string v2, "phone"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez v3, :cond_0

    goto :goto_1

    .line 3137
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v3

    .line 3138
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 3139
    invoke-virtual {v3}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3141
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    const v0, 0x7f0c00be

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3142
    iput-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 3143
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1, v2}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 3144
    return-void

    .line 3146
    :cond_1
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v2

    .line 3147
    if-eqz v2, :cond_2

    .line 3148
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3150
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    const v0, 0x7f0c00cf

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3151
    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 3152
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1, v1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 3153
    return-void

    .line 3155
    :cond_2
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object v1

    .line 3156
    if-eqz v1, :cond_3

    .line 3157
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3159
    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 3160
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3161
    return-void

    .line 3165
    :cond_3
    goto :goto_0

    .line 3163
    :catch_0
    move-exception p1

    .line 3164
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3166
    :goto_0
    return-void

    .line 3134
    :cond_4
    :goto_1
    return-void
.end method

.method public setPopwindowType(Landroid/widget/PopupWindow;Lcom/jrdcom/filemanager/utils/PopWindowType;)V
    .locals 0

    .line 3566
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mPopupWidow:Landroid/widget/PopupWindow;

    .line 3567
    iput-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->popWindowType:Lcom/jrdcom/filemanager/utils/PopWindowType;

    .line 3568
    return-void
.end method

.method public showActionBar()V
    .locals 1

    .line 3265
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 3266
    if-eqz v0, :cond_0

    .line 3267
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 3269
    :cond_0
    return-void
.end method

.method public showBottomView(Ljava/lang/String;)V
    .locals 1

    .line 1814
    const/16 v0, 0xbb8

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1815
    return-void
.end method

.method protected showForbiddenDialog()V
    .locals 3

    .line 2165
    new-instance v0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;-><init>()V

    .line 2166
    nop

    .line 2167
    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->setTitle(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    .line 2168
    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->setIcon(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    .line 2169
    const v1, 0x7f0c0064

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->setMessage(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    .line 2170
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->setCancelable(Z)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    const v1, 0x7f0c00a9

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->setCancelTitle(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->create()Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;

    move-result-object v0

    .line 2171
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AlertDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2172
    return-void
.end method

.method public switchContent(Landroid/app/Fragment;)V
    .locals 3

    .line 696
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchContent(), to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    if-nez p1, :cond_0

    .line 699
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    const-string v0, "switchContent(), to is null, finish."

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finish()V

    .line 701
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 707
    :cond_1
    invoke-static {p0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/manager/CategoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->clearMap()V

    .line 709
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eq v0, p1, :cond_5

    .line 710
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 711
    const v1, 0x7f0800c3

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 712
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 713
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 714
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_3

    .line 715
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchViewContent(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    goto :goto_1

    .line 716
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, v0, :cond_4

    .line 717
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchCategoryViewContent(Landroid/app/Fragment;)V

    .line 719
    :cond_4
    :goto_1
    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, v0, :cond_6

    .line 720
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchCategoryViewContent(Landroid/app/Fragment;)V

    goto :goto_2

    .line 721
    :cond_6
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_8

    .line 722
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchViewContent(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 723
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->isShowNoFolderView()Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_7

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-gez v0, :cond_8

    .line 725
    :cond_7
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->enableScrollActionbar()V

    .line 729
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, v0, :cond_9

    iget-boolean p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->isNeedFinishFromSetting:Z

    if-eqz p1, :cond_9

    .line 730
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->finish()V

    .line 733
    :cond_9
    return-void
.end method

.method public switchContentByViewMode(Z)V
    .locals 3

    .line 879
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchContentByViewMode(), isCategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    if-eqz p1, :cond_0

    .line 881
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContent(Landroid/app/Fragment;)V

    goto :goto_0

    .line 883
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContent(Landroid/app/Fragment;)V

    .line 884
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/jrdcom/filemanager/IActivityListener;->changeViewMode(Ljava/lang/String;)V

    .line 886
    :goto_0
    return-void
.end method

.method public switchShortcut(Ljava/lang/String;Z)V
    .locals 2

    .line 3170
    if-eqz p1, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-eqz v0, :cond_5

    .line 3171
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 3172
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 3173
    const-string p1, "phone"

    if-eqz p2, :cond_0

    .line 3174
    :try_start_1
    new-array p2, v1, [Z

    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateFragment(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 3177
    :cond_0
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    const v0, 0x7f0c00be

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3178
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 3179
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p2, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3181
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 3182
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_3

    .line 3183
    const-string p1, "sdcard"

    if-eqz p2, :cond_2

    .line 3184
    :try_start_2
    new-array p2, v1, [Z

    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateFragment(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 3186
    :cond_2
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    const v0, 0x7f0c00cf

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3187
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 3188
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p2, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3190
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 3191
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_5

    .line 3192
    const-string p1, "usbotg"

    if-eqz p2, :cond_4

    .line 3193
    :try_start_3
    new-array p2, v1, [Z

    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateFragment(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 3196
    :cond_4
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    .line 3197
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p2, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefCurrTag(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 3201
    :catch_0
    move-exception p1

    .line 3202
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3203
    :cond_5
    :goto_0
    nop

    .line 3204
    :goto_1
    return-void
.end method

.method public toReleaseWakeLock()V
    .locals 0

    .line 2341
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->releaseWakeLock()V

    .line 2342
    return-void
.end method

.method public toShowForbiddenDialog()V
    .locals 0

    .line 2326
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showForbiddenDialog()V

    .line 2327
    return-void
.end method

.method public updateBarTitle(I)V
    .locals 7

    .line 2217
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v0, :cond_0

    return-void

    .line 2219
    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_2

    .line 2220
    :cond_1
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 2221
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2223
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2224
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0700fa

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2226
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 2227
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2229
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez p1, :cond_5

    .line 2230
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 2232
    :cond_5
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 2233
    invoke-virtual {p1, v3}, Lcom/jrdcom/filemanager/manager/MountManager;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2234
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    const/4 v5, 0x6

    const v6, 0x7f0c003a

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 2235
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 2236
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 2237
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2238
    invoke-virtual {p0, v5}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setFileActionMode(I)V

    .line 2240
    :cond_6
    invoke-virtual {p0, v6}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    goto/16 :goto_0

    .line 2241
    :cond_7
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    if-ne v3, v1, :cond_8

    .line 2242
    invoke-virtual {p0, v6}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    goto/16 :goto_0

    .line 2243
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2245
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v0

    if-nez v0, :cond_15

    .line 2246
    sget-object v0, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2247
    sget-object v0, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    .line 2248
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    .line 2247
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2249
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2251
    :cond_9
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2254
    :cond_a
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const v3, 0x7f0c002b

    if-ne p1, v2, :cond_14

    .line 2255
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-nez p1, :cond_b

    .line 2256
    const p1, 0x7f0c0091

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    goto/16 :goto_0

    .line 2257
    :cond_b
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v4, 0x7

    if-ne p1, v4, :cond_c

    .line 2258
    const p1, 0x7f0c0090

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    goto :goto_0

    .line 2259
    :cond_c
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-ne p1, v2, :cond_d

    .line 2260
    const p1, 0x7f0c0032

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    goto :goto_0

    .line 2261
    :cond_d
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-ne p1, v5, :cond_e

    .line 2262
    const p1, 0x7f0c008f

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    goto :goto_0

    .line 2263
    :cond_e
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-ne p1, v1, :cond_f

    .line 2264
    const p1, 0x7f0c0033

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    goto :goto_0

    .line 2265
    :cond_f
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_10

    .line 2266
    const p1, 0x7f0c0031

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    goto :goto_0

    .line 2267
    :cond_10
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_11

    .line 2268
    const p1, 0x7f0c0035

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    goto :goto_0

    .line 2269
    :cond_11
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_12

    .line 2270
    const p1, 0x7f0c0037

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    goto :goto_0

    .line 2271
    :cond_12
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-ne p1, v0, :cond_13

    .line 2272
    const p1, 0x7f0c0030

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    goto :goto_0

    .line 2274
    :cond_13
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    goto :goto_0

    .line 2277
    :cond_14
    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(I)V

    .line 2279
    :cond_15
    :goto_0
    return-void
.end method

.method public updateBarView()V
    .locals 1

    .line 2212
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getFileMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateView(I)V

    .line 2213
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateBarTitle(I)V

    .line 2214
    return-void
.end method

.method public updateCategoryNavigation(I)V
    .locals 1

    .line 688
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->updateCategoryNavigation(I)V

    .line 689
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-eq p1, v0, :cond_0

    .line 691
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->switchContentByViewMode(Z)V

    .line 693
    :cond_0
    return-void
.end method

.method public updateCategoryNormalBarView()V
    .locals 0

    .line 2336
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateCategoryNormalBar()V

    .line 2337
    return-void
.end method

.method public updateEditBar(IZZZZZZ)V
    .locals 4

    .line 2177
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2178
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnMore:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2179
    return-void

    .line 2181
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->changeStatusBarColor(Z)V

    .line 2182
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2183
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2184
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    if-eqz v1, :cond_1

    .line 2185
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/adapter/PathBarAdapter;->notifyAndScroll(Landroid/support/v7/widget/RecyclerView;)V

    .line 2187
    :cond_1
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 2188
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnEditBack:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0c003a

    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 2190
    iput p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->selectCount:I

    .line 2191
    iput-boolean p2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mIsHasDir:Z

    .line 2192
    iput-boolean p4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mIsHasDrm:Z

    .line 2193
    iput-boolean p5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCanShare:Z

    .line 2194
    iput-boolean p3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mIsHasZip:Z

    .line 2195
    iput-boolean p7, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mIsFLorSDDrm:Z

    .line 2196
    iput-boolean p6, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mHasAllPrivate:Z

    .line 2197
    iget-object p4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz p4, :cond_2

    .line 2198
    iget-object p4, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget p5, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->selectCount:I

    invoke-interface {p4, p5, p2, p3}, Lcom/jrdcom/filemanager/IActivityListener;->showFloatMenu(IZZ)V

    .line 2200
    :cond_2
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateEditBarWidgetState(I)V

    .line 2201
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateMoreButtonMenu()V

    .line 2202
    return-void
.end method

.method public updateNewCategoryFragment()V
    .locals 3

    .line 674
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne v0, v1, :cond_0

    .line 675
    new-instance v0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    .line 676
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 677
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 678
    const v1, 0x7f0800c3

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 679
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 680
    goto :goto_0

    .line 681
    :cond_0
    new-instance v0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    .line 683
    :goto_0
    return-void
.end method

.method public updateNormalBarView()V
    .locals 2

    .line 2288
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-eq v0, v1, :cond_2

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 2289
    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isGlobalSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2290
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->syncCurrentStatus:Ljava/lang/String;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2291
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2293
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mGlobalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2295
    :cond_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getPathBrowerText()V

    .line 2296
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateNormalBar()V

    .line 2297
    return-void
.end method

.method public updateSearch(Ljava/lang/String;)V
    .locals 1

    .line 3524
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 3526
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3527
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->requestSearch(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3529
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->requestSearch(Ljava/lang/String;)V

    .line 3532
    :cond_1
    :goto_0
    return-void
.end method

.method public viewModeChanage(Ljava/lang/String;)V
    .locals 1

    .line 1801
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_0

    .line 1802
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1807
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object p1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    .line 1808
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefViewBy(Landroid/content/Context;Ljava/lang/String;)V

    .line 1810
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0, p1}, Lcom/jrdcom/filemanager/IActivityListener;->changeViewMode(Ljava/lang/String;)V

    .line 1811
    return-void
.end method
