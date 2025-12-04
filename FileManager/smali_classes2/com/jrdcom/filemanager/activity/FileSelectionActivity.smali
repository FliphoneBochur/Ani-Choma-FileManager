.class public Lcom/jrdcom/filemanager/activity/FileSelectionActivity;
.super Lcom/jrdcom/filemanager/activity/FileBaseActivity;
.source "FileSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/activity/FileSelectionActivity$ListListener;
    }
.end annotation


# static fields
.field public static final EXTRA_DRM_LEVEL:Ljava/lang/String; = "android.intent.extra.drm_level"

.field private static final HIDE_DIALOG:I = 0xc

.field private static final SHOW_DIALOG:I = 0xb

.field private static final TAG:Ljava/lang/String; = "FileSelectionActivity"

.field private static mCategoryPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo; = null

.field private static mCurPath:Ljava/lang/String; = null

.field private static mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo; = null

.field private static final mUnSupportedFormat:Ljava/lang/String; = "bad mime type"


# instance fields
.field private itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

.field private mCurFilePath:Ljava/lang/String;

.field private mDrmLevel:I

.field private mFileCategory:Ljava/lang/String;

.field private mFileHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mListView:Landroid/widget/ListView;

.field private mMainToolbar:Landroid/support/v7/widget/Toolbar;

.field private mNoFileLayout:Landroid/widget/LinearLayout;

.field private mPathText:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/Dialog;

.field private mSelectedFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

