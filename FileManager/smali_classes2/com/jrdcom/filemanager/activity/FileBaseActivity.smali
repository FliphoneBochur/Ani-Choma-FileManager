.class public Lcom/jrdcom/filemanager/activity/FileBaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FileBaseActivity.java"

# interfaces
.implements Lcom/jrdcom/filemanager/MountReceiver$MountListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/MenuBar$MenuBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;,
        Lcom/jrdcom/filemanager/activity/FileBaseActivity$DisplayNextView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static enterPermissionResultCount:I

.field protected static isChangeMultiScreen:Z

.field protected static isShowNoStorageDialog:Z

.field protected static isshowFileTypeInterface:Z

.field protected static mGridMenu:Ljava/util/ArrayList;
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

.field protected static mListMenu:Ljava/util/ArrayList;
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

.field protected static mPasteOperation:I

.field protected static mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

.field protected static mSaveCategory:I

.field protected static mSaveCheckedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static mSaveOperation:I

.field protected static mSavePastedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static mSaveQueryText:Ljava/lang/String;

.field protected static mSaveSafeCategory:I

.field protected static mSaveSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static mSaveStatus:I

.field protected static morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

.field protected static permissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static runCreateCount:I

.field protected static sortPop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;


# instance fields
.field protected Mainframe:Landroid/widget/RelativeLayout;

.field private alpha:Landroid/animation/ObjectAnimator;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field protected appBarLayout:Landroid/support/design/widget/AppBarLayout;

.field protected fileBrowerList:Landroid/support/v7/widget/RecyclerView;

.field protected filePathBrower:Landroid/widget/LinearLayout;

.field protected floatBtnHideAnim:Landroid/view/animation/Animation;

.field protected floatBtnShowAnim:Landroid/view/animation/Animation;

.field protected floatingActionButton:Landroid/widget/ImageButton;

.field protected floatingActionButtonContainer:Landroid/view/View;

.field protected home_item:Landroid/widget/TextView;

.field protected home_path_arrow:Landroid/widget/ImageView;

.field protected home_path_icon:Landroid/widget/TextView;

.field protected isClosePermission:Z

.field protected isMounted:Z

.field protected isSearchMode:Z

.field protected isSearching:Z

.field protected isSearchingDone:Z

.field protected lEditOnfocusListener:Landroid/view/View$OnFocusChangeListener;

.field protected lEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field protected laucherFolderName:Ljava/lang/String;

.field private launchTime:J

.field protected mActionBarPathText:Landroid/widget/TextView;

.field protected mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

.field protected mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

.field protected mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field protected mBaseHandler:Landroid/os/Handler;

.field protected mBtnDelete:Landroid/widget/ImageView;

.field protected mBtnEditBack:Landroid/widget/ImageView;

.field protected mBtnMore:Landroid/widget/ImageView;

.field protected mBtnSearch:Landroid/widget/ImageView;

.field protected mBtnShare:Landroid/widget/ImageView;

.field protected mBtnSort:Landroid/widget/ImageView;

.field protected mCanShare:Z

.field protected mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

.field protected mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

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

.field protected mCurrentFragment:Landroid/app/Fragment;

.field protected mExitDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

.field protected mGlobalSearchBar:Landroid/widget/LinearLayout;

.field protected mGlobalSearchCancel:Landroid/widget/ImageView;

.field protected mGlobalSearchView:Landroid/widget/EditText;

.field protected mGlobalView:Landroid/widget/ImageView;

.field protected mHasAllPrivate:Z

.field protected mIsFLorSDDrm:Z

.field protected mIsHasDir:Z

.field protected mIsHasDrm:Z

.field protected mIsHasZip:Z

.field protected mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

.field private mMainToolbar:Landroid/support/v7/widget/Toolbar;

.field protected mMenuBar:Landroid/widget/MenuBar;

.field protected mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

.field private mMountReceiver:Lcom/jrdcom/filemanager/MountReceiver;

.field protected mNoStorageDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

.field protected mNormalBar:Landroid/widget/RelativeLayout;

.field protected mParams:Landroid/support/design/widget/AppBarLayout$LayoutParams;

.field protected mPrivacyInfoBtn:Landroid/widget/ImageView;

.field protected mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

.field protected mQueryText:Ljava/lang/String;

.field protected mSearchBack:Landroid/widget/ImageView;

.field protected mSearchBar:Landroid/widget/RelativeLayout;

.field protected mSearchPath:Ljava/lang/String;

.field protected mSearchView:Landroid/widget/EditText;

.field protected mSortPop:Landroid/widget/PopupWindow;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field protected mStorageManager:Landroid/os/storage/StorageManager;

.field protected mTagMode:Ljava/lang/String;

.field protected mTexAddSafe:Landroid/widget/TextView;

.field protected mTexCancelEdit:Landroid/widget/TextView;

.field protected mTexClearAll:Landroid/widget/TextView;

.field protected mTexCopy:Landroid/widget/TextView;

.field protected mTexCreateFolder:Landroid/widget/TextView;

.field protected mTexCut:Landroid/widget/TextView;

.field protected mTexDelete:Landroid/widget/TextView;

.field protected mTexDetail:Landroid/widget/TextView;

.field protected mTexGrid:Landroid/widget/TextView;

.field protected mTexHide:Landroid/widget/TextView;

.field protected mTexList:Landroid/widget/TextView;

.field protected mTexPaste:Landroid/widget/TextView;

.field protected mTexRemoveSafe:Landroid/widget/TextView;

.field protected mTexRename:Landroid/widget/TextView;

.field protected mTexSelect:Landroid/widget/TextView;

.field protected mTexSelectAll:Landroid/widget/TextView;

.field protected mTexShare:Landroid/widget/TextView;

.field protected mTexShortcut:Landroid/widget/TextView;

.field protected mTexShow:Landroid/widget/TextView;

.field protected mTexUnSelectAll:Landroid/widget/TextView;

.field protected mTextCompress:Landroid/widget/TextView;

.field protected mTextExtract:Landroid/widget/TextView;

.field protected mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

.field protected mWindowWidth:I

.field protected mainLayout:Landroid/widget/RelativeLayout;

.field protected morePopWidth:I

.field protected pathBarAdapter:Lcom/jrdcom/filemanager/adapter/PathBarAdapter;

.field private proPrivateMode:B

