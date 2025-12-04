.class public Lcom/jrdcom/filemanager/view/LoopRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "LoopRecyclerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoopRecyclerView"


# instance fields
.field private mDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 p1, 0x0

    iput p1, p0, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->mDirection:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 p1, 0x0

    iput p1, p0, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->mDirection:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 p1, 0x0

    iput p1, p0, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->mDirection:I

    .line 27
    return-void
.end method

.method private getStringDirection(I)Ljava/lang/String;
    .locals 1

    .line 256
    const/16 v0, 0x11

    if-eq p1, v0, :cond_3

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    .line 267
    const/4 p1, 0x0

    return-object p1

    .line 264
    :cond_0
    const-string p1, "FOCUS_DOWN"

    return-object p1

    .line 260
    :cond_1
    const-string p1, "FOCUS_RIGHT"

    return-object p1

    .line 262
    :cond_2
    const-string p1, "FOCUS_UP"

    return-object p1

    .line 258
    :cond_3
    const-string p1, "FOCUS_LEFT"

    return-object p1
.end method

.method private onFirstFlow(I)Z
    .locals 4

    .line 271
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 272
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 274
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    invoke-virtual {v3, p1, v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 276
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 279
    :cond_3
    return v1
.end method

.method private onFirstLeftSpan(I)Z
    .locals 3

    .line 298
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 300
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    invoke-virtual {v2, p1, v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 302
    :cond_1
    return v1
.end method

.method private onLastFlow(I)Z
    .locals 5

    .line 284
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 287
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    .line 288
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    if-ne p1, v0, :cond_0

    move v1, v2

    .line 287
    :cond_0
    return v1

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 293
    :cond_3
    return v1
.end method

.method private onLastRightSpan(I)Z
    .locals 5

    .line 307
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_0

    .line 309
    return v2

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 312
    const-string v3, "forrest"

    const-string v4, "1840_onLastRightSpan"

    invoke-static {v3, v4}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p1

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 316
    :cond_2
    return v1
.end method


# virtual methods
.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 13

    .line 45
    const-string v0, "LoopRecyclerView"

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setDirection(I)V

    .line 46
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    .line 50
    sget-boolean v3, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v3, :cond_0

    .line 51
    rem-int/lit8 v3, v2, 0x2

    goto :goto_0

    .line 54
    :cond_0
    rem-int/lit8 v3, v2, 0x3

    .line 56
    :goto_0
    nop

    .line 59
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/jrdcom/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    nop

    .line 67
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    instance-of v5, v5, Landroid/support/v7/widget/GridLayoutManager;

    const/16 v6, 0x82

    const/16 v7, 0x42

    const/4 v8, 0x0

    if-eqz v5, :cond_7

    .line 68
    if-eq p2, v7, :cond_5

    if-eq p2, v6, :cond_1

    goto/16 :goto_1

    .line 72
    :cond_1
    sget-boolean v5, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v5, :cond_3

    .line 73
    if-ge v4, v2, :cond_7

    add-int/lit8 v5, v2, -0x2

    if-lt v4, v5, :cond_7

    .line 74
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    rem-int/lit8 v5, v4, 0x2

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p0, v8}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->smoothScrollToPosition(I)V

    .line 78
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    rem-int/lit8 v5, v4, 0x2

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 83
    :cond_3
    if-ge v4, v2, :cond_7

    add-int/lit8 v5, v2, -0x3

    if-lt v4, v5, :cond_7

    .line 84
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 85
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    rem-int/lit8 v5, v4, 0x3

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {p0, v8}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->smoothScrollToPosition(I)V

    .line 88
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    rem-int/lit8 v5, v4, 0x3

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 95
    :cond_5
    add-int/lit8 v5, v2, -0x1

    if-ne v4, v5, :cond_7

    .line 96
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 97
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 99
    :cond_6
    invoke-virtual {p0, v8}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->smoothScrollToPosition(I)V

    .line 100
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 106
    :cond_7
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ON focusSearch && nextFocusView == "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "&& getLayoutManager=="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/jrdcom/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    instance-of v5, v5, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v5, :cond_2c

    .line 109
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutManager;

    .line 110
    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v5

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "orientation == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " &&direction = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getStringDirection(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v9, 0x1

    if-ne v9, v5, :cond_2c

    .line 115
    const/16 v5, 0x21

    const/16 v10, 0x11

    if-eq p2, v10, :cond_27

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq p2, v5, :cond_1a

    if-eq p2, v7, :cond_13

    if-eq p2, v6, :cond_8

    goto/16 :goto_b

    .line 215
    :cond_8
    invoke-direct {p0, v4}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->onLastFlow(I)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 216
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getChildCount()I

    move-result p1

    if-ne p1, v2, :cond_12

    .line 217
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p1, :cond_11

    .line 220
    sget-boolean p1, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz p1, :cond_b

    .line 221
    add-int/lit8 p1, v2, -0x2

    if-ne v4, p1, :cond_9

    .line 222
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_b

    .line 223
    :cond_9
    sub-int/2addr v2, v9

    if-ne v4, v2, :cond_2c

    .line 224
    if-nez v3, :cond_a

    goto :goto_2

    :cond_a
    add-int/lit8 v9, v3, -0x1

    .line 225
    :goto_2
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 226
    goto/16 :goto_b

    .line 229
    :cond_b
    add-int/lit8 p1, v2, -0x3

    if-ne v4, p1, :cond_c

    .line 230
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_b

    .line 231
    :cond_c
    add-int/lit8 p1, v2, -0x2

    if-ne v4, p1, :cond_f

    .line 232
    if-ne v3, v12, :cond_d

    goto :goto_3

    :cond_d
    add-int/lit8 v8, v3, 0x1

    .line 233
    :goto_3
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 234
    :cond_e
    goto/16 :goto_b

    :cond_f
    sub-int/2addr v2, v9

    if-ne v4, v2, :cond_e

    .line 235
    if-nez v3, :cond_10

    goto :goto_4

    :cond_10
    add-int/lit8 v12, v3, -0x1

    .line 236
    :goto_4
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 237
    goto/16 :goto_b

    .line 240
    :cond_11
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_b

    .line 244
    :cond_12
    invoke-virtual {p0, v8}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->smoothScrollToPosition(I)V

    goto/16 :goto_b

    .line 181
    :cond_13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FOCUS_RIGHT   onLastRightSpan(position) == "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->onLastRightSpan(I)Z

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "position = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v5, "forrest"

    invoke-static {v5, p2}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, v4}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->onLastRightSpan(I)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 183
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POSITION = position && itemcount = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    add-int/lit8 p2, v2, -0x1

    if-ne v4, p2, :cond_15

    .line 185
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getChildCount()I

    move-result p1

    if-ne p1, v2, :cond_14

    .line 186
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_b

    .line 188
    :cond_14
    invoke-virtual {p0, v8}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->smoothScrollToPosition(I)V

    goto/16 :goto_b

    .line 191
    :cond_15
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p2, :cond_2c

    .line 192
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/GridLayoutManager;

    .line 193
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 194
    if-nez v1, :cond_19

    .line 196
    invoke-super {p0, p1, v6}, Landroid/support/v7/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 197
    invoke-virtual {p2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p2

    .line 199
    if-eqz v3, :cond_16

    div-int/2addr v2, v11

    mul-int/2addr v2, v11

    sub-int/2addr v2, v9

    if-ne v4, v2, :cond_16

    .line 200
    goto :goto_5

    .line 202
    :cond_16
    move v3, p2

    :goto_5
    if-le v3, v9, :cond_18

    .line 203
    nop

    .line 204
    :goto_6
    add-int/lit8 p2, v3, -0x1

    if-ge v8, p2, :cond_17

    .line 205
    invoke-super {p0, p1, v10}, Landroid/support/v7/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 206
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 204
    :cond_17
    move-object v1, p1

    goto :goto_7

    .line 202
    :cond_18
    move-object v1, p1

    .line 210
    :cond_19
    :goto_7
    goto/16 :goto_b

    .line 145
    :cond_1a
    invoke-direct {p0, v4}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->onFirstFlow(I)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 146
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getChildCount()I

    move-result p1

    if-ne p1, v2, :cond_26

    .line 147
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p1, :cond_25

    .line 150
    sget-boolean p1, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz p1, :cond_1f

    .line 151
    if-nez v4, :cond_1d

    .line 152
    if-nez v3, :cond_1b

    move v3, v12

    .line 153
    :cond_1b
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 154
    :cond_1c
    goto/16 :goto_b

    :cond_1d
    if-ne v4, v9, :cond_1c

    .line 155
    if-ne v3, v9, :cond_1e

    goto :goto_8

    :cond_1e
    add-int/lit8 v12, v3, 0x1

    .line 156
    :goto_8
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    sub-int/2addr v2, v12

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 157
    goto/16 :goto_b

    .line 160
    :cond_1f
    if-nez v4, :cond_21

    .line 161
    if-nez v3, :cond_20

    move v3, v11

    .line 162
    :cond_20
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 163
    goto/16 :goto_b

    :cond_21
    if-ne v4, v9, :cond_24

    .line 164
    if-ne v3, v12, :cond_22

    goto :goto_9

    :cond_22
    add-int/lit8 v9, v3, 0x2

    .line 165
    :goto_9
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    sub-int/2addr v2, v9

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 166
    :cond_23
    goto/16 :goto_b

    :cond_24
    if-ne v4, v12, :cond_23

    .line 167
    add-int/2addr v3, v9

    .line 168
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 169
    goto :goto_b

    .line 172
    :cond_25
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    sub-int/2addr v2, v9

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    goto :goto_b

    .line 176
    :cond_26
    sub-int/2addr v2, v9

    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->smoothScrollToPosition(I)V

    goto :goto_b

    .line 117
    :cond_27
    invoke-direct {p0, v4}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->onFirstLeftSpan(I)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 118
    if-nez v4, :cond_29

    .line 119
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getChildCount()I

    move-result p1

    if-ne p1, v2, :cond_28

    .line 120
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    sub-int/2addr v2, v9

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    goto :goto_b

    .line 122
    :cond_28
    sub-int/2addr v2, v9

    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->smoothScrollToPosition(I)V

    goto :goto_b

    .line 125
    :cond_29
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p2, :cond_2c

    .line 126
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/GridLayoutManager;

    .line 127
    sub-int/2addr v4, v9

    invoke-virtual {p2, v4}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 128
    if-nez v1, :cond_2c

    .line 130
    invoke-super {p0, p1, v5}, Landroid/support/v7/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 131
    invoke-virtual {p2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p2

    .line 132
    if-le p2, v9, :cond_2b

    .line 133
    nop

    .line 134
    :goto_a
    add-int/lit8 v1, p2, -0x1

    if-ge v8, v1, :cond_2a

    .line 135
    invoke-super {p0, p1, v7}, Landroid/support/v7/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 136
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 134
    :cond_2a
    move-object v1, p1

    goto :goto_b

    .line 132
    :cond_2b
    move-object v1, p1

    .line 251
    :cond_2c
    :goto_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "will return "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-object v1

    .line 61
    :catch_0
    move-exception p1

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClassCastException ERROR "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 64
    return-object v1
.end method

.method public getDirection()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->mDirection:I

    return v0
.end method

.method public setDirection(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->mDirection:I

    .line 38
    return-void
.end method
