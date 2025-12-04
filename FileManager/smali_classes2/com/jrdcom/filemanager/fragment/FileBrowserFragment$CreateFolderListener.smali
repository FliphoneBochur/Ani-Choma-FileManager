.class final Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$CreateFolderListener;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Lcom/jrdcom/filemanager/dialog/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreateFolderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;


# direct methods
.method private constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 0

    .line 2268
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$CreateFolderListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 8

    .line 2271
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$CreateFolderListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz v0, :cond_0

    .line 2272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$CreateFolderListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v1, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jrdcom/filemanager/manager/MountManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2274
    new-instance v2, Lcom/jrdcom/filemanager/utils/TaskInfo;

    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$CreateFolderListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v3, v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    new-instance v4, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;

    iget-object v5, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$CreateFolderListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v5, v5, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0046

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x3

    invoke-static {v5, v0, v1, v7, v6}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getListenerInfo(Ljava/lang/String;JII)Lcom/jrdcom/filemanager/utils/TaskInfo;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;-><init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    invoke-direct {v2, v3, v4, v7}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 2276
    invoke-virtual {v2, p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setDestPath(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {v2, v0, v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCreateTaskTime(J)V

    .line 2278
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$CreateFolderListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1, v2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addNewTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 2280
    :cond_0
    return-void
.end method
