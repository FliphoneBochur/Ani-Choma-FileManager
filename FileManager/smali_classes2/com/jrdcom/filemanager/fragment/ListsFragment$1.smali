.class Lcom/jrdcom/filemanager/fragment/ListsFragment$1;
.super Ljava/lang/Object;
.source "ListsFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/fragment/ListsFragment;->initView(Landroid/view/View;)V
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

    .line 64
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment$1;->this$0:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 67
    if-eqz p2, :cond_0

    .line 68
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment$1;->this$0:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mNo_messageView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment$1;->this$0:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0500ee

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment$1;->this$0:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    iget-object p1, p1, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mNo_messageView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment$1;->this$0:Lcom/jrdcom/filemanager/fragment/ListsFragment;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f05005e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 72
    :goto_0
    return-void
.end method
