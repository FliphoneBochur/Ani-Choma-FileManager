.class public Lcom/jrdcom/filemanager/view/AddFloatingActionButton;
.super Lcom/jrdcom/filemanager/view/FloatingActionButton;
.source "AddFloatingActionButton.java"


# instance fields
.field mPlusColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jrdcom/filemanager/view/AddFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/jrdcom/filemanager/view/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 67
    const v0, 0x7f0600dc

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/view/AddFloatingActionButton;->getDimension(I)F

    move-result v6

    .line 68
    const/high16 v0, 0x40000000    # 2.0f

    div-float v4, v6, v0

    .line 70
    const v1, 0x7f0600de

    invoke-virtual {p0, v1}, Lcom/jrdcom/filemanager/view/AddFloatingActionButton;->getDimension(I)F

    move-result v1

    .line 71
    const v2, 0x7f0600df

    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/view/AddFloatingActionButton;->getDimension(I)F

    move-result v2

    div-float v5, v2, v0

    .line 72
    sub-float v1, v6, v1

    div-float v3, v1, v0

    .line 74
    new-instance v0, Lcom/jrdcom/filemanager/view/AddFloatingActionButton$1;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/jrdcom/filemanager/view/AddFloatingActionButton$1;-><init>(Lcom/jrdcom/filemanager/view/AddFloatingActionButton;FFFF)V

    .line 82
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 84
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 85
    iget v2, p0, Lcom/jrdcom/filemanager/view/AddFloatingActionButton;->mPlusColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    return-object v1
.end method

.method public getPlusColor()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/jrdcom/filemanager/view/AddFloatingActionButton;->mPlusColor:I

    return v0
.end method

.method init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 35
    sget-object v0, Lcom/jrdcom/filemanager/R$styleable;->AddFloatingActionButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    const v2, 0x106000b

    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/view/AddFloatingActionButton;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jrdcom/filemanager/view/AddFloatingActionButton;->mPlusColor:I

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-super {p0, p1, p2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use FloatingActionButton if you want to use custom icon"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPlusColor(I)V
    .locals 1

    .line 54
    iget v0, p0, Lcom/jrdcom/filemanager/view/AddFloatingActionButton;->mPlusColor:I

    if-eq v0, p1, :cond_0

    .line 55
    iput p1, p0, Lcom/jrdcom/filemanager/view/AddFloatingActionButton;->mPlusColor:I

    .line 56
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/AddFloatingActionButton;->updateBackground()V

    .line 58
    :cond_0
    return-void
.end method

.method public setPlusColorResId(I)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/AddFloatingActionButton;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/AddFloatingActionButton;->setPlusColor(I)V

    .line 51
    return-void
.end method
