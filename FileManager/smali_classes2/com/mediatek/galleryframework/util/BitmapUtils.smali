.class public Lcom/mediatek/galleryframework/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkGallery2/BitmapUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSampleSize(F)I
    .locals 3
    .param p0, "scale"    # F

    .line 75
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/mediatek/galleryframework/util/Utils;->assertTrue(Z)V

    .line 76
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 77
    .local v0, "initialSize":I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/mediatek/galleryframework/util/Utils;->nextPowerOf2(I)I

    move-result v1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/2addr v2, v1

    mul-int/2addr v1, v2

    :goto_1
    return v1
.end method

.method public static computeSampleSizeLarger(F)I
    .locals 3
    .param p0, "scale"    # F

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    .line 66
    .local v0, "initialSize":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 67
    return v1

    .line 69
    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/mediatek/galleryframework/util/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v2, v0, 0x8

    mul-int/2addr v1, v2

    :goto_0
    return v1
.end method

.method public static computeSampleSizeLarger(III)I
    .locals 3
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "minSideLength"    # I

    .line 55
    div-int v0, p0, p2

    div-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 56
    .local v0, "initialSize":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 57
    return v1

    .line 59
    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/mediatek/galleryframework/util/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v2, v0, 0x8

    mul-int/2addr v1, v2

    :goto_0
    return v1
.end method

.method public static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 181
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    return-object v0

    .line 182
    .end local v0    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object p0
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 46
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 47
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 49
    :cond_0
    return-object v0
.end method

.method public static replaceBackgroundColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I
    .param p2, "recycleInput"    # Z

    .line 119
    const/4 v0, 0x0

    const-string v1, "MtkGallery2/BitmapUtils"

    if-nez p0, :cond_0

    .line 120
    const-string v2, "<replaceBackgroundColor> Input bitmap == null, return null"

    invoke-static {v1, v2}, Lcom/mediatek/galleryframework/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-object v0

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_1

    .line 124
    const-string v0, "<replaceBackgroundColor> no alpha, return"

    invoke-static {v1, v0}, Lcom/mediatek/galleryframework/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-object p0

    .line 129
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_0

    .line 133
    :cond_2
    const/4 v2, 0x0

    .line 135
    .local v2, "res":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v2    # "res":Landroid/graphics/Bitmap;
    .local v1, "res":Landroid/graphics/Bitmap;
    nop

    .line 142
    if-nez v1, :cond_3

    .line 143
    return-object p0

    .line 147
    :cond_3
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 151
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, p0, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 153
    if-eqz p2, :cond_4

    .line 154
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    const/4 p0, 0x0

    .line 158
    :cond_4
    return-object v1

    .line 137
    .end local v1    # "res":Landroid/graphics/Bitmap;
    .local v2, "res":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "<replaceBackgroundColor> out of memory"

    invoke-static {v1, v3, v0}, Lcom/mediatek/galleryframework/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    return-object p0

    .line 130
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "res":Landroid/graphics/Bitmap;
    :cond_5
    :goto_0
    const-string v0, "<replaceBackgroundColor> invalid Bitmap dimension"

    invoke-static {v1, v0}, Lcom/mediatek/galleryframework/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object p0
.end method

.method public static resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "size"    # I
    .param p2, "recycle"    # Z

    .line 18
    if-nez p0, :cond_0

    .line 19
    const-string v0, "MtkGallery2/BitmapUtils"

    const-string v1, "<resizeAndCropCenter> Input bitmap == null, return null"

    invoke-static {v0, v1}, Lcom/mediatek/galleryframework/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v0, 0x0

    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 23
    .local v0, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 24
    .local v1, "h":I
    if-ne v0, p1, :cond_1

    if-ne v1, p1, :cond_1

    .line 25
    return-object p0

    .line 29
    :cond_1
    int-to-float v2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 31
    .local v2, "scale":F
    invoke-static {p0}, Lcom/mediatek/galleryframework/util/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {p1, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 32
    .local v3, "target":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 33
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 34
    .local v5, "height":I
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    .local v6, "canvas":Landroid/graphics/Canvas;
    sub-int v7, p1, v4

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-int v9, p1, v5

    int-to-float v9, v9

    div-float/2addr v9, v8

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 36
    invoke-virtual {v6, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 37
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 38
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x0

    invoke-virtual {v6, p0, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 39
    if-eqz p2, :cond_2

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    :cond_2
    return-object v3
.end method

.method public static resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F
    .param p2, "recycle"    # Z

    .line 83
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 84
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 85
    .local v1, "height":I
    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 90
    return-object p0

    .line 91
    :cond_1
    invoke-static {p0}, Lcom/mediatek/galleryframework/util/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 92
    .local v2, "target":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 94
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 95
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x0

    invoke-virtual {v3, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    if-eqz p2, :cond_2

    .line 97
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    :cond_2
    return-object v2

    .line 86
    .end local v2    # "target":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "paint":Landroid/graphics/Paint;
    :cond_3
    :goto_0
    const-string v2, "MtkGallery2/BitmapUtils"

    const-string v3, "<resizeBitmapByScale> scaled width or height < 1, no need to resize"

    invoke-static {v2, v3}, Lcom/mediatek/galleryframework/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object p0
.end method

.method public static resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxLength"    # I
    .param p2, "recycle"    # Z

    .line 103
    if-nez p0, :cond_0

    .line 104
    const-string v0, "MtkGallery2/BitmapUtils"

    const-string v1, "<resizeDownBySideLength> Input bitmap == null, return null"

    invoke-static {v0, v1}, Lcom/mediatek/galleryframework/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 108
    .local v0, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 109
    .local v1, "srcHeight":I
    int-to-float v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 111
    .local v2, "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    .line 112
    return-object p0

    .line 113
    :cond_1
    invoke-static {p0, v2, p2}, Lcom/mediatek/galleryframework/util/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "rotation"    # I
    .param p2, "recycle"    # Z

    .line 163
    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 166
    .local v7, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 167
    .local v8, "h":I
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v0

    .line 168
    .local v9, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 169
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v3, v7

    move v4, v8

    move-object v5, v9

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    .line 171
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    :cond_1
    return-object v0

    .line 164
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "w":I
    .end local v8    # "h":I
    .end local v9    # "m":Landroid/graphics/Matrix;
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 178
    :cond_0
    return-void
.end method
