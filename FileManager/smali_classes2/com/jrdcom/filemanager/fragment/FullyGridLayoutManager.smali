.class public Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "FullyGridLayoutManager.java"


# instance fields
.field private mHeight:I

.field private mMeasuredDimension:[I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 12
    const/4 p1, 0x0

    iput p1, p0, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mWidth:I

    .line 13
    iput p1, p0, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mHeight:I

    .line 23
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mMeasuredDimension:[I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 12
    const/4 p1, 0x0

    iput p1, p0, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mWidth:I

    .line 13
    iput p1, p0, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mHeight:I

    .line 23
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mMeasuredDimension:[I

    .line 21
    return-void
.end method

.method private measureScrapChild(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V
    .locals 4

    .line 95
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 97
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 100
    nop

    .line 101
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 100
    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 102
    nop

    .line 103
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 102
    invoke-static {p4, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p4

    .line 104
    invoke-virtual {v0, p3, p4}, Landroid/view/View;->measure(II)V

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p3, p4

    aput p3, p5, p2

    .line 106
    const/4 p2, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr p3, p4

    aput p3, p5, p2

    .line 107
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    goto :goto_0

    .line 109
    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mWidth:I

    return v0
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 17

    .line 43
    move-object/from16 v6, p0

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 44
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 45
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 46
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 48
    nop

    .line 49
    nop

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->getItemCount()I

    move-result v11

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->getSpanCount()I

    move-result v12

    .line 52
    const/4 v13, 0x0

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    :goto_0
    if-ge v14, v11, :cond_4

    .line 53
    nop

    .line 54
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 55
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, v6, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mMeasuredDimension:[I

    .line 53
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    invoke-direct/range {v0 .. v5}, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->measureScrapChild(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 59
    rem-int v0, v14, v12

    if-nez v0, :cond_0

    .line 60
    iget-object v0, v6, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mMeasuredDimension:[I

    aget v0, v0, v13

    add-int/2addr v15, v0

    .line 62
    :cond_0
    if-nez v14, :cond_3

    .line 63
    iget-object v0, v6, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mMeasuredDimension:[I

    aget v16, v0, v1

    goto :goto_1

    .line 66
    :cond_1
    rem-int v0, v14, v12

    if-nez v0, :cond_2

    .line 67
    iget-object v0, v6, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mMeasuredDimension:[I

    aget v0, v0, v1

    add-int v16, v16, v0

    .line 69
    :cond_2
    if-nez v14, :cond_3

    .line 70
    iget-object v0, v6, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mMeasuredDimension:[I

    aget v15, v0, v13

    .line 52
    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 75
    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v7, v0, :cond_5

    move v9, v15

    goto :goto_2

    .line 77
    :cond_5
    nop

    .line 82
    :goto_2
    if-eq v8, v0, :cond_6

    move/from16 v10, v16

    goto :goto_3

    .line 84
    :cond_6
    nop

    .line 88
    :goto_3
    invoke-virtual {v6, v10}, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->setHeight(I)V

    .line 89
    invoke-virtual {v6, v9}, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->setWidth(I)V

    .line 90
    invoke-virtual {v6, v9, v10}, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->setMeasuredDimension(II)V

    .line 91
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mHeight:I

    .line 39
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/jrdcom/filemanager/fragment/FullyGridLayoutManager;->mWidth:I

    .line 31
    return-void
.end method
