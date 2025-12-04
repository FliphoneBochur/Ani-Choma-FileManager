.class Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "ScrollSpeedLinearLayoutManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;Landroid/content/Context;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger$1;->this$0:Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger$1;->this$0:Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;

    invoke-static {v0}, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;->access$000(Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;)F

    move-result v0

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger$1;->this$0:Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;

    .line 27
    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/manager/ScrollSpeedLinearLayoutManger;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    .line 26
    return-object p1
.end method
