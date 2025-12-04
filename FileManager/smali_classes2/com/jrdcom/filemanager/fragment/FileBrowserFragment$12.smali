.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;
.super Landroid/os/Handler;
.source "FileBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 0

    .line 3470
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 3473
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3475
    return-void

    .line 3478
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/16 p1, 0x69

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    .line 3524
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2200(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2200(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3525
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2200(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2300(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Ljava/lang/String;)V

    .line 3527
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2202(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;)Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 3528
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-boolean p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isOpenCDDrmFile:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isFilePathLocation(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3529
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, v2, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v3, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    sget v4, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 3532
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iput-boolean v1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->isOpenCDDrmFile:Z

    goto/16 :goto_1

    .line 3487
    :cond_4
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-static {v0, p1, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2000(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;Z)V

    .line 3488
    goto/16 :goto_1

    .line 3495
    :cond_5
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 3496
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v1, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/jrdcom/filemanager/drm/DrmManager;->showRefreshLicenseDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 3497
    if-eqz v0, :cond_6

    .line 3498
    new-instance v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12$1;

    invoke-direct {v1, p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12$1;-><init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 3510
    :cond_6
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2100(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Lcom/jrdcom/filemanager/view/ToastHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c006b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/ToastHelper;->showToast(Ljava/lang/String;)V

    .line 3511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3512
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3513
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_7

    .line 3514
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->reloadContent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3520
    :cond_7
    :goto_0
    goto :goto_1

    .line 3518
    :catch_0
    move-exception p1

    .line 3519
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3521
    goto :goto_1

    .line 3490
    :cond_8
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3491
    goto :goto_1

    .line 3484
    :cond_9
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-static {v0, p1, v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$2000(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;Z)V

    .line 3485
    goto :goto_1

    .line 3480
    :cond_a
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$12;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1900(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Landroid/content/Context;)V

    .line 3481
    nop

    .line 3536
    :goto_1
    return-void
.end method
