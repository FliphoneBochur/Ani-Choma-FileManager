.class public Lcom/mtk/drm/frameworks/MtkDrmManager;
.super Ljava/lang/Object;
.source "MtkDrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;,
        Lcom/mtk/drm/frameworks/MtkDrmManager$RightsStatus;,
        Lcom/mtk/drm/frameworks/MtkDrmManager$Action;,
        Lcom/mtk/drm/frameworks/MtkDrmManager$MimeType;,
        Lcom/mtk/drm/frameworks/MtkDrmManager$Scheme;,
        Lcom/mtk/drm/frameworks/MtkDrmManager$MimePrefix;
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_DRM_RINGTONE_INFO:I = 0x3eb

.field private static final ACTION_CHECK_DRM_WALLPAPER_INFO:I = 0x3ec

.field public static final ACTION_SET_RINGTONE_CHECKER:Ljava/lang/String; = "jrdcom.intent.action.SET_RINGTONE_CHECKER"

.field public static final ACTION_SET_VIDEO_RINGTONE_CHECKER:Ljava/lang/String; = "jrdcom.intent.action.SET_VIDEO_RINGTONE_CHECKER"

.field public static final ACTION_SET_WALLPAPER_CHECKER:Ljava/lang/String; = "jrdcom.intent.action.SET_WALLPAPER_CHECKER"

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

.field private static mMTKDrmEable:Ljava/lang/Boolean;

.field private static mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;


# instance fields
.field private drmConstraintsTime:J

.field private drmTrustSecureTime:J

.field private mContext:Landroid/content/Context;

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

.field mEventThread:Landroid/os/HandlerThread;

.field private mFilePath:Ljava/lang/String;

