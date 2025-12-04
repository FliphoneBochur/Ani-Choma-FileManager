.class public Lcom/jrdcom/filemanager/activity/PathSelectionActivity;
.super Lcom/jrdcom/filemanager/activity/FileBaseActivity;
.source "PathSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/activity/PathSelectionActivity$ListListener;
    }
.end annotation


# static fields
.field private static final ANDROID_PICK:I = 0x1

.field private static final QRD_PICK:I = 0x2

.field private static final RESULT_DIR_SEL:Ljava/lang/String; = "result_dir_sel"

.field private static final TAG:Ljava/lang/String; = "PathSelectionActivity"

.field private static mCurPath:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

.field private mCancel:Landroid/widget/Button;

.field private mCurFilePath:Ljava/lang/String;

.field private mCurrentPick:I

.field private mFileHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mIsDisablePrivateFolder:Z

.field private mListView:Landroid/widget/ListView;

.field private mMainToolbar:Landroid/support/v7/widget/Toolbar;

.field private mOk:Landroid/widget/Button;

.field private mPathText:Landroid/widget/TextView;

.field private mSelectedFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

.field private mTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mTop:I

    .line 59
    iput v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurrentPick:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mIsDisablePrivateFolder:Z

    .line 178
    new-instance v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$3;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$3;-><init>(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mFileHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurrentPick:I

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)I
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->restoreSelectedPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->restoreListPosition(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mFileHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private backToRootPath()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez v0, :cond_0

    .line 309
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getRootPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    .line 313
    return-void
.end method

.method private onPathChanged()V
    .locals 1

    .line 281
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->refreshButton()V

    .line 282
    sget-object v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->refreshPath(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private refreshButton()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-object v1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isRootPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mOk:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 278
    :goto_0
    return-void
.end method

.method private refreshPath(Ljava/lang/String;)V
    .locals 1

    .line 286
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurFilePath:Ljava/lang/String;

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurFilePath="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wye"

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurFilePath:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 289
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/MountManager;->isRootPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 290
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurFilePath:Ljava/lang/String;

    .line 291
    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 292
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    nop

    .line 294
    sget-object v0, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 296
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mPathText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mPathText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_1
    :goto_0
    goto :goto_1

    .line 302
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mPathText:Landroid/widget/TextView;

    const v0, 0x7f0c002b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 305
    :cond_3
    :goto_1
    return-void
.end method

.method private restoreListPosition(I)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 227
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    goto :goto_0

    .line 228
    :cond_0
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    .line 229
    invoke-virtual {v1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 230
    iget v1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mTop:I

    if-ne v1, v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 236
    :cond_2
    :goto_0
    return-void
.end method

.method private restoreSelectedPosition()I
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mSelectedFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    if-nez v0, :cond_0

    .line 216
    const/4 v0, -0x1

    return v0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    .line 219
    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getPosition(Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result v0

    .line 220
    return v0
.end method

.method private showDirectoryContent(Ljava/lang/String;)V
    .locals 9

    .line 138
    sput-object p1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->onPathChanged()V

    .line 140
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-object v1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isRootPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->showRootPathContent()V

    .line 142
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_1

    .line 145
    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v8, -0x1

    move-object v1, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v8}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;IIILjava/lang/String;Ljava/lang/String;I)V

    .line 147
    :cond_1
    return-void
.end method

.method private showRootPathContent()V
    .locals 3

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getMountPointFileInfo()Ljava/util/List;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_0

    .line 242
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addItemList(Ljava/util/List;)V

    .line 245
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    sget-object v1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    invoke-virtual {v0, v1, v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->loadFileInfoList(Ljava/lang/String;I)V

    .line 247
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->refresh()V

    .line 248
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->notifyDataSetChanged()V

    .line 249
    return-void
.end method


# virtual methods
.method public checkCreatePermission()V
    .locals 0

    .line 396
    return-void
.end method

.method public checkPermission()V
    .locals 2

    .line 400
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isAllowPermission(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isUerGrant(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    invoke-static {v0, p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->popPermissionDialog(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 404
    :cond_0
    sget-object v1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->permissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 405
    sget-object v1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->permissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 406
    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->checkAndRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 410
    :cond_1
    :goto_0
    return-void
.end method

.method public getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 152
    new-instance v2, Lcom/jrdcom/filemanager/utils/TaskInfo;

    new-instance v3, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$ListListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$ListListener;-><init>(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;Lcom/jrdcom/filemanager/activity/PathSelectionActivity$1;)V

    invoke-direct {v2, p1, v3, p4}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 153
    invoke-virtual {v2, p2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setRefreshMode(I)V

    .line 154
    invoke-virtual {v2, v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCreateTaskTime(J)V

    .line 155
    invoke-virtual {v2, p6}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDestPath(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2, p5}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSrcPath(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2, p7}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDrmType(I)V

    .line 158
    invoke-virtual {v2, p3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setAdapterMode(I)V

    .line 159
    const/4 p2, 0x1

    invoke-virtual {v2, p2}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setShowDir(Z)V

    .line 160
    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addNewTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 161
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-object v1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isRootPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->finish()V

    goto :goto_0

    .line 319
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-object v1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    .line 320
    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isSdOrPhonePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->backToRootPath()V

    goto :goto_0

    .line 323
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    .line 325
    :goto_0
    sget-object v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 342
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->isBusy(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 343
    return-void

    .line 345
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 253
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 254
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-nez p1, :cond_0

    .line 255
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1, p0}, Lcom/jrdcom/filemanager/manager/MountManager;->init(Landroid/content/Context;)V

    .line 258
    invoke-direct {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->onPathChanged()V

    .line 259
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    sget-object v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/MountManager;->isRootPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 260
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getMountPointFileInfo()Ljava/util/List;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_1

    .line 263
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addItemList(Ljava/util/List;)V

    .line 266
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    sget-object v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    invoke-virtual {p1, v0, v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->loadFileInfoList(Ljava/lang/String;I)V

    .line 268
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->refresh()V

    .line 270
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 165
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 166
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 0

    .line 414
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onDestroy()V

    .line 415
    invoke-static {}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->closePermissionDialogShowning()V

    .line 416
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 330
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {p1, p3}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getItem(I)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object p1

    .line 331
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mSelectedFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 332
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 333
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    .line 334
    iput p2, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mTop:I

    .line 335
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    invoke-virtual {p2, p3}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getItem(I)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mSelectedFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 336
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method public onMounted()V
    .locals 0

    .line 377
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onMounted()V

    .line 378
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->refreshRootAdapter()V

    .line 379
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->onBackPressed()V

    .line 173
    const/4 p1, 0x1

    return p1

    .line 175
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 349
    const/4 p3, 0x3

    if-ne p3, p1, :cond_2

    .line 350
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_2

    aget-object v0, p2, p3

    .line 351
    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->setSecondRequestPermission(Landroid/content/Context;)V

    .line 354
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->finish()V

    goto :goto_1

    .line 357
    :cond_0
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasM()Z

    .line 350
    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 362
    :cond_2
    return-void
.end method

.method public onRestart()V
    .locals 0

    .line 389
    invoke-super {p0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onRestart()V

    .line 390
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->refreshRootAdapter()V

    .line 391
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->checkPermission()V

    .line 392
    return-void
.end method

.method public onUnmounted(Ljava/lang/String;)V
    .locals 0

    .line 366
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->onUnmounted(Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-eqz p1, :cond_0

    .line 368
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/MountManager;->getRootPath()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    .line 370
    :cond_0
    sget-object p1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 371
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 373
    :cond_1
    return-void
.end method

.method protected refreshRootAdapter()V
    .locals 2

    .line 382
    sget-object v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/MountManager;->getRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 385
    :cond_0
    return-void
.end method

.method public setMainContentView()V
    .locals 6

    .line 67
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    .line 69
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 70
    const v1, 0x7f0b003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 72
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 73
    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMainToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v3}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 74
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 75
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v4}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 78
    new-instance v3, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 81
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    const v3, 0x7f080104

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mPathText:Landroid/widget/TextView;

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->checkPermission()V

    .line 93
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mMountPointManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->getRootPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mIntent:Landroid/content/Intent;

    .line 95
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iput v1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurrentPick:I

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.fileexplorer.action.DIR_SEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurrentPick:I

    .line 99
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "disable_private_folder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mIsDisablePrivateFolder:Z

    .line 102
    :cond_3
    :goto_0
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mOk:Landroid/widget/Button;

    .line 103
    new-instance v1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$1;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$1;-><init>(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCancel:Landroid/widget/Button;

    .line 122
    new-instance v1, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$2;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$2;-><init>(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mListView:Landroid/widget/ListView;

    .line 131
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    new-instance v0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v2, v2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2, v3}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;-><init>(Landroid/content/Context;Lcom/jrdcom/filemanager/manager/FileInfoManager;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;

    .line 133
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    sget-object v0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->mCurPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 135
    return-void
.end method
