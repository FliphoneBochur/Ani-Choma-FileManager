.class Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/view/FloatingActionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutParams"
.end annotation


# instance fields
.field private animationsSetToPlay:Z

.field private mCollapseAlpha:Landroid/animation/ObjectAnimator;

.field private mCollapseDir:Landroid/animation/ObjectAnimator;

.field private mExpandAlpha:Landroid/animation/ObjectAnimator;

.field private mExpandDir:Landroid/animation/ObjectAnimator;

.field final synthetic this$0:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 429
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->this$0:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    .line 430
    invoke-direct {p0, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    .line 424
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    .line 425
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    .line 426
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    .line 432
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->access$400()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 433
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->access$500()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 434
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->access$600()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->access$600()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 437
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 438
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 440
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 441
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 443
    invoke-static {p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->access$700(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 452
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    goto :goto_0

    .line 446
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 447
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 448
    nop

    .line 455
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$200(Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private addLayerTypeListener(Landroid/animation/Animator;Landroid/view/View;)V
    .locals 1

    .line 477
    new-instance v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams$1;

    invoke-direct {v0, p0, p2}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams$1;-><init>(Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 488
    return-void
.end method


# virtual methods
.method public setAnimationsTarget(Landroid/view/View;)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 460
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 464
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->animationsSetToPlay:Z

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->addLayerTypeListener(Landroid/animation/Animator;Landroid/view/View;)V

    .line 466
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->addLayerTypeListener(Landroid/animation/Animator;Landroid/view/View;)V

    .line 468
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->this$0:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-static {p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->access$800(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 469
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->this$0:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-static {p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->access$800(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 470
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->this$0:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-static {p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->access$900(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 471
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->this$0:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    invoke-static {p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->access$900(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 472
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->animationsSetToPlay:Z

    .line 474
    :cond_0
    return-void
.end method