.field private rotationAnim:Landroid/view/animation/Animation;

.field private scaleX:Landroid/animation/ObjectAnimator;

.field private scaleY:Landroid/animation/ObjectAnimator;

.field protected searchcloseBtn:Landroid/widget/ImageView;

.field protected selectCount:I

.field protected snackTextView:Landroid/widget/TextView;

.field protected snackbarLayout:Landroid/widget/LinearLayout;

.field protected tbxSearch_TextChanged:Landroid/text/TextWatcher;

.field protected wirelessSyncIcon:Landroid/widget/ImageView;

.field protected wirelessSyncStatus:Landroid/widget/LinearLayout;

.field protected wirelessSyncText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 103
    const-class v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->TAG:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    .line 186
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->permissionMap:Ljava/util/HashMap;

    .line 187
    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->sortPop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    .line 188
    const-string v0, ""

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveQueryText:Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveCheckedList:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSavePastedList:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveSelectedList:Ljava/util/List;

    .line 195
    const/4 v0, -0x1

    sput v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mPasteOperation:I

    .line 198
    sput v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveSafeCategory:I

    .line 199
    sput v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveCategory:I

    .line 200
    const/4 v0, 0x1

    sput v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveStatus:I

    .line 201
    sput v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveOperation:I

    .line 202
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isshowFileTypeInterface:Z

    .line 203
    sput v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->enterPermissionResultCount:I

    .line 214
    sput v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->runCreateCount:I

    .line 216
    sput-boolean v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isShowNoStorageDialog:Z

    .line 229
    sput-boolean v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isChangeMultiScreen:Z

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListMenu:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGridMenu:Ljava/util/ArrayList;

    .line 239
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->permissionMap:Ljava/util/HashMap;

    const-class v1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->permissionMap:Ljava/util/HashMap;

    const-class v1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->permissionMap:Ljava/util/HashMap;

    const-class v1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->permissionMap:Ljava/util/HashMap;

    const-class v1, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListMenu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const v2, 0x7f080174

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0c00e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListMenu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const v4, 0x7f0800ad

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0c00fd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListMenu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const v4, 0x7f080047

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0c004a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    const v1, 0x7f0c0094

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 250
    const v6, 0x7f080156

    .line 251
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 250
    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListMenu:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListMenu:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    const v8, 0x7f080045

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f0c0044

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v7, v9, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListMenu:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    const v9, 0x7f08004b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x7f0c004b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v7, v11, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListMenu:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    const v11, 0x7f080052

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x7f0c0050

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v7, v13, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListMenu:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    const v13, 0x7f080129

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const v16, 0x7f0c00c9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v7, v15, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListMenu:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    const v13, 0x7f08005d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const v17, 0x7f0c0055

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v7, v15, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGridMenu:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGridMenu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f0800c8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v7, 0x7f0c00fe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v3, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGridMenu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-nez v0, :cond_1

    .line 265
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGridMenu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_1
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGridMenu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGridMenu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGridMenu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGridMenu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const v2, 0x7f080129

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGridMenu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const v2, 0x7f08005d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 100
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->selectCount:I

    .line 143
    const/4 v1, -0x1

    iput v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mWindowWidth:I

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    .line 190
    const-string v1, "category"

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTagMode:Ljava/lang/String;

    .line 218
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isClosePermission:Z

    .line 219
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isMounted:Z

    .line 220
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->launchTime:J

    .line 228
    iput-byte v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->proPrivateMode:B

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCommonMenu:Ljava/util/ArrayList;

    .line 276
    new-instance v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBaseHandler:Landroid/os/Handler;

    .line 1208
    new-instance v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$6;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$6;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->tbxSearch_TextChanged:Landroid/text/TextWatcher;

    .line 1238
    new-instance v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$7;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$7;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->lEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1259
    new-instance v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$8;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$8;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->lEditOnfocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 1676
    new-instance v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$14;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Lcom/jrdcom/filemanager/MountReceiver;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountReceiver:Lcom/jrdcom/filemanager/MountReceiver;

    return-object p0
.end method

.method static synthetic access$002(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Lcom/jrdcom/filemanager/MountReceiver;)Lcom/jrdcom/filemanager/MountReceiver;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountReceiver:Lcom/jrdcom/filemanager/MountReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Landroid/os/storage/StorageEventListener;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->launchTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/jrdcom/filemanager/activity/FileBaseActivity;J)J
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->launchTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)B
    .locals 0

    .line 100
    iget-byte p0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->proPrivateMode:B

    return p0
.end method

