.class public Lcom/jrdcom/filemanager/adapter/FileShowAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FileShowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;,
        Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;,
        Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private isCanSetFocus:Z

.field private isInPrivacyMode:Z

.field private isPathLocation:Z

.field private isPrivateLocation:Z

.field private isSafeboxLocation:Z

.field private isThirdAPP:Z

.field private mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private mCheckBox:Landroid/widget/CheckBox;

.field protected mCheckedFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field protected final mFileInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

.field private mFileShowListCount:I

.field protected mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mItemEditFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mItemMorePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

.field protected mItemMorePopHeight:I

.field protected mItemMorePopWidth:I

.field private mListView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

.field private mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

.field protected mMultiScreenModeHeight:I

.field private mOnItemClickListener:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemClickListener;

.field private mOnItemFocusChangeListener:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;

.field private mPosition:I

.field private mPrePosition:I

.field private mPrivacyModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

.field protected selectedPosition:I

.field private xoff:I

.field private yoff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jrdcom/filemanager/manager/FileInfoManager;Lcom/jrdcom/filemanager/view/LoopRecyclerView;)V
    .locals 10

    .line 117
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isThirdAPP:Z

    .line 78
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isPathLocation:Z

    .line 79
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isPrivateLocation:Z

    .line 81
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isSafeboxLocation:Z

    .line 82
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isInPrivacyMode:Z

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemEditFileList:Ljava/util/List;

    .line 93
    const/4 v1, -0x1

    iput v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->selectedPosition:I

    .line 107
    iput v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPrePosition:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isCanSetFocus:Z

    .line 118
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 120
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 121
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 122
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-direct {p0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getShowOrHideFileList(Lcom/jrdcom/filemanager/manager/FileInfoManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setDisablePrivatefolder(Z)V

    .line 124
    invoke-static {}, Lcom/jrdcom/filemanager/manager/IconManager;->getInstance()Lcom/jrdcom/filemanager/manager/IconManager;

    move-result-object p2

    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    .line 125
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ltct/util/privacymode/TctPrivacyModeHelper;->createHelper(Landroid/content/Context;)Ltct/util/privacymode/TctPrivacyModeHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPrivacyModeHelper:Ltct/util/privacymode/TctPrivacyModeHelper;

    .line 126
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object p2

    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 127
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isFilePathLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isPathLocation:Z

    .line 128
    iput-object p3, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mListView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    .line 129
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p3, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    .line 130
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060141

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopHeight:I

    .line 131
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060143

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mMultiScreenModeHeight:I

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0601ee

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopWidth:I

    .line 133
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isListMode(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 134
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060115

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->xoff:I

    .line 135
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060116

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->yoff:I

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060113

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->xoff:I

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060114

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->yoff:I

    .line 140
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->initMorePopWindow(ZZZZZZILjava/lang/String;Z)Landroid/view/View;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemClickListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mOnItemClickListener:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Lcom/jrdcom/filemanager/FileManagerApplication;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;ILcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;IZ)V
    .locals 0

    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setIconGrid(ILcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mOnItemFocusChangeListener:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPrePosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isCanSetFocus:Z

    return p0
.end method

.method static synthetic access$700(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;ILcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;IZ)V
    .locals 0

    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setIcon(ILcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileShowListCount:I

    return p0
.end method

.method private afreshPop(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;I)V
    .locals 14

    move-object v0, p0

    move/from16 v8, p2

    .line 197
    :try_start_0
    iget-object v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 198
    invoke-virtual {p0, v8}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setItemEditSelect(I)V

    .line 199
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 201
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v3

    .line 202
    const/4 v4, 0x0

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 207
    iget-object v5, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSupportPrivacyMode(Landroid/content/Context;)Z

    move-result v13

    .line 208
    if-nez v3, :cond_2

    .line 209
    invoke-virtual {p0, v8}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isHasDrm(I)Z

    move-result v5

    .line 210
    if-eqz v5, :cond_1

    .line 211
    invoke-virtual {p0, v8}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isHasSDDrm(I)Z

    move-result v6

    goto :goto_0

    .line 210
    :cond_1
    move v6, v2

    .line 213
    :goto_0
    invoke-virtual {p0, v8}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isCanShare(I)Z

    move-result v7

    goto :goto_1

    .line 208
    :cond_2
    move v5, v2

    move v6, v5

    move v7, v6

    .line 215
    :goto_1
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 216
    if-nez v3, :cond_3

    iget-boolean v9, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isInPrivacyMode:Z

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-boolean v10, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    invoke-static {v12, v9, v10}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v9

    if-nez v9, :cond_3

    .line 217
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isPrivateFile()Z

    move-result v9

    goto :goto_2

    .line 219
    :cond_3
    move v9, v2

    :goto_2
    iput v8, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPosition:I

    .line 220
    if-eqz v13, :cond_4

    iget-boolean v10, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isSafeboxLocation:Z

    if-eqz v10, :cond_4

    .line 221
    iget-object v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060141

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopHeight:I

    .line 222
    iget v11, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopWidth:I

    move-object v1, p0

    move v2, v4

    move v4, v9

    move/from16 v8, p2

    move v9, v11

    move-object v11, p1

    invoke-direct/range {v1 .. v13}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->showPopWindowMy(ZZZZZZIIILcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;Ljava/lang/String;Z)V

    .line 223
    return-void

    .line 224
    :cond_4
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v4

    const v10, 0x7f060111

    if-eqz v4, :cond_5

    .line 225
    iget-object v4, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopHeight:I

    goto :goto_3

    .line 227
    :cond_5
    iget-object v4, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f060117

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopHeight:I

    .line 229
    :goto_3
    if-eqz v3, :cond_6

    .line 230
    goto/16 :goto_5

    .line 232
    :cond_6
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    .line 233
    goto :goto_4

    .line 235
    :cond_7
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 237
    goto :goto_4

    .line 239
    :cond_8
    const-string v4, "zip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "tar"

    .line 240
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "rar"

    .line 241
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/4 v1, 0x1

    move v2, v1

    .line 244
    :cond_a
    :goto_4
    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    if-nez v7, :cond_b

    .line 245
    iget-object v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f06011b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopHeight:I

    goto/16 :goto_5

    .line 246
    :cond_b
    if-eqz v5, :cond_c

    if-nez v7, :cond_c

    .line 247
    iget-object v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060112

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopHeight:I

    goto :goto_5

    .line 248
    :cond_c
    if-eqz v5, :cond_d

    if-eqz v7, :cond_d

    .line 249
    iget-object v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f06011c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopHeight:I

    goto :goto_5

    .line 250
    :cond_d
    if-nez v5, :cond_10

    if-eqz v7, :cond_10

    if-eqz v13, :cond_10

    .line 251
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-boolean v4, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    invoke-static {v12, v1, v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v1

    if-nez v1, :cond_e

    .line 252
    iget-object v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060118

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopHeight:I

    goto :goto_5

    .line 253
    :cond_e
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryMode()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-boolean v4, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    invoke-static {v12, v1, v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 254
    iget-object v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopHeight:I

    goto :goto_5

    .line 256
    :cond_f
    iget-object v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f06011a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopHeight:I

    .line 260
    :cond_10
    :goto_5
    iget v10, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopWidth:I

    iget v11, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopHeight:I

    move-object v1, p0

    move v4, v9

    move/from16 v8, p2

    move v9, v10

    move v10, v11

    move-object v11, p1

    invoke-direct/range {v1 .. v13}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->showPopWindowMy(ZZZZZZIIILcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 261
    :catch_1
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 265
    :goto_6
    nop

    .line 266
    :goto_7
    return-void
.end method

.method private getFileInfoPositon()I
    .locals 1

    .line 652
    invoke-static {}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getPositionInfo()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    invoke-static {}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getPositionInfo()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getPosition(Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result v0

    .line 654
    return v0

    .line 656
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private getShowOrHideFileList(Lcom/jrdcom/filemanager/manager/FileInfoManager;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jrdcom/filemanager/manager/FileInfoManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1446
    if-nez p1, :cond_0

    .line 1447
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1449
    :cond_0
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getShowFileList()Ljava/util/List;

    move-result-object p1

    .line 1450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1451
    if-nez p1, :cond_1

    .line 1452
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1455
    :cond_1
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v1

    if-nez v1, :cond_4

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne v1, v2, :cond_2

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-ltz v1, :cond_2

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/16 v3, 0x9

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 1457
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget-object v3, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 1458
    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1459
    :cond_3
    sget-object v1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAndShowHideFile ==\u300b current key no exist cache==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ==> category key ==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v1, p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->setAllFileList(Ljava/util/List;)V

    .line 1462
    :cond_4
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    if-eqz v1, :cond_5

    .line 1463
    return-object p1

    .line 1465
    :cond_5
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 1466
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1467
    if-eqz v4, :cond_8

    .line 1468
    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->isHideFile()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    move v5, v1

    goto :goto_2

    :cond_7
    :goto_1
    move v5, v2

    .line 1469
    :goto_2
    if-nez v5, :cond_8

    .line 1470
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1474
    :cond_9
    return-object v0
.end method

.method private hideEditMoreMenu(Ljava/lang/String;Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;)V
    .locals 3

    .line 1561
    sget-object v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideEditMoreMenu filePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1566
    :cond_0
    const-string v0, "/storage/emulated/0/Locker/Image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1567
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1568
    const-string v0, "/storage/emulated/0/Locker/Video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1569
    const-string v0, "/storage/emulated/0/Locker/Audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1570
    const-string v0, "/storage/emulated/0/Locker/Installers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1571
    const-string v0, "/storage/emulated/0/Locker/Archives"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1572
    const-string v0, "/storage/emulated/0/Locker/Documents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1573
    const-string v0, "/storage/emulated/0/Locker/Other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1574
    const-string v0, "/storage/emulated/0/Locker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1575
    :cond_1
    iget-object p1, p2, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/FileItemView;->getMoreMenu()Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1577
    :cond_2
    return-void

    .line 1563
    :cond_3
    :goto_0
    return-void
.end method

.method private isNotFocus(I)Z
    .locals 2

    .line 660
    invoke-direct {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getFileInfoPositon()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getFileInfoPositon()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 661
    :goto_0
    return p1
.end method

.method private loadCountText()V
    .locals 3

    .line 1512
    new-instance v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$9;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$9;-><init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)V

    .line 1537
    invoke-static {}, Lcom/jrdcom/filemanager/manager/FolderCountManager;->getInstance()Lcom/jrdcom/filemanager/manager/FolderCountManager;

    move-result-object v1

    new-instance v2, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$10;

    invoke-direct {v2, p0, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$10;-><init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/jrdcom/filemanager/manager/FolderCountManager;->loadFolderCountText(Lcom/jrdcom/filemanager/manager/FolderCountManager$FolderCountTextCallback;Ljava/util/List;)V

    .line 1544
    return-void
.end method

.method private setCheckbox(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 668
    iget-object p2, p1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 669
    iget-object p1, p1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p1

    const p2, 0x7f070062

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_0

    .line 671
    :cond_0
    iget-object p2, p1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 672
    iget-object p1, p1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p1

    const p2, 0x7f070064

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 675
    :goto_0
    return-void
.end method

.method private setIcon(ILcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;IZ)V
    .locals 0

    .line 989
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-virtual {p1, p3, p4, p5}, Lcom/jrdcom/filemanager/manager/IconManager;->getIcon(Lcom/jrdcom/filemanager/utils/FileInfo;IZ)I

    move-result p1

    .line 990
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p4

    sget-object p5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 991
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 992
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 994
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 995
    return-void

    .line 998
    :cond_0
    iget-object p4, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-virtual {p4, p3}, Lcom/jrdcom/filemanager/manager/IconManager;->isMusicType(Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 999
    iget-object p4, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-virtual {p4, p1}, Lcom/jrdcom/filemanager/manager/IconManager;->getImageCacheDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1000
    if-eqz p1, :cond_1

    .line 1001
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p4

    sget-object p5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1002
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1004
    :cond_1
    invoke-virtual {p0, p3, p2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->loadImage(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/view/FileItemView;)V

    .line 1007
    :cond_2
    :goto_0
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->isHideFile()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1008
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 1009
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteType()I

    move-result p1

    const/4 p4, 0x1

    if-ne p1, p4, :cond_4

    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1, p3}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->isPasteItem(Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1010
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x3f19999a    # 0.6f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 1012
    :cond_4
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1014
    :goto_1
    return-void
.end method

.method private setIconGrid(ILcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;IZ)V
    .locals 1

    .line 1392
    if-nez p2, :cond_0

    return-void

    .line 1393
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-virtual {p1, p3, p4, p5}, Lcom/jrdcom/filemanager/manager/IconManager;->getIcon(Lcom/jrdcom/filemanager/utils/FileInfo;IZ)I

    move-result p1

    .line 1394
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p4

    .line 1395
    const/4 p5, 0x0

    .line 1396
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-virtual {v0, p3}, Lcom/jrdcom/filemanager/manager/IconManager;->isMusicType(Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1397
    iget-object p5, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-virtual {p5, p4}, Lcom/jrdcom/filemanager/manager/IconManager;->getImageCacheDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 1400
    :cond_1
    if-eqz p5, :cond_2

    .line 1401
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p1

    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1402
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1404
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->loadGridImage(Lcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 1405
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p4

    sget-object p5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1406
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1409
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 p4, 0x1

    if-ne p1, p4, :cond_3

    .line 1410
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getBottomLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1412
    :cond_3
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->isHideFile()Z

    move-result p1

    const/16 p5, 0x8

    if-eqz p1, :cond_4

    .line 1413
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getBottomLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1414
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteType()I

    move-result p1

    if-ne p1, p4, :cond_5

    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1, p3}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->isPasteItem(Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1415
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getBottomLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1418
    :cond_5
    :goto_1
    return-void
.end method

.method private setItemLayoutbg(Landroid/widget/LinearLayout;)V
    .locals 2

    .line 679
    if-nez p1, :cond_0

    .line 680
    return-void

    .line 682
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jrdcom/filemanager/utils/CommonUtils;->SELECT_BACKGROUND_COLOR_ID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 688
    :goto_0
    return-void
.end method

.method private showPopWindow(ZZZZZZIIILcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;Ljava/lang/String;Z)V
    .locals 12

    .line 691
    move-object v10, p0

    new-instance v11, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    .line 692
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v0 .. v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->initMorePopWindow(ZZZZZZILjava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    iget v1, v10, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopWidth:I

    iget v2, v10, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePopHeight:I

    iget-object v3, v10, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;-><init>(Landroid/view/View;IILandroid/app/Activity;)V

    iput-object v11, v10, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    .line 696
    if-eqz v11, :cond_0

    .line 697
    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getMoreMenu()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, v10, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->xoff:I

    iget v2, v10, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->yoff:I

    invoke-virtual {v11, v0, v1, v2}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->showAtLocationBasedAnchor(Landroid/view/View;II)V

    .line 698
    :cond_0
    return-void
.end method

.method private showPopWindowMy(ZZZZZZIIILcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;Ljava/lang/String;Z)V
    .locals 12

    .line 269
    move-object v10, p0

    iget-object v0, v10, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 270
    new-instance v11, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    .line 271
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v0 .. v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->initMorePopWindow(ZZZZZZILjava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, v10, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-direct {v11, v0, v2, v3, v1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;-><init>(Landroid/view/View;IILandroid/app/Activity;)V

    iput-object v11, v10, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    .line 275
    if-eqz v11, :cond_0

    .line 276
    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getMoreMenu()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, v10, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->xoff:I

    iget v2, v10, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->yoff:I

    invoke-virtual {v11, v0, v1, v2}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->showAtLocationBasedAnchorMy(Landroid/widget/ImageView;II)V

    .line 277
    :cond_0
    return-void
.end method


# virtual methods
.method public CanCompress(I)Z
    .locals 2

    .line 1189
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1193
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1194
    const/4 p1, 0x1

    return p1

    .line 1196
    :cond_1
    return v1

    .line 1190
    :cond_2
    :goto_0
    return v1
.end method

.method public afreshPopWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 186
    iget v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemMorePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPosition:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    .line 189
    if-eqz p1, :cond_1

    .line 190
    iget v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPosition:I

    invoke-direct {p0, p1, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->afreshPop(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;I)V

    .line 193
    :cond_1
    return-void
.end method

.method public changeMode(I)Z
    .locals 2

    .line 1364
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    if-eq v0, p1, :cond_1

    .line 1365
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1367
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->clearChecked()V

    .line 1368
    nop

    .line 1372
    :goto_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput p1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 1373
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V

    .line 1374
    return v0

    .line 1376
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public changeModeFromSearchToNormal()V
    .locals 1

    .line 1383
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->changeMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1385
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V

    .line 1388
    :cond_1
    return-void
.end method

.method public clearChecked()V
    .locals 1

    .line 984
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 985
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V

    .line 986
    return-void
.end method

.method public clearList()V
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1058
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1059
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V

    .line 1060
    return-void
.end method

.method public clearListOnly()V
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1064
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1065
    return-void
.end method

.method public clearSelected(I)V
    .locals 1

    .line 972
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 973
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->clearPasteList()V

    .line 975
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 976
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemEditFileList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 977
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V

    .line 978
    return-void
.end method

.method public getCheckedFileInfoItemsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 934
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 935
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 936
    return-object v0
.end method

.method public getCheckedItemsCount()I
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFirstCheckedFileInfoItem()Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    return-object v0

    .line 963
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    return-object p1

    .line 1044
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemEditFileInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 945
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 946
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 947
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 949
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemEditFileList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 951
    :goto_0
    return-object v0
.end method

.method public getItemEditSelect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemEditFileList:Ljava/util/List;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsStatus(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getPosition(Lcom/jrdcom/filemanager/utils/FileInfo;)I
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getShowOrHideFileListByList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1480
    nop

    .line 1481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1482
    if-nez p1, :cond_0

    .line 1483
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1486
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPrivateLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne v1, v2, :cond_1

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-ltz v1, :cond_1

    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/16 v3, 0x9

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 1488
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    iget-object v3, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, v3, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    .line 1489
    invoke-virtual {v1, v3}, Lcom/jrdcom/filemanager/utils/FileListCache;->hasCachedPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1490
    :cond_2
    sget-object v1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAndShowHideFile ==\u300b current key no exist cache==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v4, v4, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ==> category key ==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {v1, p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->setAllFileList(Ljava/util/List;)V

    .line 1493
    :cond_3
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    if-eqz v1, :cond_4

    .line 1494
    return-object p1

    .line 1496
    :cond_4
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 1497
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1498
    if-eqz v4, :cond_7

    .line 1499
    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->isHideFile()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    move v5, v1

    goto :goto_2

    :cond_6
    :goto_1
    move v5, v2

    .line 1500
    :goto_2
    if-nez v5, :cond_7

    .line 1501
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1496
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1505
    :cond_8
    return-object v0
.end method

.method public initMorePopWindow(ZZZZZZILjava/lang/String;Z)Landroid/view/View;
    .locals 16

    .line 1232
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    iget-object v2, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1233
    const v3, 0x7f0b0046

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1235
    const v3, 0x7f08004b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1236
    const v4, 0x7f080045

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1237
    const v5, 0x7f080102

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1238
    const v6, 0x7f080052

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 1239
    const v7, 0x7f08005d

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1240
    const v8, 0x7f080129

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 1241
    const v9, 0x7f080082

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 1242
    const v10, 0x7f08003d

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 1243
    const v11, 0x7f080161

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 1244
    const v12, 0x7f080166

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 1245
    const v13, 0x7f0800e2

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 1246
    const v14, 0x7f08015d

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 1247
    iget-object v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1248
    iget-object v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1249
    iget-object v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1250
    iget-object v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1251
    iget-object v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1252
    iget-object v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1253
    iget-object v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1254
    iget-object v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1255
    iget-object v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1256
    iget-object v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1257
    iget-object v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1258
    iget-object v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v15

    const/16 v1, 0x8

    if-eqz v15, :cond_0

    .line 1259
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1260
    iget-object v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v15, Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1262
    :cond_0
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1264
    :goto_0
    iget-boolean v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isInPrivacyMode:Z

    if-eqz v15, :cond_1

    iget-boolean v15, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isSafeboxLocation:Z

    if-eqz v15, :cond_1

    .line 1265
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1266
    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1267
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1268
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1269
    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1270
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1271
    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1272
    return-object v2

    .line 1274
    :cond_1
    invoke-virtual {v14, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1275
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1276
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1277
    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1278
    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1279
    invoke-virtual {v7, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1280
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1281
    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1282
    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1283
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1284
    invoke-virtual {v14, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1285
    sget v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    .line 1286
    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1287
    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v3, 0x0

    goto :goto_1

    .line 1288
    :cond_2
    if-eqz p1, :cond_3

    .line 1289
    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1290
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 1292
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1293
    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1295
    :goto_1
    if-eqz p2, :cond_4

    .line 1296
    invoke-virtual {v11, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1297
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1298
    invoke-virtual {v12, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1299
    invoke-virtual {v14, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v3, p8

    goto/16 :goto_4

    .line 1301
    :cond_4
    if-eqz p4, :cond_5

    if-eqz p5, :cond_5

    if-nez p6, :cond_5

    .line 1302
    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1303
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1304
    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1305
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1306
    invoke-virtual {v14, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v3, p8

    goto/16 :goto_3

    .line 1307
    :cond_5
    if-eqz p4, :cond_6

    if-nez p6, :cond_6

    .line 1308
    invoke-virtual {v11, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1309
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1310
    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1311
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1312
    invoke-virtual {v14, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v3, p8

    goto :goto_3

    .line 1313
    :cond_6
    if-eqz p4, :cond_9

    if-eqz p6, :cond_9

    .line 1314
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1315
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1317
    if-eqz p9, :cond_8

    iget-object v0, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-boolean v4, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    move v6, v3

    move-object/from16 v3, p8

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1318
    if-nez p3, :cond_7

    .line 1319
    invoke-virtual {v13, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1320
    invoke-virtual {v14, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 1322
    :cond_7
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1323
    invoke-virtual {v14, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 1317
    :cond_8
    move-object/from16 v3, p8

    goto :goto_3

    .line 1313
    :cond_9
    move-object/from16 v3, p8

    const/4 v6, 0x0

    .line 1327
    if-eqz p9, :cond_b

    iget-object v0, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-boolean v4, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    invoke-static {v3, v0, v4}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isExternalStorage(Ljava/lang/String;Lcom/jrdcom/filemanager/manager/MountManager;Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1328
    if-nez p3, :cond_a

    .line 1329
    invoke-virtual {v13, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1330
    invoke-virtual {v14, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 1332
    :cond_a
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1333
    invoke-virtual {v14, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1336
    :cond_b
    :goto_2
    invoke-virtual {v11, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1338
    :cond_c
    :goto_3
    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1342
    :goto_4
    if-eqz v3, :cond_d

    .line 1343
    const-string v0, "/storage/emulated/0/Locker"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1344
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1345
    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1346
    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1347
    invoke-virtual {v11, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1348
    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1349
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1354
    :cond_d
    return-object v2
.end method

.method public isAllItemChecked()Z
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCanShare()Z
    .locals 4

    .line 1221
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1223
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrmFile()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1226
    :cond_1
    goto :goto_0

    .line 1224
    :cond_2
    :goto_1
    return v1

    .line 1227
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isCanShare(I)Z
    .locals 2

    .line 1202
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    .line 1205
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1206
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrmFile()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1209
    :cond_1
    const/4 p1, 0x1

    return p1

    .line 1207
    :cond_2
    :goto_0
    return v0

    .line 1203
    :cond_3
    :goto_1
    return v0

    .line 1213
    :catch_0
    move-exception p1

    .line 1214
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1211
    :catch_1
    move-exception p1

    .line 1212
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1215
    nop

    .line 1216
    :goto_2
    return v0
.end method

.method public isHasDrm(I)Z
    .locals 2

    .line 1160
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    if-gez p1, :cond_0

    goto :goto_0

    .line 1163
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1164
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrmFile()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 1161
    :cond_3
    :goto_0
    return v0

    .line 1167
    :catch_0
    move-exception p1

    .line 1168
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1165
    :catch_1
    move-exception p1

    .line 1166
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1169
    nop

    .line 1170
    :goto_1
    return v0
.end method

.method public isHasSDDrm(I)Z
    .locals 2

    .line 1175
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1178
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1179
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmSDFile(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1176
    :cond_1
    :goto_0
    return v0

    .line 1182
    :catch_0
    move-exception p1

    .line 1183
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1180
    :catch_1
    move-exception p1

    .line 1181
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1184
    nop

    .line 1185
    :goto_1
    return v0
.end method

.method public isItemSelected(I)Z
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1137
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMode(I)Z
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsStatus(Landroid/content/Context;)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected loadGridImage(Lcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 3

    .line 1421
    new-instance v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$7;-><init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;Lcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 1433
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$8;

    invoke-direct {v2, p0, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$8;-><init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;Landroid/os/Handler;)V

    invoke-virtual {p1, v1, p2, v2}, Lcom/jrdcom/filemanager/manager/IconManager;->loadImage(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;)Landroid/graphics/drawable/Drawable;

    .line 1443
    return-void
.end method

.method protected loadImage(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/view/FileItemView;)V
    .locals 3

    .line 1017
    new-instance v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$5;-><init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;Lcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 1027
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$6;

    invoke-direct {v2, p0, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$6;-><init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;Landroid/os/Handler;)V

    invoke-virtual {p2, v1, p1, v2}, Lcom/jrdcom/filemanager/manager/IconManager;->loadImage(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;)Landroid/graphics/drawable/Drawable;

    .line 1036
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 71
    check-cast p1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->onBindViewHolder(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;I)V
    .locals 16

    .line 319
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    if-eqz v7, :cond_1b

    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 323
    :cond_0
    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 324
    invoke-virtual {v9}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 326
    iget-object v1, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mOnItemClickListener:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemClickListener;

    if-eqz v1, :cond_2

    .line 327
    iget-object v1, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$1;

    invoke-direct {v2, v6, v0, v7}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$1;-><init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;Ljava/lang/String;Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const-string v1, "/storage/emulated/0/Locker/Image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 354
    const-string v1, "/storage/emulated/0/Locker/Video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    const-string v1, "/storage/emulated/0/Locker/Audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    const-string v1, "/storage/emulated/0/Locker/Installers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 357
    const-string v1, "/storage/emulated/0/Locker/Archives"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 358
    const-string v1, "/storage/emulated/0/Locker/Documents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    const-string v1, "/storage/emulated/0/Locker/Other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    const-string v1, "/storage/emulated/0/Locker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    :cond_1
    sget-object v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Locker default folder, long click disabled"

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 366
    :cond_2
    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    .line 367
    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsStatus(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 368
    const-string v1, "icon"

    const/4 v12, 0x1

    const/16 v4, 0x8

    if-eqz v9, :cond_c

    iget-object v5, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v5}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isGridMode(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 369
    iget-object v5, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v5

    .line 370
    iget-object v13, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v13}, Lcom/jrdcom/filemanager/view/FileItemView;->getName()Landroid/widget/TextView;

    move-result-object v13

    .line 371
    iget-object v14, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v14}, Lcom/jrdcom/filemanager/view/FileItemView;->getSize()Landroid/widget/TextView;

    move-result-object v14

    .line 372
    iget-object v15, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v15}, Lcom/jrdcom/filemanager/view/FileItemView;->getLineview()Landroid/widget/TextView;

    move-result-object v15

    .line 373
    iget-object v3, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/view/FileItemView;->getMoreMenu()Landroid/widget/ImageView;

    move-result-object v3

    .line 374
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getMesbackLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 375
    iget-object v11, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v11}, Lcom/jrdcom/filemanager/view/FileItemView;->getGridMesLayout()Landroid/widget/LinearLayout;

    move-result-object v11

    .line 376
    invoke-virtual {v9}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 377
    invoke-virtual {v6, v13, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setNameText(Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mesbac"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gridMes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLine"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moreMenu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 385
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 386
    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    if-eq v0, v12, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    .line 415
    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getTime()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0, v14, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 417
    goto :goto_0

    .line 409
    :cond_4
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getTime()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0, v14, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 410
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getQueryText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v13, v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setSearchHighLight(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 413
    goto :goto_0

    .line 399
    :cond_5
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getTime()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0, v14, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 401
    iget-boolean v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isSafeboxLocation:Z

    if-eqz v0, :cond_6

    .line 403
    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getQueryText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v13, v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setSearchHighLight(Landroid/widget/TextView;Ljava/lang/String;Z)V

    goto :goto_0

    .line 405
    :cond_6
    const/4 v1, 0x0

    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v13, v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setSearchHighLight(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 407
    goto :goto_0

    .line 388
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 390
    invoke-direct {v6, v7, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setCheckbox(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 392
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getTime()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0, v14, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 393
    goto :goto_0

    .line 395
    :cond_8
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getTime()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0, v14, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 397
    nop

    .line 421
    :goto_0
    iget-boolean v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isPathLocation:Z

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Lcom/jrdcom/filemanager/utils/FileInfo;->isPrivateFile()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 422
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getPrivateIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 424
    :cond_9
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getPrivateIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    :goto_1
    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    .line 427
    iget-boolean v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isInPrivacyMode:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isPrivateLocation:Z

    if-eqz v0, :cond_a

    .line 428
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 430
    :cond_a
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    :cond_b
    :goto_2
    iget-object v2, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    sget v4, Lcom/jrdcom/filemanager/manager/IconManager;->GRID_ITEM:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setIconGrid(ILcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;IZ)V

    .line 435
    iget-object v11, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v14, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$2;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v4, p2

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$2;-><init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;Landroid/widget/TextView;ILcom/jrdcom/filemanager/utils/FileInfo;)V

    invoke-virtual {v11, v14}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 479
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileItem:Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setItemLayoutbg(Landroid/widget/LinearLayout;)V

    .line 480
    invoke-direct {v6, v10, v7}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->hideEditMoreMenu(Ljava/lang/String;Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;)V

    .line 481
    goto/16 :goto_8

    .line 482
    :cond_c
    iget-boolean v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isPathLocation:Z

    if-eqz v0, :cond_d

    invoke-virtual {v9}, Lcom/jrdcom/filemanager/utils/FileInfo;->isPrivateFile()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 483
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getPrivateIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 485
    :cond_d
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getPrivateIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    :goto_3
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    .line 488
    iget-object v2, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/view/FileItemView;->getName()Landroid/widget/TextView;

    move-result-object v10

    .line 489
    iget-object v2, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/view/FileItemView;->getMoreMenu()Landroid/widget/ImageView;

    move-result-object v2

    .line 490
    invoke-virtual {v9}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 491
    invoke-virtual {v6, v10, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setNameText(Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 492
    iget-object v3, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileItem:Landroid/widget/LinearLayout;

    invoke-direct {v6, v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setItemLayoutbg(Landroid/widget/LinearLayout;)V

    .line 493
    invoke-virtual {v6, v10, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setNameText(Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 495
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 497
    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    if-eq v0, v12, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_e

    goto/16 :goto_6

    .line 532
    :cond_e
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getTime()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FileItemView;->getSize()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 534
    goto/16 :goto_6

    .line 525
    :cond_f
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getTime()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FileItemView;->getSize()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 526
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getLineview()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getQueryText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v10, v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setSearchHighLight(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 530
    goto/16 :goto_6

    .line 515
    :cond_10
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getTime()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FileItemView;->getSize()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 517
    iget-boolean v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isSafeboxLocation:Z

    if-eqz v0, :cond_11

    .line 519
    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileSafeBrowserActivity;->getQueryText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v10, v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setSearchHighLight(Landroid/widget/TextView;Ljava/lang/String;Z)V

    goto :goto_6

    .line 521
    :cond_11
    const/4 v1, 0x0

    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v10, v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setSearchHighLight(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 523
    goto :goto_6

    .line 499
    :cond_12
    const/4 v1, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 500
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 501
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getLineview()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    invoke-direct {v6, v7, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setCheckbox(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 503
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getTime()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FileItemView;->getSize()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 504
    goto :goto_6

    .line 506
    :cond_13
    iget-boolean v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isThirdAPP:Z

    if-nez v0, :cond_15

    iget-boolean v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isPrivateLocation:Z

    if-eqz v0, :cond_14

    goto :goto_4

    .line 509
    :cond_14
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 507
    :cond_15
    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    :goto_5
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getLineview()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 512
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getTime()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FileItemView;->getSize()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v9}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 513
    nop

    .line 538
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v12

    if-lt v8, v0, :cond_16

    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 539
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getLineview()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 541
    :cond_16
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getLineview()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    :goto_7
    iget-object v2, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    sget v4, Lcom/jrdcom/filemanager/manager/IconManager;->LIST_ITEM:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setIcon(ILcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;IZ)V

    .line 545
    iget-object v13, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v14, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v10

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;-><init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;ILcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 593
    invoke-direct {v6, v11, v7}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->hideEditMoreMenu(Ljava/lang/String;Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;)V

    .line 599
    :goto_8
    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isListMode(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->isInMultiWindowMode:Z

    if-eqz v0, :cond_17

    .line 600
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$4;

    invoke-direct {v1, v6, v8, v7}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$4;-><init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;ILcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 629
    :cond_17
    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    .line 630
    iget-object v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mListView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 632
    iget v1, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPrePosition:I

    iget-object v2, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    if-le v1, v2, :cond_18

    .line 633
    iget-object v1, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    iput v1, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPrePosition:I

    .line 635
    :cond_18
    iget v1, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPrePosition:I

    if-ge v1, v0, :cond_19

    .line 636
    iput v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPrePosition:I

    .line 638
    :cond_19
    iget v0, v6, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPrePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    if-ne v0, v8, :cond_1a

    .line 641
    invoke-direct {v6, v8}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isNotFocus(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 642
    iget-object v0, v7, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 648
    :cond_1a
    return-void

    .line 320
    :cond_1b
    :goto_9
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;
    .locals 3

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCurrentTime:J

    .line 303
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    .line 304
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getSystemDateFormat(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 305
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isPrivateLocation:Z

    .line 306
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isSafeboxLocation:Z

    .line 307
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isInPrivacyMode:Z

    .line 308
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isGridMode(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 309
    new-instance p2, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/jrdcom/filemanager/utils/CommonUtils;->GRID_ITEM_RES_ID:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;-><init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;Landroid/view/View;)V

    goto :goto_2

    .line 311
    :cond_2
    new-instance p2, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/jrdcom/filemanager/utils/CommonUtils;->LIST_ITEM_RES_ID:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;-><init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;Landroid/view/View;)V

    .line 313
    :goto_2
    return-object p2
.end method

.method public refresh()V
    .locals 3

    .line 1068
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1069
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-direct {p0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getShowOrHideFileList(Lcom/jrdcom/filemanager/manager/FileInfoManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1070
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setDisablePrivatefolder(Z)V

    .line 1071
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/task/FolderCountTask;->getInstance(Lcom/jrdcom/filemanager/utils/TaskInfo;Z)Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1072
    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/task/FolderCountTask;->getInstance(Lcom/jrdcom/filemanager/utils/TaskInfo;Z)Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/task/BaseAsyncTask;->cancel()V

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileShowListCount:I

    .line 1075
    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isListMode(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1076
    invoke-direct {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->loadCountText()V

    .line 1078
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V

    .line 1079
    return-void
.end method

.method public refresh(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setDisablePrivatefolder(Z)V

    .line 172
    return-void
.end method

.method public refreshSortAdapter()V
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1083
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getShowFileList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1084
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setDisablePrivatefolder(Z)V

    .line 1085
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V

    .line 1086
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 905
    if-eqz p1, :cond_0

    .line 906
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 908
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V

    .line 909
    return-void
.end method

.method public setCanSetFocus(Z)V
    .locals 1

    .line 155
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPrePosition:I

    if-nez v0, :cond_1

    .line 156
    :cond_0
    return-void

    .line 159
    :cond_1
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->isCanSetFocus:Z

    .line 160
    return-void
.end method

.method public setChecked(IZ)V
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1106
    return-void

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1109
    if-eqz p2, :cond_1

    .line 1110
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1111
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1114
    :cond_1
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1116
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V

    .line 1117
    return-void
.end method

.method public setChecked(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1548
    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1549
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemEditFileList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_0

    .line 1550
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemEditFileList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1552
    :cond_0
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemEditFileList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1554
    :cond_1
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1555
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1557
    :goto_0
    return-void
.end method

.method public setDisablePrivatefolder(Z)V
    .locals 3

    .line 1581
    if-eqz p1, :cond_1

    .line 1582
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1583
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1584
    if-eqz v1, :cond_0

    const-string v2, "/storage/emulated/0/Locker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1585
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1586
    return-void

    .line 1588
    :cond_0
    goto :goto_0

    .line 1590
    :cond_1
    return-void
.end method

.method public setHighLight(Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/Spanned;
    .locals 8

    .line 824
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 826
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 827
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 828
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x24

    const/16 v5, 0x5c

    if-ge v3, v1, :cond_2

    .line 829
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 830
    const/16 v7, 0x28

    if-eq v6, v7, :cond_1

    const/16 v7, 0x29

    if-eq v6, v7, :cond_1

    const/16 v7, 0x5b

    if-eq v6, v7, :cond_1

    const/16 v7, 0x5d

    if-eq v6, v7, :cond_1

    const/16 v7, 0x7b

    if-eq v6, v7, :cond_1

    const/16 v7, 0x7d

    if-eq v6, v7, :cond_1

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_1

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_1

    if-eq v6, v4, :cond_1

    const/16 v4, 0x5e

    if-ne v6, v4, :cond_0

    goto :goto_1

    .line 835
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 832
    :cond_1
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 828
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 838
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?i)"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 839
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 840
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 841
    :goto_3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 842
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 845
    move v6, v2

    :goto_4
    if-ge v6, v3, :cond_4

    .line 846
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 847
    if-ne v7, v4, :cond_3

    .line 848
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 851
    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 855
    :cond_4
    const-string v0, "<font color=\'#D2A727\'>"

    const-string v3, "</font>"

    if-eqz p3, :cond_6

    .line 857
    :try_start_1
    sget-boolean v6, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v6, :cond_5

    .line 858
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_6

    .line 860
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'#00D2FF\'>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_6

    .line 865
    :cond_6
    sget-boolean v6, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v6, :cond_7

    .line 866
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_6

    .line 868
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'#008CAA\'>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 873
    :goto_6
    goto/16 :goto_3

    .line 874
    :cond_8
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 875
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 876
    return-object p1

    .line 877
    :catch_0
    move-exception p1

    .line 878
    invoke-virtual {p1}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    .line 881
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public setItemEditSelect(I)V
    .locals 1

    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1147
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemEditFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemEditFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mItemEditFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1143
    :cond_2
    :goto_0
    return-void

    .line 1153
    :catch_0
    move-exception p1

    .line 1154
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1151
    :catch_1
    move-exception p1

    .line 1152
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1155
    :goto_1
    nop

    .line 1156
    :goto_2
    return-void
.end method

.method protected setNameText(Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 2

    .line 886
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isMountPoint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getShowName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 890
    :cond_0
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getShowName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemClickListener;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mOnItemClickListener:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemClickListener;

    .line 289
    return-void
.end method

.method public setOnItemFocusChangeListener(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mOnItemFocusChangeListener:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;

    .line 297
    return-void
.end method

.method public setPrePosition(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mPrePosition:I

    .line 110
    return-void
.end method

.method public setSearchHighLight(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 1

    .line 812
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setHighLight(Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/Spanned;

    move-result-object p2

    .line 816
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    goto :goto_0

    .line 817
    :catch_0
    move-exception p1

    .line 818
    invoke-virtual {p1}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    .line 821
    :cond_0
    :goto_0
    return-void
.end method

.method public setSelect(I)V
    .locals 2

    .line 1125
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1126
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    iput p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->selectedPosition:I

    goto :goto_0

    .line 1130
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCheckedFileList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1132
    :goto_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V

    .line 1133
    return-void
.end method

.method public setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 9

    .line 744
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileLastModifiedTime()J

    move-result-wide v0

    .line 745
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 748
    :cond_0
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isRecentCategoryMode()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_7

    .line 749
    iget-wide v4, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mCurrentTime:J

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    .line 750
    nop

    .line 756
    const-wide/16 v0, 0x3c

    cmp-long v2, v4, v0

    if-gez v2, :cond_1

    .line 757
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 758
    :cond_1
    const-wide/16 v6, 0xe10

    const-string v8, " "

    if-ltz v2, :cond_3

    cmp-long v2, v4, v6

    if-gez v2, :cond_3

    .line 759
    const-wide/16 v6, 0x78

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 762
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const v1, 0x7f0c0096

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 764
    :cond_3
    cmp-long v0, v4, v6

    const-wide/32 v1, 0x15180

    if-ltz v0, :cond_5

    cmp-long v0, v4, v1

    if-gez v0, :cond_5

    .line 765
    const-wide/16 v0, 0x1c20

    cmp-long v0, v4, v0

    if-gez v0, :cond_4

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const v2, 0x7f0c0082

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/FileManagerApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 768
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const v2, 0x7f0c0083

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/FileManagerApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 770
    :cond_5
    cmp-long v0, v4, v1

    if-ltz v0, :cond_6

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const v2, 0x7f0c004d

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/FileManagerApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 770
    :cond_6
    const-string v0, ""

    .line 773
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 774
    :cond_7
    iget-object v2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mDateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_8

    .line 775
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 774
    :cond_8
    :goto_1
    nop

    .line 779
    :goto_2
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v0

    .line 780
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isListMode(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    .line 782
    if-nez v0, :cond_a

    .line 783
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isRecentCategoryMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 784
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileSizeStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 786
    :cond_9
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileSizeStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 788
    :cond_a
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    .line 789
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c007c

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFolderCount()I

    move-result p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " \u2022 "

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 793
    :cond_b
    if-nez v0, :cond_d

    .line 794
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    if-ne v0, v2, :cond_c

    .line 795
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 796
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 798
    :cond_c
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 800
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileSizeStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 803
    :cond_d
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 804
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 808
    :cond_e
    :goto_3
    return-void
.end method

.method public setViewMode(Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object p1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefViewBy(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->notifyDataSetChanged()V

    .line 150
    return-void
.end method
