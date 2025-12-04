.class public Lcom/tct/omadrm/MtkDrmManager;
.super Ljava/lang/Object;
.source "MtkDrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tct/omadrm/MtkDrmManager$Action;,
        Lcom/tct/omadrm/MtkDrmManager$MimePrefix;,
        Lcom/tct/omadrm/MtkDrmManager$MimeType;,
        Lcom/tct/omadrm/MtkDrmManager$RightsStatus;,
        Lcom/tct/omadrm/MtkDrmManager$Scheme;
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_DRM_RINGTONE_INFO:I = 0x3eb

.field private static final ACTION_CHECK_DRM_WALLPAPER_INFO:I = 0x3ec

.field public static final ACTION_SET_RINGTONE_CHECKER:Ljava/lang/String; = "jrdcom.intent.action.SET_RINGTONE_CHECKER"

.field public static final ACTION_SET_VIDEO_RINGTONE_CHECKER:Ljava/lang/String; = "jrdcom.intent.action.SET_VIDEO_RINGTONE_CHECKER"

.field public static final ACTION_SET_WALLPAPER_CHECKER:Ljava/lang/String; = "jrdcom.intent.action.SET_WALLPAPER_CHECKER"

.field public static final CONSTRAINT_TYPE:Ljava/lang/String; = "constraint_type"

.field public static final CONTENT_VENDOR:Ljava/lang/String; = "drm_content_vendor"

.field public static final CROPIMAGE_FILEPATH:Ljava/lang/String; = "drm_cropimage_filepath"

.field public static final DRMFRAMEWORKS_NULL:I = -0x1

.field public static final DRM_CONTENT_DESCRIPTION:Ljava/lang/String; = "drm_content_description"

.field public static final DRM_CONTENT_NAME:Ljava/lang/String; = "drm_content_name"

.field public static final DRM_CONTENT_URI:Ljava/lang/String; = "drm_content_uri"

.field public static final DRM_DATA_LEN:Ljava/lang/String; = "drm_dataLen"

.field public static final DRM_ICON_URI:Ljava/lang/String; = "drm_icon_uri"

.field public static final DRM_METHOD:Ljava/lang/String; = "drm_method"

.field public static final DRM_OFFSET:Ljava/lang/String; = "drm_offset"

.field public static final DRM_SCHEME_OMA1_CD:I = 0x2

.field public static final DRM_SCHEME_OMA1_FL:I = 0x1

.field public static final DRM_SCHEME_OMA1_SD:I = 0x3

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final MIME_HAED_IMAGE:Ljava/lang/String; = "image/"

.field public static final MIME_HEAD_AUDIO:Ljava/lang/String; = "audio/"

.field public static final MIME_HEAD_VIDEO:Ljava/lang/String; = "video/"

.field public static final RIGHTS_ISSUER:Ljava/lang/String; = "drm_rights_issuer"

.field public static final TAG:Ljava/lang/String; = "MtkDrmManager"

.field public static final TCT_IS_DRM:Ljava/lang/String; = "is_drm"

.field public static final TRANSFER:I = 0x3

.field public static final WALLPAPER_FILEPATH:Ljava/lang/String; = "drm_wallpaper_filepath"

.field public static final WALLPAPER_FILEPATH_RIGHTS_OVER:Ljava/lang/String; = "drm_wallpaper_filepath_rights_over"

.field private static mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private static mMTKDrmEable:Ljava/lang/Boolean;

.field private static mMtkDrmManager:Lcom/tct/omadrm/MtkDrmManager;


# instance fields
.field private drmConstraintsTime:J

.field private drmTrustSecureTime:J

.field private mContext:Landroid/content/Context;

.field mEventThread:Landroid/os/HandlerThread;

.field private mFilePath:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/tct/omadrm/MtkDrmManager;->mMtkDrmManager:Lcom/tct/omadrm/MtkDrmManager;

    .line 84
    sput-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 289
    sput-object v0, Lcom/tct/omadrm/MtkDrmManager;->mMTKDrmEable:Ljava/lang/Boolean;

    .line 1160
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1156
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tct/omadrm/MtkDrmManager;->drmConstraintsTime:J

    .line 1158
    iput-wide v0, p0, Lcom/tct/omadrm/MtkDrmManager;->drmTrustSecureTime:J

    .line 257
    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->init(Landroid/content/Context;)V

    .line 258
    return-void
.end method

