.class Lcom/jrdcom/filemanager/fragment/ListsFragment$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ListsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/fragment/ListsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/ListsFragment;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/ListsFragment;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 162
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 163
    if-nez p2, :cond_0

    .line 164
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {p2, p1}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->scrollChange(Landroid/support/v7/widget/RecyclerView;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 170
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 171
    return-void
.end method
