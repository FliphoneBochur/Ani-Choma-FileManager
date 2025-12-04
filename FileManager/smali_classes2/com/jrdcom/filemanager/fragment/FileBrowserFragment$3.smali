.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshAdapter(Ljava/lang/String;IIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

.field final synthetic val$isPosition:Z

.field final synthetic val$shouldSwitchToEidt:Z


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;ZZ)V
    .locals 0

    .line 1091
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iput-boolean p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;->val$shouldSwitchToEidt:Z

    iput-boolean p3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;->val$isPosition:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1093
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isGlobalSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v2, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->showNoFolderResultView(Z)V

    .line 1096
    :cond_1
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;->val$shouldSwitchToEidt:Z

    if-eqz v0, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToEditView()V

    goto :goto_1

    .line 1098
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1100
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->refreshPathBar()V

    .line 1101
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;->val$isPosition:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$100()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1102
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-static {}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$100()Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->getPosition(Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result v0

    .line 1103
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$3;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$200()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->setViewPostion(IZ)V

    .line 1104
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$102(Lcom/jrdcom/filemanager/utils/FileInfo;)Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 1105
    invoke-static {v1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$202(Z)Z

    .line 1108
    :cond_3
    :goto_1
    return-void
.end method
