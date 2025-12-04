.class public Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.super Landroid/app/Fragment;
.source "FileBrowserFragment.java"

# interfaces
.implements Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemClickListener;
.implements Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;
.implements Lcom/jrdcom/filemanager/IActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$IPopWindowListener;,
        Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;,
        Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;,
        Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;,
        Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$DeleteListener;,
        Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;,
        Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameDoneListener;,
        Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$CreateFolderListener;,
        Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;,
        Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$NoLeakThread;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_NOTIFICATIONN:Ljava/lang/String; = "com.filemanager.delete.notifications"

.field private static final ACTION_DELETE_RINGTONE:Ljava/lang/String; = "com.filemanager.delete.ringtones"

.field private static final ACTIVITY_RINGTONE_DELETE:Ljava/lang/String; = "com.android.settings.notification.RingtoneDeleteBroadcast"

.field private static final PACKAGE_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String;

.field static deleteMode:I

.field private static isBackPosition:Z

.field public static isOpenSafeFile:Z

.field private static mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

.field private static mRenameActivity:Landroid/app/Activity;


# instance fields
.field protected archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field protected archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field private clickcount:I

.field protected copy_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field protected copy_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field createFolderDialogFragment:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

.field protected cut_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field protected cut_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

.field protected delete_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field protected delete_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field protected extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field protected extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field private fileInfoEdit:Lcom/jrdcom/filemanager/utils/FileInfo;

.field private fir_time:J

.field private firstIndex:I

.field private forbidden:Z

.field private i:I

.field infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isDataChanged:Z

.field private isDestroy:Z

.field private isInRename:Z

.field isOpenCDDrmFile:Z

.field private isSearchTextChange:Z

.field private isShareSizeExceed:Z

.field private isStatusInElder:Z

.field private lastIndex:I

.field protected mAbsListView:Landroid/widget/AbsListView;

.field protected mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

.field protected mActivity:Landroid/app/Activity;

.field protected mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertFragmentDialog:Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;

.field protected mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field protected mCanShare:Z

.field private mCancelListner:Landroid/content/DialogInterface$OnClickListener;

.field private mColumn:I

.field protected mComPressDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

.field protected mCommonMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mCurrentPosition:I

.field private mCurrentSearchText:Ljava/lang/String;

.field protected mDeleteDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

.field private mDeletePop:Landroid/widget/PopupWindow;

.field private mDetailDialog:Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

.field private mDetailPop:Landroid/widget/PopupWindow;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDrmDialog:Landroid/app/AlertDialog;

.field protected mExtractDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

.field private mFromSearchToEdit:Z

.field private mHandler:Landroid/os/Handler;

.field protected mHasAllPrivate:Z

.field protected mIsBack:Z

.field protected mIsFLorSDDrm:Z

.field protected mIsHasDirctory:Z

.field protected mIsHasDrm:Z

.field private mLastSearchText:Ljava/lang/String;

.field private mLoadingDialog:Landroid/app/Dialog;

.field mMediaProviderHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

.field protected mMenuBar:Landroid/widget/MenuBar;

.field protected mNoFolderView:Landroid/widget/LinearLayout;

.field protected mNoSearchView:Landroid/widget/LinearLayout;

.field protected mNo_ImageView:Landroid/widget/ImageView;

.field protected mNo_messageView:Landroid/widget/TextView;

.field private mNotificationProgress:Landroid/app/Notification;

.field private mPos:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;

.field protected mPosStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;",
            ">;"
        }
    .end annotation
.end field

.field protected mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

.field protected mRemovePrivateDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

.field public mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field private mSavedState:Z

.field private mScrollHandler:Landroid/os/Handler;

.field private mSearchMessage:Ljava/lang/String;

.field private mSearchMode:Z

.field protected mSelectAll:Z

.field protected mSetPrivateDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

.field protected mSetPublicDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

.field mSrcfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

.field public mTaskResultHandler:Landroid/os/Handler;

.field private mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/WindowManager;

.field public menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

.field public menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

.field protected noSearchText:Landroid/widget/TextView;

.field private ob:Ljava/lang/Object;

.field protected paste_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field protected paste_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field protected renameDialogFragment:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

.field protected renameExtensionDialogFragment:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;

.field private resumeCount:I

.field private sec_time:J

.field protected setPrivate_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field protected setPrivate_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field protected share_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field protected share_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    const-class v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->TAG:Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isOpenSafeFile:Z

    .line 799
    sput v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->deleteMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 128
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isDataChanged:Z

    .line 150
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSelectAll:Z

    .line 191
    const/4 v1, -0x1

    iput v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCurrentPosition:I

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    .line 195
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPos:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;

    .line 209
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isStatusInElder:Z

    .line 212
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isInRename:Z

    .line 215
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mScrollHandler:Landroid/os/Handler;

    .line 217
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isDestroy:Z

    .line 218
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->ob:Ljava/lang/Object;

    .line 241
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isSearchTextChange:Z

    .line 787
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPosStack:Ljava/util/Stack;

    .line 794
    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->fileInfoEdit:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1305
    new-instance v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$6;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mTaskResultHandler:Landroid/os/Handler;

    .line 2746
    new-instance v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$9;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$9;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCancelListner:Landroid/content/DialogInterface$OnClickListener;

    .line 3081
    new-instance v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$11;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mUpdateHandler:Landroid/os/Handler;

    .line 3117
    iput v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->i:I

    .line 3470
    new-instance v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHandler:Landroid/os/Handler;

    .line 3570
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isOpenCDDrmFile:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)I
    .locals 0

    .line 128
    iget p0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mColumn:I

    return p0
.end method

.method static synthetic access$100()Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 1

    .line 128
    sget-object v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isInRename:Z

    return p1
.end method

