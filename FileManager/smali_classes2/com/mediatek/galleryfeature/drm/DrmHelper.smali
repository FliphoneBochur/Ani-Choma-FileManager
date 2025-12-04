.class public Lcom/mediatek/galleryfeature/drm/DrmHelper;
.super Ljava/lang/Object;
.source "DrmHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkGallery2/DrmHelper"

.field private static sClient:Lcom/mediatek/drm/OmaDrmClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/galleryfeature/drm/DrmHelper;->sClient:Lcom/mediatek/drm/OmaDrmClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRightsStatus(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .line 39
    if-nez p1, :cond_0

    .line 40
    const-string v0, "MtkGallery2/DrmHelper"

    const-string v1, "<checkRightsStatus> got null file path"

    invoke-static {v0, v1}, Lcom/mediatek/galleryframework/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    invoke-static {p0}, Lcom/mediatek/galleryfeature/drm/DrmHelper;->getOmaDrmClient(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, "res":I
    return v0
.end method

.method public static checkRightsStatusValid(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "action"    # I

    .line 30
    if-nez p1, :cond_0

    .line 31
    const-string v0, "MtkGallery2/DrmHelper"

    const-string v1, "<checkRightsStatus> got null file path"

    invoke-static {v0, v1}, Lcom/mediatek/galleryframework/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/mediatek/galleryfeature/drm/DrmHelper;->getOmaDrmClient(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, "valid":I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static clearToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tokenKey"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .line 105
    invoke-static {p0}, Lcom/mediatek/galleryfeature/drm/DrmHelper;->getOmaDrmClient(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->clearToken(Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    return-void
.end method

.method public static decodeBounds(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)V
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "consume"    # Z

    .line 119
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mudp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v0}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 125
    .local v0, "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    invoke-virtual {v0, p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    .line 126
    return-void

    .line 122
    .end local v0    # "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    :cond_1
    :goto_0
    return-void
.end method

.method public static forceDecodeDrmUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "drmUri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "consume"    # Z

    .line 67
    if-nez p2, :cond_0

    .line 68
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object p2, v0

    .line 70
    :cond_0
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v0}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 74
    .local v0, "tempDcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static forceDecryptFile(Ljava/lang/String;Z)[B
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "consume"    # Z

    .line 57
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mudp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v0}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 62
    .local v0, "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    invoke-virtual {v0, p0, p1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1

    .line 60
    .end local v0    # "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDrmIconResourceID(Landroid/content/Context;Lcom/mediatek/galleryframework/base/MediaData;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/mediatek/galleryframework/base/MediaData;

    .line 79
    iget v0, p1, Lcom/mediatek/galleryframework/base/MediaData;->drmMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/galleryfeature/drm/DrmHelper;->hasRightsToShow(Landroid/content/Context;Lcom/mediatek/galleryframework/base/MediaData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const v0, 0x802004a

    return v0

    .line 84
    :cond_1
    const v0, 0x802004b

    return v0
.end method

.method public static getOmaDrmClient(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    sget-object v0, Lcom/mediatek/galleryfeature/drm/DrmHelper;->sClient:Lcom/mediatek/drm/OmaDrmClient;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/galleryfeature/drm/DrmHelper;->sClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 25
    :cond_0
    sget-object v0, Lcom/mediatek/galleryfeature/drm/DrmHelper;->sClient:Lcom/mediatek/drm/OmaDrmClient;

    return-object v0
.end method

.method public static hasRightsToShow(Landroid/content/Context;Lcom/mediatek/galleryframework/base/MediaData;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/mediatek/galleryframework/base/MediaData;

    .line 47
    iget-boolean v0, p1, Lcom/mediatek/galleryframework/base/MediaData;->isVideo:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p1, Lcom/mediatek/galleryframework/base/MediaData;->filePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/mediatek/galleryfeature/drm/DrmHelper;->checkRightsStatusValid(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/mediatek/galleryframework/base/MediaData;->filePath:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lcom/mediatek/galleryfeature/drm/DrmHelper;->checkRightsStatusValid(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isTimeIntervalMedia(Landroid/content/Context;Lcom/mediatek/galleryframework/base/MediaData;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/mediatek/galleryframework/base/MediaData;

    .line 89
    const/4 v0, 0x7

    .line 90
    .local v0, "action":I
    iget-boolean v1, p1, Lcom/mediatek/galleryframework/base/MediaData;->isVideo:Z

    if-eqz v1, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/mediatek/galleryfeature/drm/DrmHelper;->getOmaDrmClient(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;

    move-result-object v1

    iget-object v2, p1, Lcom/mediatek/galleryframework/base/MediaData;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/drm/OmaDrmClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 94
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 95
    const-string v3, "license_start_time"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 96
    .local v3, "startTime":Ljava/lang/Integer;
    const-string v4, "license_expiry_time"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 97
    .local v4, "expiryTime":Ljava/lang/Integer;
    const/4 v5, -0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_2

    :cond_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2

    .line 100
    .end local v3    # "startTime":Ljava/lang/Integer;
    .end local v4    # "expiryTime":Ljava/lang/Integer;
    :cond_4
    return v2
.end method

.method public static isTokenValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tokenKey"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .line 110
    invoke-static {p0}, Lcom/mediatek/galleryfeature/drm/DrmHelper;->getOmaDrmClient(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->isTokenValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 111
    .local v0, "isValid":Z
    return v0
.end method

.method public static showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 115
    invoke-static {p0, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;

    .line 116
    return-void
.end method