.field mOmaDrmClient:Lcom/mediatek/drm/OmaDrmClient;

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    .line 327
    sput-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMTKDrmEable:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 1170
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmConstraintsTime:J

    .line 1172
    iput-wide v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    .line 296
    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->init(Landroid/content/Context;)V

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/mtk/drm/frameworks/MtkDrmManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mtk/drm/frameworks/MtkDrmManager;

    .line 115
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mtk/drm/frameworks/MtkDrmManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mtk/drm/frameworks/MtkDrmManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->watchingDrmRingtoneStatus(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1215
    const/4 v0, 0x0

    .line 1216
    .local v0, "path":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 1217
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1218
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1222
    :cond_0
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1223
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1225
    :cond_1
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1226
    const-string v2, "_data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 1227
    .local v5, "projection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1229
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v9, v3

    .line 1231
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1235
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1236
    .local v2, "pathIndex":I
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 1241
    .end local v2    # "pathIndex":I
    if-eqz v9, :cond_2

    .line 1242
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1245
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    goto :goto_2

    .line 1232
    .restart local v5    # "projection":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given Uri could not be found in media store"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/mtk/drm/frameworks/MtkDrmManager;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1241
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v5    # "projection":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/mtk/drm/frameworks/MtkDrmManager;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1237
    :catch_0
    move-exception v2

    .line 1238
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/mtk/drm/frameworks/MtkDrmManager;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1241
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v5    # "projection":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/mtk/drm/frameworks/MtkDrmManager;
    .restart local p1    # "uri":Landroid/net/Uri;
    :goto_0
    if-eqz v9, :cond_4

    .line 1242
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 1246
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given Uri scheme is not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1220
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1249
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_7
    :goto_2
    return-object v0
.end method

.method private createEventThreads()V
    .locals 2

    .line 1286
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    if-nez v0, :cond_0

    .line 1287
    const-string v0, "MtkDrmManager"

    const-string v1, "create event handler thread."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.EventHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventThread:Landroid/os/HandlerThread;

    .line 1289
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1290
    new-instance v0, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    iget-object v1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;-><init>(Lcom/mtk/drm/frameworks/MtkDrmManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    .line 1292
    :cond_0
    return-void
.end method

.method private static decode([BI)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "targetSize"    # I

    .line 355
    if-nez p0, :cond_0

    .line 356
    const-string v0, "MtkDrmManager"

    const-string v1, "DRM <decode> buffer == null, error args, return null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x0

    return-object v0

    .line 360
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 361
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 362
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 363
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v3, p1}, Lcom/mtk/drm/frameworks/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 366
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 367
    invoke-static {v0}, Lcom/mtk/drm/frameworks/BitmapUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 368
    array-length v1, p0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 370
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public static decodeSquareThumbnail([BI)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "targetSize"    # I

    .line 374
    invoke-static {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->decode([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 375
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 376
    const/4 v1, 0x0

    return-object v1

    .line 377
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 378
    .local v1, "size":I
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mtk/drm/frameworks/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static forceDecryptFile(Ljava/lang/String;Z)[B
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "consume"    # Z

    .line 422
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

    .line 426
    :cond_0
    new-instance v0, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v0}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 427
    .local v0, "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    invoke-virtual {v0, p0, p1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1

    .line 425
    .end local v0    # "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAction(Ljava/lang/String;)I
    .locals 2
    .param p0, "mime"    # Ljava/lang/String;

    .line 536
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const/4 v0, 0x7

    return v0

    .line 538
    :cond_0
    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 542
    :cond_1
    return v1

    .line 540
    :cond_2
    :goto_0
    return v1
.end method

.method private getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defType"    # Ljava/lang/String;
    .param p4, "defPackage"    # Ljava/lang/String;

    .line 2375
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2377
    .local v0, "id":I
    const-string v1, "MtkDrmManager"

    if-nez v0, :cond_0

    .line 2378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": id= 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2379
    :cond_0
    const-string v2, "bool"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "  value ="

    const-string v4, ": i ="

    if-eqz v2, :cond_1

    .line 2380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2381
    :cond_1
    const-string v2, "string"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 2383
    :cond_2
    const-string v2, "integer"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    :cond_3
    :goto_0
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mtk/drm/frameworks/MtkDrmManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 305
    sget-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/mtk/drm/frameworks/MtkDrmManager;

    invoke-direct {v0, p0}, Lcom/mtk/drm/frameworks/MtkDrmManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    .line 308
    :cond_0
    sget-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    return-object v0
.end method

.method private getInternalRingtones(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 2452
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "_data"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const-string v6, "title_key"

    aput-object v6, v2, v3

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v4

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

    .line 2471
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 2473
    .local v0, "status":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v4, "_data"

    const-string v5, "title_key"

    filled-new-array {v1, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v6, v1

    const-string v5, "_data=?"

    const-string v7, "title_key"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public static getRingtoneStrType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 2352
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 2353
    const-string v0, "ringtone"

    return-object v0

    .line 2354
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 2355
    const-string v0, "notification_sound"

    return-object v0

    .line 2356
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 2357
    const-string v0, "alarm_alert"

    return-object v0

    .line 2358
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 2359
    const-string v0, "video_call"

    return-object v0

    .line 2361
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSDRawDrmScheme([BII)I
    .locals 13
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1260
    const/4 v0, 0x0

    .line 1261
    .local v0, "scheme":I
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 1262
    .local v1, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1264
    .local v2, "start_index":I
    const/4 v3, 0x1

    aget-byte v4, p0, v3

    .line 1265
    .local v4, "second_byte":B
    const/4 v5, 0x2

    aget-byte v6, p0, v5

    .line 1266
    .local v6, "third_byte":B
    and-int/lit16 v7, v6, 0xff

    .line 1267
    .local v7, "cid_length":I
    and-int/lit16 v8, v4, 0xff

    .line 1268
    .local v8, "ctype_length":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cid_length  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MtkDrmManager"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    if-lez v7, :cond_0

    if-lez v8, :cond_0

    .line 1270
    add-int/lit8 v2, v8, 0x2

    .line 1272
    :cond_0
    if-eqz v2, :cond_1

    add-int/lit8 v9, v2, 0x3

    if-ge v9, p2, :cond_1

    .line 1273
    const/4 v9, 0x3

    new-array v9, v9, [B

    const/4 v11, 0x0

    add-int/lit8 v12, v2, 0x1

    aget-byte v12, p0, v12

    aput-byte v12, v9, v11

    add-int/lit8 v11, v2, 0x2

    aget-byte v11, p0, v11

    aput-byte v11, v9, v3

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, p0, v3

    aput-byte v3, v9, v5

    move-object v3, v9

    .line 1275
    .local v3, "cid_byte_array":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 1276
    .local v5, "cid_str":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cid_Str: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const-string v9, "cid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1278
    const-string v9, "Rights-Issuer"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 1279
    const/4 v0, 0x3

    .line 1281
    .end local v3    # "cid_byte_array":[B
    .end local v5    # "cid_str":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 2417
    invoke-direct {p0, p1, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getInternalRingtones(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2418
    .local v0, "internalCursor":Landroid/database/Cursor;
    const-string v1, "_id"

    const-string v2, "/"

    if-eqz v0, :cond_1

    .line 2419
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 2420
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2424
    .local v1, "uriString":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 2426
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2429
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getMediaRingtones(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2430
    .local v3, "mediaCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_3

    .line 2431
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 2432
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2437
    .restart local v1    # "uriString":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 2439
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2441
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isDrm(Ljava/lang/String;)Z
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1586
    const/4 v0, 0x0

    .line 1587
    .local v0, "result":Z
    invoke-static {}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isMTKDrmEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 1592
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

    const-string v1, "rtsp://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ".sdp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    .line 1599
    :cond_1
    const-string v1, "content://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1600
    sget-object v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mtk/drm/frameworks/MtkDrmManager;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1601
    :cond_2
    const-string v1, "file://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1602
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1603
    .local v1, "start_index":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1605
    .end local v1    # "start_index":I
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 1607
    .local v1, "fis":Ljava/io/FileInputStream;
    if-eqz p0, :cond_5

    .line 1608
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 1609
    const/16 v4, 0x3e8

    new-array v4, v4, [B

    .line 1610
    .local v4, "buffer":[B
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 1611
    .local v5, "count":I
    invoke-static {v4, v2, v5}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isDrm([BII)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    goto :goto_4

    .line 1616
    .end local v4    # "buffer":[B
    .end local v5    # "count":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1613
    :catch_0
    move-exception v2

    .line 1614
    .local v2, "ie":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to create input stream for file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1616
    nop

    .end local v2    # "ie":Ljava/io/IOException;
    if-eqz v1, :cond_6

    .line 1618
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1621
    :goto_1
    goto :goto_5

    .line 1619
    :catch_1
    move-exception v2

    .line 1620
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1616
    :goto_2
    if-eqz v1, :cond_4

    .line 1618
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1621
    goto :goto_3

    .line 1619
    :catch_2
    move-exception v3

    .line 1620
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1621
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    throw v2

    .line 1616
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 1618
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1625
    :cond_6
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", drm status = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    return v0

    .line 1594
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_7
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "streaming url "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can not be handled by drm"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    return v2

    .line 1588
    :cond_8
    :goto_7
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

    .line 1643
    const/4 v0, 0x0

    .line 1648
    .local v0, "result":Z
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v1, p0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1650
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

    .line 1657
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getSDRawDrmScheme([BII)I

    move-result v2

    .line 1658
    .local v2, "scheme":I
    if-eqz v2, :cond_2

    .line 1659
    const/4 v0, 0x1

    goto :goto_1

    .line 1651
    .end local v2    # "scheme":I
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1662
    :cond_2
    :goto_1
    return v0
.end method

.method public static isDrmEnabled()Z
    .locals 4

    .line 330
    const-string v0, "MtkDrmManager"

    const/4 v1, 0x1

    .line 332
    .local v1, "flag":Z
    :try_start_0
    invoke-static {}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isMTKDrmEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1    # "flag":Z
    .local v0, "flag":Z
    :goto_0
    goto :goto_1

    .line 337
    .end local v0    # "flag":Z
    .restart local v1    # "flag":Z
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    const-string v3, "DRM fatal NoSuchMethodError, no method \'isDrmEnabled\' "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->fillInStackTrace()Ljava/lang/Throwable;

    .line 340
    const/4 v0, 0x0

    .end local v1    # "flag":Z
    .restart local v0    # "flag":Z
    goto :goto_1

    .line 333
    .end local v0    # "flag":Z
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    .restart local v1    # "flag":Z
    :catch_1
    move-exception v2

    .line 334
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DRM fatal , no method \'isDrmEnabled\' "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v2}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 336
    const/4 v0, 0x0

    .end local v1    # "flag":Z
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "flag":Z
    goto :goto_0

    .line 342
    :goto_1
    return v0
.end method

.method public static isDrmSD(Ljava/lang/String;)Z
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1724
    const/4 v0, 0x0

    .line 1725
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 1727
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 1728
    const/16 v2, 0x3e8

    new-array v2, v2, [B

    .line 1729
    .local v2, "buffer":[B
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 1730
    .local v3, "count":I
    const/16 v4, 0xc

    invoke-static {v2, v4, v3}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getSDRawDrmScheme([BII)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    .local v4, "scheme":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1732
    const/4 v0, 0x1

    .line 1737
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "scheme":I
    :cond_0
    nop

    .line 1739
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1742
    :goto_0
    goto :goto_1

    .line 1740
    :catch_0
    move-exception v2

    .line 1741
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1737
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1734
    :catch_1
    move-exception v2

    .line 1735
    .local v2, "ie":Ljava/io/IOException;
    :try_start_2
    const-string v3, "MtkDrmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to create input stream for file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1737
    nop

    .end local v2    # "ie":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 1739
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1745
    :cond_1
    :goto_1
    return v0

    .line 1737
    :goto_2
    if-eqz v1, :cond_2

    .line 1739
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1742
    goto :goto_3

    .line 1740
    :catch_2
    move-exception v3

    .line 1741
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1742
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v2
.end method

.method private static isMTKDrmEnable()Z
    .locals 2

    .line 347
    sget-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMTKDrmEable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 348
    const-string v0, "ro.drm.enable"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMTKDrmEable:Ljava/lang/Boolean;

    .line 351
    :cond_0
    sget-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMTKDrmEable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUriExisted(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2326
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 2327
    .local v3, "projection":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2328
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x1

    .line 2330
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

    .line 2331
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

    .line 2332
    :cond_0
    const/4 v7, 0x0

    .line 2338
    :cond_1
    if-eqz v0, :cond_2

    .line 2339
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2338
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2334
    :catch_0
    move-exception v1

    .line 2335
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2336
    const/4 v7, 0x0

    .line 2338
    .end local v1    # "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 2339
    goto :goto_0

    .line 2341
    :cond_2
    :goto_1
    return v7

    .line 2338
    :goto_2
    if-eqz v0, :cond_3

    .line 2339
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private parsePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 2398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@parsePath | path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDrmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    const-string v0, "silent"

    .line 2400
    .local v0, "fullPath":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "silent"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/custpack/JRD_custres/audio/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2403
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fullPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    invoke-direct {p0, p1, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static showConsumeDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 961
    invoke-static {p0, p1, p2}, Lcom/mediatek/drm/OmaDrmUiUtils;->showConsumeDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showConsumeRightsDialogForVideoPlayer(Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    .line 1089
    sget-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_0

    .line 1090
    iget-object v0, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mOmaDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v0, p0, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->showConsumeRightsDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 1093
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 976
    invoke-static {p0, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .line 991
    invoke-static {p0, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showRefreshLicenseDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1055
    sget-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_0

    .line 1056
    iget-object v0, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mOmaDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v0, p0, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 1059
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showRefreshLicenseDialog(Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 1010
    sget-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_0

    .line 1011
    iget-object v0, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mOmaDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v0, p0, p1, p2}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 1015
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showRefreshLicenseDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .line 1075
    sget-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_0

    .line 1076
    iget-object v0, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mOmaDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v0, p0, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 1079
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showRefreshLicenseDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 1034
    sget-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_0

    .line 1035
    iget-object v0, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mOmaDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v0, p0, p1, p2}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 1039
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showRefreshLicenseDialogForVideoPlayer(Landroid/content/Context;Landroid/net/Uri;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    .line 1118
    sget-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_0

    .line 1119
    iget-object v0, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mOmaDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v0, p0, p1, p2}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 1122
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showRefreshLicenseDialogForVideoPlayer(Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    .line 1133
    sget-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_0

    .line 1134
    iget-object v0, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mOmaDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v0, p0, p1, p2}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 1137
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showSecureTimerInvalidDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 940
    invoke-static {p0, p1, p2}, Lcom/mediatek/drm/OmaDrmUiUtils;->showSecureTimerInvalidDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showSecureTimerInvalidDialogForVideoPlayer(Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    .line 1103
    sget-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_0

    .line 1104
    iget-object v0, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mOmaDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v0, p0, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->showSecureTimerInvalidDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 1107
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 5
    .param p1, "sec"    # Ljava/lang/Long;

    .line 1253
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1254
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 1255
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1256
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method

.method private watchingDrmRingtoneStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;

    .line 1990
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter watchingDrmRingtoneStatus uri= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "MtkDrmManager"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    move-object/from16 v12, p1

    iput-object v12, v13, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    .line 1992
    iput-object v14, v13, Lcom/mtk/drm/frameworks/MtkDrmManager;->mUri:Ljava/lang/String;

    .line 1993
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    .line 1994
    .local v11, "status":Ljava/lang/String;
    const-string v0, "mounted"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mounted_ro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1995
    const-string v0, "watchingDrmRingtoneStatus status.equals(Environment.MEDIA_MOUNTED_READ_ONLY)"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    return-void

    .line 1999
    :cond_0
    :try_start_0
    iget-object v0, v13, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2000
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v6, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v6, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2001
    .local v6, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 2003
    .local v1, "ringtonePath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2004
    .local v2, "beforeAudioRingtoneFilePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2006
    .local v3, "beforeVedioRingtoneFilePath":Ljava/lang/String;
    iget-object v4, v13, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v4, :cond_1

    .line 2007
    :try_start_1
    const-string v4, "mDrmManagerClient is null,new a mDrmManagerClient instance"

    invoke-static {v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    new-instance v4, Landroid/drm/DrmManagerClient;

    iget-object v5, v13, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v4, v13, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2030
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "ringtonePath":Ljava/lang/String;
    .end local v2    # "beforeAudioRingtoneFilePath":Ljava/lang/String;
    .end local v3    # "beforeVedioRingtoneFilePath":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    move-object v2, v11

    goto/16 :goto_2

    .line 2011
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "ringtonePath":Ljava/lang/String;
    .restart local v2    # "beforeAudioRingtoneFilePath":Ljava/lang/String;
    .restart local v3    # "beforeVedioRingtoneFilePath":Ljava/lang/String;
    .restart local v6    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_0
    :try_start_2
    iget-object v4, v13, Lcom/mtk/drm/frameworks/MtkDrmManager;->mUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v13, v4}, Lcom/mtk/drm/frameworks/MtkDrmManager;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .line 2012
    .end local v1    # "ringtonePath":Ljava/lang/String;
    .local v10, "ringtonePath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringtonePath:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    const-string v1, "drm_audio_set_as_ringtone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 2014
    .end local v2    # "beforeAudioRingtoneFilePath":Ljava/lang/String;
    .local v9, "beforeAudioRingtoneFilePath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeAudioRingtoneFilePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    const-string v1, "drm_video_set_as_ringtone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v1

    .line 2017
    .end local v3    # "beforeVedioRingtoneFilePath":Ljava/lang/String;
    .local v8, "beforeVedioRingtoneFilePath":Ljava/lang/String;
    if-eqz v9, :cond_2

    if-eqz v10, :cond_2

    :try_start_3
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Watching status of voice_call_ringtone, ringtonePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    iget-object v2, v13, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    const-string v4, "ringtone"

    move-object/from16 v1, p0

    move-object v3, v10

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mtk/drm/frameworks/MtkDrmManager;->watchStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2024
    :cond_2
    if-eqz v8, :cond_3

    if-eqz v10, :cond_3

    :try_start_4
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Watching status of video_call_ringtone, ringtonePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    iget-object v1, v13, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    const-string v2, "video_call"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v7, p0

    move-object v3, v8

    .end local v8    # "beforeVedioRingtoneFilePath":Ljava/lang/String;
    .restart local v3    # "beforeVedioRingtoneFilePath":Ljava/lang/String;
    move-object v8, v1

    move-object v1, v9

    .end local v9    # "beforeAudioRingtoneFilePath":Ljava/lang/String;
    .local v1, "beforeAudioRingtoneFilePath":Ljava/lang/String;
    move-object v9, v10

    move-object v4, v10

    .end local v10    # "ringtonePath":Ljava/lang/String;
    .local v4, "ringtonePath":Ljava/lang/String;
    move-object v10, v2

    move-object v2, v11

    .end local v11    # "status":Ljava/lang/String;
    .local v2, "status":Ljava/lang/String;
    move-object v11, v0

    move-object v12, v6

    :try_start_5
    invoke-virtual/range {v7 .. v12}, Lcom/mtk/drm/frameworks/MtkDrmManager;->watchStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 2030
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "beforeAudioRingtoneFilePath":Ljava/lang/String;
    .end local v3    # "beforeVedioRingtoneFilePath":Ljava/lang/String;
    .end local v4    # "ringtonePath":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v0

    goto :goto_2

    .line 2024
    .end local v2    # "status":Ljava/lang/String;
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "values":Landroid/content/ContentValues;
    .restart local v8    # "beforeVedioRingtoneFilePath":Ljava/lang/String;
    .restart local v9    # "beforeAudioRingtoneFilePath":Ljava/lang/String;
    .restart local v10    # "ringtonePath":Ljava/lang/String;
    .restart local v11    # "status":Ljava/lang/String;
    :cond_3
    move-object v3, v8

    move-object v1, v9

    move-object v4, v10

    move-object v2, v11

    .line 2032
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v8    # "beforeVedioRingtoneFilePath":Ljava/lang/String;
    .end local v9    # "beforeAudioRingtoneFilePath":Ljava/lang/String;
    .end local v10    # "ringtonePath":Ljava/lang/String;
    .end local v11    # "status":Ljava/lang/String;
    .restart local v2    # "status":Ljava/lang/String;
    :goto_1
    goto :goto_3

    .line 2030
    .end local v2    # "status":Ljava/lang/String;
    .restart local v11    # "status":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v2, v11

    .line 2031
    .end local v11    # "status":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "status":Ljava/lang/String;
    :goto_2
    const-string v1, "clear drm ringtone fail. "

    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2033
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method


# virtual methods
.method public activateContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "drmtoast"    # Ljava/lang/String;

    .line 485
    const-string v0, "drm_rights_issuer"

    const-string v1, "MtkDrmManager"

    :try_start_0
    const-string v2, "DRM activateContent "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v2, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p2}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 487
    .local v2, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 489
    .local v3, "rightsIssuer":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 495
    :cond_0
    if-eqz v3, :cond_2

    const-string v0, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 500
    :cond_1
    move-object v0, v3

    .line 501
    .local v0, "rightsIssuerFinal":Ljava/lang/String;
    const-string v4, "DRM activateContents: start to refresh license"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 504
    .local v4, "it":Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 507
    .end local v0    # "rightsIssuerFinal":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "rightsIssuer":Ljava/lang/String;
    .end local v4    # "it":Landroid/content/Intent;
    goto :goto_1

    .line 496
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

    .line 497
    return-void

    .line 505
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "rightsIssuer":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRightValid exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public checkDrmRingtoneStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;

    .line 1958
    iput-object p1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    .line 1959
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    if-eqz v0, :cond_0

    .line 1960
    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1961
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    invoke-virtual {v1, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1963
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public checkDrmRingtoneStatusDelay(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;

    .line 1973
    iput-object p1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    .line 1974
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    if-eqz v0, :cond_0

    .line 1975
    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;->removeMessages(I)V

    .line 1976
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    invoke-virtual {v0, v1, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1977
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1979
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public checkDrmWallpaperStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filepath"    # Ljava/lang/String;

    .line 1325
    iput-object p1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    .line 1326
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    if-eqz v0, :cond_0

    .line 1327
    const/16 v1, 0x3ec

    invoke-virtual {v0, v1, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1328
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    invoke-virtual {v1, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1330
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public checkDrmWallpaperStatusDelay(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filepath"    # Ljava/lang/String;

    .line 1341
    iput-object p1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    .line 1342
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    if-eqz v0, :cond_0

    .line 1343
    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;->removeMessages(I)V

    .line 1344
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    invoke-virtual {v0, v1, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1345
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1347
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .line 580
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v0

    return v0

    .line 583
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .line 587
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 590
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public clearDrmWallpaperFilepath(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .line 1884
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drm_wallpaper_filepath"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1885
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drm_cropimage_filepath"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1886
    return-void
.end method

.method public consumeRights(Landroid/net/Uri;I)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .line 913
    sget-object v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mMtkDrmManager:Lcom/mtk/drm/frameworks/MtkDrmManager;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {p0, p1, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->consumeRights(Landroid/net/Uri;I)I

    move-result v0

    return v0

    .line 916
    :cond_0
    const/16 v0, -0x7d0

    return v0
.end method

.method public consumeRights(Ljava/lang/String;I)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consumeRights : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDrmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    const/16 v0, -0x7d0

    if-eqz p1, :cond_4

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1544
    :cond_0
    invoke-static {p2}, Lcom/mtk/drm/frameworks/MtkDrmManager$Action;->isValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1545
    const-string v2, "consumeRights : Given action is not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    return v0

    .line 1550
    :cond_1
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e5

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1553
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "consumeRights"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1555
    const-string v3, "data"

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1556
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data_extra_1"

    invoke-virtual {v2, v4, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1558
    iget-object v3, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v3

    .line 1561
    .local v3, "info":Landroid/drm/DrmInfo;
    invoke-virtual {v3}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v4

    .line 1562
    .local v4, "data":[B
    const-string v5, ""

    .line 1563
    .local v5, "message":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1566
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "US-ASCII"

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 1570
    goto :goto_0

    .line 1567
    :catch_0
    move-exception v6

    .line 1568
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v7, "Unsupported encoding type of the returned DrmInfo data"

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const-string v5, ""

    .line 1572
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "consumeRights : >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const-string v1, "success"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return v0

    .line 1541
    .end local v2    # "request":Landroid/drm/DrmInfoRequest;
    .end local v3    # "info":Landroid/drm/DrmInfo;
    .end local v4    # "data":[B
    .end local v5    # "message":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v2, "consumeRights : Given path is not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    return v0
.end method

.method public consumeRights(Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1508
    const-string v0, "MtkDrmManager"

    const-string v1, "DrmManagerClietn.consumeRights method invoked."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1510
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1511
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1512
    :cond_0
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1513
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1514
    .local v1, "start_index":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1516
    .end local v1    # "start_index":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1517
    .local v1, "mimeType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1518
    .local v2, "action":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1519
    invoke-static {v1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getAction(Ljava/lang/String;)I

    move-result v2

    .line 1520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filepath :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "action :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->consumeRights(Ljava/lang/String;I)I

    .line 1528
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "action":I
    :cond_3
    return-void
.end method

.method public deleteDrmWallpaper(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filepath"    # Ljava/lang/String;

    .line 1932
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1933
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "drm_wallpaper_filepath"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1934
    .local v1, "wallpaper":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletedrmwallpaper wallpaper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkDrmManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletedrmwallpaper filepath:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1938
    const-string v2, "wallpaper"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    .line 1939
    .local v2, "wallpaperMgr":Landroid/app/WallpaperManager;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->clear()V

    .line 1941
    iget-object v4, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "drm_wallpaper_filepath_rights_over"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1942
    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->clearDrmWallpaperFilepath(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1943
    const/4 v3, 0x1

    return v3

    .line 1945
    .end local v2    # "wallpaperMgr":Landroid/app/WallpaperManager;
    :catch_0
    move-exception v2

    .line 1946
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clear DRM wallpaper failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1947
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    nop

    .line 1948
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public drmSetAsWallpaper(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 1899
    const-string v0, "MtkDrmManager"

    const-string v1, "enter drmSetWallpaper "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    iget-object v1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v2, 0x7

    invoke-virtual {v1, p2, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 1901
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1903
    .local v0, "toastMsg":Ljava/lang/String;
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1904
    return v3

    .line 1906
    .end local v0    # "toastMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->hasCountConstraint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1907
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1909
    .restart local v0    # "toastMsg":Ljava/lang/String;
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1910
    return v3

    .line 1912
    .end local v0    # "toastMsg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "drm_cropimage_filepath"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1914
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "drm_wallpaper_filepath_rights_over"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drmSetAsWallpaper  successful"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1917
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drmSetAsWallpaper faile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :goto_0
    invoke-virtual {p0, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->consumeRights(Ljava/lang/String;)V

    .line 1921
    return v4
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1310
    :try_start_0
    const-string v0, "MtkDrmManager"

    const-string v1, "finalize DrmManagerClient instance."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-virtual {p0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1314
    nop

    .line 1315
    return-void

    .line 1313
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConstraintFromFilePath(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1790
    const/4 v0, 0x0

    .line 1791
    .local v0, "original_mimetype":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1793
    .local v1, "action":I
    :try_start_0
    iget-object v2, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1796
    goto :goto_0

    .line 1794
    :catch_0
    move-exception v2

    .line 1795
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v3, "MtkDrmManager"

    const-string v4, "fail to get mimetype"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_0
    if-nez v0, :cond_0

    .line 1798
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1799
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1800
    .local v3, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1803
    .end local v2    # "index":I
    .end local v3    # "extension":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 1804
    invoke-static {v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getAction(Ljava/lang/String;)I

    move-result v1

    .line 1806
    :cond_1
    iget-object v2, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1, v1}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    return-object v2
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .line 839
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .line 843
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .line 2298
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtk_audioprofile_active"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2300
    .local v0, "activeProfileKey":Ljava/lang/String;
    const-string v1, "general"

    .line 2301
    .local v1, "profileName":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 2302
    const-string v3, "mtk_audioprofile_"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2305
    :cond_0
    const/4 v2, 0x0

    .line 2306
    .local v2, "defaultringtoneuri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@getDefaultRingtoneUri | activeProfileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | profileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkDrmManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    const-string v3, "ringtone"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "video_call"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2309
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ro_voice_ringtone_uri_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ringtones"

    invoke-direct {p0, p1, v3, v4}, Lcom/mtk/drm/frameworks/MtkDrmManager;->parsePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2311
    :cond_2
    const-string v3, "notification_sound"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ro_notification_uri_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "notifications"

    invoke-direct {p0, p1, v3, v4}, Lcom/mtk/drm/frameworks/MtkDrmManager;->parsePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2314
    :cond_3
    return-object v2
.end method

.method public getDrmRealThumbnail(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "size"    # I

    .line 738
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "it\'s invalid method,pls use methid ---> overlayDrmIconSkew"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDrmScheme(Ljava/lang/String;)I
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 765
    const/4 v0, -0x1

    .line 767
    .local v0, "drmScheme":I
    iget-object v1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_2

    .line 768
    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getMethod(Ljava/lang/String;)I

    move-result v1

    .line 769
    .local v1, "method":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 770
    const/4 v0, 0x1

    goto :goto_0

    .line 771
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 772
    const/4 v0, 0x2

    goto :goto_0

    .line 773
    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 774
    const/4 v0, 0x3

    .line 777
    .end local v1    # "method":I
    :cond_2
    :goto_0
    return v0
.end method

.method public getDrmThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 397
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->hasRightsToShow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 398
    .local v0, "hasRightsToShow":Z
    const/4 v1, 0x0

    const-string v2, "MtkDrmManager"

    if-nez v0, :cond_0

    .line 399
    const-string v3, "DRM <getDrmThumbnail> no rights to show, return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-object v1

    .line 403
    :cond_0
    const/4 v3, 0x0

    .line 405
    .local v3, "buffer":[B
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dcf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mudp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 408
    :cond_1
    const/4 v3, 0x0

    .line 409
    :cond_2
    new-instance v4, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v4}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 410
    .local v4, "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v3

    .line 412
    if-nez v3, :cond_3

    .line 413
    const-string v5, "DRM <getDrmThumbnail> buffer == null, return"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-object v1

    .line 416
    :cond_3
    const-string v1, "DRM getDrmThumbnail "

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0, v3, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getSquareThumbnailFromBuffer([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getDrmVideoThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "size"    # I

    .line 724
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "it\'s invalid method,pls use methid ---> overlayDrmIconSkew"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mAbsolutePath"    # Ljava/lang/String;

    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 872
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    .line 875
    invoke-direct {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getMethod(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 873
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMethod(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 887
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 891
    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 892
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v1, "drm_method"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 894
    .local v1, "m":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 895
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 898
    .end local v1    # "m":Ljava/lang/Integer;
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 888
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMovie(Ljava/lang/String;)Landroid/graphics/Movie;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    .line 464
    .local v0, "buffer":[B
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".dcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mudp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 467
    :cond_0
    const/4 v0, 0x0

    .line 468
    :cond_1
    new-instance v1, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v1}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 469
    .local v1, "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 471
    const-string v3, "MtkDrmManager"

    if-nez v0, :cond_2

    .line 472
    const-string v2, "DRM getMovie buffer == null, return null"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v2, 0x0

    return-object v2

    .line 475
    :cond_2
    const-string v4, "DRM getMovie "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v2

    .line 478
    .local v2, "mMovie":Landroid/graphics/Movie;
    return-object v2
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "mimeType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DRM  getOriginalMimeType mimeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkDrmManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    if-nez v0, :cond_0

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DRM #getOriginalMimeType(),mDrmManagerClient.getOriginalMimeType(path) return null.path:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, ""

    .line 529
    :cond_0
    return-object v0

    .line 531
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getRingtoneTypeFromName(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 2042
    const/4 v0, -0x1

    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2044
    :cond_0
    const-string v1, "ringtone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2045
    const/4 v0, 0x1

    return v0

    .line 2046
    :cond_1
    const-string v1, "notification_sound"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2047
    const/4 v0, 0x2

    return v0

    .line 2048
    :cond_2
    const-string v1, "alarm_alert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2049
    const/4 v0, 0x4

    return v0

    .line 2051
    :cond_3
    return v0

    .line 2043
    :cond_4
    :goto_0
    return v0
.end method

.method public getSquareThumbnailFromBuffer([BI)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "targetSize"    # I

    .line 382
    if-nez p1, :cond_0

    .line 383
    const/4 v0, 0x0

    return-object v0

    .line 384
    :cond_0
    invoke-static {p1, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->decodeSquareThumbnail([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailConsume(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 436
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->hasRightsToShow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 437
    .local v0, "hasRightsToShow":Z
    const/4 v1, 0x0

    const-string v2, "MtkDrmManager"

    if-nez v0, :cond_0

    .line 438
    const-string v3, "DRM <getThumbnailConsume> no rights to show, return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-object v1

    .line 442
    :cond_0
    const/4 v3, 0x0

    .line 444
    .local v3, "buffer":[B
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dcf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mudp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 447
    :cond_1
    const/4 v3, 0x0

    .line 448
    :cond_2
    new-instance v4, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v4}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 449
    .local v4, "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v3

    .line 451
    if-nez v3, :cond_3

    .line 452
    const-string v5, "DRM <getThumbnailConsume> buffer == null, return"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-object v1

    .line 455
    :cond_3
    const-string v1, "DRM getThumbnailConsume "

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0, v3, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getSquareThumbnailFromBuffer([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getTimeConstraint(Ljava/lang/String;)J
    .locals 5
    .param p1, "filepath"    # Ljava/lang/String;

    .line 1756
    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getConstraintFromFilePath(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1757
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "0"

    .line 1758
    .local v1, "timeConstraintStr":Ljava/lang/String;
    const-string v2, "MtkDrmManager"

    if-eqz v0, :cond_0

    .line 1759
    const-string v3, "license_expiry_time"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTimeConstraint getTimeInSecondes:= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  timeConstraintStr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public hasCountConstraint(Ljava/lang/String;)Z
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1774
    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getConstraintFromFilePath(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1775
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1776
    const-string v2, "remaining_repeat_count"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1779
    :cond_1
    return v1
.end method

.method public hasRightsToShow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 388
    invoke-virtual {p0, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getAction(Ljava/lang/String;)I

    move-result v1

    .line 391
    .local v1, "actionId":I
    iget-object v2, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p2, v1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v2

    .line 392
    .local v2, "valid":I
    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public hasTimeConstraint(Ljava/lang/String;)Z
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1819
    const-string v0, "license_expiry_time"

    const-string v1, "license_start_time"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getConstraintFromFilePath(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 1820
    .local v3, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-lez v1, :cond_0

    .line 1822
    return v4

    .line 1824
    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1825
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

    move v2, v4

    :cond_1
    return v2

    .line 1829
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_2
    goto :goto_0

    .line 1827
    :catch_0
    move-exception v0

    .line 1828
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DRM hasTimeConstraint Exception = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MtkDrmManager"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 317
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p1}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mOmaDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 318
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmClient;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 320
    iput-object p1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    .line 322
    invoke-direct {p0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->createEventThreads()V

    .line 324
    return-void
.end method

.method public isAllowForward(Landroid/net/Uri;)Z
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1675
    const/4 v0, 0x0

    const-string v1, "MtkDrmManager"

    if-eqz p1, :cond_4

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_0

    goto :goto_1

    .line 1681
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isDrm(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1682
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "not a drm content file %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    return v2

    .line 1686
    :cond_1
    const/4 v0, 0x0

    .line 1687
    .local v0, "forward":Z
    const/4 v2, 0x3

    .line 1688
    .local v2, "action":I
    invoke-virtual {p0, p1, v2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v3

    .line 1689
    .local v3, "status":I
    if-nez v3, :cond_2

    .line 1690
    const/4 v0, 0x1

    .line 1693
    :cond_2
    const-string v4, "uri: "

    if-eqz v0, :cond_3

    .line 1694
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is allowed for forwarding "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1696
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed for forwarding "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :goto_0
    return v0

    .line 1676
    .end local v0    # "forward":Z
    .end local v2    # "action":I
    .end local v3    # "status":I
    :cond_4
    :goto_1
    const-string v2, "uri is null or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    return v0
.end method

.method public isAllowForward(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 854
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 855
    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 858
    :cond_1
    return v1
.end method

.method public isCDType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 755
    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getDrmScheme(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrm(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 695
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_4

    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 698
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isDrmEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_0

    goto :goto_2

    .line 703
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 706
    goto :goto_0

    .line 704
    :catch_0
    move-exception v2

    .line 705
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "MtkDrmManager"

    const-string v4, "Given Uri scheme is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-static {}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isDrmEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 711
    :cond_1
    invoke-static {v1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 709
    :cond_2
    :goto_1
    return v0

    .line 699
    :cond_3
    :goto_2
    return v0

    .line 713
    .end local v0    # "result":Z
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public isRightValid(Landroid/net/Uri;)Z
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .line 602
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 603
    return v1

    .line 606
    :cond_0
    if-eqz p1, :cond_3

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_3

    .line 611
    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isDrm(Landroid/net/Uri;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "MtkDrmManager"

    if-nez v0, :cond_1

    .line 612
    const-string v0, "DRM isRightValid not a drm content file  return true"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return v2

    .line 616
    :cond_1
    const/4 v0, 0x0

    .line 618
    .local v0, "rightValid":Z
    :try_start_0
    iget-object v4, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, "mimeType":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRM AFTER getOriginalMimeType mimeType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-static {v4}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getAction(Ljava/lang/String;)I

    move-result v5

    .line 621
    .local v5, "action":I
    invoke-virtual {p0, p1, v5}, Lcom/mtk/drm/frameworks/MtkDrmManager;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v6

    .line 622
    .local v6, "status":I
    if-nez v6, :cond_2

    .line 623
    const/4 v0, 0x1

    .line 625
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DRM file %s mime type = %s, action = %d, right status = "

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

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

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    nop

    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "action":I
    .end local v6    # "status":I
    goto :goto_0

    .line 630
    :catch_0
    move-exception v1

    .line 631
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRightValid(URI) exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 607
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

    .line 648
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 649
    return v1

    .line 652
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    return v1

    .line 656
    :cond_1
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 658
    :cond_2
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 659
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 660
    .local v0, "index":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 663
    .end local v0    # "index":I
    :cond_3
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "MtkDrmManager"

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 665
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v4, "DRM LZH file %s not exist"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return v1

    .line 670
    :cond_4
    invoke-static {p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 671
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v1, "DRM LZH not a drm content file %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return v4

    .line 676
    :cond_5
    const/4 v1, 0x0

    .line 677
    .local v1, "rightValid":Z
    iget-object v2, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "mimeType":Ljava/lang/String;
    invoke-static {v2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getAction(Ljava/lang/String;)I

    move-result v4

    .line 679
    .local v4, "action":I
    invoke-virtual {p0, p1, v4}, Lcom/mtk/drm/frameworks/MtkDrmManager;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v5

    .line 680
    .local v5, "status":I
    if-nez v5, :cond_6

    .line 681
    const/4 v1, 0x1

    .line 683
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DRM  isRightValid3 rightValid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return v1
.end method

.method public isSdType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 751
    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getDrmScheme(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidCDSDType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1842
    const/4 v0, 0x0

    .line 1844
    .local v0, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1845
    const/4 v1, 0x0

    return v1

    .line 1847
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getMethod(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getMethod(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1849
    :cond_1
    const/4 v0, 0x1

    .line 1851
    :cond_2
    return v0
.end method

.method public overlayDrmIconSkew(Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "actionId"    # I
    .param p4, "iconId"    # I

    .line 574
    const-string v0, "MtkDrmManager"

    const-string v1, "DRM  overlayDrmIconSkew  "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mOmaDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayDrmIconSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public refreshMediaStore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 2284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshMediaStore for filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDrmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2286
    return-void
.end method

.method public release()V
    .locals 3

    .line 1295
    const-string v0, "MtkDrmManager"

    const-string v1, "release event threads."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-object v1, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1298
    const-string v1, "quit event handler thread."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1300
    iput-object v2, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventThread:Landroid/os/HandlerThread;

    .line 1303
    :cond_0
    iput-object v2, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mEventHandler:Lcom/mtk/drm/frameworks/MtkDrmManager$EventHandler;

    .line 1304
    return-void
.end method

.method public setDrmWallpaperFilepath(Landroid/content/Context;)V
    .locals 7
    .param p1, "mContext"    # Landroid/content/Context;

    .line 1861
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drm_cropimage_filepath"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1863
    .local v0, "cropimage_path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "drm_wallpaper_filepath"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1865
    .local v2, "wallpaper_path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDrmWallpaperFilePath cropimage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkDrmManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDrmWallpaperFilePath wallpaper_path "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1868
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1870
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "drm_wallpaper_filepath_rights_over"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1871
    invoke-virtual {p0, p1, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->watchingDrmWallpaperStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 1874
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1875
    return-void
.end method

.method public showToast(ILjava/lang/String;)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 1706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show toast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDrmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :try_start_0
    iget-object v0, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

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

    .line 1709
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    .end local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1713
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public watchStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 22
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "ringtonePath"    # Ljava/lang/String;
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "cr"    # Landroid/content/ContentResolver;
    .param p5, "values"    # Landroid/content/ContentValues;

    .line 2067
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "watchStatus  mUri= "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ringtonePath "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "MtkDrmManager"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "watchingDrmRingtoneStatus audio_CALL:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    invoke-virtual {v1, v3, v9}, Lcom/mtk/drm/frameworks/MtkDrmManager;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v10, "video_call"

    const-string v11, "ringtone"

    const/4 v12, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v1, v3, v9}, Lcom/mtk/drm/frameworks/MtkDrmManager;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2169
    :cond_0
    if-eqz v3, :cond_14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 2172
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_1

    .line 2173
    invoke-static/range {p1 .. p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getInstance(Landroid/content/Context;)Lcom/mtk/drm/frameworks/MtkDrmManager;

    .line 2174
    :cond_1
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    iget-object v8, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mUri:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v8, v9}, Landroid/drm/DrmManagerClient;->getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;

    move-result-object v8

    .line 2176
    .local v8, "cv":Landroid/content/ContentValues;
    if-nez v8, :cond_2

    .line 2177
    return-void

    .line 2178
    :cond_2
    const-string v0, "license_expiry_time"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-lez v0, :cond_9

    .line 2181
    invoke-virtual {v1, v3}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getTimeConstraint(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmConstraintsTime:J

    .line 2184
    new-array v13, v9, [B

    .line 2185
    .local v13, "data":[B
    aput-byte v12, v13, v12

    .line 2186
    new-instance v0, Landroid/drm/DrmInfo;

    const/16 v12, 0x7d9

    const-string v14, "application/vnd.oma.drm.content"

    invoke-direct {v0, v12, v13, v14}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    move-object v12, v0

    .line 2192
    .local v12, "drmInfo":Landroid/drm/DrmInfo;
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, v12}, Landroid/drm/DrmManagerClient;->processExtraDrmInfoSync(Landroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v14

    .line 2194
    .local v14, "drmStatus":Landroid/drm/DrmInfoStatus;
    if-eqz v14, :cond_8

    iget v0, v14, Landroid/drm/DrmInfoStatus;->statusCode:I

    if-ne v0, v9, :cond_8

    .line 2196
    move-object/from16 v17, v8

    .end local v8    # "cv":Landroid/content/ContentValues;
    .local v17, "cv":Landroid/content/ContentValues;
    :try_start_0
    iget-object v0, v14, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v0}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v0

    .line 2197
    .local v0, "currentTime":[B
    if-eqz v0, :cond_3

    .line 2198
    new-instance v15, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-direct {v15, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2206
    .end local v0    # "currentTime":[B
    :cond_3
    const-wide/16 v8, -0x1

    goto :goto_0

    .line 2203
    :catch_0
    move-exception v0

    .line 2204
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "Got an other Exception."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const-wide/16 v8, -0x1

    iput-wide v8, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    goto :goto_0

    .line 2200
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    const-wide/16 v8, -0x1

    .line 2201
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v15, "The drm secure time is invalid-need-synchronization!"

    invoke-static {v7, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iput-wide v8, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    .line 2206
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    nop

    .line 2208
    :goto_0
    move-object/from16 v16, v12

    move-object v15, v13

    .end local v12    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v13    # "data":[B
    .local v15, "data":[B
    .local v16, "drmInfo":Landroid/drm/DrmInfo;
    iget-wide v12, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    cmp-long v0, v12, v8

    if-nez v0, :cond_4

    .line 2209
    const-string v0, "can not get trust drm time"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drmConstraintsTime := "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmConstraintsTime:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " date: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmConstraintsTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/mtk/drm/frameworks/MtkDrmManager;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "drmTrustSecureTime := "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/mtk/drm/frameworks/MtkDrmManager;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v12

    double-to-long v8, v8

    .line 2218
    .local v8, "systemTime":J
    const-wide/16 v12, 0x0

    .line 2219
    .local v12, "offset":J
    move-wide/from16 v20, v12

    .end local v12    # "offset":J
    .local v20, "offset":J
    iget-wide v12, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    const-wide/16 v18, -0x1

    cmp-long v0, v12, v18

    if-eqz v0, :cond_5

    .line 2220
    sub-long/2addr v12, v8

    .end local v20    # "offset":J
    .restart local v12    # "offset":J
    goto :goto_1

    .line 2219
    .end local v12    # "offset":J
    .restart local v20    # "offset":J
    :cond_5
    move-wide/from16 v12, v20

    .line 2222
    .end local v20    # "offset":J
    .restart local v12    # "offset":J
    :goto_1
    move-wide/from16 v18, v8

    .end local v8    # "systemTime":J
    .local v18, "systemTime":J
    iget-wide v8, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmConstraintsTime:J

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    .end local v14    # "drmStatus":Landroid/drm/DrmInfoStatus;
    .end local v15    # "data":[B
    .local v20, "drmStatus":Landroid/drm/DrmInfoStatus;
    .local v21, "data":[B
    iget-wide v14, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    sub-long/2addr v8, v14

    add-long/2addr v8, v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v8, v14

    .line 2223
    .local v8, "delta":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "watchStatus drmConstraintsTime - drmTrustSecureTime + offset = delta: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    const-wide/16 v14, 0x0

    cmp-long v0, v8, v14

    if-gez v0, :cond_6

    .line 2228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delta < 0, recheck drm ringtone, mUri = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mUri:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->checkDrmRingtoneStatusDelay(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2236
    :cond_6
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v11, "delta"

    if-eqz v0, :cond_7

    .line 2237
    new-instance v0, Landroid/content/Intent;

    const-string v14, "jrdcom.intent.action.SET_RINGTONE_CHECKER"

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2238
    .local v0, "it":Landroid/content/Intent;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "watchtrustingDrmRingtoneStatus ACTION_SET_RINGTONE_CHECKER:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 2240
    .local v14, "bl":Landroid/os/Bundle;
    invoke-virtual {v14, v11, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2241
    invoke-virtual {v0, v14}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2242
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2245
    .end local v0    # "it":Landroid/content/Intent;
    .end local v14    # "bl":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2246
    new-instance v0, Landroid/content/Intent;

    const-string v10, "jrdcom.intent.action.SET_VIDEO_RINGTONE_CHECKER"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2247
    .restart local v0    # "it":Landroid/content/Intent;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "watchingDrmRingtoneStatus ACTION_SET_VIDEO_RINGTONE_CHECKER:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2249
    .local v7, "bl":Landroid/os/Bundle;
    invoke-virtual {v7, v11, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2250
    invoke-virtual {v0, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2251
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 2194
    .end local v0    # "it":Landroid/content/Intent;
    .end local v7    # "bl":Landroid/os/Bundle;
    .end local v16    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v17    # "cv":Landroid/content/ContentValues;
    .end local v18    # "systemTime":J
    .end local v20    # "drmStatus":Landroid/drm/DrmInfoStatus;
    .end local v21    # "data":[B
    .local v8, "cv":Landroid/content/ContentValues;
    .local v12, "drmInfo":Landroid/drm/DrmInfo;
    .restart local v13    # "data":[B
    .local v14, "drmStatus":Landroid/drm/DrmInfoStatus;
    :cond_8
    move-object/from16 v17, v8

    move-object/from16 v16, v12

    move-object/from16 v21, v13

    move-object/from16 v20, v14

    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v12    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v13    # "data":[B
    .end local v14    # "drmStatus":Landroid/drm/DrmInfoStatus;
    .restart local v16    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v17    # "cv":Landroid/content/ContentValues;
    .restart local v20    # "drmStatus":Landroid/drm/DrmInfoStatus;
    .restart local v21    # "data":[B
    goto :goto_2

    .line 2257
    .end local v16    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v17    # "cv":Landroid/content/ContentValues;
    .end local v20    # "drmStatus":Landroid/drm/DrmInfoStatus;
    .end local v21    # "data":[B
    .restart local v8    # "cv":Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v17, v8

    .end local v8    # "cv":Landroid/content/ContentValues;
    .restart local v17    # "cv":Landroid/content/ContentValues;
    invoke-virtual {v1, v3}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isValidCDSDType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filepath=: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has interval constraint, consume drm right!"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    invoke-virtual {v1, v3}, Lcom/mtk/drm/frameworks/MtkDrmManager;->consumeRights(Ljava/lang/String;)V

    .line 2267
    invoke-virtual {v1, v3}, Lcom/mtk/drm/frameworks/MtkDrmManager;->hasTimeConstraint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2268
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->checkDrmRingtoneStatusDelay(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2257
    :cond_a
    :goto_2
    goto/16 :goto_c

    .line 2072
    .end local v17    # "cv":Landroid/content/ContentValues;
    :cond_b
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Drm file deleted or without valid right, get the default ringtone uri for:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const/4 v13, 0x0

    .line 2076
    .local v13, "defaultringtoneuir":Landroid/net/Uri;
    :try_start_1
    invoke-virtual {v1, v2, v4}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getDefaultRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2080
    .end local v13    # "defaultringtoneuir":Landroid/net/Uri;
    .local v0, "defaultringtoneuir":Landroid/net/Uri;
    goto :goto_4

    .line 2077
    .end local v0    # "defaultringtoneuir":Landroid/net/Uri;
    .restart local v13    # "defaultringtoneuir":Landroid/net/Uri;
    :catch_2
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 2078
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 2079
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "@watchStatus | getDefaultRingtoneUri error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    .line 2083
    .end local v13    # "defaultringtoneuir":Landroid/net/Uri;
    .local v0, "defaultringtoneuir":Landroid/net/Uri;
    :goto_4
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, ""

    if-eqz v13, :cond_c

    .line 2084
    const-string v13, "drm_audio_set_as_ringtone"

    invoke-static {v5, v13, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2085
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :cond_c
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2089
    const-string v8, "drm_video_set_as_ringtone"

    invoke-static {v5, v8, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2090
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "watchingDrmRingtoneStatus VIDEO_CALL:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "watchingDrmRingtoneStatus  defaultringtoneuir= "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    invoke-virtual {v1, v4}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getRingtoneTypeFromName(Ljava/lang/String;)I

    move-result v8

    .line 2095
    .local v8, "type":I
    if-nez v0, :cond_e

    if-lez v8, :cond_e

    .line 2096
    invoke-static {v2, v8}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 2097
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "defaultringtoneuir = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", not available, use default ringtone!"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v0

    goto :goto_5

    .line 2100
    :cond_e
    move-object v13, v0

    .end local v0    # "defaultringtoneuir":Landroid/net/Uri;
    .restart local v13    # "defaultringtoneuir":Landroid/net/Uri;
    :goto_5
    if-nez v13, :cond_f

    .line 2101
    invoke-static {v5, v4, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 2103
    :cond_f
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "watchingDrmRingtoneStatus  = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :goto_6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v9}, Landroid/content/ContentValues;-><init>(I)V

    move-object v14, v0

    .line 2107
    .local v14, "mValues":Landroid/content/ContentValues;
    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v11, "is_ringtone"

    const/4 v15, 0x0

    if-nez v0, :cond_10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2108
    :cond_10
    const-string v0, "1"

    invoke-virtual {v6, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    :try_start_2
    invoke-virtual {v5, v13, v6, v15, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2114
    goto :goto_7

    .line 2112
    :catch_3
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 2113
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "@watchStatus | update defaultringtoneuir error:"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v0

    .line 2118
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_11
    :goto_7
    const-string v0, "clear drm ringtone"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    :try_start_3
    invoke-direct/range {p0 .. p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 2126
    .local v0, "ringtoneUri":Landroid/net/Uri;
    move-object v10, v0

    goto :goto_8

    .line 2123
    .end local v0    # "ringtoneUri":Landroid/net/Uri;
    :catch_4
    move-exception v0

    move-object v10, v0

    move-object v0, v15

    .line 2124
    .restart local v0    # "ringtoneUri":Landroid/net/Uri;
    .local v10, "ex":Ljava/lang/Exception;
    const-string v15, "get ringtone path fail,set the uri = null!"

    invoke-static {v7, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const/4 v0, 0x0

    move-object v10, v0

    .line 2128
    .end local v0    # "ringtoneUri":Landroid/net/Uri;
    .local v10, "ringtoneUri":Landroid/net/Uri;
    :goto_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v15, "Toast error!"

    if-nez v0, :cond_13

    invoke-static {v2, v10}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_9

    .line 2153
    :cond_12
    const-string v0, "drm ringtone file is deleted."

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    invoke-virtual/range {p0 .. p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->refreshMediaStore(Landroid/content/Context;Ljava/lang/String;)V

    .line 2158
    const v0, 0x306002f

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v3, v11, v12

    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2162
    .local v11, "toastMsg":Ljava/lang/String;
    :try_start_4
    invoke-static {v2, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 2165
    goto :goto_b

    .line 2163
    :catch_5
    move-exception v0

    .line 2164
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2131
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v11    # "toastMsg":Ljava/lang/String;
    :cond_13
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ringtonePath : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "is exsited and show toast"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    const v0, 0x3060030

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v12, v9, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v3, v12, v17

    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2139
    .local v12, "toastMsg":Ljava/lang/String;
    :try_start_5
    invoke-static {v2, v12, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 2142
    goto :goto_a

    .line 2140
    :catch_6
    move-exception v0

    .line 2141
    .restart local v0    # "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a
    const-string v0, "set the drm IS_RINGTONE,IS_ALARM,IS_NOTIFICATION to 0"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    const-string v0, "0"

    invoke-virtual {v6, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    const-string v7, "is_alarm"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    const-string v7, "is_notification"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v6, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2151
    .end local v12    # "toastMsg":Ljava/lang/String;
    nop

    .line 2168
    .end local v8    # "type":I
    .end local v10    # "ringtoneUri":Landroid/net/Uri;
    .end local v13    # "defaultringtoneuir":Landroid/net/Uri;
    .end local v14    # "mValues":Landroid/content/ContentValues;
    :goto_b
    nop

    .line 2274
    :cond_14
    :goto_c
    return-void
.end method

.method public watchingDrmWallpaperStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filepath"    # Ljava/lang/String;

    .line 1358
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    .line 1359
    move-object/from16 v3, p2

    iput-object v3, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFilePath "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MtkDrmManager"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1363
    return-void

    .line 1365
    :cond_0
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v8, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    iget-object v8, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v8, v5}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1370
    :cond_1
    :try_start_0
    const-string v0, "clear drm wallpaper"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "drm_wallpaper_filepath_rights_over"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1373
    .local v0, "wallpaper_rightsover_path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "watchingDrmWallpaperStatus wallpaper_rightsover_path = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v5, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v5, v8}, Lcom/mtk/drm/frameworks/MtkDrmManager;->deleteDrmWallpaper(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1375
    new-instance v5, Ljava/io/File;

    iget-object v8, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1376
    if-eqz v0, :cond_3

    .line 1377
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1380
    iget-object v5, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    const v8, 0x306002e

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1381
    .local v5, "toastMsg":Ljava/lang/String;
    iget-object v6, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1383
    .end local v5    # "toastMsg":Ljava/lang/String;
    goto :goto_0

    .line 1386
    :cond_2
    if-eqz v0, :cond_3

    .line 1387
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1390
    iget-object v5, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    const v8, 0x306002d

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1391
    .restart local v5    # "toastMsg":Ljava/lang/String;
    iget-object v6, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1398
    .end local v0    # "wallpaper_rightsover_path":Ljava/lang/String;
    .end local v5    # "toastMsg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1399
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "clear DRM wallpaper fail. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1400
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    goto/16 :goto_3

    .line 1402
    :cond_4
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1404
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->hasTimeConstraint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1406
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_5

    .line 1407
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getInstance(Landroid/content/Context;)Lcom/mtk/drm/frameworks/MtkDrmManager;

    .line 1408
    :cond_5
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    iget-object v8, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v8, v5}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v5

    .line 1409
    .local v5, "cv":Landroid/content/ContentValues;
    if-nez v5, :cond_6

    .line 1410
    return-void

    .line 1412
    :cond_6
    const-string v0, "license_expiry_time"

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1413
    .local v8, "rightsEndtime":J
    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_d

    .line 1415
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getTimeConstraint(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmConstraintsTime:J

    .line 1416
    new-array v12, v7, [B

    .line 1417
    .local v12, "data":[B
    aput-byte v6, v12, v6

    .line 1418
    new-instance v0, Landroid/drm/DrmInfo;

    const/16 v6, 0x7d9

    const-string v13, "application/vnd.oma.drm.content"

    invoke-direct {v0, v6, v12, v13}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    move-object v6, v0

    .line 1424
    .local v6, "drmInfo":Landroid/drm/DrmInfo;
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, v6}, Landroid/drm/DrmManagerClient;->processExtraDrmInfoSync(Landroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v13

    .line 1426
    .local v13, "drmStatus":Landroid/drm/DrmInfoStatus;
    if-eqz v13, :cond_c

    iget v0, v13, Landroid/drm/DrmInfoStatus;->statusCode:I

    if-ne v0, v7, :cond_c

    .line 1428
    const-wide/16 v14, -0x1

    :try_start_1
    iget-object v0, v13, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v0}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v0

    .line 1429
    .local v0, "currentTime":[B
    if-eqz v0, :cond_7

    .line 1430
    new-instance v7, Ljava/lang/String;

    const-string v10, "US-ASCII"

    invoke-direct {v7, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1435
    .end local v0    # "currentTime":[B
    :catch_1
    move-exception v0

    .line 1436
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Got an other Exception."

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iput-wide v14, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    goto :goto_2

    .line 1432
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1433
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v7, "The drm secure time is invalid-need-synchronization!"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iput-wide v14, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    .line 1438
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_7
    :goto_1
    nop

    .line 1439
    :goto_2
    iget-wide v10, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    cmp-long v0, v10, v14

    if-nez v0, :cond_8

    .line 1440
    const-string v0, "can not get trust drm time"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drmConstraintsTime := "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmConstraintsTime:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " date: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmConstraintsTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/mtk/drm/frameworks/MtkDrmManager;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drmTrustSecureTime := "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/mtk/drm/frameworks/MtkDrmManager;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v10, v10, v18

    double-to-long v10, v10

    .line 1449
    .local v10, "systemTime":J
    const-wide/16 v18, 0x0

    .line 1450
    .local v18, "offset":J
    iget-wide v2, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    cmp-long v0, v2, v14

    if-eqz v0, :cond_9

    .line 1451
    sub-long v18, v2, v10

    .line 1453
    :cond_9
    iget-wide v2, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmConstraintsTime:J

    iget-wide v14, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->drmTrustSecureTime:J

    sub-long/2addr v2, v14

    add-long v2, v2, v18

    const-wide/16 v14, 0x3e8

    mul-long/2addr v2, v14

    .line 1454
    .local v2, "delta":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drmConstraintsTime - drmTrustSecureTime + offset = delta: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1459
    .local v14, "currentTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentTime ="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v8

    move-object v7, v5

    move-object/from16 v22, v6

    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "drmInfo":Landroid/drm/DrmInfo;
    .local v7, "cv":Landroid/content/ContentValues;
    .local v22, "drmInfo":Landroid/drm/DrmInfo;
    sub-long v5, v20, v14

    .line 1461
    .local v5, "currentInteval":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v7

    .end local v7    # "cv":Landroid/content/ContentValues;
    .local v20, "cv":Landroid/content/ContentValues;
    const-string v7, "currentInteval ="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    cmp-long v0, v2, v5

    if-lez v0, :cond_a

    const-wide/16 v16, 0x0

    cmp-long v0, v2, v16

    if-lez v0, :cond_a

    cmp-long v0, v5, v16

    if-lez v0, :cond_a

    .line 1463
    move-wide v2, v5

    .line 1466
    :cond_a
    const-wide/16 v16, 0x0

    cmp-long v0, v2, v16

    if-gez v0, :cond_b

    .line 1467
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lcom/mtk/drm/frameworks/MtkDrmManager;->checkDrmWallpaperStatusDelay(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 1473
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v4, "jrdcom.intent.action.SET_WALLPAPER_CHECKER"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1474
    .local v0, "it":Landroid/content/Intent;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1475
    .local v4, "bl":Landroid/os/Bundle;
    const-string v7, "delta"

    invoke-virtual {v4, v7, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1476
    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1477
    iget-object v7, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 1426
    .end local v0    # "it":Landroid/content/Intent;
    .end local v2    # "delta":J
    .end local v4    # "bl":Landroid/os/Bundle;
    .end local v10    # "systemTime":J
    .end local v14    # "currentTime":J
    .end local v18    # "offset":J
    .end local v20    # "cv":Landroid/content/ContentValues;
    .end local v22    # "drmInfo":Landroid/drm/DrmInfo;
    .local v5, "cv":Landroid/content/ContentValues;
    .restart local v6    # "drmInfo":Landroid/drm/DrmInfo;
    :cond_c
    move-object/from16 v20, v5

    move-object/from16 v22, v6

    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v20    # "cv":Landroid/content/ContentValues;
    .restart local v22    # "drmInfo":Landroid/drm/DrmInfo;
    goto :goto_3

    .line 1413
    .end local v12    # "data":[B
    .end local v13    # "drmStatus":Landroid/drm/DrmInfoStatus;
    .end local v20    # "cv":Landroid/content/ContentValues;
    .end local v22    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v5    # "cv":Landroid/content/ContentValues;
    :cond_d
    move-object/from16 v20, v5

    .end local v5    # "cv":Landroid/content/ContentValues;
    .restart local v20    # "cv":Landroid/content/ContentValues;
    goto :goto_3

    .line 1483
    .end local v8    # "rightsEndtime":J
    .end local v20    # "cv":Landroid/content/ContentValues;
    :cond_e
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isValidCDSDType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filepath=: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has interval constraint, consume drm right!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->consumeRights(Ljava/lang/String;)V

    .line 1493
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->hasTimeConstraint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1494
    iget-object v0, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/mtk/drm/frameworks/MtkDrmManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->checkDrmWallpaperStatusDelay(Landroid/content/Context;Ljava/lang/String;)V

    nop

    .line 1499
    :cond_f
    :goto_3
    return-void
.end method
