.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$5;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->requestRecyclerviewFocus()V
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

    .line 1244
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$5;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1248
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$5;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1249
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$5;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget v1, v1, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 1250
    if-eqz v1, :cond_0

    .line 1251
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1252
    return-void

    .line 1255
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 1256
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 1257
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    :cond_1
    goto :goto_0

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    invoke-static {}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$5;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mCurrentPosition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    :goto_0
    return-void
.end method
