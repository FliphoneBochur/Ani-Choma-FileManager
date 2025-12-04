.class Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;
.super Landroid/os/Handler;
.source "FileBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/activity/FileBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 279
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 280
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/16 v0, 0x101

    if-eq p1, v0, :cond_2

    const/16 v0, 0x102

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$300(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)B

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 319
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCache:Lcom/jrdcom/filemanager/utils/FileListCache;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileListCache;->clearCache()V

    .line 320
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getFileMode()I

    move-result p1

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathNormalMode(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getFileMode()I

    move-result p1

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCategoryNormalMode(I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mListFragment:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    if-ne p1, v0, :cond_8

    .line 321
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->refreshPathAdapter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_3

    .line 307
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPhoneStorageZero()Z

    move-result p1

    sput-boolean p1, Lcom/jrdcom/filemanager/FileManagerApplication;->isBuiltInStorage:Z

    .line 309
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$200(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_4

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_4

    .line 310
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {v2}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$200(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$202(Lcom/jrdcom/filemanager/activity/FileBaseActivity;J)J

    .line 311
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    .line 313
    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$200(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v2, v2, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 311
    const-string v3, "launch_time"

    invoke-static {p1, v3, v0, v1, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hawkeyeTimeEvent(Landroid/content/Context;Ljava/lang/String;JLcom/jrdcom/filemanager/FileManagerApplication;)V

    .line 315
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$202(Lcom/jrdcom/filemanager/activity/FileBaseActivity;J)J

    .line 316
    goto/16 :goto_0

    .line 290
    :cond_5
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    const v0, 0x7f0800d2

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    .line 291
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    const v0, 0x7f0800d7

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->home_item:Landroid/widget/TextView;

    .line 292
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    const v0, 0x7f0800b3

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->home_path_arrow:Landroid/widget/ImageView;

    .line 293
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    const v0, 0x7f0800d6

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->home_path_icon:Landroid/widget/TextView;

    .line 294
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    const v0, 0x7f080170

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->snackbarLayout:Landroid/widget/LinearLayout;

    .line 295
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    const v0, 0x7f080171

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->snackTextView:Landroid/widget/TextView;

    .line 296
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->fileBrowerList:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 297
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->initFloatMenu()V

    .line 298
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 299
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    const-string v1, "storage"

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 300
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$100(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Landroid/os/storage/StorageEventListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 303
    :cond_6
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    iput-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mParams:Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 304
    goto :goto_0

    .line 282
    :cond_7
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/MountReceiver;->registerMountReceiver(Landroid/content/Context;)Lcom/jrdcom/filemanager/MountReceiver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$002(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Lcom/jrdcom/filemanager/MountReceiver;)Lcom/jrdcom/filemanager/MountReceiver;

    .line 283
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$000(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Lcom/jrdcom/filemanager/MountReceiver;

    move-result-object p1

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/MountReceiver;->registerMountListener(Lcom/jrdcom/filemanager/MountReceiver$MountListener;)V

    .line 284
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    new-instance v0, Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/manager/PrivateModeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mPrivateModeManager:Lcom/jrdcom/filemanager/manager/PrivateModeManager;

    .line 285
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    new-instance v0, Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/view/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    .line 286
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isDRMColumn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->isSysteSupportDrm:Z

    .line 287
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->isInMultiWindowMode:Z

    .line 288
    nop

    .line 326
    :cond_8
    :goto_0
    return-void
.end method
