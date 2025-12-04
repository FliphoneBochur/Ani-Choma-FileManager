.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showRenameExtensionDialog(Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

.field final synthetic val$newFilePath:Ljava/lang/String;

.field final synthetic val$srcfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;)V
    .locals 0

    .line 2433
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;->val$srcfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    iput-object p3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;->val$newFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    .line 2436
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p2, p2, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p2, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz p2, :cond_0

    .line 2437
    const/4 p2, 0x0

    invoke-static {p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1402(Landroid/app/Activity;)Landroid/app/Activity;

    .line 2438
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1200(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 2439
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, p2, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, 0x2

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p2, p2, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0c00c9

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;->val$srcfileInfo:Lcom/jrdcom/filemanager/utils/FileInfo;

    new-instance v7, Lcom/jrdcom/filemanager/utils/FileInfo;

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    .line 2440
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v8, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;->val$newFilePath:Ljava/lang/String;

    invoke-direct {v7, p2, v8}, Lcom/jrdcom/filemanager/utils/FileInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p2, p2, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v8, p2, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1500(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v12, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 2439
    invoke-static/range {v0 .. v12}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IIILcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    .line 2441
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$8;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$1600(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V

    .line 2443
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2444
    return-void
.end method
