.class public Lcom/jrdcom/filemanager/view/FloatingActionsMenu;
.super Landroid/view/ViewGroup;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;,
        Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;,
        Lcom/jrdcom/filemanager/view/FloatingActionsMenu$RotatingDrawable;,
        Lcom/jrdcom/filemanager/view/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final COLLAPSED_PLUS_ROTATION:F = 0.0f

.field private static final EXPANDED_PLUS_ROTATION:F = 135.0f

.field public static final EXPAND_DOWN:I = 0x1

.field public static final EXPAND_LEFT:I = 0x2

.field public static final EXPAND_RIGHT:I = 0x3

.field public static final EXPAND_UP:I = 0x0

.field public static final LABELS_ON_LEFT_SIDE:I = 0x0

.field public static final LABELS_ON_RIGHT_SIDE:I = 0x1

.field private static sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

.field private static sCollapseInterpolator:Landroid/view/animation/Interpolator;

.field private static sExpandInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

.field private mAddButtonColorNormal:I

.field private mAddButtonColorPressed:I

.field private mAddButtonPlusColor:I

.field private mAddButtonSize:I

.field private mAddButtonStrokeVisible:Z

.field private mButtonSpacing:I

.field private mButtonsCount:I

.field private mCollapseAnimation:Landroid/animation/AnimatorSet;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mExpandDirection:I

.field private mExpanded:Z

.field private mLabelsMargin:I

.field private mLabelsPosition:I

.field private mLabelsStyle:I

.field private mLabelsVerticalOffset:I

.field private mListener:Lcom/jrdcom/filemanager/view/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

.field private mMaxButtonHeight:I

.field private mMaxButtonWidth:I

.field private mRotatingDrawable:Lcom/jrdcom/filemanager/view/FloatingActionsMenu$RotatingDrawable;

.field private mTouchDelegateGroup:Lcom/jrdcom/filemanager/view/TouchDelegateGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 417
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    .line 418
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 419
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 59
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p3

    iput-object p3, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 59
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p3

    iput-object p3, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButtonColorNormal:I

    return p0
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButtonColorPressed:I

    return p0
.end method

.method static synthetic access$400()Landroid/view/animation/Interpolator;
    .locals 1

    .line 32
    sget-object v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$500()Landroid/view/animation/Interpolator;
    .locals 1

    .line 32
    sget-object v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$600()Landroid/view/animation/Interpolator;
    .locals 1

    .line 32
    sget-object v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpandDirection:I

    return p0
.end method

