.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;
.super Ljava/lang/Thread;
.source "FileBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenFileThread"
.end annotation


# instance fields
.field mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 0

    .line 3576
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3577
    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 3578
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 3582
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 3583
    nop

    .line 3584
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v1, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2402(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/DisplayManager;

    .line 3585
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2400(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    .line 3586
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v1

    .line 3587
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v2, v2, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3588
    nop

    .line 3590
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "hdcp_drm_notify"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3594
    goto :goto_0

    .line 3592
    :catch_0
    move-exception v2

    .line 3593
    move v2, v3

    .line 3595
    :goto_0
    const-string v4, "unknown_ext_mimeType"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    const/16 v5, 0xb

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    .line 3596
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f0c009b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v6, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3597
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3598
    return-void

    .line 3600
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrmFile()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v6

    .line 3601
    :goto_2
    if-eqz v1, :cond_6

    .line 3602
    iget-object v7, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v7}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 3603
    iget-object v8, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/jrdcom/filemanager/drm/DrmManager;->isRightsStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3604
    nop

    .line 3605
    sget v8, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v9, 0xa

    if-ne v8, v9, :cond_3

    .line 3606
    iget-object v8, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v6, v5, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 3607
    iget-object v8, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3608
    goto :goto_3

    .line 3609
    :cond_3
    iget-object v7, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/os/Handler;

    move-result-object v7

    const v8, 0x7f0c0069

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v4, v6, v5, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 3610
    iget-object v8, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3613
    :goto_3
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v7

    if-ne v7, v4, :cond_4

    if-nez v2, :cond_4

    .line 3614
    iget-object v7, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v7}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3622
    :cond_4
    move v7, v3

    goto :goto_4

    .line 3616
    :cond_5
    iget-object v8, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmCDFile(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3617
    iget-object v8, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iput-boolean v6, v8, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isOpenCDDrmFile:Z

    .line 3618
    invoke-static {}, Lcom/jrdcom/filemanager/manager/IconManager;->getInstance()Lcom/jrdcom/filemanager/manager/IconManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/jrdcom/filemanager/manager/IconManager;->removeCache(Ljava/lang/String;)V

    .line 3622
    :cond_6
    move v7, v6

    :goto_4
    if-eqz v7, :cond_9

    .line 3623
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    if-ne v0, v4, :cond_7

    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    .line 3624
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 3625
    :cond_7
    if-eqz v1, :cond_8

    .line 3626
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v0, v1, v6, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3627
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3628
    goto :goto_5

    .line 3629
    :cond_8
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->mFileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {v0, v6, v6, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3630
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$OpenFileThread;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3633
    :cond_9
    :goto_5
    return-void
.end method