.method static synthetic access$400(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$402(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$500(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->scaleX:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$502(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->scaleX:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->scaleY:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$602(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->scaleY:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$700(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->alpha:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->alpha:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private switchFloatButtonDirection()V
    .locals 2

    .line 1106
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne v0, v1, :cond_4

    .line 1110
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mPortraitOrientation:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 1111
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1112
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 1114
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->expand()V

    goto :goto_0

    .line 1117
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->collapse()V

    goto :goto_0

    .line 1121
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1122
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1125
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->expand()V

    goto :goto_0

    .line 1127
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->collapse()V

    .line 1132
    :cond_4
    :goto_0
    return-void

    .line 1107
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected applyRotation(Landroid/widget/ImageView;)V
    .locals 3

    .line 1785
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1786
    return-void

    .line 1788
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1789
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->scaleX:Landroid/animation/ObjectAnimator;

    .line 1790
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    const-string v2, "scaleY"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->scaleY:Landroid/animation/ObjectAnimator;

    .line 1791
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->alpha:Landroid/animation/ObjectAnimator;

    .line 1792
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1793
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1794
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->scaleX:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->scaleY:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->alpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1795
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1796
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public btnClickSound()V
    .locals 1

    .line 1484
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    if-eqz v0, :cond_0

    .line 1485
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;->clickSound()V

    .line 1487
    :cond_0
    return-void
.end method

.method protected changePrivateEditMode()V
    .locals 5

    .line 1606
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-nez v0, :cond_0

    .line 1607
    new-instance v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    .line 1609
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 1610
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, 0x2

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 1612
    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 1613
    sput v4, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 1614
    sget v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveSafeCategory:I

    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 1615
    sput v3, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveSafeCategory:I

    .line 1616
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->changeStatusBarColor(Z)V

    goto :goto_0

    .line 1618
    :cond_1
    sget v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne v0, v1, :cond_2

    .line 1619
    sget v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveCategory:I

    sput v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 1620
    sput v3, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveCategory:I

    .line 1621
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->changeStatusBarColor(Z)V

    .line 1623
    :cond_2
    :goto_0
    return-void
.end method

.method protected changeStatusBarColor(Z)V
    .locals 3

    .line 1285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 1286
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1287
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isMemory512(Landroid/content/Context;)Z

    move-result v1

    const/high16 v2, -0x1000000

    if-eqz v1, :cond_0

    .line 1288
    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 1290
    :cond_0
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1291
    if-eqz p1, :cond_1

    .line 1292
    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 1294
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f05005b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1298
    :cond_2
    :goto_0
    return-void
.end method

.method protected changeStatusBarTextColor(Z)V
    .locals 2

    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    .line 380
    nop

    .line 381
    if-eqz p1, :cond_0

    .line 382
    const/16 p1, 0x2100

    goto :goto_0

    .line 384
    :cond_0
    const/16 p1, 0x100

    .line 386
    :goto_0
    or-int/lit16 p1, p1, 0x400

    .line 387
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 388
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 389
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 390
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 393
    :cond_1
    return-void
.end method

.method public checkCreatePermission()V
    .locals 5

    .line 530
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 531
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jrdcom/filemanager/activity/FileBaseActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$3;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 541
    return-void
.end method

.method public checkPermission()V
    .locals 3

    .line 552
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isShowPermissionDialog:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->permissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-ne v2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->laucherFolderName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 555
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    :cond_1
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->permissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 558
    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->checkAndRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 561
    :cond_2
    return-void
.end method

.method protected commitFragment(Landroid/app/Fragment;ZIZ)V
    .locals 0

    .line 1301
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 1302
    iget-object p4, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1303
    const p3, 0x7f0800c3

    invoke-virtual {p2, p3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1304
    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1305
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 1306
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivitytoCategoryListener:Lcom/jrdcom/filemanager/IActivitytoCategoryListener;

    if-eqz p1, :cond_0

    .line 1307
    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivitytoCategoryListener;->onChangeMainlayout()V

    .line 1309
    :cond_0
    return-void
.end method

.method protected editStatusChanageScreen()V
    .locals 2

    .line 1327
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveCheckedList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveCheckedList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/IActivityListener;->restoreCheckedList(Ljava/util/List;)V

    .line 1330
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveCheckedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1331
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->updateEditBarState()V

    .line 1332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->changeStatusBarColor(Z)V

    .line 1333
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->isInMultiWindowMode:Z

    if-nez v0, :cond_2

    .line 1334
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mPortraitOrientation:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz v0, :cond_1

    .line 1335
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    goto :goto_0

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mPortraitOrientation:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    if-eqz v0, :cond_2

    .line 1337
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setVisibility(I)V

    .line 1340
    :cond_2
    :goto_0
    return-void
.end method

.method protected getFileMode()I
    .locals 1

    .line 1015
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsStatus(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getQueryText()Ljava/lang/String;
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mQueryText:Ljava/lang/String;

    return-object v0
.end method

.method public initActionBar()V
    .locals 5

    .line 453
    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    .line 454
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    const v1, 0x7f07006f

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 458
    const v2, 0x7f0b001c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 459
    const v2, 0x7f080042

    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->Mainframe:Landroid/widget/RelativeLayout;

    .line 460
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 461
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v3}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 464
    new-instance v2, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 467
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v0, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 469
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 470
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 472
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 473
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 474
    const v3, 0x7f0800f3

    .line 475
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    .line 476
    const v3, 0x7f08006a

    .line 477
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBtnEditBack:Landroid/widget/ImageView;

    .line 478
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    const v3, 0x7f080174

    .line 480
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBtnSort:Landroid/widget/ImageView;

    .line 481
    const v3, 0x7f08015f

    .line 482
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBtnShare:Landroid/widget/ImageView;

    .line 483
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    const v3, 0x7f08004f

    .line 485
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBtnDelete:Landroid/widget/ImageView;

    .line 486
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    const v3, 0x7f0800e0

    .line 489
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBtnMore:Landroid/widget/ImageView;

    .line 490
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    const v3, 0x7f080148

    .line 492
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBtnSearch:Landroid/widget/ImageView;

    .line 493
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    const v3, 0x7f0800a8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGlobalView:Landroid/widget/ImageView;

    .line 495
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    const v3, 0x7f080118

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mPrivacyInfoBtn:Landroid/widget/ImageView;

    .line 497
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    :cond_1
    const v3, 0x7f080104

    .line 500
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActionBarPathText:Landroid/widget/TextView;

    .line 501
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 505
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBtnEditBack:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 511
    :cond_3
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->updateNormalBar()V

    .line 512
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mNormalBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 516
    :cond_4
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 517
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 518
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 520
    :cond_5
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->filePathBrower:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 526
    :goto_0
    return-void
.end method

.method public initFloatMenu()V
    .locals 2

    .line 978
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->floatingActionButtonContainer:Landroid/view/View;

    .line 979
    nop

    .line 980
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 979
    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/ViewUtil;->setupFloatingActionButton(Landroid/view/View;Landroid/content/res/Resources;)V

    .line 981
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->floatingActionButton:Landroid/widget/ImageButton;

    .line 982
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 983
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->floatingActionButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 984
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->floatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 985
    return-void
.end method

.method public initMorePopWindow()Landroid/view/View;
    .locals 7

    .line 647
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 648
    const v1, 0x7f0b0049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 649
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->morePopWidth:I

    .line 650
    const v1, 0x7f080156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelect:Landroid/widget/TextView;

    .line 651
    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexGrid:Landroid/widget/TextView;

    .line 652
    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexList:Landroid/widget/TextView;

    .line 653
    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCreateFolder:Landroid/widget/TextView;

    .line 654
    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShow:Landroid/widget/TextView;

    .line 655
    const v1, 0x7f0800b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexHide:Landroid/widget/TextView;

    .line 656
    const v1, 0x7f080103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexPaste:Landroid/widget/TextView;

    .line 657
    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCut:Landroid/widget/TextView;

    .line 658
    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCopy:Landroid/widget/TextView;

    .line 659
    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexDelete:Landroid/widget/TextView;

    .line 660
    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexDetail:Landroid/widget/TextView;

    .line 661
    const v1, 0x7f08012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexRename:Landroid/widget/TextView;

    .line 662
    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextExtract:Landroid/widget/TextView;

    .line 663
    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextCompress:Landroid/widget/TextView;

    .line 664
    const v1, 0x7f080162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShare:Landroid/widget/TextView;

    .line 665
    const v1, 0x7f08015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelectAll:Landroid/widget/TextView;

    .line 666
    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexClearAll:Landroid/widget/TextView;

    .line 667
    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCancelEdit:Landroid/widget/TextView;

    .line 668
    const v1, 0x7f0801a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexUnSelectAll:Landroid/widget/TextView;

    .line 669
    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShortcut:Landroid/widget/TextView;

    .line 670
    const v1, 0x7f0800e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexAddSafe:Landroid/widget/TextView;

    .line 671
    const v1, 0x7f080127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexRemoveSafe:Landroid/widget/TextView;

    .line 673
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelect:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexGrid:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexList:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCreateFolder:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShow:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexHide:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCut:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCopy:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexDelete:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexDetail:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexRename:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextExtract:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextCompress:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShare:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexClearAll:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCancelEdit:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexUnSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexPaste:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShortcut:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexAddSafe:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexRemoveSafe:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexRemoveSafe:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 696
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextCompress:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 697
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextExtract:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexClearAll:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 699
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCancelEdit:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 700
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCopyNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 776
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 777
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexAddSafe:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    iget v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->selectCount:I

    if-ne v1, v3, :cond_3

    .line 779
    iget-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mIsHasZip:Z

    if-nez v1, :cond_1

    .line 780
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextExtract:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 781
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextCompress:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 782
    :cond_1
    if-eqz v1, :cond_2

    .line 783
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextExtract:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 784
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextCompress:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 786
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexRename:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexDetail:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 789
    :cond_3
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextExtract:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 790
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextCompress:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 791
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexRename:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 792
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexDetail:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 793
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCopy:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 794
    iget v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->selectCount:I

    if-eqz v1, :cond_4

    .line 795
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShare:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 796
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSupportPrivacyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-boolean v6, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    invoke-static {v1, v5, v6}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 797
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexAddSafe:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 801
    :cond_4
    :goto_1
    iget v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->selectCount:I

    if-lez v1, :cond_b

    .line 802
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexDelete:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 803
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCut:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 804
    iget-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mIsHasDrm:Z

    if-eqz v1, :cond_5

    .line 805
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCopy:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 806
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextExtract:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextCompress:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 809
    :cond_5
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCopy:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    :goto_2
    iget-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCanShare:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mIsFLorSDDrm:Z

    if-eqz v1, :cond_6

    goto :goto_4

    .line 820
    :cond_6
    iget v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->selectCount:I

    if-le v1, v3, :cond_7

    .line 821
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShortcut:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 823
    :cond_7
    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mIsHasDir:Z

    if-eqz v1, :cond_8

    .line 824
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShortcut:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 826
    :cond_8
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShortcut:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 829
    :goto_3
    iget v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->selectCount:I

    if-eqz v1, :cond_b

    .line 830
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShare:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 831
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexAddSafe:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 812
    :cond_9
    :goto_4
    iget v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->selectCount:I

    if-eqz v1, :cond_b

    .line 813
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShare:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 814
    iget-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCanShare:Z

    if-eqz v1, :cond_a

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSupportPrivacyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-boolean v6, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    invoke-static {v1, v5, v6}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v1

    if-nez v1, :cond_a

    .line 815
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexAddSafe:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 817
    :cond_a
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShortcut:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 836
    :cond_b
    :goto_5
    iget v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->selectCount:I

    if-eqz v1, :cond_d

    .line 837
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v1}, Lcom/jrdcom/filemanager/IActivityListener;->checkIsSelectAll()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 838
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 839
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexUnSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 841
    :cond_c
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 842
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexUnSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 846
    :cond_d
    :goto_6
    iget-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCanShare:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mHasAllPrivate:Z

    if-eqz v1, :cond_e

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSupportPrivacyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 847
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexRemoveSafe:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 848
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexAddSafe:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 850
    :cond_e
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexRemoveSafe:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 853
    :goto_7
    iget v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->selectCount:I

    if-nez v1, :cond_f

    .line 854
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCopy:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 856
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexDelete:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 857
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCut:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 858
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShare:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 859
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexAddSafe:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextCompress:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 861
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexUnSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShortcut:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 863
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextExtract:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexRemoveSafe:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 868
    :cond_f
    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne v1, v3, :cond_10

    .line 869
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextExtract:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 870
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextCompress:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    :cond_10
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexGrid:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 873
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexList:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 874
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShow:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 875
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexHide:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 876
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelect:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 877
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCreateFolder:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 878
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexPaste:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    .line 879
    :cond_11
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne v1, v5, :cond_12

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/jrdcom/filemanager/IActivityListener;->isItemMorePop()Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-eq v1, v3, :cond_23

    .line 881
    :cond_13
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelect:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 882
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexGrid:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 883
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexList:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 884
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCreateFolder:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 885
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShow:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 886
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexHide:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCut:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 888
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCopy:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 889
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexDelete:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 890
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexDetail:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 891
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexRename:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 892
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextExtract:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 893
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextCompress:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 894
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShare:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 895
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexUnSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 897
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexPaste:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 898
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShortcut:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 899
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexAddSafe:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 900
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexRemoveSafe:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 901
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexClearAll:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 902
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCancelEdit:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    .line 701
    :cond_14
    :goto_8
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexUnSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexPaste:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCut:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCopy:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexDelete:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 707
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexDetail:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexRename:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 709
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextExtract:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTextCompress:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShare:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 712
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShortcut:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 713
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexAddSafe:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "listMode"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 715
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexGrid:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 716
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexList:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 718
    :cond_15
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexGrid:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 719
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexList:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 721
    :goto_9
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v1, :cond_18

    .line 722
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelect:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v1}, Lcom/jrdcom/filemanager/IActivityListener;->getAdapterSize()I

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v1

    if-lez v1, :cond_16

    goto :goto_a

    .line 728
    :cond_16
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelect:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 729
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelect:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_b

    .line 725
    :cond_17
    :goto_a
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelect:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 726
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelect:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 733
    :cond_18
    :goto_b
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCreateFolder:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 734
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    if-eqz v1, :cond_19

    .line 735
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShow:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 736
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexHide:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    .line 738
    :cond_19
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShow:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 739
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexHide:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 741
    :goto_c
    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne v1, v3, :cond_1a

    .line 742
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexShow:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 743
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexHide:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 744
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCreateFolder:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 746
    :cond_1a
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-eq v1, v5, :cond_22

    .line 747
    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne v1, v3, :cond_1b

    .line 748
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexPaste:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCreateFolder:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    .line 751
    :cond_1b
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v1

    if-lez v1, :cond_21

    .line 752
    nop

    .line 753
    nop

    .line 754
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v1

    if-lez v1, :cond_1f

    .line 755
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 756
    if-eqz v1, :cond_1e

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 757
    const-string v2, "/storage/emulated/0/Locker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v5, v5, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 758
    :cond_1c
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v5, v5, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1d
    goto :goto_d

    :cond_1e
    move v3, v4

    goto :goto_d

    .line 754
    :cond_1f
    const-string v1, ""

    move v3, v4

    .line 760
    :goto_d
    sget-object v2, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showpaste = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " pastePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mApplication.mCurrentPath = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    if-eqz v3, :cond_20

    .line 762
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexPaste:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    :cond_20
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCreateFolder:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 765
    goto :goto_e

    .line 766
    :cond_21
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCreateFolder:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e

    .line 769
    :cond_22
    if-ne v1, v5, :cond_23

    .line 770
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexPaste:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 771
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexCreateFolder:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexSelect:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 773
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexGrid:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 774
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTexList:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 905
    :cond_23
    :goto_e
    return-object v0
.end method

.method public initSearchViewStyle()V
    .locals 0

    .line 974
    return-void
.end method

.method protected isPathInvalid(Ljava/lang/String;)Z
    .locals 2

    .line 1135
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1136
    new-instance v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-direct {v1, p0, p1}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1137
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isExternalFile(Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1138
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPhoneStorageZero()Z

    move-result p1

    return p1

    .line 1140
    :cond_0
    return v0

    .line 1143
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPhoneStorageZero()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->isSDCardMounted()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->isOtgMounted()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected normalStatusChanageScreen()V
    .locals 4

    .line 1343
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGlobalView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1344
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-eq v0, v2, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBtnSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1348
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveSelectedList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/jrdcom/filemanager/IActivityListener;->restoreCheckedList(Ljava/util/List;)V

    .line 1350
    :cond_1
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1351
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSavePastedList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1352
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    sget v2, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mPasteOperation:I

    sget-object v3, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSavePastedList:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->savePasteList(IILjava/util/List;)V

    .line 1354
    :cond_2
    sput v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mPasteOperation:I

    .line 1355
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSavePastedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1356
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1087
    return-void
.end method

.method public onClickCSK()Z
    .locals 1

    .line 1805
    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 1

    .line 1800
    const/4 v0, 0x1

    return v0
.end method

.method public onClickRSK()Z
    .locals 1

    .line 1810
    const/4 v0, 0x0

    return v0
.end method

.method public onClose()Z
    .locals 1

    .line 1067
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1097
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1099
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->updateModeThemeStyle(Landroid/content/Context;)V

    .line 1101
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mPortraitOrientation:Z

    .line 1102
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->switchFloatButtonDirection()V

    .line 1103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 331
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 333
    new-instance p1, Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    invoke-direct {p1, p0}, Lcom/jrdcom/filemanager/manager/ClickSoundManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mClickSoundManager:Lcom/jrdcom/filemanager/manager/ClickSoundManager;

    .line 336
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->updateModeThemeStyle(Landroid/content/Context;)V

    .line 338
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 339
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->changeStatusBarTextColor(Z)V

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->launchTime:J

    .line 341
    sget v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->runCreateCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->runCreateCount:I

    .line 342
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 343
    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->changeStatusBarColor(Z)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_1

    move p1, v1

    :cond_1
    iput-boolean p1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mPortraitOrientation:Z

    .line 347
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 348
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefCurrTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mTagMode:Ljava/lang/String;

    .line 349
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 350
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/MountManager;->init(Landroid/content/Context;)V

    .line 351
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsStatus(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 352
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    .line 353
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsSortBy(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    .line 354
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setMainContentView()V

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 356
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 357
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/jrdcom/filemanager/activity/FilePrivateModeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->checkCreatePermission()V

    .line 361
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    new-instance v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$2;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->setDataRefreshListener(Lcom/jrdcom/filemanager/singleton/DataContentObserver$onDataRefreshListener;)V

    .line 370
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 565
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 566
    const/4 v0, 0x0

    sput v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->runCreateCount:I

    .line 567
    const-string v0, ""

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->comparepath:Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->setDataRefreshListener(Lcom/jrdcom/filemanager/singleton/DataContentObserver$onDataRefreshListener;)V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountReceiver:Lcom/jrdcom/filemanager/MountReceiver;

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 581
    :cond_2
    sput-object v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    .line 582
    return-void
.end method

.method public onEject()V
    .locals 0

    .line 633
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 1062
    const/4 p1, 0x1

    return p1
.end method

.method public onMounted()V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez v0, :cond_0

    .line 587
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 589
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isMounted:Z

    .line 590
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/manager/MountManager;->init(Landroid/content/Context;)V

    .line 591
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    .line 1165
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onMultiWindowModeChanged(Z)V

    .line 1166
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v0, :cond_0

    .line 1167
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-boolean p1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->isInMultiWindowMode:Z

    .line 1171
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1

    .line 1172
    invoke-interface {v0}, Lcom/jrdcom/filemanager/IActivityListener;->closeItemMorePop()V

    .line 1173
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/jrdcom/filemanager/IActivityListener;->closeFloatMenu(Z)V

    .line 1175
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/IActivityListener;->cancelProgressDialog()V

    .line 1178
    :cond_1
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->sortPop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    const-wide/16 v0, 0xc8

    if-eqz p1, :cond_3

    .line 1179
    sget-boolean v2, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isChangeMultiScreen:Z

    if-eqz v2, :cond_2

    .line 1180
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jrdcom/filemanager/activity/FileBaseActivity$4;

    invoke-direct {v2, p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$4;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1187
    :cond_2
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1190
    :cond_3
    :goto_0
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    if-eqz p1, :cond_5

    .line 1191
    sget-boolean v2, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isChangeMultiScreen:Z

    if-eqz v2, :cond_4

    .line 1192
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jrdcom/filemanager/activity/FileBaseActivity$5;

    invoke-direct {v2, p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$5;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1199
    :cond_4
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1202
    :cond_5
    :goto_1
    const/4 p1, 0x0

    sput-boolean p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isChangeMultiScreen:Z

    .line 1203
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1150
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1151
    const-string v0, "foldername"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->laucherFolderName:Ljava/lang/String;

    .line 1152
    return-void
.end method

.method public onOptionMenuClick(I)V
    .locals 0

    .line 1821
    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 0

    .line 1826
    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    .line 1816
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1673
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 1674
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 1083
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    .line 1072
    const/4 p1, 0x1

    return p1
.end method

.method public onRestart()V
    .locals 2

    .line 545
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    .line 546
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->checkPermission()V

    .line 547
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBaseHandler:Landroid/os/Handler;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 549
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1646
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 1647
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBaseHandler:Landroid/os/Handler;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1649
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->updateModeThemeStyle(Landroid/content/Context;)V

    .line 1650
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActionBarPathText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1651
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActionBarPathText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1653
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActionBarPathText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActionBarPathText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1656
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActionBarPathText:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1660
    :cond_1
    :goto_0
    return-void
.end method

.method public onScannerFinished()V
    .locals 0

    .line 1090
    return-void
.end method

.method public onScannerStarted()V
    .locals 0

    .line 1093
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 407
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 408
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput-byte v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->proPrivateMode:B

    .line 409
    return-void
.end method

.method public onUnmounted(Ljava/lang/String;)V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez v0, :cond_0

    .line 596
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/manager/MountManager;->init(Landroid/content/Context;)V

    .line 599
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 600
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 602
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 603
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 605
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearPasteList()V

    .line 608
    :cond_1
    return-void
.end method

.method protected queryTextChange(Ljava/lang/String;)Z
    .locals 19

    .line 1532
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isSearchMode:Z

    if-eqz v2, :cond_0

    .line 1533
    iget-object v2, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v2, :cond_0

    .line 1534
    invoke-interface {v2}, Lcom/jrdcom/filemanager/IActivityListener;->searchQueryTextChange()V

    .line 1538
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1540
    iget-object v2, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v2, v3, v4}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    goto :goto_0

    .line 1543
    :cond_1
    iget-object v2, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    sget v5, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    .line 1548
    :goto_0
    iget-object v2, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mQueryText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1549
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mQueryText:Ljava/lang/String;

    .line 1550
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1551
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1550
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1552
    return v4

    .line 1554
    :cond_2
    nop

    .line 1555
    const-string v2, ".*[/\\\\:*?\"<>|].*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1556
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1557
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1559
    iget-object v1, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    if-nez v1, :cond_3

    .line 1560
    new-instance v1, Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-direct {v1, v0}, Lcom/jrdcom/filemanager/view/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    .line 1563
    :cond_3
    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 1564
    return v4

    .line 1567
    :cond_4
    iput-object v1, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mQueryText:Ljava/lang/String;

    .line 1569
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1570
    iget-boolean v1, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isSearchMode:Z

    if-eqz v1, :cond_6

    .line 1571
    iget-object v1, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v1, :cond_6

    .line 1572
    sget v1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    if-ne v1, v3, :cond_5

    iget-object v1, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    sget v1, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_5

    .line 1574
    iget-object v5, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/16 v7, 0xc

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, ""

    invoke-interface/range {v5 .. v11}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    goto :goto_1

    .line 1576
    :cond_5
    iget-object v12, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object v1, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v13, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v14, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    iget-object v1, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-static {v1, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getRefreshMode(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v12 .. v18}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1579
    :goto_1
    iget-object v1, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v1}, Lcom/jrdcom/filemanager/IActivityListener;->showBeforeSearchList()V

    .line 1580
    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lcom/jrdcom/filemanager/IActivityListener;->showNoSearchResults(ZLjava/lang/String;)V

    .line 1583
    :cond_6
    return v4

    .line 1585
    :cond_7
    iget-object v2, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1586
    iget-object v2, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v2}, Lcom/jrdcom/filemanager/IActivityListener;->clearAdapter()V

    .line 1588
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->requestSearch(Ljava/lang/String;)V

    .line 1589
    return v3
.end method

.method protected queryTextSubmit(Ljava/lang/String;)V
    .locals 2

    .line 1593
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 1594
    nop

    .line 1595
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 1596
    if-eqz p1, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1601
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 1603
    :cond_1
    return-void
.end method

.method protected refreshData(I)V
    .locals 1

    .line 1491
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSortPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSortPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1495
    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1497
    :cond_1
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->updateSortView(I)V

    .line 1498
    goto :goto_0

    .line 1503
    :cond_2
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->updateSortView(I)V

    .line 1504
    goto :goto_0

    .line 1506
    :cond_3
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->updateSortView(I)V

    .line 1507
    goto :goto_0

    .line 1500
    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->updateSortView(I)V

    .line 1501
    nop

    .line 1511
    :goto_0
    return-void
.end method

.method protected refreshNavBar()V
    .locals 4

    .line 1759
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1760
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity$16;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$16;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1769
    :cond_0
    return-void
.end method

.method protected refreshPathAdapter(Ljava/lang/String;)V
    .locals 0

    .line 1012
    return-void
.end method

.method protected removeCategoryCache(ZZ)V
    .locals 7

    .line 612
    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz p2, :cond_0

    .line 613
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearShowFiles()V

    .line 615
    :cond_0
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    if-eqz p2, :cond_1

    .line 616
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    const-string v0, "0"

    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 617
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    const-string v0, "1"

    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 618
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    const-string v0, "2"

    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 619
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    const-string v0, "3"

    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 620
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    const-string v0, "4"

    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 621
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    const-string v0, "5"

    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 622
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    const-string v0, "6"

    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 623
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    const-string v0, "7"

    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 624
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    const-string v0, "8"

    invoke-virtual {p2, v0}, Lcom/jrdcom/filemanager/utils/FileListCache;->removeCache(Ljava/lang/String;)V

    .line 625
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v0, :cond_1

    .line 626
    const/4 v1, 0x0

    sget v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 629
    :cond_1
    return-void
.end method

.method protected requestGlobalSearch(Ljava/lang/String;)V
    .locals 11

    .line 1228
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGlobalSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getUsbOtgPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c00d0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12

    const/4 v5, -0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v1 .. v10}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 1236
    :cond_0
    return-void
.end method

.method protected requestSearch(Ljava/lang/String;)V
    .locals 12

    .line 1359
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchPath:Ljava/lang/String;

    .line 1360
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 1361
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v1, :cond_2

    .line 1362
    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v2, 0x1

    const v3, 0x7f0c00d0

    if-ne v1, v2, :cond_1

    .line 1363
    nop

    .line 1364
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    sget v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1365
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    sget v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/utils/FileListCache;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    .line 1367
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getCategoryFileList()Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    .line 1369
    :goto_0
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12

    sget v6, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v8, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v3, v1

    move-object v7, p1

    invoke-static/range {v2 .. v11}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 1371
    goto :goto_1

    .line 1372
    :cond_1
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12

    const/4 v6, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchPath:Ljava/lang/String;

    const/4 v11, 0x0

    move v3, v1

    move-object v7, p1

    invoke-static/range {v2 .. v11}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 1376
    :cond_2
    :goto_1
    return-void
.end method

.method protected requestSearch(Ljava/lang/String;Z)V
    .locals 12

    .line 1379
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchPath:Ljava/lang/String;

    .line 1380
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1381
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_1

    .line 1382
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1383
    nop

    .line 1384
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/utils/FileListCache;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getCategoryFileList()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    .line 1389
    :goto_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c00d0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12

    sget v5, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v7, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    move v11, p2

    invoke-static/range {v1 .. v11}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1393
    :cond_1
    return-void
.end method

.method protected reshowMorePop(Landroid/view/View;)V
    .locals 4

    .line 1730
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity$15;

    invoke-direct {v1, p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$15;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/view/View;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1742
    :cond_0
    return-void
.end method

.method public reshowPop()V
    .locals 2

    .line 1664
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSortPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSortPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1666
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->showChoiceResourceDialog(ILandroid/view/View;)V

    .line 1668
    :cond_0
    return-void
.end method

.method protected searchStatusChanageScreen()V
    .locals 2

    .line 1313
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 1315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isSearchMode:Z

    .line 1316
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveQueryText:Ljava/lang/String;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mQueryText:Ljava/lang/String;

    .line 1317
    const-string v1, ""

    sput-object v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSaveQueryText:Ljava/lang/String;

    .line 1318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    return-void

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mQueryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mQueryText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->requestSearch(Ljava/lang/String;)V

    .line 1324
    :cond_1
    return-void
.end method

.method protected setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1277
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 1278
    if-eqz v0, :cond_0

    .line 1279
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1281
    :cond_0
    return-void
.end method

.method protected setActionBarDisplayHomeAsUpEnabled(Z)V
    .locals 0

    .line 1156
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    .line 1157
    nop

    .line 1160
    return-void
.end method

.method public setActionBarTitle(I)V
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActionBarPathText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 1056
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1058
    :cond_0
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActionBarPathText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    :cond_0
    return-void
.end method

.method public setFloatBtnHideAnim()Landroid/view/animation/Animation;
    .locals 1

    .line 1752
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->floatBtnHideAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 1753
    const v0, 0x7f010010

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->floatBtnHideAnim:Landroid/view/animation/Animation;

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->floatBtnHideAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public setFloatBtnShowAnim()Landroid/view/animation/Animation;
    .locals 1

    .line 1745
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->floatBtnShowAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 1746
    const v0, 0x7f010011

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->floatBtnShowAnim:Landroid/view/animation/Animation;

    .line 1748
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->floatBtnShowAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public setMainContentView()V
    .locals 3

    .line 412
    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setContentView(I)V

    .line 413
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 414
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mainLayout:Landroid/widget/RelativeLayout;

    .line 415
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->filePathBrower:Landroid/widget/LinearLayout;

    .line 417
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->wirelessSyncStatus:Landroid/widget/LinearLayout;

    .line 418
    const v0, 0x7f08017f

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->wirelessSyncIcon:Landroid/widget/ImageView;

    .line 419
    const v0, 0x7f080180

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->wirelessSyncText:Landroid/widget/TextView;

    .line 422
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchBar:Landroid/widget/RelativeLayout;

    .line 423
    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    .line 425
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchBack:Landroid/widget/ImageView;

    .line 426
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 428
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->initSearchViewStyle()V

    .line 431
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->tbxSearch_TextChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 432
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->lEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 433
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->lEditOnfocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 436
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGlobalSearchBar:Landroid/widget/LinearLayout;

    .line 437
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGlobalSearchView:Landroid/widget/EditText;

    .line 438
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->tbxSearch_TextChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 439
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGlobalSearchView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->lEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 440
    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGlobalSearchCancel:Landroid/widget/ImageView;

    .line 442
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 443
    new-instance v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    .line 444
    new-instance v0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    .line 445
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/fragment/PermissionFragment;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mPermissionFragment:Lcom/jrdcom/filemanager/fragment/PermissionFragment;

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->initActionBar()V

    .line 450
    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 2

    .line 1524
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isSearchMode:Z

    .line 1525
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1526
    iput-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mQueryText:Ljava/lang/String;

    .line 1527
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1528
    return-void
.end method

.method protected showChoiceResourceDialog(ILandroid/view/View;)V
    .locals 3

    .line 1398
    nop

    .line 1405
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1406
    const p2, 0x7f0c00e6

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    const p2, 0x7f0c00e8

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1409
    const p2, 0x7f0c00e7

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1410
    const p2, 0x7f0c00e9

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1412
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p2}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsSortBy(Landroid/content/Context;)I

    move-result p2

    .line 1413
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1415
    sget-boolean v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1416
    const v1, 0x7f0b006e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    .line 1418
    :cond_0
    const v1, 0x7f0b006d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1421
    :goto_0
    const v1, 0x7f080175

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1422
    new-instance v2, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;

    invoke-direct {v2, p0, p1, p2}, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 1423
    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->setSingleChoice(Z)V

    .line 1424
    invoke-virtual {v2, p2}, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->setSingleChoiceIndex(I)V

    .line 1425
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1426
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1427
    new-instance p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity$9;

    invoke-direct {p1, p0, v2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$9;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1441
    new-instance p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;

    invoke-direct {p1, p0, v1, v2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$10;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/widget/ListView;Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1465
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/view/PopWindowUtil;->showSortPopWindow(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSortPop:Landroid/widget/PopupWindow;

    .line 1466
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->updateMenubarView(I)V

    .line 1467
    new-instance p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity$11;

    invoke-direct {p1, p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$11;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1474
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSortPop:Landroid/widget/PopupWindow;

    new-instance p2, Lcom/jrdcom/filemanager/activity/FileBaseActivity$12;

    invoke-direct {p2, p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$12;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1480
    return-void
.end method

.method protected showNoAvailableStorageDialog()V
    .locals 3

    .line 1775
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPhoneStorageZero()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->isSDCardMounted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->isOtgMounted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1776
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1777
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c00a2

    .line 1778
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1777
    const-string v2, "availablestorageDialogTag"

    invoke-static {v0, v1, v2}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mNoStorageDialog:Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;

    .line 1779
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/dialog/CommonDialogFragment;->showDialog()V

    .line 1781
    :cond_0
    return-void
.end method

.method protected showToastForUnmountCurrentSDCard(Ljava/lang/String;)V
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez v0, :cond_0

    .line 637
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jrdcom/filemanager/manager/MountManager;->isExternalMountPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 641
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    const v1, 0x7f0c00f5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(Ljava/lang/String;)V

    .line 644
    :cond_1
    return-void
.end method

.method public updateCategoryNavigation(I)V
    .locals 0

    .line 1009
    return-void
.end method

.method protected updateCategoryNormalBar()V
    .locals 2

    .line 988
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne v0, v1, :cond_1

    .line 989
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 990
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBtnEditBack:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 991
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGlobalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 992
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setActionBarTitle(I)V

    .line 993
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->changeStatusBarColor(Z)V

    .line 994
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setActionBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 996
    :cond_0
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setActionBarTitle(I)V

    goto :goto_0

    .line 998
    :cond_1
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1000
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 1001
    sget v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-static {v0}, Lcom/jrdcom/filemanager/manager/CategoryManager;->getCategoryString(I)I

    move-result v0

    .line 1002
    if-eqz v0, :cond_2

    .line 1003
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setActionBarTitle(I)V

    .line 1006
    :cond_2
    :goto_0
    return-void
.end method

.method protected updateMenubarView(I)V
    .locals 7

    .line 1830
    const v0, 0x7f0c00ac

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_3

    .line 1831
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    const-string v4, "listMode"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v4, 0x7f0c00a9

    const v5, 0x7f0c00d0

    if-eqz p1, :cond_1

    .line 1833
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSortPop:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1834
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, v3, v4, v3, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_0

    .line 1837
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    sget v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    sget-object v3, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListMenu:Ljava/util/ArrayList;

    invoke-virtual {p1, v5, v1, v0, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1838
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p0, p1, v2, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->updateMenuBarIconIfNeed(Landroid/content/Context;Landroid/widget/MenuBar;ZZ)V

    goto/16 :goto_0

    .line 1841
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    const-string v6, "gridMode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1842
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mSortPop:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1843
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, v3, v4, v3, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_0

    .line 1846
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    sget v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    sget-object v3, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mGridMenu:Ljava/util/ArrayList;

    invoke-virtual {p1, v5, v1, v0, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1847
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p0, p1, v2, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->updateMenuBarIconIfNeed(Landroid/content/Context;Landroid/widget/MenuBar;ZZ)V

    goto/16 :goto_0

    .line 1851
    :cond_3
    const/4 v4, 0x6

    if-ne p1, v4, :cond_4

    .line 1853
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    const v0, 0x7f0c002f

    sget v2, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    const v3, 0x7f0c00af

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_0

    .line 1855
    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    .line 1857
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCommonMenu:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1858
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const v4, 0x7f08004b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0c004b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1859
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const v4, 0x7f080045

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0c0044

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1860
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCommonMenu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const v4, 0x7f080052

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0c0050

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    const v1, 0x7f0c00d4

    sget v4, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    iget-object v5, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCommonMenu:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v4, v0, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1863
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p0, p1, v3, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->updateMenuBarIconIfNeed(Landroid/content/Context;Landroid/widget/MenuBar;ZZ)V

    goto :goto_0

    .line 1866
    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 1867
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, v3, v3, v3, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1870
    :cond_6
    :goto_0
    return-void
.end method

.method protected updateNormalBar()V
    .locals 3

    .line 1019
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    const v2, 0x7f0c002b

    if-ne v0, v1, :cond_0

    .line 1020
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setActionBarTitle(I)V

    goto/16 :goto_1

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez v0, :cond_1

    return-void

    .line 1023
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez v0, :cond_2

    .line 1024
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 1026
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 1027
    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1028
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1029
    nop

    .line 1030
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mBtnEditBack:Landroid/widget/ImageView;

    .line 1031
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 1032
    :cond_3
    sget-object v1, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1033
    sget-object v1, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    .line 1034
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1033
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1035
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1037
    :cond_4
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 1040
    :cond_5
    :goto_0
    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCopyNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 1041
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteCount()I

    move-result v0

    if-lez v0, :cond_8

    goto :goto_1

    .line 1043
    :cond_8
    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->setActionBarTitle(I)V

    .line 1046
    :goto_1
    return-void
.end method

.method protected updateOptionMenuItemBackground()V
    .locals 2

    .line 397
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    const v1, 0x7f070117

    invoke-virtual {v0, v1}, Landroid/widget/MenuBar;->setOptionMenuItemBackground(I)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mMenuBar:Landroid/widget/MenuBar;

    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Landroid/widget/MenuBar;->setOptionMenuItemBackground(I)V

    .line 402
    :goto_0
    return-void
.end method

.method protected updatePrivateEditMode()V
    .locals 4

    .line 1626
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jrdcom/filemanager/activity/FileBaseActivity$13;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$13;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1642
    return-void
.end method

.method protected updateSortView(I)V
    .locals 8

    .line 1515
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefsSortBy(Lcom/jrdcom/filemanager/FileManagerApplication;I)V

    .line 1516
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->sort(I)V

    .line 1517
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    if-eqz v1, :cond_0

    .line 1518
    const/16 v3, 0xbd

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, ""

    invoke-interface/range {v1 .. v7}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 1520
    :cond_0
    return-void
.end method