.method public static checkRightsStatusValid(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "action"    # I

    .line 2483
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2484
    :cond_0
    const-string v0, "MtkDrmManager"

    const-string v1, "<checkRightsStatus> got null filepath"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    :cond_1
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 2487
    .local v0, "valid":I
    if-nez v0, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, "path":Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 1203
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1204
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1205
    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 1208
    :cond_0
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1209
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1211
    goto :goto_2

    :cond_1
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1212
    const-string v2, "_data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 1213
    .local v5, "projection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1215
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/tct/omadrm/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    .line 1216
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1215
    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v9, v3

    .line 1217
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1221
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1222
    .local v2, "pathIndex":I
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 1223
    .end local v2    # "pathIndex":I
    nop

    .line 1227
    if-eqz v9, :cond_6

    .line 1228
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1231
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    goto :goto_2

    .line 1218
    .restart local v5    # "projection":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given Uri could not be found in media store"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/tct/omadrm/MtkDrmManager;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v5    # "projection":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/tct/omadrm/MtkDrmManager;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1223
    :catch_0
    move-exception v2

    .line 1224
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/tct/omadrm/MtkDrmManager;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1227
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v5    # "projection":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/tct/omadrm/MtkDrmManager;
    .restart local p1    # "uri":Landroid/net/Uri;
    :goto_0
    if-eqz v9, :cond_3

    .line 1228
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1230
    :cond_3
    throw v2

    .line 1232
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given Uri scheme is not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1206
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1235
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_6
    :goto_2
    return-object v0
.end method

.method private static decode([BI)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "targetSize"    # I

    .line 317
    if-nez p0, :cond_0

    .line 318
    const-string v0, "MtkDrmManager"

    const-string v1, "DRM <decode> buffer == null, error args, return null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v0, 0x0

    return-object v0

    .line 322
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 323
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 324
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 325
    nop

    .line 326
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 325
    invoke-static {v1, v3, p1}, Lcom/tct/omadrm/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 328
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 329
    invoke-static {v0}, Lcom/tct/omadrm/BitmapUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 330
    array-length v1, p0

    .line 331
    nop

    .line 330
    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 332
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public static decodeSquareThumbnail([BI)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "targetSize"    # I

    .line 336
    invoke-static {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->decode([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 337
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 338
    const/4 v1, 0x0

    return-object v1

    .line 339
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 340
    .local v1, "size":I
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tct/omadrm/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static forceDecryptFile(Ljava/lang/String;Z)[B
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "consume"    # Z

    .line 385
    if-eqz p0, :cond_1

    .line 386
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mudp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    new-instance v0, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v0}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 390
    .local v0, "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    invoke-virtual {v0, p0, p1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1

    .line 388
    .end local v0    # "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAction(Ljava/lang/String;)I
    .locals 2
    .param p0, "mime"    # Ljava/lang/String;

    .line 500
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x7

    return v0

    .line 502
    :cond_0
    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 503
    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 506
    :cond_1
    return v1

    .line 504
    :cond_2
    :goto_0
    return v1
.end method

.method private getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defType"    # Ljava/lang/String;
    .param p4, "defPackage"    # Ljava/lang/String;

    .line 2368
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2370
    .local v0, "id":I
    const-string v1, "MtkDrmManager"

    if-nez v0, :cond_0

    .line 2371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": id= 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    goto/16 :goto_1

    :cond_0
    const-string v2, "bool"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "  value ="

    const-string v4, ": i ="

    if-eqz v2, :cond_1

    .line 2373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    goto :goto_1

    :cond_1
    const-string v2, "string"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2376
    :cond_2
    const-string v2, "integer"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2376
    :cond_3
    :goto_0
    nop

    .line 2379
    :goto_1
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tct/omadrm/MtkDrmManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 266
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mMtkDrmManager:Lcom/tct/omadrm/MtkDrmManager;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/tct/omadrm/MtkDrmManager;

    invoke-direct {v0, p0}, Lcom/tct/omadrm/MtkDrmManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tct/omadrm/MtkDrmManager;->mMtkDrmManager:Lcom/tct/omadrm/MtkDrmManager;

    .line 269
    :cond_0
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mMtkDrmManager:Lcom/tct/omadrm/MtkDrmManager;

    return-object v0
.end method

.method private getInternalRingtones(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 2445
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2446
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2447
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 2448
    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2449
    const-string v3, "_data"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 2450
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2451
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2450
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 2451
    const-string v3, "title_key"

    const/4 v6, 0x3

    aput-object v3, v2, v6

    .line 2452
    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v4

    .line 2453
    nop

    .line 2445
    const-string v3, "_data=?"

    const-string v6, "title_key"

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 2464
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 2466
    .local v0, "status":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2467
    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2478
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2468
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2469
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2470
    nop

    .line 2471
    nop

    .line 2472
    nop

    .line 2473
    const-string v1, "_id"

    const-string v4, "_data"

    const-string v5, "title_key"

    filled-new-array {v1, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 2474
    nop

    .line 2475
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2476
    aput-object p2, v6, v1

    .line 2478
    nop

    .line 2468
    const-string v5, "_data=?"

    const-string v7, "title_key"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2478
    nop

    .line 2466
    :goto_1
    return-object v1
.end method

.method public static getRingtoneStrType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 2345
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 2346
    const-string v0, "ringtone"

    return-object v0

    .line 2347
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 2348
    const-string v0, "notification_sound"

    return-object v0

    .line 2349
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 2350
    const-string v0, "alarm_alert"

    return-object v0

    .line 2351
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 2352
    const-string v0, "video_call"

    return-object v0

    .line 2354
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSDRawDrmScheme([BII)I
    .locals 13
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1246
    const/4 v0, 0x0

    .line 1247
    .local v0, "scheme":I
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 1248
    .local v1, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1250
    .local v2, "start_index":I
    const/4 v3, 0x1

    aget-byte v4, p0, v3

    .line 1251
    .local v4, "second_byte":B
    const/4 v5, 0x2

    aget-byte v6, p0, v5

    .line 1252
    .local v6, "third_byte":B
    and-int/lit16 v7, v6, 0xff

    .line 1253
    .local v7, "cid_length":I
    and-int/lit16 v8, v4, 0xff

    .line 1254
    .local v8, "ctype_length":I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cid_length  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MtkDrmManager"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    if-lez v7, :cond_0

    if-lez v8, :cond_0

    .line 1256
    add-int/lit8 v2, v8, 0x2

    .line 1258
    :cond_0
    if-eqz v2, :cond_1

    add-int/lit8 v9, v2, 0x3

    if-ge v9, p2, :cond_1

    .line 1259
    const/4 v9, 0x3

    new-array v9, v9, [B

    const/4 v11, 0x0

    add-int/lit8 v12, v2, 0x1

    aget-byte v12, p0, v12

    aput-byte v12, v9, v11

    add-int/lit8 v11, v2, 0x2

    aget-byte v11, p0, v11

    aput-byte v11, v9, v3

    .line 1260
    add-int/lit8 v3, v2, 0x3

    aget-byte v3, p0, v3

    aput-byte v3, v9, v5

    .line 1259
    move-object v3, v9

    .line 1261
    .local v3, "cid_byte_array":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 1262
    .local v5, "cid_str":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "cid_Str: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const-string v9, "cid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1264
    const-string v9, "Rights-Issuer"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 1265
    const/4 v0, 0x3

    .line 1267
    .end local v3    # "cid_byte_array":[B
    .end local v5    # "cid_str":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 2410
    invoke-direct {p0, p1, p2}, Lcom/tct/omadrm/MtkDrmManager;->getInternalRingtones(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2411
    .local v0, "internalCursor":Landroid/database/Cursor;
    const-string v1, "_id"

    const-string v2, "/"

    if-eqz v0, :cond_1

    .line 2412
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 2413
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2415
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2416
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2414
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2417
    .local v1, "uriString":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 2419
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2422
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tct/omadrm/MtkDrmManager;->getMediaRingtones(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2423
    .local v3, "mediaCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_3

    .line 2424
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 2425
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2427
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    nop

    .line 2429
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2428
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2426
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2430
    .restart local v1    # "uriString":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 2432
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2434
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isDrm(Ljava/lang/String;)Z
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1579
    const/4 v0, 0x0

    .line 1580
    .local v0, "result":Z
    invoke-static {}, Lcom/tct/omadrm/MtkDrmManager;->isMTKDrmEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 1585
    :cond_0
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "MtkDrmManager"

    if-nez v1, :cond_7

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1586
    const-string v1, "rtsp://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ".sdp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_7

    .line 1592
    :cond_1
    const-string v1, "content://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1593
    sget-object v1, Lcom/tct/omadrm/MtkDrmManager;->mMtkDrmManager:Lcom/tct/omadrm/MtkDrmManager;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/tct/omadrm/MtkDrmManager;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1594
    :cond_2
    const-string v1, "file://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1595
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1596
    .local v1, "start_index":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1594
    .end local v1    # "start_index":I
    :cond_3
    :goto_0
    nop

    .line 1598
    :goto_1
    const/4 v1, 0x0

    .line 1600
    .local v1, "fis":Ljava/io/FileInputStream;
    if-eqz p0, :cond_5

    .line 1601
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 1602
    const/16 v4, 0x3e8

    new-array v4, v4, [B

    .line 1603
    .local v4, "buffer":[B
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 1604
    .local v5, "count":I
    invoke-static {v4, v2, v5}, Lcom/tct/omadrm/MtkDrmManager;->isDrm([BII)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 1606
    .end local v4    # "buffer":[B
    .end local v5    # "count":I
    goto :goto_5

    .line 1608
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1606
    :catch_0
    move-exception v2

    .line 1607
    .local v2, "ie":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fail to create input stream for file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1609
    nop

    .end local v2    # "ie":Ljava/io/IOException;
    if-eqz v1, :cond_6

    .line 1611
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1612
    :goto_2
    goto :goto_6

    :catch_1
    move-exception v2

    .line 1613
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 1609
    :goto_3
    if-eqz v1, :cond_4

    .line 1611
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1612
    goto :goto_4

    :catch_2
    move-exception v3

    .line 1613
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1616
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_4
    throw v2

    .line 1609
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 1611
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 1612
    :catch_3
    move-exception v2

    .line 1613
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1618
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "file "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", drm status = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    return v0

    .line 1587
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_7
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "streaming url "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can not be handled by drm"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    return v2

    .line 1581
    :cond_8
    :goto_8
    return v2
.end method

.method public static isDrm([BII)Z
    .locals 4
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1636
    const/4 v0, 0x0

    .line 1641
    .local v0, "result":Z
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v1, p0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1643
    .local v1, "header":Ljava/lang/String;
    const-string v2, "MTK_FL_cid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MTK_CD_cid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1650
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/tct/omadrm/MtkDrmManager;->getSDRawDrmScheme([BII)I

    move-result v2

    .line 1651
    .local v2, "scheme":I
    if-eqz v2, :cond_2

    .line 1652
    const/4 v0, 0x1

    goto :goto_1

    .line 1644
    .end local v2    # "scheme":I
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1645
    nop

    .line 1655
    :cond_2
    :goto_1
    return v0
.end method

.method public static isDrmEnabled()Z
    .locals 4

    .line 292
    const-string v0, "MtkDrmManager"

    const/4 v1, 0x1

    .line 294
    .local v1, "flag":Z
    :try_start_0
    invoke-static {}, Lcom/tct/omadrm/MtkDrmManager;->isMTKDrmEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v1    # "flag":Z
    .local v0, "flag":Z
    goto :goto_0

    .line 299
    .end local v0    # "flag":Z
    .restart local v1    # "flag":Z
    :catch_0
    move-exception v2

    .line 300
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    const-string v3, "DRM fatal NoSuchMethodError, no method \'isDrmEnabled\' "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->fillInStackTrace()Ljava/lang/Throwable;

    .line 302
    const/4 v0, 0x0

    .end local v1    # "flag":Z
    .restart local v0    # "flag":Z
    goto :goto_0

    .line 295
    .end local v0    # "flag":Z
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    .restart local v1    # "flag":Z
    :catch_1
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DRM fatal , no method \'isDrmEnabled\' "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v2}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 298
    const/4 v0, 0x0

    .line 304
    .end local v1    # "flag":Z
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "flag":Z
    :goto_0
    return v0
.end method

.method public static isDrmSD(Ljava/lang/String;)Z
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1717
    const/4 v0, 0x0

    .line 1718
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 1720
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 1721
    const/16 v2, 0x3e8

    new-array v2, v2, [B

    .line 1722
    .local v2, "buffer":[B
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 1723
    .local v3, "count":I
    const/16 v4, 0xc

    invoke-static {v2, v4, v3}, Lcom/tct/omadrm/MtkDrmManager;->getSDRawDrmScheme([BII)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1724
    .local v4, "scheme":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1725
    const/4 v0, 0x1

    .line 1730
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "scheme":I
    :cond_0
    nop

    .line 1732
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1733
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    .line 1734
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1729
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1727
    :catch_1
    move-exception v2

    .line 1728
    .local v2, "ie":Ljava/io/IOException;
    :try_start_2
    const-string v3, "MtkDrmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fail to create input stream for file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1730
    nop

    .end local v2    # "ie":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 1732
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1733
    :catch_2
    move-exception v2

    .line 1734
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1738
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return v0

    .line 1730
    :goto_2
    if-eqz v1, :cond_2

    .line 1732
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1733
    goto :goto_3

    :catch_3
    move-exception v3

    .line 1734
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1737
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v2
.end method

.method private static isMTKDrmEnable()Z
    .locals 2

    .line 309
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mMTKDrmEable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 310
    const-string v0, "ro.drm.enable"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tct/omadrm/MtkDrmManager;->mMTKDrmEable:Ljava/lang/Boolean;

    .line 313
    :cond_0
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mMTKDrmEable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUriExisted(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2319
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 2320
    .local v3, "projection":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2321
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x1

    .line 2323
    .local v7, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 2324
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 2325
    :cond_0
    const/4 v7, 0x0

    .line 2327
    nop

    .line 2331
    :cond_1
    if-eqz v0, :cond_2

    .line 2332
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2330
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2327
    :catch_0
    move-exception v1

    .line 2328
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2329
    const/4 v7, 0x0

    .line 2331
    .end local v1    # "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 2332
    goto :goto_0

    .line 2334
    :cond_2
    :goto_1
    return v7

    .line 2331
    :goto_2
    if-eqz v0, :cond_3

    .line 2332
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2333
    :cond_3
    throw v1
.end method

.method private parsePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 2391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@parsePath | path = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDrmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    const-string v0, "silent"

    .line 2393
    .local v0, "fullPath":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "silent"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2394
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/custpack/JRD_custres/audio/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2396
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fullPath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uri = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/tct/omadrm/MtkDrmManager;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    invoke-direct {p0, p1, v0}, Lcom/tct/omadrm/MtkDrmManager;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static showConsumeDialog(Landroid/content/Context;Landroid/drm/DrmManagerClient;Landroid/net/Uri;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Landroid/drm/DrmManagerClient;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 942
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/omadrm/OmaDrmUtils;->showConsumerDialog(Landroid/content/Context;Landroid/drm/DrmManagerClient;Landroid/net/Uri;Landroid/content/DialogInterface$OnClickListener;)V

    .line 943
    return-void
.end method

.method public static showProtectionInfoDialog(Landroid/content/Context;Landroid/drm/DrmManagerClient;Landroid/net/Uri;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Landroid/drm/DrmManagerClient;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 958
    invoke-static {p0, p1, p2}, Lcom/mediatek/omadrm/OmaDrmUtils;->showProtectionInfoDialog(Landroid/content/Context;Landroid/drm/DrmManagerClient;Landroid/net/Uri;)V

    .line 959
    return-void
.end method

.method public static showProtectionInfoDialog(Landroid/content/Context;Landroid/drm/DrmManagerClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Landroid/drm/DrmManagerClient;
    .param p2, "path"    # Ljava/lang/String;

    .line 975
    invoke-static {p0, p1, p2}, Lcom/mediatek/omadrm/OmaDrmUtils;->showProtectionInfoDialog(Landroid/content/Context;Landroid/drm/DrmManagerClient;Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method private toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 5
    .param p1, "sec"    # Ljava/lang/Long;

    .line 1239
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1240
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 1241
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1242
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method


# virtual methods
.method public activateContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "drmtoast"    # Ljava/lang/String;

    .line 449
    const-string v0, "drm_rights_issuer"

    const-string v1, "MtkDrmManager"

    :try_start_0
    const-string v2, "DRM activateContent "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget-object v2, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p2}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 451
    .local v2, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 453
    .local v3, "rightsIssuer":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 454
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    nop

    .line 456
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    move-object v3, v0

    .line 459
    :cond_0
    if-eqz v3, :cond_2

    const-string v0, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 464
    :cond_1
    move-object v0, v3

    .line 465
    .local v0, "rightsIssuerFinal":Ljava/lang/String;
    const-string v4, "DRM activateContents: start to refresh license"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    .line 467
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 466
    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 468
    .local v4, "it":Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 469
    .end local v0    # "rightsIssuerFinal":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "rightsIssuer":Ljava/lang/String;
    .end local v4    # "it":Landroid/content/Intent;
    goto :goto_1

    .line 460
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "rightsIssuer":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    return-void

    .line 469
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "rightsIssuer":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isRightValid exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .line 549
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v0

    return v0

    .line 552
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .line 556
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 559
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public clearDrmWallpaperFilepath(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .line 1877
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drm_wallpaper_filepath"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1878
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drm_cropimage_filepath"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1879
    return-void
.end method

.method public consumeRights(Landroid/net/Uri;I)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .line 887
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mMtkDrmManager:Lcom/tct/omadrm/MtkDrmManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {p0, p1, p2}, Lcom/tct/omadrm/MtkDrmManager;->consumeRights(Landroid/net/Uri;I)I

    move-result v0

    return v0

    .line 890
    :cond_0
    const/16 v0, -0x7d0

    return v0
.end method

.method public consumeRights(Ljava/lang/String;I)I
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "consumeRights : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDrmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const/16 v0, -0x7d0

    if-eqz p1, :cond_5

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 1530
    :cond_0
    invoke-static {p2}, Lcom/tct/omadrm/MtkDrmManager$Action;->isValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1531
    const-string v2, "consumeRights : Given action is not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    return v0

    .line 1537
    :cond_1
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e5

    .line 1538
    nop

    .line 1537
    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1536
    nop

    .line 1539
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    nop

    .line 1540
    nop

    .line 1539
    const-string v3, "action"

    const-string v4, "markAsConsumeInAppClient"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1541
    const-string v3, "data"

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1542
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data_1_extra"

    invoke-virtual {v2, v4, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1544
    sget-object v3, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 1545
    .local v3, "metadata":Landroid/content/ContentValues;
    const-string v4, "drm_content_uri"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1547
    .local v4, "cid":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1548
    const-string v5, "data_2"

    invoke-virtual {v2, v5, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1551
    :cond_2
    sget-object v5, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v5, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v5

    .line 1554
    .local v5, "info":Landroid/drm/DrmInfo;
    invoke-virtual {v5}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v6

    .line 1555
    .local v6, "data":[B
    const-string v7, ""

    .line 1556
    .local v7, "message":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1559
    :try_start_0
    new-instance v8, Ljava/lang/String;

    const-string v9, "US-ASCII"

    invoke-direct {v8, v6, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    .line 1560
    goto :goto_0

    :catch_0
    move-exception v8

    .line 1561
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    const-string v9, "Unsupported encoding type of the returned DrmInfo data"

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const-string v7, ""

    .line 1565
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "consumeRights : >"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const-string v1, "success"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1568
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    nop

    .line 1567
    :goto_1
    return v0

    .line 1527
    .end local v2    # "request":Landroid/drm/DrmInfoRequest;
    .end local v3    # "metadata":Landroid/content/ContentValues;
    .end local v4    # "cid":Ljava/lang/String;
    .end local v5    # "info":Landroid/drm/DrmInfo;
    .end local v6    # "data":[B
    .end local v7    # "message":Ljava/lang/String;
    :cond_5
    :goto_2
    const-string v2, "consumeRights : Given path is not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return v0
.end method

.method public consumeRights(Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1494
    const-string v0, "MtkDrmManager"

    const-string v1, "DrmManagerClietn.consumeRights method invoked."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1496
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tct/omadrm/MtkDrmManager;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1498
    :cond_0
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1499
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1500
    .local v1, "start_index":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1498
    .end local v1    # "start_index":I
    :cond_1
    :goto_0
    nop

    .line 1502
    :goto_1
    sget-object v1, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1503
    .local v1, "mimeType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1504
    .local v2, "action":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1505
    invoke-static {v1}, Lcom/tct/omadrm/MtkDrmManager;->getAction(Ljava/lang/String;)I

    move-result v2

    .line 1506
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filepath :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "action :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/tct/omadrm/MtkDrmManager;->consumeRights(Ljava/lang/String;I)I

    .line 1514
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "action":I
    :cond_3
    return-void
.end method

.method public drmSetAsWallpaper(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 1892
    const-string v0, "MtkDrmManager"

    const-string v1, "enter drmSetWallpaper "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    sget-object v1, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v2, 0x7

    invoke-virtual {v1, p2, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 1894
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1896
    .local v0, "toastMsg":Ljava/lang/String;
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1897
    return v3

    .line 1899
    .end local v0    # "toastMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tct/omadrm/MtkDrmManager;->hasCountConstraint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1900
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1902
    .restart local v0    # "toastMsg":Ljava/lang/String;
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1903
    return v3

    .line 1905
    .end local v0    # "toastMsg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "drm_cropimage_filepath"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1907
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "drm_wallpaper_filepath_rights_over"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1908
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drmSetAsWallpaper  successful"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    goto :goto_0

    .line 1910
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drmSetAsWallpaper faile"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :goto_0
    invoke-virtual {p0, p2}, Lcom/tct/omadrm/MtkDrmManager;->consumeRights(Ljava/lang/String;)V

    .line 1914
    return v4
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1296
    :try_start_0
    const-string v0, "MtkDrmManager"

    const-string v1, "finalize DrmManagerClient instance."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    invoke-virtual {p0}, Lcom/tct/omadrm/MtkDrmManager;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1298
    nop

    .line 1299
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1301
    return-void

    .line 1298
    :catchall_0
    move-exception v0

    .line 1299
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1300
    throw v0
.end method

.method public getConstraintFromFilePath(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1783
    const/4 v0, 0x0

    .line 1784
    .local v0, "original_mimetype":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1786
    .local v1, "action":I
    :try_start_0
    sget-object v2, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1787
    goto :goto_0

    :catch_0
    move-exception v2

    .line 1788
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v3, "MtkDrmManager"

    const-string v4, "fail to get mimetype"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_0
    if-nez v0, :cond_0

    .line 1791
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1792
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1793
    .local v3, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1796
    .end local v2    # "index":I
    .end local v3    # "extension":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 1797
    invoke-static {v0}, Lcom/tct/omadrm/MtkDrmManager;->getAction(Ljava/lang/String;)I

    move-result v1

    .line 1799
    :cond_1
    sget-object v2, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1, v1}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    return-object v2
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .line 812
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .line 816
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .line 2291
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtk_audioprofile_active"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2293
    .local v0, "activeProfileKey":Ljava/lang/String;
    const-string v1, "general"

    .line 2294
    .local v1, "profileName":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 2295
    const-string v3, "mtk_audioprofile_"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2298
    :cond_0
    const/4 v2, 0x0

    .line 2299
    .local v2, "defaultringtoneuri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@getDefaultRingtoneUri | activeProfileKey = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | profileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkDrmManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const-string v3, "ringtone"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "video_call"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2302
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ro_voice_ringtone_uri_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ringtones"

    invoke-direct {p0, p1, v3, v4}, Lcom/tct/omadrm/MtkDrmManager;->parsePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2304
    :cond_2
    const-string v3, "notification_sound"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2305
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ro_notification_uri_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "notifications"

    invoke-direct {p0, p1, v3, v4}, Lcom/tct/omadrm/MtkDrmManager;->parsePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2307
    :cond_3
    return-object v2
.end method

.method public getDrmRealThumbnail(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "size"    # I

    .line 707
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 708
    nop

    .line 707
    const-string v1, "it\'s invalid method,pls use methid ---> overlayDrmIconSkew"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDrmScheme(Ljava/lang/String;)I
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 738
    const/4 v0, -0x1

    .line 740
    .local v0, "drmScheme":I
    sget-object v1, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_3

    .line 741
    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->getMethod(Ljava/lang/String;)I

    move-result v1

    .line 742
    .local v1, "method":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 743
    const/4 v0, 0x1

    .line 744
    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 745
    const/4 v0, 0x2

    .line 746
    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 747
    const/4 v0, 0x3

    .line 750
    .end local v1    # "method":I
    :cond_3
    :goto_0
    return v0
.end method

.method public getDrmThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 360
    iget-object v0, p0, Lcom/tct/omadrm/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/tct/omadrm/MtkDrmManager;->hasRightsToShow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 361
    .local v0, "hasRightsToShow":Z
    const/4 v1, 0x0

    const-string v2, "MtkDrmManager"

    if-nez v0, :cond_0

    .line 362
    const-string v3, "DRM <getDrmThumbnail> no rights to show, return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-object v1

    .line 366
    :cond_0
    const/4 v3, 0x0

    .line 368
    .local v3, "buffer":[B
    if-eqz p1, :cond_1

    .line 369
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dcf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 370
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mudp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 371
    :cond_1
    const/4 v3, 0x0

    .line 372
    :cond_2
    new-instance v4, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v4}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 373
    .local v4, "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v3

    .line 375
    if-nez v3, :cond_3

    .line 376
    const-string v5, "DRM <getDrmThumbnail> buffer == null, return"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-object v1

    .line 379
    :cond_3
    const-string v1, "DRM getDrmThumbnail "

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0, v3, p2}, Lcom/tct/omadrm/MtkDrmManager;->getSquareThumbnailFromBuffer([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getDrmVideoThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "size"    # I

    .line 693
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 694
    nop

    .line 693
    const-string v1, "it\'s invalid method,pls use methid ---> overlayDrmIconSkew"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mAbsolutePath"    # Ljava/lang/String;

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 795
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 845
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    .line 848
    invoke-direct {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tct/omadrm/MtkDrmManager;->getMethod(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 846
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMethod(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, "METHOD_NONE":I
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 865
    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 866
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "drm_method"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 867
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 868
    .local v2, "m":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 869
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 872
    .end local v2    # "m":Ljava/lang/Integer;
    :cond_0
    return v0

    .line 862
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given path should be non null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMovie(Ljava/lang/String;)Landroid/graphics/Movie;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 426
    const/4 v0, 0x0

    .line 428
    .local v0, "buffer":[B
    if-eqz p1, :cond_0

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".dcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mudp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 431
    :cond_0
    const/4 v0, 0x0

    .line 432
    :cond_1
    new-instance v1, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v1}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 433
    .local v1, "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 435
    const-string v3, "MtkDrmManager"

    if-nez v0, :cond_2

    .line 436
    const-string v2, "DRM getMovie buffer == null, return null"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v2, 0x0

    return-object v2

    .line 439
    :cond_2
    const-string v4, "DRM getMovie "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v2

    .line 442
    .local v2, "mMovie":Landroid/graphics/Movie;
    return-object v2
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 484
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "mimeType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DRM  getOriginalMimeType mimeType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkDrmManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    if-nez v0, :cond_0

    .line 488
    nop

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DRM #getOriginalMimeType(),mDrmManagerClient.getOriginalMimeType(path) return null.path:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v0, ""

    .line 493
    :cond_0
    return-object v0

    .line 495
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getRingtoneTypeFromName(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 2035
    const/4 v0, -0x1

    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2037
    :cond_0
    const-string v1, "ringtone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2038
    const/4 v0, 0x1

    return v0

    .line 2039
    :cond_1
    const-string v1, "notification_sound"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2040
    const/4 v0, 0x2

    return v0

    .line 2041
    :cond_2
    const-string v1, "alarm_alert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2042
    const/4 v0, 0x4

    return v0

    .line 2044
    :cond_3
    return v0

    .line 2036
    :cond_4
    :goto_0
    return v0
.end method

.method public getSquareThumbnailFromBuffer([BI)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "targetSize"    # I

    .line 344
    if-nez p1, :cond_0

    .line 345
    const/4 v0, 0x0

    return-object v0

    .line 346
    :cond_0
    invoke-static {p1, p2}, Lcom/tct/omadrm/MtkDrmManager;->decodeSquareThumbnail([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailConsume(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 400
    iget-object v0, p0, Lcom/tct/omadrm/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/tct/omadrm/MtkDrmManager;->hasRightsToShow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 401
    .local v0, "hasRightsToShow":Z
    const/4 v1, 0x0

    const-string v2, "MtkDrmManager"

    if-nez v0, :cond_0

    .line 402
    const-string v3, "DRM <getThumbnailConsume> no rights to show, return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-object v1

    .line 406
    :cond_0
    const/4 v3, 0x0

    .line 408
    .local v3, "buffer":[B
    if-eqz p1, :cond_1

    .line 409
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dcf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 410
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mudp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 411
    :cond_1
    const/4 v3, 0x0

    .line 412
    :cond_2
    new-instance v4, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v4}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 413
    .local v4, "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v3

    .line 415
    if-nez v3, :cond_3

    .line 416
    const-string v5, "DRM <getThumbnailConsume> buffer == null, return"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-object v1

    .line 419
    :cond_3
    const-string v1, "DRM getThumbnailConsume "

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0, v3, p2}, Lcom/tct/omadrm/MtkDrmManager;->getSquareThumbnailFromBuffer([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getTimeConstraint(Ljava/lang/String;)J
    .locals 5
    .param p1, "filepath"    # Ljava/lang/String;

    .line 1749
    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->getConstraintFromFilePath(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1750
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "0"

    .line 1751
    .local v1, "timeConstraintStr":Ljava/lang/String;
    const-string v2, "MtkDrmManager"

    if-eqz v0, :cond_0

    .line 1752
    const-string v3, "license_expiry_time"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1753
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTimeConstraint getTimeInSecondes:= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  timeConstraintStr "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public hasCountConstraint(Ljava/lang/String;)Z
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1767
    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->getConstraintFromFilePath(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1768
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1769
    const-string v2, "remaining_repeat_count"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1770
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1769
    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1772
    :cond_1
    return v1
.end method

.method public hasRightsToShow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 350
    invoke-virtual {p0, p2}, Lcom/tct/omadrm/MtkDrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/tct/omadrm/MtkDrmManager;->getAction(Ljava/lang/String;)I

    move-result v1

    .line 353
    .local v1, "actionId":I
    sget-object v2, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p2, v1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v2

    .line 354
    .local v2, "valid":I
    if-nez v2, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public hasTimeConstraint(Ljava/lang/String;)Z
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1812
    const-string v0, "license_expiry_time"

    const-string v1, "license_start_time"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->getConstraintFromFilePath(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 1813
    .local v3, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1814
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-lez v1, :cond_0

    .line 1815
    return v4

    .line 1817
    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1818
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    return v4

    :cond_1
    return v2

    .line 1820
    .end local v3    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1821
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DRM hasTimeConstraint Exception = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MtkDrmManager"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    return v2
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 280
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 282
    iput-object p1, p0, Lcom/tct/omadrm/MtkDrmManager;->mContext:Landroid/content/Context;

    .line 286
    return-void
.end method

.method public isAllowForward(Landroid/net/Uri;)Z
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1668
    const/4 v0, 0x0

    const-string v1, "MtkDrmManager"

    if-eqz p1, :cond_4

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_0

    goto :goto_1

    .line 1674
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->isDrm(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1675
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "not a drm content file %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    return v2

    .line 1679
    :cond_1
    const/4 v0, 0x0

    .line 1680
    .local v0, "forward":Z
    const/4 v2, 0x3

    .line 1681
    .local v2, "action":I
    invoke-virtual {p0, p1, v2}, Lcom/tct/omadrm/MtkDrmManager;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v3

    .line 1682
    .local v3, "status":I
    if-nez v3, :cond_2

    .line 1683
    const/4 v0, 0x1

    .line 1686
    :cond_2
    const-string v4, "uri: "

    if-eqz v0, :cond_3

    .line 1687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is allowed for forwarding "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1689
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed for forwarding "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :goto_0
    return v0

    .line 1669
    .end local v0    # "forward":Z
    .end local v2    # "action":I
    .end local v3    # "status":I
    :cond_4
    :goto_1
    const-string v2, "uri is null or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    return v0
.end method

.method public isAllowForward(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 827
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 828
    nop

    .line 829
    const/4 v2, 0x3

    .line 828
    invoke-virtual {v0, p1, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    .line 831
    :cond_1
    return v1
.end method

.method public isCDType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 724
    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->getDrmScheme(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 664
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_4

    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 667
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/tct/omadrm/MtkDrmManager;->isDrmEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_0

    goto :goto_2

    .line 672
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tct/omadrm/MtkDrmManager;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 673
    goto :goto_0

    :catch_0
    move-exception v2

    .line 674
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "MtkDrmManager"

    const-string v4, "Given Uri scheme is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-static {}, Lcom/tct/omadrm/MtkDrmManager;->isDrmEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 677
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 680
    :cond_1
    invoke-static {v1}, Lcom/tct/omadrm/MtkDrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 678
    :cond_2
    :goto_1
    return v0

    .line 668
    :cond_3
    :goto_2
    return v0

    .line 682
    .end local v0    # "result":Z
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public isFLType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 728
    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->getDrmScheme(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRightValid(Landroid/net/Uri;)Z
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .line 571
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 572
    return v1

    .line 575
    :cond_0
    if-eqz p1, :cond_3

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_3

    .line 580
    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->isDrm(Landroid/net/Uri;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "MtkDrmManager"

    if-nez v0, :cond_1

    .line 581
    const-string v0, "DRM isRightValid not a drm content file  return true"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return v2

    .line 585
    :cond_1
    const/4 v0, 0x0

    .line 587
    .local v0, "rightValid":Z
    :try_start_0
    sget-object v4, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, "mimeType":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DRM AFTER getOriginalMimeType mimeType: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {v4}, Lcom/tct/omadrm/MtkDrmManager;->getAction(Ljava/lang/String;)I

    move-result v5

    .line 590
    .local v5, "action":I
    invoke-virtual {p0, p1, v5}, Lcom/tct/omadrm/MtkDrmManager;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v6

    .line 591
    .local v6, "status":I
    if-nez v6, :cond_2

    .line 592
    const/4 v0, 0x1

    .line 594
    :cond_2
    nop

    .line 595
    new-instance v7, Ljava/lang/StringBuilder;

    .line 596
    const-string v8, "DRM file %s mime type = %s, action = %d, right status = "

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 597
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    aput-object v4, v9, v2

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    nop

    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "action":I
    .end local v6    # "status":I
    goto :goto_0

    :catch_0
    move-exception v1

    .line 600
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isRightValid(URI) exception:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 576
    .end local v0    # "rightValid":Z
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LZH Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRightValid(Ljava/lang/String;)Z
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .line 617
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 618
    return v1

    .line 621
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    return v1

    .line 625
    :cond_1
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tct/omadrm/MtkDrmManager;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 627
    :cond_2
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 628
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 629
    .local v0, "index":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 627
    .end local v0    # "index":I
    :cond_3
    :goto_0
    nop

    .line 632
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "MtkDrmManager"

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 634
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v4, "DRM LZH file %s not exist"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return v1

    .line 639
    :cond_4
    invoke-static {p1}, Lcom/tct/omadrm/MtkDrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 640
    new-array v2, v4, [Ljava/lang/Object;

    .line 641
    aput-object p1, v2, v1

    .line 640
    const-string v1, "DRM LZH not a drm content file %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return v4

    .line 645
    :cond_5
    const/4 v1, 0x0

    .line 646
    .local v1, "rightValid":Z
    sget-object v2, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, "mimeType":Ljava/lang/String;
    invoke-static {v2}, Lcom/tct/omadrm/MtkDrmManager;->getAction(Ljava/lang/String;)I

    move-result v4

    .line 648
    .local v4, "action":I
    invoke-virtual {p0, p1, v4}, Lcom/tct/omadrm/MtkDrmManager;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v5

    .line 649
    .local v5, "status":I
    if-nez v5, :cond_6

    .line 650
    const/4 v1, 0x1

    .line 652
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DRM  isRightValid3 rightValid = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return v1
.end method

.method public isSdType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 720
    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->getDrmScheme(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValidCDSDType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1835
    const/4 v0, 0x0

    .line 1837
    .local v0, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1838
    const/4 v1, 0x0

    return v1

    .line 1840
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->getMethod(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1841
    const/4 v1, 0x4

    invoke-virtual {p0, p1}, Lcom/tct/omadrm/MtkDrmManager;->getMethod(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1842
    :cond_1
    const/4 v0, 0x1

    .line 1844
    :cond_2
    return v0
.end method

.method public overlayDrmIconSkew(Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "actionId"    # I
    .param p4, "iconId"    # I

    .line 539
    const-string v0, "MtkDrmManager"

    const-string v1, "DRM  overlayDrmIconSkew  "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    sget-object v0, Lcom/tct/omadrm/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 543
    invoke-static {v0, p1, p4, p2}, Lcom/mediatek/omadrm/OmaDrmUtils;->overlapLockIcon(Landroid/drm/DrmManagerClient;Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 545
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public refreshMediaStore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 2277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refreshMediaStore for filePath:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDrmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2279
    return-void
.end method

.method public release()V
    .locals 2

    .line 1281
    const-string v0, "MtkDrmManager"

    const-string v1, "release event threads."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    return-void
.end method

.method public showToast(ILjava/lang/String;)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show toast "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDrmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :try_start_0
    iget-object v0, p0, Lcom/tct/omadrm/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1702
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/tct/omadrm/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1703
    .end local v0    # "message":Ljava/lang/String;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1704
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1706
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
