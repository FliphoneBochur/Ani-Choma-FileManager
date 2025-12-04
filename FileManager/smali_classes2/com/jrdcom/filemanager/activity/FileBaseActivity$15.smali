.class Lcom/jrdcom/filemanager/activity/FileBaseActivity$15;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FileBaseActivity;->reshowMorePop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

.field final synthetic val$mView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/view/View;)V
    .locals 0

    .line 1731
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$15;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iput-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$15;->val$mView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1734
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 1735
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$15;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1736
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$15;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1737
    sget-object v2, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$15;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->initMorePopWindow()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$15;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-virtual {v2, v3, v4}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->update(Landroid/view/View;Landroid/app/Activity;)V

    .line 1738
    sget-object v2, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->morePop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$15;->val$mView:Landroid/view/View;

    invoke-virtual {v2, v3, v0, v1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->showAtLocationBasedAnchor(Landroid/view/View;II)V

    .line 1739
    return-void
.end method
