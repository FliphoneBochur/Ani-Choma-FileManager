.class Lcom/jrdcom/filemanager/activity/FileBrowserActivity$2;
.super Ljava/lang/Object;
.source "FileBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 625
    sget-object v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->sortPop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->dismiss()V

    .line 626
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 627
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 628
    sget-object v2, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->sortPop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->update(Landroid/app/Activity;)V

    .line 629
    sget-object v2, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->sortPop:Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;

    iget-object v3, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$2;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v3, v3, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mBtnMore:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0, v1}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->showAtLocationBasedAnchor(Landroid/view/View;II)V

    .line 630
    return-void
.end method