.method static synthetic access$800(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private adjustForOvershoot(I)I
    .locals 0

    .line 260
    mul-int/lit8 p1, p1, 0xc

    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method private collapse(Z)V
    .locals 3

    .line 531
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    .line 533
    iget-object v1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/jrdcom/filemanager/view/TouchDelegateGroup;

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->setEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 535
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 536
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 537
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07008c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 538
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05005f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setAddButtonColor(II)V

    .line 540
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateBackground()V

    .line 541
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mListener:Lcom/jrdcom/filemanager/view/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz p1, :cond_1

    .line 542
    invoke-interface {p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuCollapsed()V

    .line 545
    :cond_1
    return-void
.end method

.method private createAddButton(Landroid/content/Context;)V
    .locals 1

    .line 154
    new-instance v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$1;

    invoke-direct {v0, p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$1;-><init>(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 163
    const p1, 0x7f080084

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setId(I)V

    .line 164
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07008c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButtonSize:I

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setSize(I)V

    .line 167
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    new-instance v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$2;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$2;-><init>(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;)V

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    .line 176
    return-void
.end method

.method private createLabels()V
    .locals 7

    .line 504
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsStyle:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 506
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    if-ge v1, v2, :cond_2

    .line 507
    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 508
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 510
    iget-object v4, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eq v2, v4, :cond_1

    if-eqz v3, :cond_1

    .line 511
    const v3, 0x7f080085

    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 513
    :cond_0
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 514
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsStyle:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 515
    invoke-virtual {v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    invoke-virtual {p0, v4}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->addView(Landroid/view/View;)V

    .line 518
    invoke-virtual {v2, v3, v4}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    .line 506
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    :cond_2
    return-void
.end method

.method private expandsHorizontally()Z
    .locals 2

    .line 123
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpandDirection:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getColor(I)I
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonSpacing:I

    .line 94
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsMargin:I

    .line 95
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsVerticalOffset:I

    .line 97
    new-instance v0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/jrdcom/filemanager/view/TouchDelegateGroup;

    .line 98
    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 100
    sget-object v0, Lcom/jrdcom/filemanager/R$styleable;->FloatingActionsMenu:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 101
    const v0, 0x106000b

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getColor(I)I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButtonPlusColor:I

    .line 102
    const v0, 0x7f05005f

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButtonColorNormal:I

    .line 103
    const v0, 0x7f050060

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getColor(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButtonColorPressed:I

    .line 104
    const/4 v0, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButtonSize:I

    .line 105
    const/4 v0, 0x4

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButtonStrokeVisible:Z

    .line 106
    const/4 v0, 0x5

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpandDirection:I

    .line 107
    const/4 v0, 0x6

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsStyle:I

    .line 108
    const/4 v0, 0x7

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsPosition:I

    .line 109
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V

    .line 116
    return-void
.end method


# virtual methods
.method public addButton(Lcom/jrdcom/filemanager/view/FloatingActionButton;)V
    .locals 1

    .line 179
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->addView(Landroid/view/View;I)V

    .line 180
    iget p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    .line 182
    iget p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->createLabels()V

    .line 185
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 414
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    return p1
.end method

.method public collapse()V
    .locals 1

    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->collapse(Z)V

    .line 524
    return-void
.end method

.method public collapseImmediately()V
    .locals 1

    .line 527
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->collapse(Z)V

    .line 528
    return-void
.end method

.method public expand()V
    .locals 3

    .line 556
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    if-nez v0, :cond_0

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    .line 558
    iget-object v1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/jrdcom/filemanager/view/TouchDelegateGroup;

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->setEnabled(Z)V

    .line 559
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 560
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 561
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setAddButtonColor(II)V

    .line 564
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateBackground()V

    .line 565
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mListener:Lcom/jrdcom/filemanager/view/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 566
    invoke-interface {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuExpanded()V

    .line 569
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 399
    new-instance v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;-><init>(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 404
    new-instance v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;-><init>(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 409
    new-instance v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;-><init>(Lcom/jrdcom/filemanager/view/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 493
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 495
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->bringChildToFront(Landroid/view/View;)V

    .line 496
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    .line 498
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v0, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->createLabels()V

    .line 501
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 19

    .line 265
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpandDirection:I

    const v2, 0x7f080085

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v1, :cond_b

    if-eq v1, v7, :cond_b

    if-eq v1, v8, :cond_0

    const/4 v9, 0x3

    if-eq v1, v9, :cond_0

    goto/16 :goto_17

    .line 352
    :cond_0
    iget v1, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpandDirection:I

    if-ne v1, v8, :cond_1

    move v1, v7

    goto :goto_0

    :cond_1
    move v1, v6

    .line 354
    :goto_0
    if-eqz v1, :cond_2

    sub-int v9, p4, p2

    iget-object v10, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v10}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_1

    :cond_2
    move v9, v6

    .line 356
    :goto_1
    sub-int v10, p5, p3

    iget v11, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mMaxButtonHeight:I

    sub-int/2addr v10, v11

    iget-object v12, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v12}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/2addr v11, v8

    add-int/2addr v10, v11

    .line 357
    iget-object v11, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v11}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v13}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v11, v9, v10, v12, v13}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->layout(IIII)V

    .line 359
    if-eqz v1, :cond_3

    .line 360
    iget v11, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonSpacing:I

    sub-int v11, v9, v11

    goto :goto_2

    .line 361
    :cond_3
    iget-object v11, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v11}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v9

    iget v12, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v11, v12

    .line 363
    :goto_2
    iget v12, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    sub-int/2addr v12, v7

    :goto_3
    if-ltz v12, :cond_1f

    .line 364
    invoke-virtual {v0, v12}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 366
    iget-object v14, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eq v13, v14, :cond_a

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v4, :cond_4

    goto/16 :goto_6

    .line 368
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v11, v14

    .line 369
    :cond_5
    iget-object v14, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v14}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v14, v15

    div-int/2addr v14, v8

    add-int/2addr v14, v10

    .line 370
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v11

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v3, v14, v16

    invoke-virtual {v13, v11, v14, v15, v3}, Landroid/view/View;->layout(IIII)V

    .line 372
    sub-int v3, v9, v11

    int-to-float v3, v3

    .line 373
    nop

    .line 375
    iget-boolean v14, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    if-eqz v14, :cond_6

    move v14, v5

    goto :goto_4

    :cond_6
    move v14, v3

    :goto_4
    invoke-virtual {v13, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 376
    iget-boolean v14, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    if-eqz v14, :cond_7

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_7
    move v14, v5

    :goto_5
    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    .line 378
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;

    .line 379
    invoke-static {v14}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->access$200(Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    new-array v4, v8, [F

    aput v5, v4, v6

    aput v3, v4, v7

    invoke-virtual {v15, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 380
    invoke-static {v14}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->access$300(Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v15, v8, [F

    aput v3, v15, v6

    aput v5, v15, v7

    invoke-virtual {v4, v15}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 381
    invoke-virtual {v14, v13}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 383
    invoke-virtual {v13, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 384
    if-eqz v3, :cond_8

    .line 385
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_8
    if-eqz v1, :cond_9

    .line 389
    iget v3, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonSpacing:I

    sub-int/2addr v11, v3

    goto :goto_6

    .line 390
    :cond_9
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v11, v3

    iget v3, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v11, v3

    .line 363
    :cond_a
    :goto_6
    add-int/lit8 v12, v12, -0x1

    const/16 v4, 0x8

    goto/16 :goto_3

    .line 268
    :cond_b
    iget v1, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpandDirection:I

    if-nez v1, :cond_c

    move v1, v7

    goto :goto_7

    :cond_c
    move v1, v6

    .line 270
    :goto_7
    if-eqz p1, :cond_d

    .line 271
    iget-object v3, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/jrdcom/filemanager/view/TouchDelegateGroup;

    invoke-virtual {v3}, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->clearTouchDelegates()V

    .line 274
    :cond_d
    if-eqz v1, :cond_e

    sub-int v3, p5, p3

    iget-object v4, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_8

    :cond_e
    move v3, v6

    .line 276
    :goto_8
    iget v4, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v4, :cond_f

    .line 277
    sub-int v4, p4, p2

    iget v9, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/2addr v9, v8

    sub-int/2addr v4, v9

    goto :goto_9

    .line 278
    :cond_f
    iget v4, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/2addr v4, v8

    .line 279
    :goto_9
    iget-object v9, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v9}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v8

    sub-int v9, v4, v9

    .line 280
    iget-object v10, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v10}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v12}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v3

    invoke-virtual {v10, v9, v3, v11, v12}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->layout(IIII)V

    .line 282
    iget v9, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/2addr v9, v8

    iget v10, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsMargin:I

    add-int/2addr v9, v10

    .line 283
    iget v10, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v10, :cond_10

    .line 284
    sub-int v9, v4, v9

    goto :goto_a

    .line 285
    :cond_10
    add-int/2addr v9, v4

    .line 287
    :goto_a
    if-eqz v1, :cond_11

    .line 288
    iget v10, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonSpacing:I

    sub-int v10, v3, v10

    goto :goto_b

    .line 289
    :cond_11
    iget-object v10, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v10}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v3

    iget v11, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v10, v11

    .line 291
    :goto_b
    iget v11, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    sub-int/2addr v11, v7

    :goto_c
    if-ltz v11, :cond_1e

    .line 292
    invoke-virtual {v0, v11}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 294
    iget-object v13, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    if-eq v12, v13, :cond_1d

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_12

    move/from16 p3, v3

    move v13, v6

    move v15, v7

    move v7, v5

    goto/16 :goto_16

    .line 296
    :cond_12
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int/2addr v13, v8

    sub-int v13, v4, v13

    .line 297
    if-eqz v1, :cond_13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v10, v15

    .line 298
    :cond_13
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v14, v10, v16

    invoke-virtual {v12, v13, v10, v15, v14}, Landroid/view/View;->layout(IIII)V

    .line 300
    sub-int v14, v3, v10

    int-to-float v14, v14

    .line 301
    nop

    .line 302
    iget-boolean v15, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    if-eqz v15, :cond_14

    move v15, v5

    goto :goto_d

    :cond_14
    move v15, v14

    :goto_d
    invoke-virtual {v12, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 303
    iget-boolean v15, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    if-eqz v15, :cond_15

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_15
    move v15, v5

    :goto_e
    invoke-virtual {v12, v15}, Landroid/view/View;->setAlpha(F)V

    .line 305
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;

    .line 306
    invoke-static {v15}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->access$200(Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move/from16 p3, v3

    new-array v3, v8, [F

    aput v5, v3, v6

    aput v14, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 307
    invoke-static {v15}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->access$300(Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v8, [F

    aput v14, v3, v6

    aput v5, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 308
    invoke-virtual {v15, v12}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 310
    const v2, 0x7f080085

    invoke-virtual {v12, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 311
    if-eqz v3, :cond_1b

    .line 312
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget v15, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v15, :cond_16

    .line 314
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v9, v15

    goto :goto_f

    .line 315
    :cond_16
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v9

    .line 317
    :goto_f
    iget v2, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v2, :cond_17

    .line 318
    move v2, v15

    goto :goto_10

    .line 319
    :cond_17
    move v2, v9

    .line 321
    :goto_10
    iget v7, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v7, :cond_18

    .line 322
    move v15, v9

    goto :goto_11

    .line 323
    :cond_18
    nop

    .line 325
    :goto_11
    iget v7, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsVerticalOffset:I

    sub-int v7, v10, v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    add-int v7, v7, v17

    .line 327
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v5, v7, v17

    invoke-virtual {v3, v2, v7, v15, v5}, Landroid/view/View;->layout(IIII)V

    .line 329
    new-instance v5, Landroid/graphics/Rect;

    .line 330
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v7, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonSpacing:I

    div-int/2addr v7, v8

    sub-int v7, v10, v7

    .line 332
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v13, v13, v17

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 333
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v10

    iget v6, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonSpacing:I

    div-int/2addr v6, v8

    add-int/2addr v15, v6

    invoke-direct {v5, v2, v7, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 334
    iget-object v2, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/jrdcom/filemanager/view/TouchDelegateGroup;

    new-instance v6, Landroid/view/TouchDelegate;

    invoke-direct {v6, v5, v12}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v2, v6}, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->addTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 335
    iget-boolean v2, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    goto :goto_12

    :cond_19
    move v2, v14

    :goto_12
    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 336
    iget-boolean v2, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    if-eqz v2, :cond_1a

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_1a
    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 338
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;

    .line 339
    invoke-static {v2}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->access$200(Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v6, v8, [F

    const/4 v7, 0x0

    const/4 v13, 0x0

    aput v7, v6, v13

    const/4 v15, 0x1

    aput v14, v6, v15

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 340
    invoke-static {v2}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->access$300(Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v6, v8, [F

    aput v14, v6, v13

    aput v7, v6, v15

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 341
    invoke-virtual {v2, v3}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    goto :goto_14

    .line 311
    :cond_1b
    move v13, v6

    move v15, v7

    move v7, v5

    .line 344
    :goto_14
    if-eqz v1, :cond_1c

    .line 345
    iget v2, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonSpacing:I

    sub-int/2addr v10, v2

    goto :goto_15

    .line 346
    :cond_1c
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v10, v2

    iget v2, v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v10, v2

    :goto_15
    goto :goto_16

    .line 294
    :cond_1d
    move/from16 p3, v3

    move v13, v6

    move v15, v7

    move v7, v5

    .line 291
    :goto_16
    add-int/lit8 v11, v11, -0x1

    move/from16 v3, p3

    move v5, v7

    move v6, v13

    move v7, v15

    const v2, 0x7f080085

    goto/16 :goto_c

    .line 348
    :cond_1e
    nop

    .line 395
    :cond_1f
    :goto_17
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->measureChildren(II)V

    .line 202
    nop

    .line 203
    nop

    .line 205
    const/4 p1, 0x0

    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 206
    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mMaxButtonHeight:I

    .line 207
    nop

    .line 209
    move p2, p1

    move v0, p2

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge p2, v3, :cond_4

    .line 210
    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 212
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 213
    goto :goto_2

    .line 216
    :cond_0
    iget v7, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpandDirection:I

    if-eqz v7, :cond_2

    if-eq v7, v6, :cond_2

    if-eq v7, v5, :cond_1

    if-eq v7, v4, :cond_1

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 225
    iget v4, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mMaxButtonHeight:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mMaxButtonHeight:I

    goto :goto_1

    .line 219
    :cond_2
    iget v4, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mMaxButtonWidth:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 220
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 221
    nop

    .line 229
    :goto_1
    invoke-direct {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v4

    if-nez v4, :cond_3

    .line 230
    const v4, 0x7f080085

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 231
    if-eqz v3, :cond_3

    .line 232
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 209
    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 237
    :cond_4
    invoke-direct {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->expandsHorizontally()Z

    move-result p2

    if-nez p2, :cond_6

    .line 238
    iget p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mMaxButtonWidth:I

    if-lez v0, :cond_5

    iget p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mLabelsMargin:I

    add-int/2addr p1, v0

    :cond_5
    add-int v2, p2, p1

    goto :goto_3

    .line 240
    :cond_6
    iget v1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mMaxButtonHeight:I

    .line 243
    :goto_3
    iget p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpandDirection:I

    if-eqz p1, :cond_8

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_7

    goto :goto_4

    .line 251
    :cond_7
    iget p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonSpacing:I

    iget p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    sub-int/2addr p2, v6

    mul-int/2addr p1, p2

    add-int/2addr v2, p1

    .line 252
    invoke-direct {p0, v2}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v2

    goto :goto_4

    .line 246
    :cond_8
    iget p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonSpacing:I

    iget p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    sub-int/2addr p2, v6

    mul-int/2addr p1, p2

    add-int/2addr v1, p1

    .line 247
    invoke-direct {p0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v1

    .line 248
    nop

    .line 256
    :goto_4
    invoke-virtual {p0, v2, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->setMeasuredDimension(II)V

    .line 257
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 593
    instance-of v0, p1, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;

    if-eqz v0, :cond_2

    .line 594
    check-cast p1, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;

    .line 595
    iget-boolean v0, p1, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;->mExpanded:Z

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    .line 596
    iget-object v1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/jrdcom/filemanager/view/TouchDelegateGroup;

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->setEnabled(Z)V

    .line 598
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mRotatingDrawable:Lcom/jrdcom/filemanager/view/FloatingActionsMenu$RotatingDrawable;

    if-eqz v0, :cond_1

    .line 599
    iget-boolean v1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x43070000    # 135.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$RotatingDrawable;->setRotation(F)V

    .line 602
    :cond_1
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 603
    goto :goto_1

    .line 604
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 606
    :goto_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 584
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 585
    new-instance v1, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;

    invoke-direct {v1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 586
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    iput-boolean v0, v1, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;->mExpanded:Z

    .line 588
    return-object v1
.end method

.method public removeButton(Lcom/jrdcom/filemanager/view/FloatingActionButton;)V
    .locals 2

    .line 188
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 190
    const v0, 0x7f080085

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    .line 191
    iget p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mButtonsCount:I

    .line 192
    return-void
.end method

.method public setAddButtonColor(II)V
    .locals 0

    .line 641
    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButtonColorNormal:I

    .line 642
    iput p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButtonColorPressed:I

    .line 643
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 577
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 579
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mAddButton:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setEnabled(Z)V

    .line 580
    return-void
.end method

.method public setOnFloatingActionsMenuUpdateListener(Lcom/jrdcom/filemanager/view/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mListener:Lcom/jrdcom/filemanager/view/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    .line 120
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->collapse()V

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;->expand()V

    .line 553
    :goto_0
    return-void
.end method
