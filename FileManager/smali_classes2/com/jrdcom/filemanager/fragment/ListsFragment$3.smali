.class Lcom/jrdcom/filemanager/fragment/ListsFragment$3;
.super Ljava/lang/Object;
.source "ListsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/fragment/ListsFragment;->setViewPostion(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/ListsFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/ListsFragment;I)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment$3;->this$0:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iput p2, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment$3;->this$0:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget v1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment$3;->val$position:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment$3;->this$0:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v1, v1, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setCanSetFocus(Z)V

    .line 369
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 370
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment$3;->this$0:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v0, v2}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setFocusable(Z)V

    .line 373
    :cond_0
    return-void
.end method