.field private mTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mTop:I

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mDrmLevel:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    .line 196
    new-instance v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$2;-><init>(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mFileHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$3;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$3;-><init>(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/widget/ListView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/app/Dialog;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mProgressDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mProgressDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)I
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->restoreSelectedPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->restoreListPosition(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->showNoListView()V

    return-void
.end method

.method static synthetic access$800(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mFileHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private backToRootPath()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez v0, :cond_0

    .line 354
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getRootPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    .line 357
    return-void
.end method

.method private compareMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 437
    const-string v0, "/"

    .line 438
    nop

    .line 439
    const/4 v1, 0x1

    if-eqz p1, :cond_6

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_5

    .line 442
    :cond_0
    const-string v2, "application/x-ogg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    const-string p1, "audio/"

    .line 445
    :cond_1
    const-string v2, "unknown_ext_mimeType"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 446
    const-string v2, "unknown_ext_null_mimeType"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "bad mime type"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    .line 449
    :cond_2
    const-string v2, "unknown_3gpp_mimeType"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 450
    const-string p2, "video/"

    .line 453
    :cond_3
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 454
    :try_start_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 457
    :catch_0
    move-exception p2

    goto :goto_0

    .line 455
    :catch_1
    move-exception p2

    goto :goto_1

    .line 457
    :catch_2
    move-exception p2

    move-object p1, v2

    .line 458
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 455
    :catch_3
    move-exception p2

    move-object p1, v2

    .line 456
    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 459
    :goto_2
    nop

    .line 460
    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 461
    return v1

    .line 463
    :cond_4
    return v3

    .line 447
    :cond_5
    :goto_4
    return v3

    .line 440
    :cond_6
    :goto_5
    return v1
.end method

.method private onPathChanged()V
    .locals 1

    .line 349
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->refreshPath(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private refreshPath(Ljava/lang/String;)V
    .locals 1

    .line 502
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurFilePath:Ljava/lang/String;

    .line 503
    if-eqz p1, :cond_3

    .line 504
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/MountManager;->isRootPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 505
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurFilePath:Ljava/lang/String;

    .line 506
    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 507
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    nop

    .line 510
    sget-object v0, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    sget-object v0, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 512
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mPathText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mPathText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :cond_1
    :goto_0
    goto :goto_1

    .line 518
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mPathText:Landroid/widget/TextView;

    const v0, 0x7f0c002b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 521
    :cond_3
    :goto_1
    return-void
.end method

.method private restoreListPosition(I)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 293
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    goto :goto_0

    .line 294
    :cond_0
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    .line 295
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 297
    iget v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mTop:I

    if-ne v1, v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 304
    :cond_2
    :goto_0
    return-void
.end method

.method private restoreSelectedPosition()I
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getPosition(Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result v0

    .line 287
    return v0

    .line 283
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private showDirectoryContent(Ljava/lang/String;)V
    .locals 9

    .line 172
    sput-object p1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->onPathChanged()V

    .line 174
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isRootPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->showRootPathContent()V

    .line 176
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_1

    .line 179
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v3, 0x1

    const/4 v4, 0x7

    const/16 v5, 0x11

    iget-object v6, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mFileCategory:Ljava/lang/String;

    iget v8, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mDrmLevel:I

    move-object v1, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v8}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;IIILjava/lang/String;Ljava/lang/String;I)V

    .line 181
    :cond_1
    return-void
.end method

.method private showNoListView()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getList()Ljava/util/List;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mNoFileLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 231
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mNoFileLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    :goto_1
    return-void
.end method

.method private showRootPathContent()V
    .locals 3

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getMountPointFileInfo()Ljava/util/List;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_0

    .line 332
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addItemList(Ljava/util/List;)V

    .line 335
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->loadFileInfoList(Ljava/lang/String;I)V

    .line 337
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->refresh()V

    .line 338
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->notifyDataSetChanged()V

    .line 340
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCategoryPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    if-nez v0, :cond_1

    .line 341
    return-void

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getPosition(Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result v0

    .line 344
    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->restoreListPosition(I)V

    .line 346
    return-void
.end method


# virtual methods
.method public checkCreatePermission()V
    .locals 0

    .line 587
    return-void
.end method

.method public checkPermission()V
    .locals 2

    .line 591
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isUerGrant(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    invoke-static {v0, p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->popPermissionDialog(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 595
    :cond_0
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->permissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 596
    sget-object v1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->permissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 597
    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->checkAndRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 601
    :cond_1
    :goto_0
    return-void
.end method

.method public getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 186
    new-instance p7, Lcom/jrdcom/filemanager/utils/TaskInfo;

    new-instance v2, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$ListListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$ListListener;-><init>(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;)V

    invoke-direct {p7, p1, v2, p4}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 187
    invoke-virtual {p7, p2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setRefreshMode(I)V

    .line 188
    invoke-virtual {p7, v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCreateTaskTime(J)V

    .line 189
    invoke-virtual {p7, p6}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDestPath(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p7, p3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setAdapterMode(I)V

    .line 191
    invoke-virtual {p7, p5}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSrcPath(Ljava/lang/String;)V

    .line 192
    iget p2, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mDrmLevel:I

    invoke-virtual {p7, p2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDrmType(I)V

    .line 193
    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1, p7}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addNewTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 194
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isRootPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->finish()V

    goto :goto_0

    .line 363
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    .line 364
    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isSdOrPhonePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    const/4 v0, 0x0

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 368
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->backToRootPath()V

    goto :goto_0

    .line 371
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    new-instance v1, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-direct {v1, v2, v0}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 374
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    .line 376
    :goto_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 470
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 309
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 310
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez p1, :cond_0

    .line 311
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1, p0}, Lcom/jrdcom/filemanager/manager/MountManager;->init(Landroid/content/Context;)V

    .line 314
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->onPathChanged()V

    .line 315
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/MountManager;->isRootPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 316
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getMountPointFileInfo()Ljava/util/List;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_1

    .line 319
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addItemList(Ljava/util/List;)V

    .line 322
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    invoke-virtual {p1, v0, v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->loadFileInfoList(Ljava/lang/String;I)V

    .line 324
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->refresh()V

    .line 326
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 159
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 605
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onDestroy()V

    .line 606
    invoke-static {}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->closePermissionDialogShowning()V

    .line 607
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 611
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 612
    sput-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCategoryPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 614
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 381
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    .line 382
    iget-object p4, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {p4, p3}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getItem(I)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object p4

    .line 383
    iput-object p4, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mSelectedFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 384
    invoke-virtual {p4}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 386
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-object p5, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-virtual {p1, p5}, Lcom/jrdcom/filemanager/manager/MountManager;->isRootPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 387
    sput-object p4, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCategoryPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    goto :goto_0

    .line 389
    :cond_0
    sput-object p4, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mPositionInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 392
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 393
    iput p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mTop:I

    .line 394
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {p1, p3}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getItem(I)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mSelectedFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 395
    invoke-virtual {p4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 396
    goto/16 :goto_3

    .line 397
    :cond_1
    invoke-virtual {p4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object p2

    .line 398
    iget-object p3, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string p5, "android.intent.action.PICK"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p5, -0x1

    const v0, 0x7f0c009a

    if-eqz p3, :cond_4

    sget-object p3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mIntent:Landroid/content/Intent;

    .line 399
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 400
    const-string p3, "audio/"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "/ogg"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 401
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 402
    return-void

    .line 404
    :cond_2
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 405
    nop

    .line 406
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->isShareMediaURI:Z

    if-eqz v1, :cond_3

    .line 407
    invoke-virtual {p4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-static {v1, v2, p2}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMediaContentUri(Ljava/io/File;Lcom/jrdcom/filemanager/manager/FileInfoManager;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 409
    :cond_3
    invoke-virtual {p4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p4}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result v3

    invoke-static {v1, v2, p2, v3}, Lcom/jrdcom/filemanager/utils/FileUtils;->getContentUri(Ljava/io/File;Lcom/jrdcom/filemanager/manager/FileInfoManager;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    .line 411
    :goto_1
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 412
    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0, p5, p3}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 414
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->finish()V

    .line 417
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->compareMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 418
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(I)V

    .line 419
    return-void

    .line 421
    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 422
    nop

    .line 423
    iget-object p3, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean p3, p3, Lcom/jrdcom/filemanager/FileManagerApplication;->isShareMediaURI:Z

    if-eqz p3, :cond_6

    .line 424
    invoke-virtual {p4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object p3

    iget-object p4, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p4, p4, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-static {p3, p4, p2}, Lcom/jrdcom/filemanager/utils/FileUtils;->getMediaContentUri(Ljava/io/File;Lcom/jrdcom/filemanager/manager/FileInfoManager;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_2

    .line 426
    :cond_6
    invoke-virtual {p4}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object p3

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p4}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result p4

    invoke-static {p3, v0, p2, p4}, Lcom/jrdcom/filemanager/utils/FileUtils;->getContentUri(Ljava/io/File;Lcom/jrdcom/filemanager/manager/FileInfoManager;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p2

    .line 428
    :goto_2
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 429
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, p5, p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 431
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->finish()V

    .line 434
    :goto_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 484
    const/16 v0, 0x13

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 487
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 488
    return v1

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_2

    .line 493
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 494
    return v1

    .line 497
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 475
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->finish()V

    .line 478
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMounted()V
    .locals 0

    .line 554
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onMounted()V

    .line 555
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->refreshRootAdapter()V

    .line 556
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->onBackPressed()V

    .line 166
    const/4 p1, 0x1

    return p1

    .line 168
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 524
    const/4 p3, 0x3

    if-ne p3, p1, :cond_2

    .line 525
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_2

    aget-object v0, p2, p3

    .line 526
    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 528
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->setSecondRequestPermission(Landroid/content/Context;)V

    .line 529
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->finish()V

    goto :goto_1

    .line 532
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 525
    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 538
    :cond_2
    return-void
.end method

.method public onRestart()V
    .locals 0

    .line 580
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onRestart()V

    .line 581
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->refreshRootAdapter()V

    .line 582
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->checkPermission()V

    .line 583
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 567
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onResume()V

    .line 568
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mPathText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 569
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mPathText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mPathText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 575
    :cond_1
    :goto_0
    return-void
.end method

.method public onUnmounted(Ljava/lang/String;)V
    .locals 0

    .line 543
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onUnmounted(Ljava/lang/String;)V

    .line 544
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-eqz p1, :cond_0

    .line 545
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getRootPath()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    .line 547
    :cond_0
    sget-object p1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 548
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 550
    :cond_1
    return-void
.end method

.method protected refreshRootAdapter()V
    .locals 2

    .line 559
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 562
    :cond_0
    return-void
.end method

.method public setMainContentView()V
    .locals 6

    .line 83
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v0, :cond_0

    .line 84
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->setContentView(I)V

    goto :goto_0

    .line 86
    :cond_0
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->setContentView(I)V

    .line 89
    :goto_0
    const v0, 0x7f080158

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    .line 90
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 91
    const v1, 0x7f0b003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 93
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 94
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 95
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 96
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v4}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 99
    new-instance v3, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 102
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 105
    const v3, 0x7f080104

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mPathText:Landroid/widget/TextView;

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->checkPermission()V

    .line 115
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getRootPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mIntent:Landroid/content/Intent;

    .line 117
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mFileCategory:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x4

    const-string v4, "android.intent.extra.drm_level"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mDrmLevel:I

    .line 119
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object v0

    .line 121
    const v3, 0x7f0c002f

    sget v4, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 123
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mNoFileLayout:Landroid/widget/LinearLayout;

    .line 124
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    .line 125
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 127
    new-instance v0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1, v2}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;-><init>(Landroid/content/Context;Lcom/jrdcom/filemanager/manager/FileInfoManager;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    .line 128
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;-><init>(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 154
    return-void
.end method
