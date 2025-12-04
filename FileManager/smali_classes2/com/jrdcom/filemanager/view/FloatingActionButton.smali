.class public Lcom/jrdcom/filemanager/view/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/view/FloatingActionButton$TranslucentLayerDrawable;,
        Lcom/jrdcom/filemanager/view/FloatingActionButton$FAB_SIZE;
    }
.end annotation


# static fields
.field public static final SIZE_LARGE:I = 0x2

.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I = 0x0

.field public static final displayTitle:Z = true


# instance fields
.field private mCircleSize:F

.field mColorDisabled:I

.field mColorNormal:I

.field mColorPressed:I

.field private mDrawableSize:I

.field private mIcon:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mSize:I

.field mStrokeVisible:Z

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method private adjustColorBrightness(IF)I
    .locals 3

    .line 371
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 372
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 374
    const/4 v1, 0x2

    aget v2, v0, v1

    mul-float/2addr v2, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    aput p2, v0, v1

    .line 376
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private createCircleDrawable(IF)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 304
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 305
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->opaque(I)I

    move-result p1

    .line 307
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 309
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 310
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 311
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->createInnerStrokesDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v2, v3

    .line 318
    const/16 p1, 0xff

    if-eq v0, p1, :cond_1

    iget-boolean p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mStrokeVisible:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    new-instance p1, Lcom/jrdcom/filemanager/view/FloatingActionButton$TranslucentLayerDrawable;

    invoke-direct {p1, v0, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton$TranslucentLayerDrawable;-><init>(I[Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 319
    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 322
    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    float-to-int v8, p2

    .line 323
    const/4 v4, 0x1

    move-object v3, p1

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 325
    return-object p1
.end method

.method private createFillDrawable(F)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 296
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 297
    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, -0x101009e

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorDisabled:I

    invoke-direct {p0, v3, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->createCircleDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 298
    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    iget v2, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorPressed:I

    invoke-direct {p0, v2, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->createCircleDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 299
    new-array v1, v4, [I

    iget v2, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorNormal:I

    invoke-direct {p0, v2, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->createCircleDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 300
    return-object v0
.end method

.method private createInnerStrokesDrawable(IF)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 397
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mStrokeVisible:Z

    if-nez v0, :cond_0

    .line 398
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1

    .line 401
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 403
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->darkenColor(I)I

    move-result v8

    .line 404
    invoke-direct {p0, v8}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->halfTransparent(I)I

    move-result v7

    .line 405
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->lightenColor(I)I

    move-result v4

    .line 406
    invoke-direct {p0, v4}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->halfTransparent(I)I

    move-result v5

    .line 408
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 409
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 410
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 411
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 412
    new-instance p2, Lcom/jrdcom/filemanager/view/FloatingActionButton$1;

    move-object v2, p2

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/jrdcom/filemanager/view/FloatingActionButton$1;-><init>(Lcom/jrdcom/filemanager/view/FloatingActionButton;IIIII)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 423
    return-object v0
.end method

.method private createOuterStrokeDrawable(F)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 346
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 348
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 349
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 350
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 351
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 352
    const/high16 p1, -0x1000000

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    const p1, 0x3ca3d70a    # 0.02f

    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->opacityToAlpha(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    return-object v0
.end method

.method private darkenColor(I)I
    .locals 1

    .line 363
    const v0, 0x3f666666    # 0.9f

    invoke-direct {p0, p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->adjustColorBrightness(IF)I

    move-result p1

    return p1
.end method

.method private halfTransparent(I)I
    .locals 3

    .line 380
    nop

    .line 381
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 382
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 383
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 384
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 380
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private lightenColor(I)I
    .locals 1

    .line 367
    const v0, 0x3f8ccccd    # 1.1f

    invoke-direct {p0, p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->adjustColorBrightness(IF)I

    move-result p1

    return p1
.end method

.method private opacityToAlpha(F)I
    .locals 1

    .line 359
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private opaque(I)I
    .locals 2

    .line 389
    nop

    .line 390
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 391
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 392
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 389
    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 430
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :goto_0
    return-void
.end method

.method private updateCircleSize()V
    .locals 2

    .line 108
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 109
    const v0, 0x7f0600e2

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mCircleSize:F

    goto :goto_0

    .line 110
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 111
    const v0, 0x7f0600e3

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mCircleSize:F

    goto :goto_0

    .line 113
    :cond_1
    const v0, 0x7f0600e4

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mCircleSize:F

    .line 115
    :goto_0
    return-void
.end method

.method private updateDrawableSize()V
    .locals 3

    .line 104
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mCircleSize:F

    iget v1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mShadowRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mDrawableSize:I

    .line 105
    return-void
.end method


# virtual methods
.method getColor(I)I
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getColorDisabled()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorDisabled:I

    return v0
.end method

.method public getColorNormal()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorNormal:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorPressed:I

    return v0
.end method

.method getDimension(I)F
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 287
    return-object v0

    .line 288
    :cond_0
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mIcon:I

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 291
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method getLabelView()Landroid/widget/TextView;
    .locals 1

    .line 233
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mSize:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 81
    sget-object v0, Lcom/jrdcom/filemanager/R$styleable;->FloatingActionButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 82
    const p2, 0x1060013

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getColor(I)I

    move-result p2

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorNormal:I

    .line 83
    const p2, 0x1060012

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getColor(I)I

    move-result p2

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorPressed:I

    .line 84
    const/high16 p2, 0x1060000

    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getColor(I)I

    move-result p2

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorDisabled:I

    .line 85
    const/16 p2, 0xa

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mSize:I

    .line 86
    const/16 p2, 0x9

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mIcon:I

    .line 89
    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mTitle:Ljava/lang/String;

    .line 92
    const/16 p2, 0xb

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mStrokeVisible:Z

    .line 93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-direct {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateCircleSize()V

    .line 96
    const p1, 0x7f0600e1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mShadowRadius:F

    .line 97
    const p1, 0x7f0600e0

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mShadowOffset:F

    .line 98
    invoke-direct {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateDrawableSize()V

    .line 100
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateBackground()V

    .line 101
    return-void
.end method

.method public isStrokeVisible()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mStrokeVisible:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 242
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 243
    iget p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mDrawableSize:I

    invoke-virtual {p0, p1, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setMeasuredDimension(II)V

    .line 244
    return-void
.end method

.method public setColorDisabled(I)V
    .locals 1

    .line 199
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorDisabled:I

    if-eq v0, p1, :cond_0

    .line 200
    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorDisabled:I

    .line 201
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateBackground()V

    .line 203
    :cond_0
    return-void
.end method

.method public setColorDisabledResId(I)V
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setColorDisabled(I)V

    .line 196
    return-void
.end method

.method public setColorNormal(I)V
    .locals 1

    .line 163
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorNormal:I

    if-eq v0, p1, :cond_0

    .line 164
    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorNormal:I

    .line 165
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateBackground()V

    .line 167
    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setColorNormal(I)V

    .line 160
    return-void
.end method

.method public setColorPressed(I)V
    .locals 1

    .line 181
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorPressed:I

    if-eq v0, p1, :cond_0

    .line 182
    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mColorPressed:I

    .line 183
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateBackground()V

    .line 185
    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setColorPressed(I)V

    .line 178
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 136
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mIcon:I

    if-eq v0, p1, :cond_0

    .line 137
    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mIcon:I

    .line 138
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateBackground()V

    .line 141
    :cond_0
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mIcon:I

    .line 146
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateBackground()V

    .line 149
    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 1

    .line 118
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use @FAB_SIZE constants only!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_1
    :goto_0
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mSize:I

    if-eq v0, p1, :cond_2

    .line 123
    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mSize:I

    .line 124
    invoke-direct {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateCircleSize()V

    .line 125
    invoke-direct {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateDrawableSize()V

    .line 126
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateBackground()V

    .line 128
    :cond_2
    return-void
.end method

.method public setStrokeVisible(Z)V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mStrokeVisible:Z

    if-eq v0, p1, :cond_0

    .line 207
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mStrokeVisible:Z

    .line 208
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->updateBackground()V

    .line 210
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 225
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mTitle:Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 444
    return-void
.end method

.method updateBackground()V
    .locals 12

    .line 247
    const v0, 0x7f0600e5

    invoke-virtual {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getDimension(I)F

    move-result v0

    .line 248
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 250
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 252
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mSize:I

    const v4, 0x7f070141

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 253
    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->createFillDrawable(F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 254
    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->createOuterStrokeDrawable(F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    .line 255
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-direct {v8, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mCircleSize:F

    const v2, 0x7f0600dc

    invoke-virtual {p0, v2}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    div-int/2addr v0, v3

    .line 260
    iget v2, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mShadowRadius:F

    float-to-int v9, v2

    .line 261
    iget v3, p0, Lcom/jrdcom/filemanager/view/FloatingActionButton;->mShadowOffset:F

    sub-float v4, v2, v3

    float-to-int v10, v4

    .line 262
    add-float/2addr v2, v3

    float-to-int v11, v2

    .line 264
    const/4 v3, 0x1

    move-object v2, v8

    move v4, v9

    move v5, v10

    move v6, v9

    move v7, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 270
    const/4 v3, 0x2

    int-to-float v2, v9

    sub-float/2addr v2, v1

    float-to-int v6, v2

    int-to-float v2, v10

    sub-float/2addr v2, v1

    float-to-int v5, v2

    int-to-float v2, v11

    sub-float/2addr v2, v1

    float-to-int v7, v2

    move-object v2, v8

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 276
    const/4 v3, 0x3

    add-int v6, v9, v0

    add-int v5, v10, v0

    add-int v7, v11, v0

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 282
    invoke-direct {p0, v8}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 283
    return-void
.end method
