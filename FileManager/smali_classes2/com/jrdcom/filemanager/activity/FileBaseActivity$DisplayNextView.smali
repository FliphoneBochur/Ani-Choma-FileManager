.class final Lcom/jrdcom/filemanager/activity/FileBaseActivity$DisplayNextView;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/activity/FileBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayNextView"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/widget/ImageView;)V
    .locals 0

    .line 1877
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$DisplayNextView;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1878
    iput-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$DisplayNextView;->imageView:Landroid/widget/ImageView;

    .line 1879
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1885
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$DisplayNextView;->imageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$DisplayNextView;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-direct {v0, v1, p1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;-><init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1886
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1889
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1882
    return-void
.end method
