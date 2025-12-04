.class Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;
.super Ljava/lang/Object;
.source "FileBrowserFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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

.field final synthetic val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field final synthetic val$postion:I

.field final synthetic val$totalCount:I


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;Landroid/support/v7/widget/LinearLayoutManager;II)V
    .locals 0

    .line 1052
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iput p3, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$postion:I

    iput p4, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$totalCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .line 1056
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 1057
    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 1058
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    instance-of v2, v2, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 1059
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v2, v2, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1060
    iget v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$postion:I

    if-eq v0, v2, :cond_1

    iget v5, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$totalCount:I

    sub-int/2addr v5, v4

    if-eq v1, v5, :cond_1

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    invoke-static {v0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->access$000(Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;)I

    move-result v0

    if-ge v2, v0, :cond_0

    goto :goto_0

    .line 1067
    :cond_0
    return v3

    .line 1061
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$postion:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_2

    .line 1063
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1065
    :cond_2
    return v4

    .line 1070
    :cond_3
    iget v2, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$postion:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$totalCount:I

    sub-int/2addr v0, v4

    if-ne v1, v0, :cond_4

    goto :goto_1

    .line 1078
    :cond_4
    return v3

    .line 1071
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;

    iget-object v0, v0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1072
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget v1, p0, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment$2;->val$postion:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_6

    .line 1074
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1076
    :cond_6
    return v4
.end method
