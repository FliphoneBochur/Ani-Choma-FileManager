.class public Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "ScrollSpeedLinearLayoutManger.java"


# instance fields
.field private MILLISECONDS_PER_INCH:F

.field private contxt:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 12
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;->MILLISECONDS_PER_INCH:F

    .line 17
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;->contxt:Landroid/content/Context;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;)F
    .locals 0

    .line 11
    iget p0, p0, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;->MILLISECONDS_PER_INCH:F

    return p0
.end method


# virtual methods
.method public setSpeedFast()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;->contxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;->MILLISECONDS_PER_INCH:F

    .line 49
    return-void
.end method

.method public setSpeedSlow()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;->contxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;->MILLISECONDS_PER_INCH:F

    .line 45
    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    .line 22
    new-instance p2, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger$1;

    .line 23
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger$1;-><init>(Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;Landroid/content/Context;)V

    .line 38
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 40
    return-void
.end method
