.class final Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/activity/FileBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwapViews"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/widget/ImageView;)V
    .locals 0

    .line 1895
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1896
    iput-object p2, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->imageView:Landroid/widget/ImageView;

    .line 1897
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1901
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$402(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1902
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$502(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1903
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->imageView:Landroid/widget/ImageView;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$602(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1904
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->imageView:Landroid/widget/ImageView;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$702(Lcom/jrdcom/filemanager/activity/FileBaseActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1905
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$400(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1906
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$400(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1907
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$400(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$500(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$600(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {v1}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$700(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1908
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBaseActivity$SwapViews;->this$0:Lcom/jrdcom/filemanager/activity/FileBaseActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->access$400(Lcom/jrdcom/filemanager/activity/FileBaseActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1918
    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
