.class Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;
.super Ljava/lang/Object;
.source "CategoryFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/fragment/CategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/fragment/CategoryFragment;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 231
    if-eqz p2, :cond_0

    .line 232
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->SELECT_BACKGROUND_COLOR_ID:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 233
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-static {p2}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->access$300(Lcom/jrdcom/filemanager/fragment/CategoryFragment;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-static {p2}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->access$400(Lcom/jrdcom/filemanager/fragment/CategoryFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-static {p2, p1}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->access$202(Lcom/jrdcom/filemanager/fragment/CategoryFragment;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 237
    :cond_0
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f05005e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 238
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->access$300(Lcom/jrdcom/filemanager/fragment/CategoryFragment;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700d0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-static {p1}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->access$400(Lcom/jrdcom/filemanager/fragment/CategoryFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;->this$0:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050025

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    :goto_0
    return-void
.end method
