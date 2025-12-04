.class public Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$DeleteListener;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)V
    .locals 0

    .line 3031
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$DeleteListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 3034
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$DeleteListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    if-eqz p1, :cond_0

    .line 3035
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$DeleteListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v1, -0x1

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$DeleteListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c0050

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->deleteMode:I

    sget v4, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$DeleteListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 3036
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v7

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$DeleteListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v8, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v9, 0x0

    .line 3035
    invoke-static/range {v0 .. v9}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getBaseTaskInfo(Lcom/jrdcom/filemanager/FileManagerApplication;ILjava/lang/String;IILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 3037
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$DeleteListener;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    const/16 p2, 0x13

    iget-object v0, p1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemEditFileInfoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToNormalWhenCreateTask(ILjava/util/List;)V

    .line 3039
    :cond_0
    return-void
.end method
