.class public Lcom/mediatek/galleryframework/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/galleryframework/util/Utils$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final HAS_GLES20_REQUIRED:Z

.field private static final TAG:Ljava/lang/String; = "MtkGallery2/Utils"

.field private static sPixelDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/mediatek/galleryframework/util/Utils;->sPixelDensity:F

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/mediatek/galleryframework/util/Utils;->HAS_GLES20_REQUIRED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .line 66
    if-eqz p0, :cond_0

    .line 69
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 94
    if-eqz p0, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MtkGallery2/Utils"

    const-string v2, "<closeSilently> fail to close ParcelFileDescriptor"

    invoke-static {v1, v2, v0}, Lcom/mediatek/galleryframework/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 98
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 99
    :goto_1
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "c"    # Ljava/io/Closeable;

    .line 102
    if-nez p0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "t":Ljava/io/IOException;
    const-string v1, "MtkGallery2/Utils"

    const-string v2, "<closeSilently> fail to close Closeable"

    invoke-static {v1, v2, v0}, Lcom/mediatek/galleryframework/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v0    # "t":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public static decodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 126
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "MtkGallery2/Utils"

    const-string v2, "<decodePath> fail"

    invoke-static {v1, v2}, Lcom/mediatek/galleryframework/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 131
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static dpToPixel(F)F
    .locals 1
    .param p0, "dp"    # F

    .line 112
    sget v0, Lcom/mediatek/galleryframework/util/Utils;->sPixelDensity:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dpToPixel(I)I
    .locals 1
    .param p0, "dp"    # I

    .line 116
    int-to-float v0, p0

    invoke-static {v0}, Lcom/mediatek/galleryframework/util/Utils;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 136
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "MtkGallery2/Utils"

    const-string v2, "<encodePath> fail"

    invoke-static {v1, v2}, Lcom/mediatek/galleryframework/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 141
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 27
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 29
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 30
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/mediatek/galleryframework/util/Utils;->sPixelDensity:F

    .line 31
    return-void
.end method

.method public static isFileExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "isFileExist":Z
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "path":[Ljava/lang/String;
    const-string v2, "MtkGallery2/Utils"

    if-nez v1, :cond_0

    .line 158
    const-string v3, "isFileExist() storage volume path is null, return false"

    invoke-static {v2, v3}, Lcom/mediatek/galleryframework/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v2, 0x0

    return v2

    .line 162
    :cond_0
    array-length v3, v1

    .line 163
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 164
    if-eqz v1, :cond_1

    .line 165
    new-instance v5, Ljava/io/File;

    aget-object v6, v1, v4

    invoke-direct {v5, v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFileExist() file exists with the name is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/mediatek/galleryframework/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x1

    .line 163
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 173
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFileExist() exit with isFileExist is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/galleryframework/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v0
.end method

.method public static meterToPixel(F)I
    .locals 2
    .param p0, "meter"    # F

    .line 121
    const v0, 0x421d7ae1    # 39.37f

    mul-float/2addr v0, p0

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/mediatek/galleryframework/util/Utils;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static nextPowerOf2(I)I
    .locals 3
    .param p0, "n"    # I

    .line 72
    if-lez p0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_0

    .line 74
    add-int/lit8 p0, p0, -0x1

    .line 75
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 76
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 77
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 78
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 79
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 80
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseSlowMotionFromString(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 48
    return v0

    .line 49
    :cond_0
    const/16 v1, 0x78

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 50
    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 51
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "speed":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 54
    .end local v2    # "speed":Ljava/lang/String;
    :cond_2
    return v0
.end method

.method public static prevPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .line 87
    if-lez p0, :cond_0

    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static waitWithoutInterrupt(Ljava/lang/Object;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 59
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<waitWithoutInterrupt> unexpected interrupt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGallery2/Utils"

    invoke-static {v2, v1}, Lcom/mediatek/galleryframework/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method