.method static synthetic access$102(Lcom/jrdcom/filemanager/utils/FileInfo;)Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 0

    .line 128
    sput-object p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->setPositionForRename(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->dealRenameAction(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    return-void
.end method

.method static synthetic access$1402(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 128
    sput-object p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRenameActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSearchMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updatePasteBtn()V

    return-void
.end method

.method static synthetic access$1700(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDeletePop:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/app/Dialog;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mLoadingDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mLoadingDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Landroid/content/Context;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showDrmWifidisplyDiaog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 128
    sget-boolean v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isBackPosition:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;Z)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->startActivityOpenFile(Lcom/jrdcom/filemanager/utils/FileInfo;Z)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 128
    sput-boolean p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isBackPosition:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Lcom/jrdcom/filemanager/view/ToastHelper;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->fileInfoEdit:Lcom/jrdcom/filemanager/utils/FileInfo;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;)Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->fileInfoEdit:Lcom/jrdcom/filemanager/utils/FileInfo;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->deleteNotExistFiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/os/Handler;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 128
    sget-object v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/task/ProgressInfo;JIIII)V
    .locals 0

    .line 128
    invoke-direct/range {p0 .. p7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateDialogProgress(Lcom/jrdcom/filemanager/task/ProgressInfo;JIIII)V

    return-void
.end method

.method static synthetic access$500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/task/ProgressInfo;IIIZ)V
    .locals 0

    .line 128
    invoke-direct/range {p0 .. p5}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateNotificationProgress(Lcom/jrdcom/filemanager/task/ProgressInfo;IIIZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCurrentSearchText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCurrentSearchText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mLastSearchText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mLastSearchText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateSearchResultItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->releaseWakeLock()V

    return-void
.end method

.method private appendPermission(Ljava/lang/StringBuilder;ZI)V
    .locals 1

    .line 4202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4203
    if-eqz p2, :cond_0

    .line 4204
    const p2, 0x7f0c0106

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4206
    :cond_0
    const p2, 0x7f0c00a1

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4208
    :goto_0
    return-void
.end method

.method private cancelTask()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-wide v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->cancelTaskTime:J

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTask(J)Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->cancel(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 297
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-wide v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->cancelTaskTime:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 301
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-wide v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->cancelTaskTime:J

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->removeRunningTask(J)V

    .line 302
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-wide v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->cancelTaskTime:J

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->removeFinishTask(J)V

    .line 303
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-wide v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->cancelTaskTime:J

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->removeNotification(J)V

    .line 304
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-wide v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->cancelTaskTime:J

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->removeTaskInfo(J)V

    .line 305
    return-void
.end method

.method private copyBtnClicked()V
    .locals 4

    .line 2636
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 2637
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v2

    .line 2636
    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->savePasteList(IILjava/util/List;)V

    .line 2638
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2639
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showSearchResultView()V

    goto :goto_0

    .line 2641
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToCopyView()V

    .line 2643
    :goto_0
    return-void
.end method

.method private cutBtnClicked()V
    .locals 4

    .line 2709
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 2710
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v2

    .line 2709
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->savePasteList(IILjava/util/List;)V

    .line 2711
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2712
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showSearchResultView()V

    goto :goto_0

    .line 2714
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToCopyView()V

    .line 2716
    :goto_0
    return-void
.end method

.method private dealRenameAction(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 15

    .line 2339
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    if-nez v6, :cond_0

    .line 2340
    return-void

    .line 2342
    :cond_0
    nop

    .line 2343
    nop

    .line 2344
    invoke-virtual/range {p2 .. p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 2345
    invoke-virtual/range {p2 .. p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2344
    :cond_1
    move-object v2, v3

    .line 2347
    :goto_0
    if-eqz v2, :cond_2

    .line 2348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2350
    :cond_2
    const-string v2, ""

    .line 2352
    :goto_1
    iget-object v4, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v5, 0x3

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v4, v5}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v7, 0x2

    .line 2353
    invoke-virtual {v4, v7}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 2357
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v7, v7, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 2354
    :cond_4
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v4

    .line 2355
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2356
    nop

    .line 2361
    :goto_3
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsBack:Z

    .line 2363
    nop

    .line 2364
    invoke-virtual/range {p2 .. p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2363
    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/utils/FileUtils;->isStartWithDot(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2365
    invoke-direct {p0, v6, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showCheckFileStartDialog(Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2367
    :cond_5
    nop

    .line 2368
    invoke-virtual/range {p2 .. p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2367
    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/utils/FileUtils;->isExtensionChange(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2369
    invoke-direct {p0, v6, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showRenameExtensionDialog(Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;)V

    goto :goto_6

    .line 2371
    :cond_6
    sput-object v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRenameActivity:Landroid/app/Activity;

    .line 2372
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v2, :cond_9

    .line 2373
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v2, v5}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mFromSearchToEdit:Z

    if-eqz v2, :cond_7

    goto :goto_4

    .line 2376
    :cond_7
    iput-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSearchMessage:Ljava/lang/String;

    .line 2377
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalView()V

    goto :goto_5

    .line 2374
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showSearchResultView()V

    .line 2379
    :goto_5
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v3, 0x1

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v7, -0x1

    const/4 v8, 0x1

    new-instance v9, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v10, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-direct {v9, v10, v1}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v10, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    iget-object v11, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSearchMessage:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    move-object v0, v2

    move v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v7

    move v5, v8

    move-object/from16 v6, p2

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move v11, v13

    move v12, v14

    invoke-static/range {v0 .. v12}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IIILcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    .line 2384
    :cond_9
    :goto_6
    return-void
.end method

.method private deleteNotExistFiles(Ljava/lang/String;)V
    .locals 1

    .line 3740
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 3741
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 3742
    return-void
.end method

.method private detailsBtnClicked()V
    .locals 14

    .line 2623
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2624
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 2625
    invoke-virtual {v13}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrmFile()Z

    move-result v0

    const v2, 0x7f0c0055

    if-nez v0, :cond_2

    invoke-virtual {v13}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2629
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x13

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v13}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IZLcom/jrdcom/filemanager/utils/FileInfo;)V

    goto :goto_1

    .line 2626
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x13

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 2627
    invoke-virtual {v13}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 2626
    move-object v2, v0

    invoke-static/range {v2 .. v13}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IZLcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 2632
    :goto_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCurrentPosition:I

    invoke-virtual {v0, v2, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setChecked(IZ)V

    .line 2633
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .line 2560
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->renameDialogFragment:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->renameDialogFragment:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2561
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->renameDialogFragment:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2563
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->createFolderDialogFragment:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->createFolderDialogFragment:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2564
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->createFolderDialogFragment:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2567
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDetailDialog:Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDetailDialog:Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2568
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDetailDialog:Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2571
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDeleteDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDeleteDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2572
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDeleteDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2575
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mComPressDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mComPressDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2576
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mComPressDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2579
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mExtractDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mExtractDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2580
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mExtractDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2583
    :cond_5
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->renameExtensionDialogFragment:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->renameExtensionDialogFragment:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2584
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->renameExtensionDialogFragment:Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2586
    :cond_6
    return-void
.end method

.method private dpToPx(F)I
    .locals 1

    .line 3062
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 3063
    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private exitSearchResultView()V
    .locals 8

    .line 1223
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalView()V

    .line 1225
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getRefreshMode(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1234
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mFromSearchToEdit:Z

    .line 1235
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v1, :cond_1

    .line 1236
    invoke-interface {v1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->changeSearchMode(Z)V

    .line 1241
    :cond_1
    return-void
.end method

.method private getAdapterCount()I
    .locals 1

    .line 2593
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_0

    .line 2594
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemCount()I

    move-result v0

    return v0

    .line 2596
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getDetailPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4212
    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4214
    :cond_0
    return-object p1
.end method

.method private getPermission(Ljava/lang/StringBuilder;Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 4192
    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result v0

    const v1, 0x7f0c00c4

    invoke-direct {p0, p1, v0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->appendPermission(Ljava/lang/StringBuilder;ZI)V

    .line 4193
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4194
    invoke-virtual {p2}, Ljava/io/File;->canWrite()Z

    move-result v1

    const v2, 0x7f0c0105

    invoke-direct {p0, p1, v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->appendPermission(Ljava/lang/StringBuilder;ZI)V

    .line 4195
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4196
    invoke-virtual {p2}, Ljava/io/File;->canExecute()Z

    move-result p2

    const v0, 0x7f0c0072

    invoke-direct {p0, p1, p2, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->appendPermission(Ljava/lang/StringBuilder;ZI)V

    .line 4198
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getPositionInfo()Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 1

    .line 1179
    sget-object v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 3053
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 3054
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3055
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mWindowManager:Landroid/view/WindowManager;

    .line 3057
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private isSelectAll()Z
    .locals 1

    .line 2702
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isAllItemChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2703
    const/4 v0, 0x1

    return v0

    .line 2705
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onUnmounted()V
    .locals 2

    .line 2551
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->dismissDialog()V

    .line 2552
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_1

    .line 2553
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2554
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showNoSearchResultView(ZLjava/lang/String;)V

    .line 2555
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalView()V

    .line 2557
    :cond_1
    return-void
.end method

.method private pasteBtnClicked()V
    .locals 14

    .line 2719
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_0

    .line 2720
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, -0x1

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c00af

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteType()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v9, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getCategory()I

    move-result v13

    invoke-static/range {v1 .. v13}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IIILcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    .line 2721
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteType()I

    move-result v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalWhenCreateTask(ILjava/util/List;)V

    .line 2723
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateActionMode(I)V

    .line 2724
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2725
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, 0x3

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    .line 2726
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2730
    :cond_0
    return-void
.end method

.method private reNewAdapter()V
    .locals 4

    .line 390
    const-string v0, "check@FileBrowserFragment"

    const-string v1, "reNewAdapter"

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-direct {v0, v1, v2, v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;-><init>(Landroid/content/Context;Lcom/jrdcom/filemanager/manager/FileInfoManager;Lcom/jrdcom/filemanager/view/LoopRecyclerView;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 394
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->clearListOnly()V

    .line 395
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setPrePosition(I)V

    .line 396
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 397
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setOnItemClickListener(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemClickListener;)V

    .line 398
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setOnItemFocusChangeListener(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;)V

    .line 401
    :cond_0
    return-void
.end method

.method private refreshViewLayoutIfNeed()V
    .locals 2

    .line 2031
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isStatusInElder:Z

    sget-boolean v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eq v0, v1, :cond_1

    .line 2032
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isStatusInElder:Z

    .line 2033
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v0, :cond_0

    .line 2034
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 2036
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->changeViewLayout(Ljava/lang/String;)V

    .line 2038
    :cond_1
    return-void
.end method

.method private reinitAdapter()Z
    .locals 8

    .line 1185
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-nez v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v0, :cond_0

    .line 1187
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isSdOrPhonePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1190
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1191
    new-instance v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-direct {v1, v2, v0}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1192
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->reNewAdapter()V

    .line 1193
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1195
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1197
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 3043
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTaskSize()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->getWaittingTaskSize()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_0

    .line 3045
    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->toReleaseWakeLock()V

    .line 3047
    :cond_0
    return-void
.end method

.method private requestRecyclerviewFocus()V
    .locals 4

    .line 1244
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mTaskResultHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$5;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$5;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1267
    return-void
.end method

.method private reshowDetailPop()V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDetailPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDetailPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 372
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showFileDetailInfo(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 374
    :cond_0
    return-void
.end method

.method private selectAllBtnClicked()V
    .locals 2

    .line 2600
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isAllItemChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2601
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v1, 0x2715

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    .line 2602
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setAllItemChecked(Z)V

    goto :goto_0

    .line 2604
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v1, 0x2713

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    .line 2605
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setAllItemChecked(Z)V

    .line 2607
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V

    .line 2609
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->requestRecyclerviewFocus()V

    .line 2610
    return-void
.end method

.method private selectDoneBtnClicked()V
    .locals 2

    .line 2613
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setAllItemChecked(Z)V

    .line 2614
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mFromSearchToEdit:Z

    if-eqz v0, :cond_0

    .line 2615
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showSearchResultView()V

    goto :goto_0

    .line 2617
    :cond_0
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalView()V

    .line 2619
    :goto_0
    return-void
.end method

.method private setPositionForRename(Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 4

    .line 1284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isInRename:Z

    .line 1287
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->clearListOnly()V

    .line 1288
    new-instance v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-direct {v0, v1, v2, v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;-><init>(Landroid/content/Context;Lcom/jrdcom/filemanager/manager/FileInfoManager;Lcom/jrdcom/filemanager/view/LoopRecyclerView;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 1289
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1290
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setOnItemClickListener(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemClickListener;)V

    .line 1291
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setOnItemFocusChangeListener(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;)V

    .line 1293
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getPosition(Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result p1

    .line 1294
    const-string v0, "check@FileBrowserFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPositionForRename pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setPrePosition(I)V

    .line 1297
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    :cond_0
    goto :goto_0

    .line 1299
    :catch_0
    move-exception p1

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPositionForRename e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileBrowserFragment"

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    :goto_0
    return-void
.end method

.method private setShowAlertDialog(Landroid/app/AlertDialog;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 803
    return-void
.end method

.method private setShowFragmentDialog(Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAlertFragmentDialog:Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;

    .line 812
    return-void
.end method

.method private share()V
    .locals 11

    .line 2453
    nop

    .line 2454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2456
    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-nez v1, :cond_0

    .line 2457
    return-void

    .line 2459
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v1

    .line 2460
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x1

    if-le v2, v3, :cond_1

    .line 2461
    iput-boolean v4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isShareSizeExceed:Z

    .line 2462
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showNoShareDialog()V

    .line 2463
    return-void

    .line 2465
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isShareSizeExceed:Z

    .line 2468
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v5, 0x7f0c00d6

    const-string v6, "ext_selector"

    const-string v7, "movetoprivatezone"

    const-string v8, "android.intent.extra.STREAM"

    if-le v3, v4, :cond_5

    .line 2469
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 2470
    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrmFile()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    iget-object v9, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v9

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmSDFile(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2471
    iput-boolean v4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->forbidden:Z

    .line 2472
    goto :goto_1

    .line 2474
    :cond_3
    invoke-virtual {v3, v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getUri(Z)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2475
    goto :goto_0

    .line 2476
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->forbidden:Z

    if-nez v1, :cond_b

    .line 2477
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2478
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2479
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2480
    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2481
    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2483
    sget-object v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->SELECT_BACKGROUND_COLOR:Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2485
    invoke-virtual {p0, v5}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 2489
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 2490
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getShareMime()Ljava/lang/String;

    move-result-object v1

    .line 2492
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrmFile()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmSDFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2493
    iput-boolean v4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->forbidden:Z

    .line 2495
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "unknown"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    .line 2497
    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2498
    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getAudioMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 2496
    :cond_9
    :goto_2
    const-string v1, "application/zip"

    .line 2500
    :cond_a
    :goto_3
    iget-boolean v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->forbidden:Z

    if-nez v3, :cond_b

    .line 2501
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2502
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2503
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2504
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2505
    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getUri(Z)Landroid/net/Uri;

    move-result-object v0

    .line 2506
    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2507
    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2509
    sget-object v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->SELECT_BACKGROUND_COLOR:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2511
    invoke-virtual {p0, v5}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 2518
    :catch_0
    move-exception v0

    .line 2519
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 2516
    :catch_1
    move-exception v0

    .line 2517
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_4

    .line 2514
    :catch_2
    move-exception v0

    .line 2515
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 2520
    :cond_b
    :goto_4
    nop

    .line 2521
    :goto_5
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isShareSizeExceed:Z

    if-nez v0, :cond_f

    .line 2522
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->forbidden:Z

    if-eqz v0, :cond_c

    .line 2523
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_f

    .line 2524
    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->toShowForbiddenDialog()V

    goto :goto_6

    .line 2527
    :cond_c
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mFromSearchToEdit:Z

    if-eqz v0, :cond_d

    .line 2528
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showSearchResultView()V

    goto :goto_6

    .line 2530
    :cond_d
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalView()V

    .line 2531
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2532
    const/4 v2, 0x0

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_6

    .line 2535
    :cond_e
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 2541
    :cond_f
    :goto_6
    return-void
.end method

.method private shortcutBtnClicked()V
    .locals 7

    .line 2647
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2648
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2649
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2650
    const-string v1, "shortcutNotFinishDir"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2651
    const-string v1, "foldername"

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 2652
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2651
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2653
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2655
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const v4, 0x7f0700b4

    if-lt v1, v2, :cond_1

    .line 2656
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "shortcut"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    .line 2657
    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2658
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v5, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 2659
    invoke-virtual {v6}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v6}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 2660
    invoke-virtual {v5}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    .line 2661
    invoke-static {v5, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 2662
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 2663
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 2664
    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v2

    .line 2665
    iget-object v4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2666
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    .line 2668
    :cond_0
    goto :goto_0

    .line 2669
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2670
    const-string v2, "duplicate"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2671
    const-string v2, "android.intent.extra.shortcut.NAME"

    iget-object v5, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v5

    .line 2672
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 2671
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2673
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    .line 2674
    invoke-static {v3, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    .line 2673
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2676
    const-string v2, "android.intent.extra.shortcut.INTENT"

    .line 2677
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2678
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2682
    :goto_0
    goto :goto_1

    .line 2680
    :catch_0
    move-exception v0

    .line 2681
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2683
    :goto_1
    return-void
.end method

.method private showBeforeSearchContent()V
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 1279
    :cond_1
    return-void

    .line 1272
    :cond_2
    :goto_0
    return-void
.end method

.method private showCheckFileStartDialog(Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;)V
    .locals 3

    .line 2410
    new-instance v0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;-><init>()V

    .line 2411
    nop

    .line 2412
    const v1, 0x7f0c0043

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->setTitle(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    .line 2413
    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->setIcon(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    .line 2414
    const v1, 0x7f0c0049

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->setMessage(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    .line 2415
    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->setCancelTitle(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    .line 2416
    const v1, 0x7f0c00a9

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->setDoneTitle(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->create()Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;

    move-result-object v0

    .line 2417
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "newFilePathKey"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    new-instance v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$RenameExtensionListener;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->setOnDoneListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 2419
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "RenameExtensionDialogTag"

    invoke-virtual {v0, p1, p2}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2420
    return-void
.end method

.method private showCompressRenameDialog(Ljava/lang/String;)V
    .locals 2

    .line 4289
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CompressRenameDialogTag"

    invoke-static {v0, p1, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mComPressDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 4290
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->showDialog()V

    .line 4291
    return-void
.end method

.method private showCreateFolderDialog()V
    .locals 3

    .line 2259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jrdcom.filemanager.action.InputMessage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2261
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2262
    const-string v2, "defaultname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2263
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2264
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2266
    return-void
.end method

.method private showDeleteDialog(I)V
    .locals 6

    .line 2757
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2760
    :cond_0
    sput p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->deleteMode:I

    .line 2761
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getFirstCheckedFileInfoItem()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object p1

    .line 2762
    const/4 v0, 0x0

    .line 2763
    nop

    .line 2764
    nop

    .line 2765
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditSelect()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2766
    nop

    .line 2767
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditSelect()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    move v3, v1

    goto :goto_0

    .line 2769
    :cond_1
    move v3, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 2770
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 2773
    :cond_2
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2774
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x21

    invoke-virtual {p1, v4, v2, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2775
    nop

    .line 2776
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getCheckedItemsCount()I

    move-result v0

    if-eq v0, v1, :cond_5

    if-eqz v3, :cond_3

    goto :goto_1

    .line 2780
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getFirstCheckedFileInfoItem()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2781
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c009f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 2783
    :cond_4
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c009e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 2777
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0050

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2790
    :goto_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "DeleteDialogTag"

    invoke-static {v0, p1, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDeleteDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 2798
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v0, :cond_6

    const v0, 0x7f0b005c

    goto :goto_3

    :cond_6
    const v0, 0x7f0b005b

    .line 2799
    :goto_3
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {v1, v3, v0, v2, p1}, Lcom/jrdcom/filemanager/view/PopWindowUtil;->showPopWindow(Landroid/app/Activity;Landroid/view/View;IZLjava/lang/String;)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDeletePop:Landroid/widget/PopupWindow;

    .line 2801
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$IPopWindowListener;

    sget-object v1, Lcom/jrdcom/filemanager/utils/PopWindowType;->POP_WINDOW_TYPE_DELTE:Lcom/jrdcom/filemanager/utils/PopWindowType;

    invoke-interface {v0, p1, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$IPopWindowListener;->setPopwindowType(Landroid/widget/PopupWindow;Lcom/jrdcom/filemanager/utils/PopWindowType;)V

    .line 2802
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateMenubarViewasFragment()V

    .line 2803
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDeletePop:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$10;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$10;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2811
    return-void

    .line 2758
    :cond_7
    :goto_4
    return-void
.end method

.method private showDrmWifidisplyDiaog(Landroid/content/Context;)V
    .locals 2

    .line 1209
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1210
    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$4;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Landroid/content/Context;)V

    const p1, 0x7f0c006d

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1217
    const v0, 0x7f0c00a9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDrmDialog:Landroid/app/AlertDialog;

    .line 1218
    return-void
.end method

.method private showExtractDialog(Ljava/lang/String;)V
    .locals 4

    .line 4349
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4350
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4352
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ExtractDialogTag"

    invoke-static {v0, p1, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mExtractDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 4353
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->showDialog()V

    .line 4354
    return-void
.end method

.method private showExtractExistDialog(Ljava/lang/String;)V
    .locals 4

    .line 4357
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f0c0079

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ExtractNameExistDialogTag"

    invoke-static {v0, p1, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mExtractDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 4359
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->showDialog()V

    .line 4360
    return-void
.end method

.method private showExtractRenameDialog(Ljava/lang/String;)V
    .locals 4

    .line 4363
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f0c0079

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ExtractRenameDialogTag"

    invoke-static {v0, p1, v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mExtractDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 4365
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->showDialog()V

    .line 4366
    return-void
.end method

.method private showNoSearchResultView(ZLjava/lang/String;)V
    .locals 5

    .line 856
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    return-void

    .line 859
    :cond_0
    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 860
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isShowNoFolderView()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 861
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNoFolderView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 863
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNoSearchView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 864
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 865
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c00a7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 866
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 867
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->noSearchText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setHighLight(Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    goto :goto_0

    .line 870
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNoSearchView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 871
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 874
    :cond_3
    :goto_0
    return-void
.end method

.method private showNoShareDialog()V
    .locals 3

    .line 2739
    new-instance v0, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;-><init>()V

    .line 2740
    const v1, 0x7f0c00de

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->setMessage(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    .line 2741
    const v1, 0x7f0c00a9

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->setDoneTitle(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    .line 2742
    const v1, 0x7f0c0100

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->setTitle(I)Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$AlertDialogFragmentBuilder;->create()Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;

    move-result-object v0

    .line 2743
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DeleteDialogTag"

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/dialog/AlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2744
    return-void
.end method

.method private showRemovePrivateDialog()V
    .locals 5

    .line 4451
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 4455
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 4464
    :cond_1
    const v0, 0x7f0c00c5

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4457
    :cond_2
    :goto_0
    const v0, 0x7f0c00c7

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4458
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 4459
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 4460
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4461
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4467
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "removeprivateDialogTag"

    invoke-static {v1, v0, v2}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRemovePrivateDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 4469
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->showDialog()V

    .line 4470
    return-void

    .line 4452
    :cond_4
    :goto_2
    return-void
.end method

.method private showRenameDialog()V
    .locals 5

    .line 2286
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-nez v0, :cond_0

    .line 2287
    return-void

    .line 2289
    :cond_0
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getFirstCheckedFileInfoItem()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    .line 2290
    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditSelect()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2291
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditSelect()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 2293
    :cond_1
    nop

    .line 2294
    if-eqz v0, :cond_3

    .line 2295
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 2296
    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2297
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 2298
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    .line 2299
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2300
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 2303
    :cond_2
    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSrcfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 2304
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.jrdcom.filemanager.action.InputMessage"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2306
    const-string v3, "defaultname"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2307
    const/4 v2, 0x1

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2309
    const/16 v2, 0x66

    invoke-virtual {p0, v0, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2319
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCurrentPosition:I

    invoke-virtual {v0, v2, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setChecked(IZ)V

    .line 2320
    return-void
.end method

.method private showRenameExtensionDialog(Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;)V
    .locals 3

    .line 2424
    new-instance v0, Landroid/app/TctDialog;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    .line 2425
    const v1, 0x7f0c0043

    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setDialogTitle(I)Landroid/app/TctDialog;

    .line 2426
    const v1, 0x7f0c0099

    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setMessage(I)Landroid/app/TctDialog;

    .line 2427
    new-instance v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$7;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$7;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    const v2, 0x7f0c002f

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 2433
    new-instance v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;)V

    const p1, 0x7f0c0042

    invoke-virtual {v0, p1, v1}, Landroid/app/TctDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 2446
    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    .line 2447
    const/4 p1, 0x0

    sput-object p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRenameActivity:Landroid/app/Activity;

    .line 2449
    return-void
.end method

.method private showSearchResultView()V
    .locals 1

    .line 2161
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToSearchView()V

    .line 2163
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_0

    .line 2164
    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->reSearch()V

    .line 2166
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->clearChecked()V

    .line 2167
    return-void
.end method

.method private showSetPrivateDialog()V
    .locals 7

    .line 2815
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2816
    return-void

    .line 2819
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getFirstCheckedFileInfoItem()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    .line 2820
    const/4 v1, 0x0

    .line 2821
    nop

    .line 2822
    nop

    .line 2823
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditSelect()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2824
    nop

    .line 2825
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditSelect()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    move v4, v2

    goto :goto_0

    .line 2827
    :cond_1
    move v4, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 2828
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 2831
    :cond_2
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2832
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x21

    invoke-virtual {v0, v5, v3, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2833
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getCheckedItemsCount()I

    move-result v1

    if-eq v1, v2, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 2836
    :cond_3
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2834
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c00d8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2839
    :goto_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SetPrivateDialogTag"

    invoke-static {v1, v0, v2}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSetPrivateDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 2840
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->showDialog()V

    .line 2841
    return-void
.end method

.method private showSetPublicDialog()V
    .locals 7

    .line 2844
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2845
    return-void

    .line 2848
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getFirstCheckedFileInfoItem()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    .line 2849
    const/4 v1, 0x0

    .line 2850
    nop

    .line 2851
    nop

    .line 2852
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditSelect()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2853
    nop

    .line 2854
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditSelect()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    move v4, v2

    goto :goto_0

    .line 2856
    :cond_1
    move v4, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 2857
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 2860
    :cond_2
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2861
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x21

    invoke-virtual {v0, v5, v3, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2862
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getCheckedItemsCount()I

    move-result v1

    if-eq v1, v2, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 2865
    :cond_3
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2863
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c00db

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2868
    :goto_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SetPublicDialogTag"

    invoke-static {v1, v0, v2}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSetPublicDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 2869
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->showDialog()V

    .line 2870
    return-void
.end method

.method private startActivityOpenFile(Lcom/jrdcom/filemanager/utils/FileInfo;Z)V
    .locals 10

    .line 3382
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3383
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    .line 3384
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v2

    .line 3385
    nop

    .line 3389
    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->isMediaURI:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 3390
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object p2

    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-static {p2, v3, v2}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMediaContentUri(Ljava/io/File;Lcom/jrdcom/filemanager/manager/FileInfoManager;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 3391
    const-string v3, "isFiles"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 3393
    :cond_0
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v3

    iget-object v5, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v5, v5, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-static {v3, v5, v2, p2}, Lcom/jrdcom/filemanager/utils/FileUtils;->getContentUri(Ljava/io/File;Lcom/jrdcom/filemanager/manager/FileInfoManager;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p2

    .line 3395
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3396
    sget-object v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Open uri file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " mimeType="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3398
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_9

    .line 3399
    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3401
    new-instance v3, Landroid/content/ComponentName;

    const-string v8, "com.android.gallery3d"

    const-string v9, "com.android.gallery3d.app.MovieActivity"

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3403
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3405
    goto/16 :goto_2

    :cond_1
    const-string v3, "audio/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3406
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3407
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 3409
    :cond_2
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3410
    new-instance v3, Landroid/content/ComponentName;

    const-string v8, "com.android.htmlviewer"

    const-string v9, "com.android.htmlviewer.HTMLViewerActivity"

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3411
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3412
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3413
    goto/16 :goto_2

    :cond_3
    const-string v3, "text/x-vcard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3414
    new-instance v3, Landroid/content/ComponentName;

    const-string v8, "com.android.contacts"

    const-string v9, "com.android.contacts.vcard.ImportVCardActivity"

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3415
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3416
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3417
    goto :goto_2

    :cond_4
    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3418
    new-instance v3, Landroid/content/ComponentName;

    const-string v8, "org.chromium.chrome"

    const-string v9, "org.chromium.chrome.browser.ChromeTabbedActivity"

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3420
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3422
    goto :goto_2

    :cond_5
    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3423
    const-string v1, "com.android.camera.action.REVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 3425
    :cond_6
    const-string v3, "application/x-pkcs12"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "application/x-pem-file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 3426
    const-string v3, "application/pkix-cert"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    .line 3431
    :cond_7
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3432
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f0c00aa

    invoke-static {p1, p2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3434
    sget-object p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->TAG:Ljava/lang/String;

    const-string p2, "unsurport install apk, return"

    invoke-static {p1, p2}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3435
    return-void

    .line 3427
    :cond_8
    :goto_1
    new-instance v3, Landroid/content/ComponentName;

    const-string v8, "com.android.certinstaller"

    const-string v9, "com.android.certinstaller.CertInstallerMain"

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3428
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3429
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3441
    :cond_9
    :goto_2
    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/FileUtils;->getAudioMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3442
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3444
    const v1, 0x7f0c009b

    const/16 v3, 0xb

    const/4 v8, 0x2

    :try_start_0
    sput-boolean v4, Lcom/jrdcom/filemanager/manager/SafeManager;->notQuitSafe:Z

    .line 3445
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->startActivity(Landroid/content/Intent;)V

    .line 3446
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->fileInfoEdit:Lcom/jrdcom/filemanager/utils/FileInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 3460
    :catch_0
    move-exception p1

    .line 3461
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3462
    sput-boolean v5, Lcom/jrdcom/filemanager/manager/SafeManager;->notQuitSafe:Z

    .line 3464
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHandler:Landroid/os/Handler;

    .line 3465
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v8, v4, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3466
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 3453
    :catch_1
    move-exception p1

    .line 3454
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 3455
    sget-object v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "==exception e==>"

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3456
    sput-boolean v5, Lcom/jrdcom/filemanager/manager/SafeManager;->notQuitSafe:Z

    .line 3457
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHandler:Landroid/os/Handler;

    .line 3458
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v8, v4, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3459
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 3447
    :catch_2
    move-exception p1

    .line 3448
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 3449
    sput-boolean v5, Lcom/jrdcom/filemanager/manager/SafeManager;->notQuitSafe:Z

    .line 3450
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHandler:Landroid/os/Handler;

    .line 3451
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v8, v4, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3452
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3467
    :goto_3
    nop

    .line 3468
    :goto_4
    return-void
.end method

.method private storeLastListPos()V
    .locals 3

    .line 2123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsBack:Z

    .line 2124
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2125
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2126
    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2127
    :goto_0
    new-instance v2, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;

    invoke-direct {v2, p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 2128
    iput v1, v2, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;->index:I

    .line 2129
    iput v0, v2, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;->top:I

    .line 2130
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPosStack:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    return-void
.end method

.method private storeLastListPos(Landroid/view/View;I)V
    .locals 1

    .line 2136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsBack:Z

    .line 2138
    nop

    .line 2139
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 2141
    new-instance v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 2142
    iput p2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;->index:I

    .line 2143
    iput p1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;->top:I

    .line 2144
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPosStack:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    return-void
.end method

.method private switchToGlobalSearchView()V
    .locals 1

    .line 2179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSearchMode:Z

    .line 2180
    const-string v0, ""

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mLastSearchText:Ljava/lang/String;

    .line 2181
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateActionMode(I)V

    .line 2185
    return-void
.end method

.method private switchToNormalView()V
    .locals 2

    .line 2188
    sget-object v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->TAG:Ljava/lang/String;

    const-string v1, "switchToNormalView"

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSearchMode:Z

    .line 2190
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_0

    .line 2191
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->changeModeFromSearchToNormal()V

    .line 2193
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateActionMode(I)V

    .line 2194
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_1

    .line 2195
    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->updateBarView()V

    .line 2197
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 2198
    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 2200
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz v0, :cond_3

    .line 2201
    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 2204
    :cond_3
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->requestRecyclerviewFocus()V

    .line 2205
    return-void
.end method

.method private switchToSearchView()V
    .locals 1

    .line 2170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSearchMode:Z

    .line 2171
    const-string v0, ""

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mLastSearchText:Ljava/lang/String;

    .line 2172
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateActionMode(I)V

    .line 2173
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_0

    .line 2174
    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->updateBarView()V

    .line 2176
    :cond_0
    return-void
.end method

.method private toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 5

    .line 2544
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 2545
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 2546
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 2547
    return-object p1
.end method

.method private updateDialogProgress(Lcom/jrdcom/filemanager/task/ProgressInfo;JIIII)V
    .locals 4

    .line 1823
    nop

    .line 1824
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getUnitStyle()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 1825
    iget-object p4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    int-to-long v0, p7

    int-to-long v2, p6

    invoke-static {p4, v0, v1, v2, v3}, Lcom/jrdcom/filemanager/utils/FileUtils;->safeFileSizeToString(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 1826
    :cond_0
    if-lez p6, :cond_1

    .line 1827
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 1826
    :cond_1
    const/4 p4, 0x0

    .line 1829
    :goto_0
    invoke-static {p5}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isShowHorizontalProgressBar(I)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 1830
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->getCreateTaskTime()J

    move-result-wide v0

    cmp-long p2, v0, p2

    if-nez p2, :cond_2

    .line 1831
    sget-object p2, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mFirstProgressbar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1832
    sget-object p2, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mTotalProgress:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1833
    sget-object p1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mFirstProgressbar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1834
    sget-object p1, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mFirstTaskProgress:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1837
    :cond_2
    return-void
.end method

.method private updateNotificationProgress(Lcom/jrdcom/filemanager/task/ProgressInfo;IIIZ)V
    .locals 6

    .line 1841
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->getNotification(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1846
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getProgressTaskType()I

    move-result v1

    .line 1847
    const/16 v2, 0x18

    if-nez v0, :cond_4

    .line 1848
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getCreateTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTask(J)Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p5, :cond_1

    goto :goto_0

    .line 1851
    :cond_1
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getCreateTime()J

    move-result-wide v3

    .line 1852
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object p5

    invoke-static {p5, v3, v4}, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->newInstance(Landroid/content/Context;J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1853
    invoke-static {v3, v4, v0}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->addNotification(JLandroid/app/Notification$Builder;)V

    .line 1854
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p5

    .line 1855
    iget-object v3, p5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f080193

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getNotificationTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1856
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v2, :cond_2

    .line 1857
    iget-object v3, p5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f0800f4

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getNotificationIconId(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1859
    :cond_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getNotificationIconId(I)I

    move-result v1

    invoke-static {v3, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 1860
    goto :goto_1

    .line 1849
    :cond_3
    :goto_0
    return-void

    .line 1861
    :cond_4
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p5

    .line 1863
    :goto_1
    const/4 v1, 0x0

    .line 1864
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getUnitStyle()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_5

    .line 1865
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    int-to-long v3, p4

    int-to-long p3, p3

    invoke-static {p1, v3, v4, p3, p4}, Lcom/jrdcom/filemanager/utils/FileUtils;->safeFileSizeToString(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1866
    :cond_5
    if-lez p3, :cond_6

    .line 1867
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1869
    :cond_6
    :goto_2
    iget-object p1, p5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const p3, 0x7f0800f9

    iget-object p4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p4}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getProgressInfo()Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1870
    const/16 p1, 0x64

    if-gt p2, p1, :cond_8

    .line 1871
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v2, :cond_7

    .line 1872
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "%"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1874
    :cond_7
    iget-object p3, p5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const p4, 0x7f0800f6

    invoke-virtual {p3, p4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1875
    iget-object p3, p5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const p4, 0x7f0800f8

    const/4 v0, 0x0

    invoke-virtual {p3, p4, p1, p2, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1876
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide p2

    long-to-int p2, p2

    invoke-virtual {p1, p2, p5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1878
    :cond_8
    return-void
.end method

.method private updatePasteBtn()V
    .locals 1

    .line 2733
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_0

    .line 2734
    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->pasteBtnUpdated()V

    .line 2736
    :cond_0
    return-void
.end method

.method private updateSearchResultItem(Ljava/lang/String;)V
    .locals 1

    .line 2010
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getSearchItemsCount()I

    move-result v0

    .line 2011
    if-nez v0, :cond_0

    .line 2012
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showNoSearchResults(ZLjava/lang/String;)V

    goto :goto_0

    .line 2014
    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showNoSearchResults(ZLjava/lang/String;)V

    .line 2016
    :goto_0
    return-void
.end method

.method private updateSelectedFilter(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 2088
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsHasDirctory:Z

    .line 2089
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsHasDrm:Z

    .line 2090
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCanShare:Z

    .line 2091
    iput-boolean v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHasAllPrivate:Z

    .line 2092
    iput-boolean v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsFLorSDDrm:Z

    .line 2093
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 2094
    nop

    .line 2095
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrmFile()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v1

    .line 2096
    :goto_2
    if-eqz v3, :cond_2

    .line 2097
    iget-object v4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmSDFile(Ljava/lang/String;)Z

    move-result v4

    goto :goto_3

    .line 2096
    :cond_2
    move v4, v0

    .line 2099
    :goto_3
    iget-boolean v5, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsHasDirctory:Z

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2100
    iput-boolean v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsHasDirctory:Z

    .line 2101
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCanShare:Z

    .line 2102
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHasAllPrivate:Z

    .line 2103
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsFLorSDDrm:Z

    .line 2105
    :cond_3
    iget-boolean v5, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHasAllPrivate:Z

    if-eqz v5, :cond_4

    .line 2106
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isPrivateFile()Z

    move-result v2

    iput-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHasAllPrivate:Z

    .line 2108
    :cond_4
    iget-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsHasDrm:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCanShare:Z

    if-eqz v2, :cond_6

    :cond_5
    if-eqz v3, :cond_6

    .line 2109
    iput-boolean v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsHasDrm:Z

    .line 2110
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCanShare:Z

    .line 2112
    :cond_6
    iget-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsFLorSDDrm:Z

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-nez v4, :cond_7

    .line 2113
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsFLorSDDrm:Z

    .line 2115
    :cond_7
    iget-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsHasDirctory:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsHasDrm:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCanShare:Z

    if-nez v2, :cond_8

    .line 2116
    goto :goto_4

    .line 2119
    :cond_8
    goto :goto_0

    .line 2120
    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public afreshItemMorePop()V
    .locals 2

    .line 4494
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_0

    .line 4495
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->afreshPopWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 4497
    :cond_0
    return-void
.end method

.method public beforeCreateFolderDo()V
    .locals 0

    .line 3028
    return-void
.end method

.method public cancelProgressDialog()V
    .locals 2

    .line 4484
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTaskSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 4485
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, 0x2

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    .line 4486
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->createNotificationProgress()V

    .line 4488
    :cond_0
    return-void
.end method

.method protected changeViewLayout(Ljava/lang/String;)V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v0, :cond_0

    .line 316
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 321
    check-cast v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->reshowPop()V

    .line 323
    :cond_1
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->reshowDetailPop()V

    .line 326
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getGridColumn(Lcom/jrdcom/filemanager/FileManagerApplication;)I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mColumn:I

    .line 327
    const-string v0, "listMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    if-eqz p1, :cond_3

    .line 329
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 330
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz p1, :cond_3

    .line 332
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->refresh()V

    .line 334
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 337
    :cond_2
    const-string v0, "gridMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 338
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    if-eqz p1, :cond_3

    .line 339
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mColumn:I

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 340
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz p1, :cond_3

    .line 341
    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setViewMode(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->refresh()V

    .line 345
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 350
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateListScrollBarStyle()V

    .line 352
    return-void
.end method

.method public changeViewMode(Ljava/lang/String;)V
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->changeViewLayout(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public checkIsSelectAll()Z
    .locals 1

    .line 2698
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isSelectAll()Z

    move-result v0

    return v0
.end method

.method public clearAdapter()V
    .locals 2

    .line 3324
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_0

    .line 3325
    const-string v1, ""

    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mLastSearchText:Ljava/lang/String;

    .line 3326
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->clearList()V

    .line 3328
    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 2157
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPosStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 2158
    return-void
.end method

.method public clearChecked()V
    .locals 1

    .line 3720
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_0

    .line 3721
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->clearChecked()V

    .line 3722
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V

    .line 3724
    :cond_0
    return-void
.end method

.method public clickAddPrivateMode()V
    .locals 14

    .line 4437
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_0

    .line 4438
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v0

    .line 4439
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, -0x1

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0098

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x26

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v9, v9, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 4440
    invoke-static {v11}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v12

    sget v13, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 4439
    move-object v11, v0

    invoke-static/range {v1 .. v13}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IIILcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    .line 4441
    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalWhenCreateTask(ILjava/util/List;)V

    .line 4443
    :cond_0
    return-void
.end method

.method public clickCompressBtn(ILjava/lang/String;)V
    .locals 19

    .line 4254
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 4257
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move/from16 v5, p1

    if-ne v5, v3, :cond_2

    .line 4258
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4259
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showCompressRenameDialog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4261
    :cond_1
    invoke-direct {v0, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showCompressRenameDialog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4264
    :cond_2
    iget-object v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v5

    .line 4265
    if-eqz v1, :cond_4

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    move v6, v4

    goto :goto_1

    :cond_4
    :goto_0
    move v6, v3

    .line 4266
    :goto_1
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v7}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v7

    .line 4267
    if-nez v6, :cond_5

    invoke-static/range {p2 .. p2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->matcherFolderName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4268
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    goto/16 :goto_3

    .line 4269
    :cond_5
    const-string v8, "Archive"

    if-nez v6, :cond_6

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".zip"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4270
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0c0079

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(Ljava/lang/String;)V

    goto :goto_3

    .line 4272
    :cond_6
    if-eqz v6, :cond_7

    .line 4273
    move-object v15, v8

    goto :goto_2

    .line 4272
    :cond_7
    move-object v15, v1

    .line 4275
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v3, "CompressRenameDialogTag"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 4276
    if-eqz v1, :cond_8

    .line 4277
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dismissAllowingStateLoss()V

    .line 4279
    :cond_8
    sput-object v2, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 4280
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->clearDailogTag()V

    .line 4281
    iget-object v6, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v7, -0x1

    invoke-virtual {v6}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x22

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v14, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/16 v17, 0x0

    sget v18, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    move-object/from16 v16, v5

    invoke-static/range {v6 .. v18}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IIILcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    .line 4283
    const/16 v1, 0x22

    invoke-virtual {v0, v1, v5}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalWhenCreateTask(ILjava/util/List;)V

    .line 4286
    :goto_3
    return-void

    .line 4255
    :cond_9
    :goto_4
    return-void
.end method

.method public clickCopyBtn()V
    .locals 0

    .line 3252
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copyBtnClicked()V

    .line 3253
    return-void
.end method

.method public clickCutBtn()V
    .locals 0

    .line 3266
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cutBtnClicked()V

    .line 3267
    return-void
.end method

.method public clickDelteBtn(I)V
    .locals 0

    .line 3225
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showDeleteDialog(I)V

    .line 3226
    return-void
.end method

.method public clickDetailsBtn()V
    .locals 0

    .line 3295
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->detailsBtnClicked()V

    .line 3296
    return-void
.end method

.method public clickEditBtn()V
    .locals 2

    .line 3200
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToEditView(IIZ)V

    .line 3201
    return-void
.end method

.method public clickExtractBtn(ILjava/lang/String;)V
    .locals 16

    .line 4295
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 4298
    :cond_0
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v2

    .line 4299
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 4300
    if-nez v3, :cond_1

    .line 4301
    return-void

    .line 4303
    :cond_1
    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 4304
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 4305
    invoke-direct {v0, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showExtractDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4306
    :cond_2
    const/4 v5, 0x3

    const/16 v15, 0x23

    const v6, 0x7f0c0076

    if-ne v1, v5, :cond_4

    .line 4307
    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v1

    .line 4308
    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jrdcom/filemanager/utils/FileUtils;->getOriginalFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4309
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4310
    invoke-direct {v0, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showExtractExistDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 4312
    :cond_3
    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v4, -0x1

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x23

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v11, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x0

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    move-object v13, v2

    move v0, v15

    move v15, v1

    invoke-static/range {v3 .. v15}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IIILcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    .line 4314
    move v15, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalWhenCreateTask(ILjava/util/List;)V

    .line 4317
    :goto_0
    goto/16 :goto_2

    :cond_4
    const/4 v5, 0x4

    if-ne v1, v5, :cond_5

    .line 4318
    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v4, -0x1

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x23

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v11, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x0

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    move-object v13, v2

    move v0, v15

    move v15, v1

    invoke-static/range {v3 .. v15}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IIILcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    .line 4320
    move v14, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalWhenCreateTask(ILjava/util/List;)V

    goto/16 :goto_2

    .line 4321
    :cond_5
    move v14, v15

    const/4 v5, 0x2

    if-ne v1, v5, :cond_6

    .line 4322
    invoke-direct {v0, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showExtractRenameDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4323
    :cond_6
    const/4 v4, 0x5

    if-ne v1, v4, :cond_c

    .line 4324
    if-eqz v10, :cond_b

    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_1

    .line 4327
    :cond_7
    invoke-virtual {v3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v1

    .line 4328
    invoke-static/range {p2 .. p2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->matcherFolderName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4329
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    goto/16 :goto_2

    .line 4330
    :cond_8
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4331
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    goto :goto_2

    .line 4333
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v3, "ExtractRenameDialogTag"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 4334
    if-eqz v1, :cond_a

    .line 4335
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->dismissAllowingStateLoss()V

    .line 4337
    :cond_a
    const/4 v1, 0x0

    sput-object v1, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->mShowMessageDialogFragment:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 4338
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->clearDailogTag()V

    .line 4339
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v3, -0x1

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x23

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v11, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v11, v11, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v12, 0x0

    sget v13, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    move-object v15, v2

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move-object/from16 v10, p2

    move-object v11, v15

    invoke-static/range {v1 .. v13}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IIILcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    .line 4341
    invoke-virtual {v0, v14, v15}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalWhenCreateTask(ILjava/util/List;)V

    goto :goto_2

    .line 4325
    :cond_b
    :goto_1
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 4346
    :cond_c
    :goto_2
    return-void

    .line 4296
    :cond_d
    :goto_3
    return-void
.end method

.method public clickGlobalSearchBtn()V
    .locals 0

    .line 3215
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToGlobalSearchView()V

    .line 3216
    return-void
.end method

.method public clickMigrateBtn()V
    .locals 0

    .line 3257
    return-void
.end method

.method public clickNewFolderBtn()V
    .locals 0

    .line 3205
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showCreateFolderDialog()V

    .line 3206
    return-void
.end method

.method public clickNotificationBtn()V
    .locals 7

    .line 4219
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTaskSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 4220
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, 0x3

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    .line 4221
    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    const-string v3, "Progress"

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v2, v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getListenerInfo(Ljava/lang/String;JII)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object v0

    .line 4222
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->newInstance(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/TaskInfo;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    .line 4223
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4224
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4225
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getInstance()Lcom/jrdcom/filemanager/singleton/RunningTaskMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4226
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4227
    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->getFinishTask(J)Lcom/jrdcom/filemanager/utils/RunningTaskInfo;

    move-result-object v1

    .line 4228
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->getPrgressBarIndex()J

    move-result-wide v2

    const-wide/16 v5, 0x1

    cmp-long v2, v2, v5

    if-nez v2, :cond_0

    .line 4229
    sget-object v2, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->mFirstTaskLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4230
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->getDialogTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->getDialogTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4231
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;->getDialogTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4234
    :cond_0
    goto :goto_0

    .line 4235
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTaskSize()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4236
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 4235
    :cond_2
    nop

    .line 4238
    :goto_1
    return-void
.end method

.method public clickPasteBtn()V
    .locals 0

    .line 3220
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->pasteBtnClicked()V

    .line 3221
    return-void
.end method

.method public clickProgressBtn(I)V
    .locals 4

    .line 245
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->getInstance()Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getInstance()Lcom/jrdcom/filemanager/singleton/RunningTaskMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 247
    const/4 v1, -0x3

    if-eq p1, v1, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_5

    .line 286
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 287
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v0, 0x2

    iput v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    .line 288
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->createNotificationProgress()V

    goto/16 :goto_3

    .line 282
    :cond_1
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cancelTask()V

    .line 283
    goto/16 :goto_3

    .line 251
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    if-nez p1, :cond_3

    .line 252
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/FileManagerApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    .line 254
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 257
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;

    .line 258
    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTask(J)Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object p1

    .line 259
    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v3, p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->cancel(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V

    .line 260
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    long-to-int v3, v1

    invoke-virtual {p1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 261
    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->removeRunningTask(J)V

    .line 262
    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->removeFinishTask(J)V

    .line 263
    goto :goto_0

    .line 264
    :cond_4
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->clearRunningTask()V

    .line 265
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->clearFinishTask()V

    .line 266
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->clearAllNotification()V

    .line 267
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->clearAllTaskInfo()V

    .line 268
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v0, 0x1

    iput v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :try_start_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_1

    .line 273
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 271
    :catch_0
    move-exception p1

    .line 274
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 269
    :catch_1
    move-exception p1

    .line 270
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ConcurrentModificationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    :try_start_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 277
    :goto_1
    goto :goto_2

    .line 275
    :catch_2
    move-exception p1

    .line 278
    nop

    .line 279
    :goto_2
    nop

    .line 292
    :cond_5
    :goto_3
    return-void

    .line 274
    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 277
    goto :goto_5

    .line 275
    :catch_3
    move-exception v0

    .line 278
    :goto_5
    throw p1
.end method

.method public clickRemovePrivateMode()V
    .locals 0

    .line 4447
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showRemovePrivateDialog()V

    .line 4448
    return-void
.end method

.method public clickRenameBtn(Ljava/lang/String;)V
    .locals 0

    .line 3289
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSearchMessage:Ljava/lang/String;

    .line 3290
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showRenameDialog()V

    .line 3291
    return-void
.end method

.method public clickSearchBtn()V
    .locals 0

    .line 3210
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToSearchView()V

    .line 3211
    return-void
.end method

.method public clickSelectAllBtn()V
    .locals 1

    .line 3301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSelectAll:Z

    .line 3303
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->selectAllBtnClicked()V

    .line 3304
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateEditBarByThread()V

    .line 3305
    return-void
.end method

.method public clickSetPrivateBtn()V
    .locals 0

    .line 3231
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showSetPrivateDialog()V

    .line 3232
    return-void
.end method

.method public clickSetPublicBtn()V
    .locals 0

    .line 3236
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showSetPublicDialog()V

    .line 3237
    return-void
.end method

.method public clickShareBtn()V
    .locals 3

    .line 3272
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->reinitAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3273
    return-void

    .line 3277
    :cond_0
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->share()V

    .line 3278
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 3279
    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 3281
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz v0, :cond_2

    .line 3282
    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 3284
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCurrentPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setChecked(IZ)V

    .line 3285
    return-void
.end method

.method public clickShortcutBtn()V
    .locals 0

    .line 3261
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->shortcutBtnClicked()V

    .line 3262
    return-void
.end method

.method public clickShortcutToNormal()V
    .locals 2

    .line 3728
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showNoSearchResultView(ZLjava/lang/String;)V

    .line 3731
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_0

    .line 3732
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearPasteList()V

    .line 3736
    :cond_0
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalView()V

    .line 3737
    return-void
.end method

.method public closeFloatMenu(Z)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->collapse()V

    .line 527
    :cond_0
    if-nez p1, :cond_1

    .line 528
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz v0, :cond_3

    .line 533
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->collapse()V

    .line 536
    :cond_2
    if-nez p1, :cond_3

    .line 537
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 541
    :cond_3
    return-void
.end method

.method public closeItemMorePop()V
    .locals 2

    .line 3702
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_0

    .line 3703
    iget v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setItemEditSelect(I)V

    .line 3705
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_1

    .line 3706
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget-object v0, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 3708
    :cond_1
    return-void
.end method

.method public createNotificationProgress()V
    .locals 8

    .line 1786
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 1787
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    .line 1789
    :cond_0
    nop

    .line 1790
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->getCreateTaskTime()J

    move-result-wide v0

    .line 1791
    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->getTaskInfo(J)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1792
    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->getTaskInfo(J)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object v2

    goto :goto_0

    .line 1794
    :cond_1
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mResultInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 1796
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getProgressInfo()Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 1799
    :cond_2
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getProgressInfo()Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getProgressTaskType()I

    move-result v3

    .line 1802
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->getNotification(J)Landroid/app/Notification$Builder;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1803
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->getNotification(J)Landroid/app/Notification$Builder;

    move-result-object v4

    goto :goto_1

    .line 1805
    :cond_3
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/jrdcom/filemanager/dialog/ProgressNotification;->newInstance(Landroid/content/Context;J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1807
    :goto_1
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 1808
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->addNotification(JLandroid/app/Notification$Builder;)V

    .line 1809
    iget-object v2, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f080193

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getNotificationTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1810
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v2, v4, :cond_4

    .line 1811
    iget-object v2, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f0800f4

    invoke-static {v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getNotificationIconId(I)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1813
    :cond_4
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getNotificationIconId(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 1814
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    long-to-int v3, v0

    invoke-virtual {v2, v3, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1815
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1816
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1817
    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->getTaskInfo(J)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object v0

    const-string v1, "TASKRESULT"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1818
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1819
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mTaskResultHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1820
    return-void

    .line 1797
    :cond_5
    :goto_2
    return-void
.end method

.method public deleteFileResponse()V
    .locals 10

    .line 4428
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v1, :cond_0

    .line 4429
    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->deleteMode:I

    sget v4, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 4430
    invoke-virtual {v7}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v8, v8, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v9, 0x0

    .line 4429
    invoke-static/range {v0 .. v9}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 4431
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalWhenCreateTask(ILjava/util/List;)V

    .line 4433
    :cond_0
    return-void
.end method

.method public doMoveFileToPrivate()V
    .locals 18

    .line 2906
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToCopyView()V

    .line 2907
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->setFileActionMode(I)V

    .line 2908
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v1, :cond_5

    .line 2909
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    sget v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 2910
    invoke-virtual {v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v3

    .line 2909
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->savePasteList(IILjava/util/List;)V

    .line 2911
    const/4 v1, 0x0

    .line 2912
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getFirstCheckedFileInfoItem()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v2

    .line 2913
    if-nez v2, :cond_0

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditSelect()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2914
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditSelect()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 2916
    :cond_0
    if-eqz v2, :cond_1

    .line 2917
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v1

    .line 2919
    :cond_1
    nop

    .line 2920
    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getFileCategory(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "/storage/emulated/0/Locker/Other"

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    .line 2943
    move-object v1, v3

    goto :goto_0

    .line 2937
    :pswitch_0
    nop

    .line 2938
    const-string v1, "/storage/emulated/0/Locker/Archives"

    goto :goto_0

    .line 2931
    :pswitch_1
    nop

    .line 2932
    const-string v1, "/storage/emulated/0/Locker/Installers"

    goto :goto_0

    .line 2934
    :pswitch_2
    nop

    .line 2935
    const-string v1, "/storage/emulated/0/Locker/Documents"

    goto :goto_0

    .line 2922
    :pswitch_3
    nop

    .line 2923
    const-string v1, "/storage/emulated/0/Locker/Video"

    goto :goto_0

    .line 2928
    :pswitch_4
    nop

    .line 2929
    const-string v1, "/storage/emulated/0/Locker/Image"

    goto :goto_0

    .line 2925
    :pswitch_5
    nop

    .line 2926
    const-string v1, "/storage/emulated/0/Locker/Audio"

    goto :goto_0

    .line 2940
    :cond_2
    nop

    .line 2941
    move-object v1, v3

    .line 2946
    :goto_0
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 2947
    move-object v13, v3

    goto :goto_1

    .line 2946
    :cond_3
    move-object v13, v1

    .line 2950
    :goto_1
    iget-object v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v6, -0x1

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteType()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getCategory()I

    move-result v17

    invoke-static/range {v5 .. v17}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IIILcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    .line 2951
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteType()I

    move-result v1

    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalWhenCreateTask(ILjava/util/List;)V

    .line 2952
    invoke-virtual {v0, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateActionMode(I)V

    .line 2953
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2954
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x3

    iput v2, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    .line 2955
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2957
    :cond_4
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->doHideFloatButton()V

    .line 2969
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAdapterSize()I
    .locals 1

    .line 3342
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getAdapterCount()I

    move-result v0

    return v0
.end method

.method public getCheckedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 4394
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_0

    .line 4395
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4397
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathCacheExist(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1203
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isItemMorePop()Z
    .locals 1

    .line 3712
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz v0, :cond_0

    .line 3713
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget-object v0, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result v0

    return v0

    .line 3715
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowNoFolderView()Z
    .locals 2

    .line 4385
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4386
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 4388
    :cond_1
    return v1
.end method

.method public managerTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 8

    .line 3754
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v0

    .line 3755
    const/4 v1, 0x1

    const-string v2, "TASKRESULT"

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    const/16 v5, 0x17

    if-eq v0, v5, :cond_2

    const/16 v5, 0x18

    const/16 v6, 0x28

    const/16 v7, 0x26

    if-eq v0, v5, :cond_0

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 3757
    :cond_0
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getProgressInfo()Lcom/jrdcom/filemanager/task/ProgressInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getProgressTaskType()I

    move-result v0

    .line 3758
    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3766
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3767
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3768
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3769
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3770
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mTaskResultHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3774
    :goto_0
    goto :goto_1

    .line 3784
    :cond_2
    :pswitch_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3785
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3786
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3787
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3788
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mTaskResultHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3789
    goto :goto_1

    .line 3797
    :cond_3
    :pswitch_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3798
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3799
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3800
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3801
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mTaskResultHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3805
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public moveFileToPrivate()V
    .locals 4

    .line 2888
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2889
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2890
    const-string v1, "verify_request"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2891
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.privatefolder"

    const-string v3, "com.android.privatefolder.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2894
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2896
    return-void
.end method

.method public moveFileToPublic()V
    .locals 3

    .line 2899
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fileexplorer.action.DIR_SEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2900
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2901
    const-string v1, "disable_private_folder"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2902
    invoke-virtual {p0, v0, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2903
    return-void
.end method

.method public moveToPrivate()V
    .locals 0

    .line 3241
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->moveFileToPrivate()V

    .line 3242
    return-void
.end method

.method public moveToPublic()V
    .locals 0

    .line 3246
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->moveFileToPublic()V

    .line 3247
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 20

    .line 2973
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-super/range {p0 .. p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2974
    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 2975
    if-ne v2, v5, :cond_6

    .line 2976
    if-eqz v3, :cond_6

    .line 2977
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2978
    if-eqz v1, :cond_1

    .line 2979
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 2980
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToCopyView()V

    .line 2981
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->setFileActionMode(I)V

    .line 2982
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v1, :cond_1

    .line 2983
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    sget v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 2984
    invoke-virtual {v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v3

    .line 2983
    invoke-virtual {v1, v2, v6, v3}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->savePasteList(IILjava/util/List;)V

    .line 2985
    iget-object v7, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v8, -0x1

    invoke-virtual {v7}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteType()I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getCategory()I

    move-result v19

    invoke-static/range {v7 .. v19}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IIILcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    .line 2986
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteType()I

    move-result v1

    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalWhenCreateTask(ILjava/util/List;)V

    .line 2987
    invoke-virtual {v0, v6}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateActionMode(I)V

    .line 2988
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2989
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v4, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    .line 2990
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2992
    :cond_0
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->doHideFloatButton()V

    .line 2995
    :cond_1
    goto/16 :goto_0

    .line 2997
    :cond_2
    if-nez v1, :cond_3

    .line 2998
    if-ne v2, v5, :cond_6

    .line 2999
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->doMoveFileToPrivate()V

    goto :goto_0

    .line 3001
    :cond_3
    const/16 v6, 0x65

    const-string v7, "content"

    const/16 v8, 0x66

    if-ne v1, v6, :cond_5

    .line 3002
    if-ne v2, v8, :cond_6

    .line 3003
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3004
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v2, :cond_4

    .line 3006
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->beforeCreateFolderDo()V

    .line 3008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3010
    new-instance v6, Lcom/jrdcom/filemanager/utils/TaskInfo;

    iget-object v7, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    new-instance v8, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;

    invoke-virtual {v7}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0046

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2, v3, v4, v5}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getListenerInfo(Ljava/lang/String;JII)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    invoke-direct {v6, v7, v8, v4}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 3012
    invoke-virtual {v6, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDestPath(Ljava/lang/String;)V

    .line 3013
    invoke-virtual {v6, v2, v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCreateTaskTime(J)V

    .line 3014
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0, v6}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addNewTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 3016
    :cond_4
    goto :goto_0

    .line 3017
    :cond_5
    if-ne v1, v8, :cond_6

    .line 3018
    if-ne v2, v8, :cond_6

    .line 3019
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSrcfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-direct {v0, v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->dealRenameAction(Ljava/lang/String;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 3022
    :cond_6
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 8

    .line 816
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 817
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    .line 818
    sput-object v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRenameActivity:Landroid/app/Activity;

    .line 820
    :try_start_0
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 821
    instance-of v0, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_0

    .line 822
    move-object v0, p1

    check-cast v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    .line 824
    :cond_0
    const/4 v0, 0x0

    .line 825
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v1, :cond_1

    .line 826
    const/4 v0, 0x1

    .line 828
    :cond_1
    if-eqz v0, :cond_2

    .line 829
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 830
    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getRefreshMode(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v5, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 829
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 833
    :cond_2
    new-instance v0, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMediaProviderHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    .line 834
    new-instance v1, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    invoke-direct {v1, v0}, Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;-><init>(Lcom/jrdcom/filemanager/manager/MediaStoreHelper;)V

    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->deleteMediaStoreHelper:Lcom/jrdcom/filemanager/manager/MultiMediaStoreHelper$DeleteMediaStoreHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    nop

    .line 838
    return-void

    .line 835
    :catch_0
    move-exception v0

    .line 836
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "must implement AbsListViewFragmentListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackPress()V
    .locals 10

    .line 885
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showNoSearchResultView(ZLjava/lang/String;)V

    .line 886
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showNoFolderResultView(Z)V

    .line 887
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isOpenCDDrmFile:Z

    .line 888
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 889
    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 890
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->collapse()V

    .line 894
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz v1, :cond_1

    .line 895
    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 896
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 897
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->collapse()V

    .line 900
    :cond_1
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-nez v1, :cond_2

    .line 901
    return-void

    .line 903
    :cond_2
    const/4 v2, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 904
    :cond_4
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 905
    iget-boolean v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mFromSearchToEdit:Z

    if-eqz v1, :cond_6

    .line 906
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getSearchItemsCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 907
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showSearchResultView()V

    goto :goto_0

    .line 909
    :cond_5
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->exitSearchResultView()V

    goto :goto_0

    .line 912
    :cond_6
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalView()V

    .line 918
    :goto_0
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mFromSearchToEdit:Z

    goto :goto_1

    .line 920
    :cond_7
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->exitSearchResultView()V

    .line 922
    :goto_1
    return-void

    .line 924
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsBack:Z

    .line 925
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathNormalMode(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 926
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isSdOrPhonePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 927
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 929
    new-instance v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-direct {v1, v2, v0}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 930
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 932
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->reNewAdapter()V

    .line 934
    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 935
    goto :goto_2

    .line 936
    :cond_9
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 939
    :cond_a
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 3310
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v0, :cond_0

    .line 3311
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 3313
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3314
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 3316
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onBackPress()V

    .line 3317
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_2

    .line 3318
    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->updateBarView()V

    .line 3320
    :cond_2
    return-void
.end method

.method public onConfiguarationChanged()V
    .locals 0

    .line 3359
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 2044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isDestroy:Z

    .line 2046
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2047
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPosStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2048
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPosStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 2050
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->fileInfoEdit:Lcom/jrdcom/filemanager/utils/FileInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2051
    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->fileInfoEdit:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 2055
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mTaskResultHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 2056
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2058
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 2059
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2061
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mScrollHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 2062
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2067
    :cond_4
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->closeItemMorePop()V

    .line 2069
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->ob:Ljava/lang/Object;

    monitor-enter v0

    .line 2070
    :try_start_0
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v2, :cond_5

    .line 2071
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->clearList()V

    .line 2072
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setPrePosition(I)V

    .line 2073
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v2, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setOnItemFocusChangeListener(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;)V

    .line 2074
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v2, v1}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 2075
    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 2077
    :cond_5
    monitor-exit v0

    .line 2079
    return-void

    .line 2077
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onGlobalSearchBackPressed()V
    .locals 2

    .line 877
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showNoSearchResultView(ZLjava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->changeModeFromSearchToNormal()V

    .line 881
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateActionMode(I)V

    .line 882
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 9

    .line 406
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1, p2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItem(I)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v1

    .line 407
    if-nez v1, :cond_0

    .line 408
    return-void

    .line 411
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->storeLastListPos(Landroid/view/View;I)V

    .line 413
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    .line 414
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 415
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0c00b3

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 416
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-static {v1, v0, v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->deleteCache(Lcom/jrdcom/filemanager/utils/FileInfo;ILcom/jrdcom/filemanager/utils/FileListCache;)V

    .line 417
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMediaProviderHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->scanPathforMediaStore(Ljava/lang/String;)V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemCount()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearShowFiles()V

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 425
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-virtual {v0, v7}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(Ljava/lang/String;)V

    .line 426
    return-void

    .line 428
    :cond_3
    iget-object v5, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v5, v4}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v5, v7}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 429
    invoke-virtual {v5, v6}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v8, 0x6

    invoke-virtual {v5, v8}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 487
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/storage/emulated/0/Locker/Image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 488
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/storage/emulated/0/Locker/Video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 489
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/storage/emulated/0/Locker/Audio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 490
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/storage/emulated/0/Locker/Installers"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 491
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/storage/emulated/0/Locker/Archives"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 492
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/storage/emulated/0/Locker/Documents"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 493
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/storage/emulated/0/Locker/Other"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 497
    :cond_5
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1, p2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setSelect(I)V

    .line 498
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateEditBarByThread()V

    goto/16 :goto_4

    .line 494
    :cond_6
    :goto_0
    return-void

    .line 430
    :cond_7
    :goto_1
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 431
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, v6}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, v7}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 432
    :cond_8
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 433
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateActionMode(I)V

    .line 435
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 436
    check-cast v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->btnClickSound()V

    .line 440
    :cond_9
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne v0, v4, :cond_a

    .line 441
    const/4 v0, 0x2

    sput v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    .line 442
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 443
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshPathBar()V

    .line 444
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->clearList()V

    .line 446
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_2

    .line 449
    :cond_a
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshPathBar()V

    .line 452
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->reNewAdapter()V

    .line 455
    sput-boolean v4, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isBackPosition:Z

    .line 456
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 459
    :goto_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_f

    .line 460
    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->updateBarView()V

    goto :goto_4

    .line 464
    :cond_b
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isSearchTextChange:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_c

    .line 465
    check-cast v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->btnClickSound()V

    .line 468
    :cond_c
    iget v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->clickcount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->clickcount:I

    .line 469
    if-ne v0, v4, :cond_d

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->fir_time:J

    goto :goto_3

    .line 472
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->sec_time:J

    .line 473
    iget-wide v7, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->fir_time:J

    sub-long/2addr v4, v7

    const-wide/16 v7, 0x258

    cmp-long v0, v4, v7

    if-gez v0, :cond_e

    .line 474
    return-void

    .line 477
    :cond_e
    :goto_3
    iget-wide v4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->sec_time:J

    iput-wide v4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->fir_time:J

    .line 478
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->openFile(Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 479
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPosStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 481
    iput-boolean v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isSearchTextChange:Z

    .line 500
    :cond_f
    :goto_4
    return-void
.end method

.method public onItemFocusChange(Landroid/view/View;ZI)V
    .locals 0

    .line 380
    if-nez p2, :cond_0

    .line 381
    return-void

    .line 383
    :cond_0
    iput p3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCurrentPosition:I

    .line 384
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateMenubarViewasFragment()V

    .line 386
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 12

    .line 725
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 726
    return v2

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, p2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItem(I)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 730
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c00b3

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 731
    sget p2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-static {v0, p2, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->deleteCache(Lcom/jrdcom/filemanager/utils/FileInfo;ILcom/jrdcom/filemanager/utils/FileListCache;)V

    .line 732
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMediaProviderHelper:Lcom/jrdcom/filemanager/manager/MediaStoreHelper;

    if-eqz p2, :cond_1

    .line 733
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/manager/MediaStoreHelper;->scanPathforMediaStore(Ljava/lang/String;)V

    .line 735
    :cond_1
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemCount()I

    move-result p2

    if-ne p2, v2, :cond_2

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 736
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearShowFiles()V

    .line 738
    :cond_2
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v6, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v7, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 740
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-virtual {p2, p1}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(Ljava/lang/String;)V

    .line 741
    return v4

    .line 743
    :cond_3
    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v3, v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v3, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 757
    :cond_4
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 758
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 759
    invoke-virtual {p0, p2, p1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToEditView(IIZ)V

    .line 761
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-eq p1, v2, :cond_5

    .line 762
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, p2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItem(I)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 763
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshPathBar()V

    .line 764
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 767
    :cond_5
    return v2

    .line 768
    :cond_6
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 769
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 770
    const/4 v1, 0x2

    sput v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    .line 771
    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 772
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 773
    invoke-virtual {p0, p2, p1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToEditView(IIZ)V

    .line 774
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateActionMode(I)V

    .line 775
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v5, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget p2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-static {p1, p2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getRefreshMode(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 777
    return v2

    .line 744
    :cond_7
    :goto_0
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isRootPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 745
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_8

    .line 746
    invoke-interface {v0, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->HideActionbar(Z)V

    .line 748
    :cond_8
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSafeFileView(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 749
    sput-boolean v4, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isOpenSafeFile:Z

    .line 751
    :cond_9
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_a

    .line 752
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 753
    invoke-virtual {p0, p2, p1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToEditView(IIZ)V

    .line 754
    return v2

    .line 779
    :cond_a
    return v4
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 4418
    invoke-super {p0, p1}, Landroid/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 4419
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-boolean p1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->isInMultiWindowMode:Z

    .line 4420
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4421
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 4422
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v0, 0x2

    iput v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    .line 4424
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 2020
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2021
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    if-eqz v0, :cond_0

    .line 2022
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setFocusable(Z)V

    .line 2024
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2026
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshViewLayoutIfNeed()V

    .line 2028
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 2244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSavedState:Z

    .line 2245
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2246
    return-void
.end method

.method public onScannerFinished()V
    .locals 8

    .line 3368
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isDataChanged:Z

    if-eqz v0, :cond_1

    .line 3369
    const/4 v0, -0x2

    sput v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mLastCagegory:I

    .line 3370
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 3373
    return-void

    .line 3375
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v4, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    .line 3376
    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getCategoryRefreshMode(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3375
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 3377
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/16 v1, 0x2713

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->currentOperation:I

    .line 3379
    :cond_1
    return-void
.end method

.method public onScannerStarted()V
    .locals 0

    .line 3364
    return-void
.end method

.method public onTaskComplete(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 9

    .line 1942
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTaskSize()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-static {}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->getWaittingTaskSize()I

    move-result v0

    if-nez v0, :cond_3

    .line 1943
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/FileManagerApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    .line 1946
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 1947
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->clearAllNotification()V

    .line 1948
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->clearAllTaskInfo()V

    .line 1949
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1950
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1952
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    goto :goto_0

    .line 1953
    :catch_0
    move-exception v0

    .line 1954
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1957
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    .line 1959
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    goto :goto_1

    .line 1960
    :cond_3
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->getRunningTaskSize()I

    move-result v0

    if-lez v0, :cond_5

    .line 1961
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_5

    .line 1962
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1963
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->removeRunningTask(J)V

    .line 1964
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->removeNotification(J)V

    .line 1965
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->removeTaskInfo(J)V

    .line 1966
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1967
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    goto :goto_1

    .line 1969
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    .line 1973
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isShowHorizontalProgressBar(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1974
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v3

    .line 1975
    invoke-static {}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->getFinishTaskSize()I

    move-result v0

    if-gtz v0, :cond_6

    .line 1976
    return-void

    .line 1978
    :cond_6
    invoke-static {v3, v4}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->getFinishTask(J)Lcom/jrdcom/filemanager/utils/RunningTaskInfo;

    move-result-object v0

    .line 1979
    if-nez v0, :cond_7

    .line 1980
    return-void

    .line 1982
    :cond_7
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isShowHorizontalProgressBar(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1983
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 1984
    invoke-static {}, Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;->getCreateTaskTime()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getCreateTaskTime()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-nez p1, :cond_8

    .line 1985
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 1987
    :cond_8
    invoke-static {v3, v4}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->removeRunningTask(J)V

    .line 1988
    invoke-static {v3, v4}, Lcom/jrdcom/filemanager/singleton/NotificationMap;->removeNotification(J)V

    .line 1989
    invoke-static {v3, v4}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->removeTaskInfo(J)V

    .line 1990
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_9

    .line 1991
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    goto :goto_2

    .line 1993
    :cond_9
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput v2, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentProgressMode:I

    .line 1996
    :cond_a
    :goto_2
    invoke-static {v3, v4}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->removeFinishTask(J)V

    .line 2007
    :cond_b
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 842
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 843
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 844
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    .line 846
    new-instance p1, Lcom/jrdcom/filemanager/view/ToastHelper;

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    .line 848
    sget-boolean p1, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    iput-boolean p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isStatusInElder:Z

    .line 851
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isDestroy:Z

    .line 853
    return-void
.end method

.method protected openFile(Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 1

    .line 3637
    new-instance v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;

    invoke-direct {v0, p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->start()V

    .line 3638
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->setCaseNotFinish(Z)V

    .line 3639
    return-void
.end method

.method public refreshAdapter(Ljava/lang/String;IIIZZ)Z
    .locals 16

    .line 942
    move-object/from16 v0, p0

    move/from16 v6, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p6

    iget-object v4, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v4, :cond_0

    .line 943
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v4, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 947
    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v7, 0x0

    if-ne v6, v4, :cond_2

    if-ne v1, v5, :cond_2

    iget-object v8, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 948
    invoke-static {v8}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isGlobalSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v8}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 949
    :cond_1
    return v7

    .line 954
    :cond_2
    nop

    .line 955
    nop

    .line 956
    invoke-static/range {p1 .. p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMode(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v8}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 957
    iget-object v8, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v8, v8, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    move-object/from16 v10, p1

    invoke-virtual {v8, v10}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v8

    .line 958
    if-eqz v8, :cond_3

    .line 959
    move-object v11, v10

    goto :goto_0

    .line 958
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 956
    :cond_4
    move-object/from16 v10, p1

    .line 961
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v8

    if-eqz v8, :cond_6

    sget v8, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-ne v6, v8, :cond_6

    iget-object v8, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v8}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 962
    iget-object v8, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v8, v8, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v8

    .line 963
    if-eqz v8, :cond_5

    .line 964
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 963
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 967
    :cond_6
    move v8, v7

    const/4 v11, 0x0

    :goto_0
    nop

    .line 968
    iget-object v12, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v12}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v12

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-nez v12, :cond_7

    if-ne v1, v14, :cond_7

    if-eqz v8, :cond_7

    .line 969
    move v1, v5

    goto :goto_1

    .line 970
    :cond_7
    iget-object v12, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v12}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v12

    if-nez v12, :cond_8

    if-ne v1, v13, :cond_8

    if-eqz v8, :cond_8

    .line 971
    move v1, v5

    .line 973
    :cond_8
    :goto_1
    iget-object v12, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v12}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v12

    const v15, 0x7f0c008e

    if-nez v12, :cond_9

    if-ne v2, v14, :cond_a

    :cond_9
    if-ne v1, v13, :cond_a

    if-ltz v6, :cond_a

    const/16 v12, 0xa

    if-ge v6, v12, :cond_a

    iget-object v12, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 974
    invoke-static {v12}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->checkAppPermission(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 975
    nop

    .line 976
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 977
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 976
    move/from16 v6, p2

    invoke-static/range {v0 .. v11}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IZLcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 978
    return v14

    .line 980
    :cond_a
    iget-object v12, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v12}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v12

    const/4 v9, 0x3

    const/16 v4, 0xc

    if-eqz v12, :cond_c

    const/4 v12, 0x5

    if-eq v1, v12, :cond_b

    if-ne v1, v9, :cond_c

    :cond_b
    if-ne v4, v6, :cond_c

    .line 983
    nop

    .line 984
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 985
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 984
    move/from16 v6, p2

    invoke-static/range {v0 .. v11}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IZLcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 986
    return v14

    .line 987
    :cond_c
    if-ne v2, v14, :cond_d

    if-ne v1, v14, :cond_d

    .line 988
    nop

    .line 989
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 990
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 989
    move/from16 v6, p2

    move-object/from16 v8, p1

    move v10, v11

    move-object v11, v12

    invoke-static/range {v0 .. v11}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IZLcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 991
    return v14

    .line 992
    :cond_d
    if-ne v1, v5, :cond_1d

    .line 994
    if-eqz v8, :cond_e

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne v1, v13, :cond_e

    .line 995
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v11, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 997
    :cond_e
    const/16 v1, 0xbd

    if-eqz v8, :cond_f

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    if-eq v6, v1, :cond_f

    .line 998
    invoke-virtual {v0, v11}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getPathCacheExist(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 1000
    :cond_f
    if-ne v6, v1, :cond_10

    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v2, :cond_10

    .line 1001
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getList()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 1004
    :cond_10
    const/4 v2, 0x0

    :goto_2
    if-nez v8, :cond_11

    if-ne v6, v1, :cond_14

    .line 1006
    :cond_11
    iget-object v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v5, v5, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1007
    iget-object v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v5, v5, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v8, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v8, v8, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    iget-object v10, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v10, v10, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    invoke-virtual {v5, v8, v2, v10}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->loadFileInfoList(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_3

    .line 1009
    :cond_12
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isRecentCategoryMode()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1010
    iget-object v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v5, v5, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v5, v6, v2, v14}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->loadFileInfoList(ILjava/util/List;I)V

    goto :goto_3

    .line 1012
    :cond_13
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v5

    if-eqz v5, :cond_14

    sget v5, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    if-eq v5, v4, :cond_14

    .line 1013
    iget-object v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v5, v5, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v8, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v8, v8, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    invoke-virtual {v5, v6, v2, v8}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->loadFileInfoList(ILjava/util/List;I)V

    .line 1017
    :cond_14
    :goto_3
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-nez v2, :cond_15

    .line 1018
    return v7

    .line 1021
    :cond_15
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    if-eq v2, v13, :cond_16

    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    if-ne v2, v9, :cond_17

    :cond_16
    sget v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-lez v2, :cond_17

    sget v2, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    if-eq v2, v4, :cond_17

    move v2, v14

    goto :goto_4

    :cond_17
    move v2, v7

    .line 1023
    :goto_4
    iget-object v4, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v4

    if-nez v4, :cond_18

    if-eqz v3, :cond_18

    sget-object v4, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    if-eqz v4, :cond_18

    sget-boolean v4, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isBackPosition:Z

    if-eqz v4, :cond_18

    move v4, v14

    goto :goto_5

    :cond_18
    move v4, v7

    .line 1026
    :goto_5
    if-ne v6, v1, :cond_19

    .line 1027
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->refreshSortAdapter()V

    goto :goto_6

    .line 1029
    :cond_19
    if-nez v2, :cond_1a

    if-eqz v4, :cond_1a

    .line 1030
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v1, v7}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setFocusable(Z)V

    .line 1032
    :cond_1a
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->refresh()V

    .line 1037
    :goto_6
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemCount()I

    move-result v1

    .line 1038
    iget-object v4, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    sget-object v5, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v4, v5}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getPosition(Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result v4

    .line 1039
    iget-object v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPosStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1b

    iget-boolean v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsBack:Z

    if-eqz v5, :cond_1b

    if-lez v1, :cond_1b

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1b

    .line 1040
    iget-object v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPosStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;

    iput-object v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPos:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;

    .line 1041
    iget-object v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutManager;

    .line 1043
    iget-object v6, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mPos:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$Pos;

    if-eqz v6, :cond_1b

    .line 1044
    iget-object v6, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    new-instance v7, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$1;

    invoke-direct {v7, v0, v5, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$1;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Landroid/support/v7/widget/LinearLayoutManager;I)V

    invoke-virtual {v6, v7}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1052
    iget-object v6, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v6}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;

    invoke-direct {v7, v0, v5, v4, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Landroid/support/v7/widget/LinearLayoutManager;II)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1090
    :cond_1b
    iget-boolean v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isInRename:Z

    if-nez v1, :cond_1c

    .line 1091
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mScrollHandler:Landroid/os/Handler;

    new-instance v4, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;

    invoke-direct {v4, v0, v2, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;ZZ)V

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1112
    :cond_1c
    return v14

    .line 1114
    :cond_1d
    return v7
.end method

.method public refreshDataChangeIfNeed()V
    .locals 6

    .line 1120
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isDestroy:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v0, :cond_1

    .line 1125
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 1128
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/jrdcom/filemanager/task/ListFileTask;->refreshPathForChange(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1129
    if-nez v0, :cond_2

    .line 1130
    return-void

    .line 1134
    :cond_2
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->ob:Ljava/lang/Object;

    monitor-enter v1

    .line 1136
    :try_start_0
    iget-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isDestroy:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-nez v2, :cond_3

    goto/16 :goto_4

    .line 1140
    :cond_3
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v2, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getShowOrHideFileListByList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1142
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getDiffList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1143
    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getDiffList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1144
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 1146
    return-void

    .line 1149
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 1150
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1151
    invoke-static {}, Lcom/jrdcom/filemanager/manager/IconManager;->getInstance()Lcom/jrdcom/filemanager/manager/IconManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jrdcom/filemanager/manager/IconManager;->removeCache(Ljava/lang/String;)V

    .line 1152
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v5

    invoke-static {v2, v1, v4, v5, v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->addCache(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileListCache;Lcom/jrdcom/filemanager/manager/MountManager;Z)V

    .line 1153
    goto :goto_0

    :cond_5
    goto :goto_2

    .line 1155
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1156
    invoke-static {}, Lcom/jrdcom/filemanager/manager/IconManager;->getInstance()Lcom/jrdcom/filemanager/manager/IconManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jrdcom/filemanager/manager/IconManager;->removeCache(Ljava/lang/String;)V

    .line 1157
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v5

    invoke-static {v2, v1, v4, v5, v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->addCache(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileListCache;Lcom/jrdcom/filemanager/manager/MountManager;Z)V

    .line 1158
    goto :goto_1

    .line 1160
    :cond_7
    :goto_2
    new-instance v0, Lcom/jrdcom/filemanager/utils/TaskInfo;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x0

    const/16 v4, 0x21

    invoke-direct {v0, v1, v2, v4}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 1161
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1162
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setAdapterMode(I)V

    goto :goto_3

    .line 1163
    :cond_8
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1164
    invoke-virtual {v0, v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setAdapterMode(I)V

    .line 1166
    :cond_9
    :goto_3
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1167
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1168
    const-string v3, "TASKRESULT"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1169
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1171
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getAppHandler()Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1172
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getAppHandler()Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->handleMessage(Landroid/os/Message;)V

    .line 1174
    :cond_a
    return-void

    .line 1137
    :cond_b
    :goto_4
    :try_start_1
    monitor-exit v1

    return-void

    .line 1144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1121
    :cond_c
    :goto_5
    return-void
.end method

.method protected refreshPathBar()V
    .locals 2

    .line 2150
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_0

    .line 2151
    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->updateNormalBarView()V

    .line 2152
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->updateBarTitle(I)V

    .line 2154
    :cond_0
    return-void
.end method

.method public registerDataContentObserver()V
    .locals 1

    .line 4370
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    if-eqz v0, :cond_0

    .line 4371
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->startFileTimerWatcher()V

    .line 4373
    :cond_0
    return-void
.end method

.method protected reloadContent()V
    .locals 8

    .line 3542
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->isPathModified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3543
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSearchMode:Z

    if-nez v0, :cond_1

    .line 3544
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getRefreshMode(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_0

    .line 3548
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3549
    new-instance v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$13;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$13;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 3565
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3568
    :cond_1
    :goto_0
    return-void
.end method

.method public removePrivateMode()V
    .locals 14

    .line 4474
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_0

    .line 4475
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v0

    .line 4476
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, -0x1

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x28

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v9, v9, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 4477
    invoke-static {v11}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v12

    sget v13, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 4476
    move-object v11, v0

    invoke-static/range {v1 .. v13}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IIILcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    .line 4478
    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalWhenCreateTask(ILjava/util/List;)V

    .line 4480
    :cond_0
    return-void
.end method

.method public restoreCheckedList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 4402
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v0, :cond_0

    .line 4403
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 4406
    :cond_0
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->reinitAdapter()Z

    .line 4408
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4409
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setChecked(Ljava/util/List;Z)V

    goto :goto_0

    .line 4410
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4411
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setChecked(Ljava/util/List;Z)V

    .line 4413
    :cond_2
    :goto_0
    return-void
.end method

.method protected restoreListPosition()V
    .locals 0

    .line 2210
    return-void
.end method

.method public saveSelectedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 3747
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3748
    :cond_0
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public searchQueryTextChange()V
    .locals 1

    .line 3353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isSearchTextChange:Z

    .line 3354
    return-void
.end method

.method public setViewPostion(IZ)V
    .locals 0

    .line 2214
    return-void
.end method

.method public showAnim(Landroid/app/FragmentManager;I)V
    .locals 8

    .line 503
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 504
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    const p2, 0x7f020002

    const v0, 0x7f020001

    invoke-virtual {p1, p2, v0}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 506
    :cond_1
    const p2, 0x7f020003

    const/high16 v0, 0x7f020000

    invoke-virtual {p1, p2, v0}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 507
    nop

    .line 512
    :goto_0
    new-instance p2, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {p2}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    .line 513
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 514
    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getRefreshMode(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v5, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 513
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 516
    const v0, 0x7f0800c3

    invoke-virtual {p1, v0, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 517
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 518
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->clearAdapter()V

    .line 519
    return-void
.end method

.method public showBeforeSearchList()V
    .locals 0

    .line 3347
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showBeforeSearchContent()V

    .line 3348
    return-void
.end method

.method public showErrorToast(ILcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 4

    .line 1881
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1889
    :pswitch_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c0088

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1890
    goto/16 :goto_0

    .line 1892
    :pswitch_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c007a

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1893
    goto/16 :goto_0

    .line 1883
    :pswitch_3
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getTitleStr()Ljava/lang/String;

    move-result-object p1

    .line 1884
    if-eqz p1, :cond_0

    .line 1885
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1919
    :pswitch_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c0086

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1920
    goto/16 :goto_0

    .line 1922
    :pswitch_5
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c0052

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1923
    goto/16 :goto_0

    .line 1913
    :pswitch_6
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c00b1

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1914
    goto :goto_0

    .line 1901
    :pswitch_7
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c0045

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1902
    goto :goto_0

    .line 1916
    :pswitch_8
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c00b0

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1917
    goto :goto_0

    .line 1907
    :pswitch_9
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c00e3

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1908
    goto :goto_0

    .line 1910
    :pswitch_a
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c00e4

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1911
    goto :goto_0

    .line 1904
    :pswitch_b
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c0051

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1905
    goto :goto_0

    .line 1898
    :pswitch_c
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c0087

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1899
    goto :goto_0

    .line 1895
    :pswitch_d
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c003f

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1896
    goto :goto_0

    .line 1925
    :pswitch_e
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c0071

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1926
    goto :goto_0

    .line 1928
    :pswitch_f
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c0028

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1929
    goto :goto_0

    .line 1932
    :pswitch_10
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c00ab

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1933
    goto :goto_0

    .line 1935
    :pswitch_11
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const p2, 0x7f0c00d7

    invoke-virtual {p1, p2}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1938
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1a
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public showFileDetailInfo(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 23

    .line 3810
    move-object/from16 v1, p0

    .line 3811
    invoke-virtual/range {p1 .. p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getSrcFile()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    .line 3812
    invoke-virtual/range {p1 .. p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getAdapterMode()I

    move-result v2

    .line 3819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3821
    nop

    .line 3822
    nop

    .line 3823
    nop

    .line 3824
    nop

    .line 3829
    nop

    .line 3830
    nop

    .line 3831
    nop

    .line 3832
    nop

    .line 3833
    nop

    .line 3834
    nop

    .line 3835
    nop

    .line 3836
    nop

    .line 3837
    nop

    .line 3838
    nop

    .line 3839
    invoke-virtual/range {p1 .. p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getDestPath()Ljava/lang/String;

    move-result-object v4

    .line 3840
    nop

    .line 3842
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3843
    const v6, 0x7f0c0056

    invoke-virtual {v1, v6}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3844
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3845
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3846
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3847
    const v8, 0x7f0c0058

    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3848
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/jrdcom/filemanager/utils/FileUtils;->sizeToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " \n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3849
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3851
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileLastModifiedTime()J

    move-result-wide v9

    .line 3853
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3854
    nop

    .line 3855
    const v11, 0x7f0c0097

    invoke-virtual {v1, v11}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3854
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3856
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 3855
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3857
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3858
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3859
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-direct {v1, v3, v11}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getPermission(Ljava/lang/StringBuilder;Ljava/io/File;)Ljava/lang/String;

    .line 3860
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    .line 3861
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getDetailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3862
    const/4 v13, 0x2

    const/4 v14, 0x3

    invoke-static {v13, v14}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v15

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 3863
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v9

    .line 3864
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v10

    const v15, 0x7f0c00c4

    const-string v6, ""

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3865
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " & "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0c0104

    invoke-virtual {v1, v10}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 3866
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3867
    const v9, 0x7f0c00a1

    invoke-virtual {v1, v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 3868
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3869
    invoke-virtual {v1, v15}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 3870
    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3871
    const v9, 0x7f0c0105

    invoke-virtual {v1, v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 3870
    :cond_3
    move-object v9, v6

    .line 3874
    :goto_0
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrmFile()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    :cond_4
    move v10, v5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v10, 0x1

    .line 3875
    :goto_2
    if-ne v2, v13, :cond_6

    .line 3876
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v0

    .line 3877
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/jrdcom/filemanager/drm/DrmManager;->isRightsStatus(Ljava/lang/String;)Z

    move-result v2

    .line 3878
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/jrdcom/filemanager/drm/DrmManager;->getDrmScheme(Ljava/lang/String;)I

    move-result v13

    .line 3879
    invoke-static {v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->getAction(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 3875
    :cond_6
    const/4 v0, -0x1

    move v2, v5

    move v13, v2

    .line 3883
    :goto_3
    sget v14, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const-string v5, "license_expiry_time"

    const-string v15, "license_start_time"

    move/from16 v17, v10

    const-string v10, "remaining_repeat_count"

    move-object/from16 v18, v9

    const/16 v9, 0x14

    if-ne v14, v9, :cond_1e

    .line 3884
    sget v9, Lcom/jrdcom/filemanager/drm/DrmManager;->DRM_SCHEME_OMA1_FL:I

    const-string v14, ": "

    move-object/from16 v19, v8

    const v8, 0x7f0c00a8

    if-ne v13, v9, :cond_8

    .line 3885
    if-eqz v2, :cond_7

    .line 3886
    nop

    .line 3887
    const v2, 0x7f0c0061

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3888
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3889
    const v2, 0x7f0c00f4

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3890
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3891
    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3892
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3893
    nop

    .line 3894
    const v4, 0x7f0c0062

    invoke-virtual {v1, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3895
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3896
    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3897
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3898
    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 3900
    :cond_7
    nop

    .line 3901
    const v2, 0x7f0c0061

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3902
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3903
    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3904
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3905
    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3906
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3907
    nop

    .line 3908
    const v2, 0x7f0c0062

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3909
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3910
    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3911
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3912
    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3914
    :goto_4
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v4, v6

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_20

    .line 3915
    :cond_8
    sget v9, Lcom/jrdcom/filemanager/drm/DrmManager;->DRM_SCHEME_OMA1_CD:I

    if-eq v13, v9, :cond_a

    sget v9, Lcom/jrdcom/filemanager/drm/DrmManager;->DRM_SCHEME_OMA1_SD:I

    if-eq v13, v9, :cond_a

    sget v9, Lcom/jrdcom/filemanager/drm/DrmManager;->METHOD_SD:I

    if-ne v13, v9, :cond_9

    goto :goto_5

    .line 4065
    :cond_9
    nop

    .line 4066
    const v2, 0x7f0c0061

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4067
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4068
    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4069
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4070
    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4071
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4072
    nop

    .line 4073
    const v2, 0x7f0c0062

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4074
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4075
    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4076
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4077
    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v6

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_20

    .line 3918
    :cond_a
    :goto_5
    sget v9, Lcom/jrdcom/filemanager/drm/DrmManager;->DRM_SCHEME_OMA1_SD:I

    if-eq v13, v9, :cond_b

    sget v9, Lcom/jrdcom/filemanager/drm/DrmManager;->METHOD_SD:I

    if-ne v13, v9, :cond_c

    .line 3920
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v9

    .line 3921
    invoke-virtual {v9, v4}, Lcom/jrdcom/filemanager/drm/DrmManager;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    .line 3922
    if-eqz v9, :cond_c

    .line 3923
    const v13, 0x7f0c00ca

    .line 3924
    invoke-virtual {v1, v13}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3925
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/jrdcom/filemanager/drm/DrmManager;->RIGHTS_ISSUER:Ljava/lang/String;

    .line 3927
    invoke-virtual {v9, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3926
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3928
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3929
    sget-object v13, Lcom/jrdcom/filemanager/drm/DrmManager;->RIGHTS_ISSUER:Ljava/lang/String;

    .line 3930
    invoke-virtual {v9, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    .line 3933
    :cond_c
    move-object v9, v6

    :goto_6
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3934
    if-eqz v2, :cond_1d

    .line 3935
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v2

    .line 3936
    invoke-virtual {v2, v4, v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 3937
    if-eqz v2, :cond_1c

    .line 3938
    sget-object v0, Lcom/jrdcom/filemanager/drm/DrmManager;->CONSTRAINT_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3939
    if-nez v4, :cond_d

    .line 3940
    nop

    .line 3941
    const v13, 0x7f0c0062

    invoke-virtual {v1, v13}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3942
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3943
    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3944
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3945
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3946
    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_7

    .line 3939
    :cond_d
    move-object v13, v6

    .line 3948
    :goto_7
    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3949
    const/16 v20, 0x0

    .line 3951
    :try_start_0
    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3952
    const v8, 0x7f0c00f9

    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v21, v9

    move-object/from16 v22, v13

    const/4 v9, 0x1

    :try_start_1
    new-array v13, v9, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    aput-object v0, v13, v9

    invoke-static {v8, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3955
    move-object/from16 v0, v20

    goto :goto_9

    .line 3953
    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v21, v9

    move-object/from16 v22, v13

    .line 3954
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, v20

    .line 3956
    :goto_9
    if-eqz v0, :cond_e

    .line 3957
    nop

    .line 3958
    const v8, 0x7f0c0061

    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3959
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3960
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3961
    nop

    .line 3962
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_a

    .line 3964
    :cond_e
    nop

    .line 3965
    const v8, 0x7f0c0061

    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3966
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3967
    const v8, 0x7f0c00a8

    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3968
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3969
    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3970
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3972
    :goto_a
    move-object v8, v0

    goto :goto_b

    .line 3973
    :cond_f
    move-object/from16 v21, v9

    move-object/from16 v22, v13

    .line 3974
    const v8, 0x7f0c0061

    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3975
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3976
    const v8, 0x7f0c00a8

    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3977
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3978
    invoke-virtual {v1, v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3979
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v8, v0

    .line 3981
    :goto_b
    const-string v0, "count"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3982
    const/4 v4, 0x0

    .line 3984
    :try_start_2
    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3985
    const v2, 0x7f0c00f9

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    aput-object v0, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3988
    goto :goto_c

    .line 3986
    :catch_2
    move-exception v0

    .line 3987
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3989
    :goto_c
    if-eqz v4, :cond_10

    .line 3990
    nop

    .line 3991
    const v2, 0x7f0c0062

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3992
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3993
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3994
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3995
    move-object v13, v4

    goto :goto_d

    .line 3997
    :cond_10
    nop

    .line 3998
    const v2, 0x7f0c0062

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3999
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4000
    const v2, 0x7f0c00a8

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4001
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4002
    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4003
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v13, v0

    .line 4005
    :goto_d
    goto/16 :goto_15

    :cond_11
    const-string v0, "datetime"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c00fb

    invoke-virtual {v1, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4007
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0c00fc

    invoke-virtual {v1, v9}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4008
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 4009
    const v4, 0x7f0c00f4

    invoke-virtual {v1, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4011
    :cond_12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0c00f4

    invoke-virtual {v1, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_e

    .line 4014
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 4016
    :goto_e
    nop

    .line 4017
    const v2, 0x7f0c0062

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4018
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4019
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4020
    nop

    .line 4021
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4022
    goto/16 :goto_15

    :cond_14
    const-string v0, "interval"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4023
    const-string v0, "license_available_time"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4024
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 4025
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 4026
    const/4 v4, 0x1

    add-int/2addr v2, v4

    const-string v4, "-"

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 4027
    add-int/lit8 v4, v2, -0x2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4028
    add-int/lit8 v9, v2, 0x1

    const/4 v10, 0x3

    add-int/2addr v2, v10

    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4029
    const-string v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 4030
    add-int/lit8 v10, v9, -0x2

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 4031
    const/4 v13, 0x1

    add-int/2addr v9, v13

    const-string v13, ":"

    invoke-virtual {v0, v13, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 4032
    add-int/lit8 v13, v9, -0x2

    invoke-virtual {v0, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 4033
    add-int/lit8 v15, v9, 0x1

    const/16 v16, 0x3

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v0, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4034
    const-string v9, "0000"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    move-object v5, v6

    goto :goto_f

    :cond_15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "Year-"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4035
    :goto_f
    const-string v9, "00"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    move-object v4, v6

    goto :goto_10

    :cond_16
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Month-"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4036
    :goto_10
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_17

    move-object v2, v6

    goto :goto_11

    :cond_17
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Day "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4037
    :goto_11
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_18

    move-object v10, v6

    goto :goto_12

    :cond_18
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "Hour "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4038
    :goto_12
    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_19

    move-object v13, v6

    goto :goto_13

    :cond_19
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "Minute "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4039
    :goto_13
    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    move-object v0, v6

    goto :goto_14

    :cond_1a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Second"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4040
    :goto_14
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v15, v2

    const v0, 0x7f0c0066

    invoke-virtual {v1, v0, v15}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 4041
    nop

    .line 4042
    const v2, 0x7f0c0062

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4043
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4044
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4045
    nop

    .line 4046
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_15

    .line 4022
    :cond_1b
    move-object/from16 v13, v22

    goto :goto_15

    .line 3937
    :cond_1c
    move-object/from16 v21, v9

    move-object v8, v6

    move-object v13, v8

    .line 4049
    :goto_15
    move-object v4, v6

    move-object v5, v4

    move-object v7, v5

    move-object v2, v13

    move-object/from16 v0, v21

    move-object v6, v8

    move-object v8, v7

    goto/16 :goto_20

    .line 4050
    :cond_1d
    move-object/from16 v21, v9

    .line 4051
    const v2, 0x7f0c0061

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4052
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4053
    const v2, 0x7f0c00a8

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4054
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4055
    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4056
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4057
    nop

    .line 4058
    const v4, 0x7f0c0062

    invoke-virtual {v1, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4060
    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4061
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4062
    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v6

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v6, v0

    move-object/from16 v0, v21

    goto/16 :goto_20

    .line 4080
    :cond_1e
    move-object/from16 v19, v8

    sget v7, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2d

    .line 4081
    nop

    .line 4083
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/jrdcom/filemanager/drm/DrmManager;->canTransfer(Ljava/lang/String;)Z

    move-result v7

    .line 4084
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1f

    .line 4085
    const v7, 0x7f0c005f

    invoke-virtual {v1, v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_16

    .line 4086
    :cond_1f
    if-nez v7, :cond_20

    .line 4087
    const v7, 0x7f0c0060

    invoke-virtual {v1, v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_16

    .line 4086
    :cond_20
    move-object v7, v6

    .line 4090
    :goto_16
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v8

    invoke-virtual {v8, v4, v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 4091
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-eqz v4, :cond_2c

    if-nez v2, :cond_21

    goto/16 :goto_1d

    .line 4096
    :cond_21
    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v8, -0x1

    const v4, 0x7f0c0068

    if-eqz v2, :cond_24

    .line 4097
    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 4098
    if-eqz v2, :cond_23

    .line 4099
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v13, v8

    if-nez v13, :cond_22

    .line 4100
    invoke-virtual {v1, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    .line 4102
    :cond_22
    invoke-direct {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    .line 4098
    :cond_23
    move-object v2, v6

    .line 4105
    :goto_17
    goto :goto_18

    .line 4106
    :cond_24
    invoke-virtual {v1, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 4109
    :goto_18
    :try_start_5
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 4110
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 4111
    if-eqz v5, :cond_26

    .line 4112
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v13, v8

    if-nez v13, :cond_25

    .line 4113
    invoke-virtual {v1, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_19

    .line 4115
    :cond_25
    invoke-direct {v1, v5}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    goto :goto_19

    .line 4118
    :cond_26
    sget-object v5, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->TAG:Ljava/lang/String;

    const-string v13, "fengke DetailInfoListener: endL is null"

    invoke-static {v5, v13}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 4120
    :goto_19
    goto :goto_1a

    .line 4121
    :cond_27
    invoke-virtual {v1, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 4124
    :goto_1a
    :try_start_6
    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2b

    const-string v13, "max_repeat_count"

    .line 4125
    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 4126
    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 4127
    const-string v13, "max_repeat_count"

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 4128
    if-eqz v10, :cond_2a

    if-eqz v0, :cond_2a

    .line 4129
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v13, v8

    if-eqz v13, :cond_29

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v8, v13, v8

    if-nez v8, :cond_28

    goto :goto_1b

    .line 4132
    :cond_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 4130
    :cond_29
    :goto_1b
    invoke-virtual {v1, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 4135
    :cond_2a
    move-object v0, v6

    :goto_1c
    goto :goto_1e

    .line 4136
    :cond_2b
    invoke-virtual {v1, v4}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1e

    .line 4092
    :cond_2c
    :goto_1d
    const v0, 0x7f0c0067

    :try_start_7
    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 4093
    :try_start_8
    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 4094
    :try_start_9
    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 4141
    :goto_1e
    move-object v8, v0

    move-object v4, v2

    move-object v0, v6

    move-object v2, v0

    goto :goto_20

    .line 4139
    :catch_3
    move-exception v0

    goto :goto_1f

    :catch_4
    move-exception v0

    move-object v5, v6

    goto :goto_1f

    :catch_5
    move-exception v0

    move-object v2, v6

    move-object v5, v2

    goto :goto_1f

    :catch_6
    move-exception v0

    move-object v2, v6

    move-object v5, v2

    move-object v7, v5

    .line 4140
    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v2

    move-object v0, v6

    move-object v2, v0

    move-object v8, v2

    goto :goto_20

    .line 4080
    :cond_2d
    move-object v0, v6

    move-object v2, v0

    move-object v4, v2

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    .line 4145
    :goto_20
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4147
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getFileSize()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Lcom/jrdcom/filemanager/utils/FileUtils;->sizeToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 4148
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4149
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4150
    const v13, 0x7f0c0056

    invoke-virtual {v1, v13}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4151
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4152
    const v11, 0x7f0c0058

    invoke-virtual {v1, v11}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4153
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4154
    const v3, 0x7f0c0057

    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4155
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4156
    const v3, 0x7f0c0059

    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4157
    move-object/from16 v3, v19

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4158
    const v3, 0x7f0c00b9

    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4159
    move-object/from16 v3, v18

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4160
    if-eqz v17, :cond_2e

    sget v3, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v11, 0x14

    if-ne v3, v11, :cond_2e

    .line 4161
    const v3, 0x7f0c0061

    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4162
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4163
    const v3, 0x7f0c0062

    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4164
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4165
    const v2, 0x7f0c00ca

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4166
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 4168
    :cond_2e
    if-eqz v17, :cond_2f

    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2f

    .line 4169
    const v0, 0x7f0c006a

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4170
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4171
    const v0, 0x7f0c005e

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4172
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4173
    const v0, 0x7f0c0063

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4174
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4175
    const v0, 0x7f0c006c

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4176
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4180
    :cond_2f
    :goto_21
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {v0, v2, v9, v10}, Lcom/jrdcom/filemanager/view/PopWindowUtil;->showDetailPopWindow(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDetailPop:Landroid/widget/PopupWindow;

    .line 4181
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateMenubarViewasFragment()V

    .line 4182
    iget-object v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDetailPop:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$14;

    invoke-direct {v2, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$14;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 4189
    return-void
.end method

.method public showFloatMenu(IZZ)V
    .locals 5

    .line 544
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v0, :cond_0

    .line 545
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mPortraitOrientation:Z

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 556
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    if-gtz p1, :cond_4

    .line 557
    :cond_3
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->closeFloatMenu(Z)V

    .line 558
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 559
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 560
    return-void

    .line 562
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    const-string v3, "/storage/emulated/0/Locker"

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 563
    :cond_6
    if-nez p2, :cond_8

    iget-boolean p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCanShare:Z

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsFLorSDDrm:Z

    if-eqz p2, :cond_8

    .line 564
    :cond_7
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->share_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p2, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 565
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->share_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p2, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    goto :goto_1

    .line 567
    :cond_8
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->share_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p2, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 568
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->share_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p2, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 570
    :goto_1
    iget-boolean p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsHasDrm:Z

    if-eqz p2, :cond_9

    .line 571
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p2, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 572
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p2, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    goto :goto_2

    .line 574
    :cond_9
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p2, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 575
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p2, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 577
    :goto_2
    sget p2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne p2, v4, :cond_a

    .line 578
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 579
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 580
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 581
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    goto :goto_4

    .line 583
    :cond_a
    if-ne p1, v4, :cond_b

    if-eqz p3, :cond_b

    .line 584
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 585
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 586
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 587
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    goto :goto_4

    .line 591
    :cond_b
    iget-boolean p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsHasDrm:Z

    if-eqz p1, :cond_c

    .line 592
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 593
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    goto :goto_3

    .line 595
    :cond_c
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 596
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 599
    :goto_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 603
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 607
    :goto_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 608
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->share_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 609
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->share_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 610
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 611
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 614
    :cond_d
    return-void

    .line 616
    :cond_e
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 617
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->collapse()V

    .line 619
    :cond_f
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 620
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->collapse()V

    .line 622
    :cond_10
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->paste_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_11

    .line 623
    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 625
    :cond_11
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->paste_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_12

    .line 626
    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 628
    :cond_12
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz p1, :cond_1d

    .line 629
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object p1

    .line 630
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v4, :cond_17

    .line 631
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object p2

    .line 632
    const/4 p3, 0x0

    .line 633
    if-eqz p2, :cond_13

    .line 634
    invoke-static {p2}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 636
    :cond_13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_14

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz v0, :cond_14

    .line 638
    invoke-virtual {p2, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 639
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 640
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 641
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 642
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 643
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    goto/16 :goto_5

    .line 644
    :cond_14
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_15

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_15

    .line 646
    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 647
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 648
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 649
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    goto :goto_5

    .line 650
    :cond_15
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_16

    if-eqz p3, :cond_16

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_16

    if-eqz p3, :cond_16

    .line 652
    const-string p1, "zip"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 653
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 654
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 655
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 656
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    goto :goto_5

    .line 658
    :cond_16
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 659
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 660
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 661
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 663
    :goto_5
    goto/16 :goto_6

    :cond_17
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cut_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->paste_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_18

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cut_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->paste_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_18

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 665
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result p1

    if-lez p1, :cond_18

    .line 666
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 667
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cut_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 668
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->paste_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 669
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 670
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 671
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cut_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 672
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->paste_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 673
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    goto/16 :goto_6

    .line 674
    :cond_18
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cut_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_19

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cut_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_19

    iget-boolean p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsHasDrm:Z

    if-eqz p2, :cond_19

    .line 676
    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 677
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cut_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 678
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 679
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 680
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 681
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cut_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 682
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 683
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    goto :goto_6

    .line 684
    :cond_19
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_1a

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cut_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cut_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_1a

    .line 686
    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 687
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cut_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 688
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 689
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 690
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->copy_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 691
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->cut_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 692
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 693
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 695
    :cond_1a
    :goto_6
    iget-boolean p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCanShare:Z

    if-eqz p1, :cond_1b

    .line 696
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->share_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 697
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->share_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    goto :goto_7

    .line 699
    :cond_1b
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->share_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 700
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->share_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 702
    :goto_7
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne p1, v4, :cond_1c

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p1, :cond_1c

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eqz p2, :cond_1c

    .line 704
    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 705
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 706
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 707
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 709
    :cond_1c
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 710
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 714
    :cond_1d
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 715
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->share_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 716
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->share_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 717
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 718
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setVisibility(I)V

    .line 721
    :cond_1e
    return-void
.end method

.method public showNoFolderResultView(Z)V
    .locals 5

    .line 3643
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3644
    :cond_0
    if-eqz p1, :cond_7

    .line 3645
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result p1

    const/4 v0, 0x3

    const v1, 0x7f0700c0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 3646
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNo_messageView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 3647
    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3649
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNoFolderView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    .line 3650
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3651
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNo_messageView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 3652
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    if-ne p1, v0, :cond_2

    .line 3653
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNo_ImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 3655
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNo_ImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 3659
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNo_messageView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 3660
    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3662
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNoFolderView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    .line 3663
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3664
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNo_messageView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 3665
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    if-ne p1, v0, :cond_5

    .line 3666
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNo_ImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3668
    :cond_5
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNo_ImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3671
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz p1, :cond_6

    .line 3672
    invoke-interface {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->cancelScrollActionbar()V

    .line 3677
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 3679
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3680
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const v3, 0x7f080047

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0c004a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3681
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1}, Landroid/widget/MenuBar;->dismissOptionMenu()V

    .line 3683
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v1, 0x7f0c00ac

    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 3684
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p1, v1, v2, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->updateMenuBarIconIfNeed(Landroid/content/Context;Landroid/widget/MenuBar;ZZ)V

    goto :goto_2

    .line 3689
    :cond_7
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mNoFolderView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_8

    .line 3690
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3693
    :cond_8
    :goto_2
    return-void
.end method

.method public showNoFolderResults(Z)V
    .locals 0

    .line 3697
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showNoFolderResultView(Z)V

    .line 3698
    return-void
.end method

.method public showNoSearchResults(ZLjava/lang/String;)V
    .locals 0

    .line 3332
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showNoSearchResultView(ZLjava/lang/String;)V

    .line 3333
    return-void
.end method

.method public switchToCopyView()V
    .locals 1

    .line 2686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSearchMode:Z

    .line 2687
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_0

    .line 2688
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getCheckedItemsCount()I

    .line 2689
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateActionMode(I)V

    .line 2691
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_1

    .line 2692
    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->updateBarView()V

    .line 2694
    :cond_1
    return-void
.end method

.method protected switchToEditView()V
    .locals 2

    .line 2217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSearchMode:Z

    .line 2219
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_1

    .line 2220
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mFromSearchToEdit:Z

    .line 2223
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getCheckedItemsCount()I

    .line 2224
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateActionMode(I)V

    .line 2226
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    if-eqz v0, :cond_2

    .line 2227
    invoke-interface {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->updateBarView()V

    .line 2229
    :cond_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateEditBarByThread()V

    .line 2231
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->requestRecyclerviewFocus()V

    .line 2232
    return-void
.end method

.method protected switchToEditView(IIZ)V
    .locals 0

    .line 3164
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p2, p1, p3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setChecked(IZ)V

    .line 3165
    return-void
.end method

.method public switchToNormalWhenCreateTask(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 4241
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-nez p2, :cond_0

    .line 4242
    return-void

    .line 4244
    :cond_0
    invoke-virtual {p2, p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->clearSelected(I)V

    .line 4245
    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    .line 4246
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalView()V

    goto :goto_0

    .line 4248
    :cond_1
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAbsListViewFragmentListener:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;

    invoke-interface {p2, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$AbsListViewFragmentListener;->updateBarTitle(I)V

    .line 4250
    :goto_0
    return-void
.end method

.method public unMountUpdate()V
    .locals 0

    .line 3337
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onUnmounted()V

    .line 3338
    return-void
.end method

.method public unRegisterDataContentObserver()V
    .locals 1

    .line 4377
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    if-eqz v0, :cond_0

    .line 4378
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->cancelFileTimerWatcher()V

    .line 4380
    :cond_0
    return-void
.end method

.method public updateActionMode(I)V
    .locals 2

    .line 2235
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsStatus(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 2236
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefsStatus(Landroid/content/Context;I)V

    .line 2237
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_0

    .line 2238
    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->changeMode(I)Z

    .line 2240
    :cond_0
    return-void
.end method

.method protected updateEditBarByThread()V
    .locals 1

    .line 3169
    new-instance v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$NoLeakThread;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$NoLeakThread;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$NoLeakThread;->start()V

    .line 3170
    return-void
.end method

.method protected updateEditBarDo()V
    .locals 4

    .line 3173
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-nez v0, :cond_0

    .line 3174
    return-void

    .line 3176
    :cond_0
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSelectAll:Z

    if-eqz v0, :cond_1

    .line 3177
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3178
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3180
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->infos:Ljava/util/List;

    .line 3181
    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateSelectedFilter(Ljava/util/List;)V

    .line 3182
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->setShowFragmentDialog(Lcom/jrdcom/filemanager/dialog/ProgressPopupWindow;)V

    .line 3183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mSelectAll:Z

    .line 3184
    new-instance v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 3185
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->infos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->count:I

    .line 3186
    iget-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsHasDirctory:Z

    iput-boolean v2, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->hasDirectory:Z

    .line 3187
    iget-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsHasDrm:Z

    iput-boolean v2, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->hasDrm:Z

    .line 3188
    iget-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCanShare:Z

    iput-boolean v2, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->canShare:Z

    .line 3189
    iget-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mHasAllPrivate:Z

    iput-boolean v2, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->hasPrivate:Z

    .line 3190
    iget-boolean v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mIsFLorSDDrm:Z

    iput-boolean v2, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->isFLorSDDrm:Z

    .line 3191
    iget v2, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->count:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 3192
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->infos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->isZip()Z

    move-result v0

    iput-boolean v0, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$SelectedItemInfo;->hasZip:Z

    .line 3194
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0x44d

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3195
    return-void
.end method

.method public updateEditBarState()V
    .locals 0

    .line 2589
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateEditBarByThread()V

    .line 2590
    return-void
.end method

.method protected updateListScrollBarStyle()V
    .locals 0

    .line 365
    return-void
.end method

.method public updateMenubarViewasFragment()V
    .locals 16

    .line 4509
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItem(I)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v1

    .line 4510
    nop

    .line 4511
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4512
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v1

    goto :goto_0

    .line 4511
    :cond_0
    move v1, v2

    .line 4515
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getSortPop()Landroid/widget/PopupWindow;

    move-result-object v3

    .line 4516
    iget-object v4, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const v5, 0x7f0c0106

    const v6, 0x7f0c00a1

    const v9, 0x7f080052

    const v10, 0x7f0c0044

    const v11, 0x7f080045

    const v12, 0x7f0c004b

    const v13, 0x7f08004b

    const v14, 0x7f0c002f

    const v15, 0x7f0c0050

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v4, v7, :cond_a

    .line 4517
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isShowNoFolderView()Z

    move-result v4

    const v7, 0x7f0c004a

    if-eqz v4, :cond_1

    .line 4518
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    sget v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    invoke-virtual {v0, v2, v1, v7, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_4

    .line 4519
    :cond_1
    const v4, 0x7f0c00a9

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4520
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, v2, v4, v2, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_4

    .line 4521
    :cond_2
    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDeletePop:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4523
    sget-boolean v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v1, :cond_3

    .line 4524
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, v6, v2, v5, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_4

    .line 4526
    :cond_3
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, v14, v2, v15, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_4

    .line 4529
    :cond_4
    iget-object v3, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDetailPop:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4530
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, v2, v4, v2, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_4

    .line 4533
    :cond_5
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4534
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f080174

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0c00e5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4535
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    const-string v3, "listMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4536
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f0800ad

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0c00fd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4537
    :cond_6
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    const-string v3, "gridMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4538
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f0800c8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0c00fe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4540
    :cond_7
    :goto_1
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f080047

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4543
    sget-boolean v2, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-nez v2, :cond_8

    .line 4544
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f080156

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0c0094

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4546
    :cond_8
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4547
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4548
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4549
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f080129

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0c00c9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4550
    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f08005d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0c0055

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4552
    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isCanShare(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4553
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f080161

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0c00dd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4556
    :cond_9
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v2, 0x7f0c00d0

    sget v3, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    iget-object v4, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    const v5, 0x7f0c00ac

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 4557
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->updateMenuBarIconIfNeed(Landroid/content/Context;Landroid/widget/MenuBar;ZZ)V

    goto/16 :goto_4

    .line 4560
    :cond_a
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_11

    .line 4561
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mDeletePop:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4563
    sget-boolean v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v1, :cond_b

    .line 4564
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, v6, v2, v5, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_4

    .line 4566
    :cond_b
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, v14, v2, v15, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_4

    .line 4570
    :cond_c
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4571
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4572
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4573
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4575
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isCanShare()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4576
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f080161

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0c00dd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4579
    :cond_d
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getCheckedItemsCount()I

    move-result v1

    const v3, 0x7f0c00d4

    if-lez v1, :cond_10

    .line 4580
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isAllItemChecked()Z

    move-result v1

    const v4, 0x7f0c0092

    if-eqz v1, :cond_e

    .line 4582
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v3, 0x7f0c0054

    iget-object v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    const v6, 0x7f0c00ac

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_2

    .line 4583
    :cond_e
    const v6, 0x7f0c00ac

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCurrentPosition:I

    invoke-virtual {v1, v5}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isItemSelected(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4584
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_2

    .line 4587
    :cond_f
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    sget v4, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    iget-object v5, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCommonMenu:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 4590
    :goto_2
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->updateMenuBarIconIfNeed(Landroid/content/Context;Landroid/widget/MenuBar;ZZ)V

    goto :goto_4

    .line 4593
    :cond_10
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    sget v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    invoke-virtual {v0, v3, v1, v2, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_4

    .line 4596
    :cond_11
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_12

    .line 4597
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    sget v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    const v2, 0x7f0c00af

    invoke-virtual {v0, v14, v1, v2, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_4

    .line 4598
    :cond_12
    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_16

    .line 4599
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f080151

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4600
    nop

    .line 4601
    if-eqz v1, :cond_13

    .line 4602
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_3

    .line 4601
    :cond_13
    move v3, v2

    .line 4604
    :goto_3
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4605
    if-eqz v3, :cond_14

    .line 4607
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, v2, v2, v2, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_4

    .line 4609
    :cond_14
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    sget v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    invoke-virtual {v0, v2, v1, v2, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_4

    .line 4613
    :cond_15
    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mMenuBar:Landroid/widget/MenuBar;

    sget v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    invoke-virtual {v0, v2, v1, v2, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 4617
    :cond_16
    :goto_4
    return-void
.end method
