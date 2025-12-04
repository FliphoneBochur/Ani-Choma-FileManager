.class public Lcom/tct/drm/api/TctDrmManager;
.super Ljava/lang/Object;
.source "TctDrmManager.java"


# static fields
.field public static final CONSTRAINT_TYPE:Ljava/lang/String; = "constraint_type"

.field public static final CONTENT_VENDOR:Ljava/lang/String; = "content_vendor"

.field public static final COUNT_CONSTRAINT:I = 0x1

.field public static final CURR_WALLPAPER_DRMPATH:Ljava/lang/String; = "curr_wallpaper_drmpath"

.field private static DEBUG:Z = false

.field private static final DRM_BUFFER_MAX:I = 0x1f4

.field public static final DRM_MIMETYPE_CONTENT_STRING:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field public static final DRM_MIMETYPE_DCF_STRING:Ljava/lang/String; = "application/vnd.oma.drm.dcf"

.field public static final DRM_MIMETYPE_DD_STRING:Ljava/lang/String; = "application/vnd.oma.dd+xml"

.field public static final DRM_MIMETYPE_MESSAGE_STRING:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final DRM_MIMETYPE_RIGHTS_WBXML_STRING:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field public static final DRM_MIMETYPE_RIGHTS_XML_STRING:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"

.field public static final DRM_SCHEME_NOT_PROTECTED:I = 0x0

.field public static final DRM_SCHEME_OMA1_CD:I = 0x2

.field public static final DRM_SCHEME_OMA1_FL:I = 0x1

.field public static final DRM_SCHEME_OMA1_SD:I = 0x3

.field public static final DRM_TIME_OUT_ACTION:Ljava/lang/String; = "drm_time_out_action"

.field public static final INTERVAL_CONSTRAINT:I = 0x2

.field public static final NEW_WALLPAPER_DRMPATH:Ljava/lang/String; = "new_wallpaper_drmpath"

.field public static final NO_CONSTRAINT:I = 0x0

.field public static final RIGHTS_EXPIRED:I = 0x2

.field public static final RIGHTS_INVALID:I = 0x1

.field public static final RIGHTS_ISSUER:Ljava/lang/String; = "rights_issuer"

.field public static final RIGHTS_NOT_ACQUIRED:I = 0x3

.field public static final RIGHTS_VALID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TctDrmManager-API"

.field public static final TCT_DRM_RIGHT_TYPE:Ljava/lang/String; = "tct_drm_right_type"

.field public static final TCT_DRM_TYPE:Ljava/lang/String; = "tct_drm_type"

.field public static final TCT_DRM_VALID:Ljava/lang/String; = "tct_drm_valid"

.field public static final TCT_IS_DRM:Ljava/lang/String; = "tct_is_drm"

.field public static final TIMES_CONSTRAINT:I = 0x2

.field public static final VERSION:Ljava/lang/String; = "v1.02"

.field private static drmTypeCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static isTctDrmEnable:Z

.field private static mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    .line 112
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/tct/drm/api/TctDrmManager;->drmTypeCaches:Ljava/util/Map;

    .line 114
    sput-boolean v0, Lcom/tct/drm/api/TctDrmManager;->DEBUG:Z

    .line 120
    const-string v0, "feature.tct.drm.enabled"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    .line 126
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sget-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    if-nez v0, :cond_0

    .line 130
    invoke-static {p1}, Lcom/tct/drm/TctDrmManagerClient;->getInstance(Landroid/content/Context;)Lcom/tct/drm/TctDrmManagerClient;

    move-result-object v0

    sput-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    .line 131
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDebug"    # Z

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    if-nez v0, :cond_0

    .line 138
    invoke-static {p1}, Lcom/tct/drm/TctDrmManagerClient;->getInstance(Landroid/content/Context;)Lcom/tct/drm/TctDrmManagerClient;

    move-result-object v0

    sput-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    .line 139
    :cond_0
    sput-boolean p2, Lcom/tct/drm/api/TctDrmManager;->DEBUG:Z

    .line 140
    return-void
.end method

.method private static LogD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 669
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 670
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    return-void
.end method

.method private static LogE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 682
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void
.end method

.method private static LogI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 675
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 676
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    return-void
.end method

.method public static checkRightTypes(Ljava/lang/String;)I
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "localRightType":I
    sget-boolean v1, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v1, :cond_0

    .line 510
    return v0

    .line 512
    :cond_0
    sget-object v1, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    if-eqz v1, :cond_3

    .line 514
    invoke-virtual {v1, p0}, Lcom/tct/drm/TctDrmManagerClient;->hasCountConstraint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    const/4 v0, 0x1

    goto :goto_0

    .line 516
    :cond_1
    sget-object v1, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    invoke-virtual {v1, p0}, Lcom/tct/drm/TctDrmManagerClient;->hasIntervalConstraint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    const/4 v0, 0x2

    goto :goto_0

    .line 518
    :cond_2
    sget-object v1, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    invoke-virtual {v1, p0}, Lcom/tct/drm/TctDrmManagerClient;->hasTimeConstraint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 519
    const/4 v0, 0x2

    .line 523
    :cond_3
    :goto_0
    return v0
.end method

.method public static checkRightsStatus(Ljava/lang/String;I)I
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "action"    # I

    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, "mRightStatsu":I
    const/4 v1, 0x0

    .line 529
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 531
    .local v2, "mFile":Ljava/io/File;
    sget-boolean v3, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v3, :cond_0

    .line 532
    return v0

    .line 535
    :cond_0
    if-eqz p0, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 538
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 541
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "TctDrmManager-API"

    if-nez v3, :cond_1

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",NOT found please check"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tct/drm/api/TctDrmManager;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_1
    const/high16 v3, 0x10000000

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 549
    goto :goto_0

    .line 547
    :catch_0
    move-exception v3

    .line 548
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 551
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    if-eqz v1, :cond_3

    .line 552
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 553
    .local v3, "fd":Ljava/io/FileDescriptor;
    if-eqz v3, :cond_2

    .line 554
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkRightsStatus,path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",fd ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sget-object v5, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    invoke-virtual {v5, v3}, Lcom/tct/drm/TctDrmManagerClient;->checkRightsStatus(Ljava/io/FileDescriptor;)I

    move-result v0

    .line 559
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    const/4 v1, 0x0

    .line 561
    const/4 v3, 0x0

    .line 564
    goto :goto_1

    .line 562
    :catch_1
    move-exception v5

    .line 563
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 568
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkRightsStatus path="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mRightStatus="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return v0

    .line 536
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "your filePath DO NOT be empty or NULL"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "action"    # I

    .line 463
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 464
    return-object v1

    .line 466
    :cond_0
    sget-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {v0, p0, p1}, Lcom/tct/drm/TctDrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0

    .line 469
    :cond_1
    return-object v1
.end method

.method public static getDrmEnabled()Z
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDrmEnabled() == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TctDrmManager-API"

    invoke-static {v1, v0}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    return v0
.end method

.method public static getDrmRealThumbnail(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "size"    # I

    .line 589
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 590
    return-object v1

    .line 592
    :cond_0
    sget-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    if-eqz v0, :cond_1

    .line 593
    invoke-virtual {v0, p0, p1, p2}, Lcom/tct/drm/TctDrmManagerClient;->getDrmRealThumbnail(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 595
    :cond_1
    return-object v1
.end method

.method public static getDrmScheme(Ljava/lang/String;)I
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 599
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v0, :cond_0

    .line 600
    const/4 v0, 0x0

    return v0

    .line 602
    :cond_0
    sget-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {v0, p0}, Lcom/tct/drm/TctDrmManagerClient;->getDrmScheme(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 605
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getDrmThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "size"    # I

    .line 366
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v0, :cond_0

    .line 367
    return-object p0

    .line 369
    :cond_0
    const/4 v0, 0x0

    .line 370
    .local v0, "mBitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    const-string v2, "TctDrmManager-API"

    if-nez v1, :cond_1

    .line 371
    const-string v1, "Fail to getDrmThumbnail"

    invoke-static {v2, v1}, Lcom/tct/drm/api/TctDrmManager;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-object v0

    .line 375
    :cond_1
    const-string v1, ",size="

    const-string v3, ",mimeType="

    const-string v4, ",filePath="

    const-string v5, "bitmap="

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    const-string v6, "video"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",to getVideoThumbnail(video)"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-object v1, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    invoke-virtual {v1, p0, p1, p3}, Lcom/tct/drm/TctDrmManagerClient;->getDrmVideoThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    .line 380
    :cond_2
    if-eqz p2, :cond_3

    const-string v6, "image"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",to getDrmRealThumbnail(image)"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 385
    .local v1, "myOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x4

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 386
    sget-object v2, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    invoke-virtual {v2, p1, v1, p3}, Lcom/tct/drm/TctDrmManagerClient;->getDrmRealThumbnail(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1    # "myOpts":Landroid/graphics/BitmapFactory$Options;
    goto :goto_0

    .line 387
    :cond_3
    if-eqz p2, :cond_4

    const-string v6, "audio"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    const-string v6, "application/ogg"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 391
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",to getDrmThumbnail(audio)"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    sget-object v1, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    invoke-virtual {v1, p1, p3}, Lcom/tct/drm/TctDrmManagerClient;->getDrmThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 387
    :cond_6
    :goto_0
    nop

    .line 395
    :goto_1
    return-object v0
.end method

.method public static getDrmThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 403
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 404
    return-object v1

    .line 406
    :cond_0
    sget-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {v0, p0, p1}, Lcom/tct/drm/TctDrmManagerClient;->getDrmThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 409
    :cond_1
    return-object v1
.end method

.method public static getDrmType(Ljava/lang/String;)I
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;

    .line 263
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 264
    return v1

    .line 266
    :cond_0
    if-eqz p0, :cond_8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "mDrmType":I
    const/16 v2, 0x1f4

    new-array v2, v2, [B

    .line 272
    .local v2, "data":[B
    const/4 v3, 0x0

    .line 274
    .local v3, "count":I
    const/4 v4, 0x0

    .line 276
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 277
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    .line 281
    nop

    .line 283
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    :goto_0
    goto :goto_2

    .line 284
    :catch_0
    move-exception v5

    .line 285
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 281
    :catchall_0
    move-exception v1

    if-eqz v4, :cond_1

    .line 283
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 286
    goto :goto_1

    .line 284
    :catch_1
    move-exception v5

    .line 285
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 286
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    throw v1

    .line 278
    :catch_2
    move-exception v5

    .line 281
    if-eqz v4, :cond_2

    .line 283
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 290
    :cond_2
    :goto_2
    const/16 v5, 0xa

    new-array v5, v5, [B

    .line 291
    .local v5, "checkFLCD":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_3

    .line 292
    aget-byte v7, v2, v6

    aput-byte v7, v5, v6

    .line 291
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 296
    .end local v6    # "i":I
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    array-length v7, v5

    add-int/lit8 v7, v7, -0x4

    if-ge v6, v7, :cond_6

    .line 297
    aget-byte v7, v5, v6

    xor-int/lit8 v7, v7, 0x46

    if-nez v7, :cond_5

    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v5, v7

    xor-int/lit8 v7, v7, 0x57

    if-nez v7, :cond_5

    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v5, v7

    xor-int/lit8 v7, v7, 0x4c

    if-nez v7, :cond_5

    add-int/lit8 v7, v6, 0x3

    aget-byte v7, v5, v7

    xor-int/lit8 v7, v7, 0x4b

    if-nez v7, :cond_5

    .line 300
    const/4 v7, 0x5

    aget-byte v7, v2, v7

    .line 301
    .local v7, "firstByte":B
    and-int/lit16 v8, v7, 0xff

    .line 302
    .local v8, "sixth_byte":I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 303
    const/4 v0, 0x2

    goto :goto_5

    .line 304
    :cond_4
    if-nez v8, :cond_5

    .line 305
    const/4 v0, 0x1

    .line 296
    .end local v7    # "firstByte":B
    .end local v8    # "sixth_byte":I
    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 310
    .end local v6    # "i":I
    :cond_6
    if-eqz v0, :cond_7

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This file "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is DRM file (FL/CD) ,mDrmType="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "TctDrmManager-API"

    invoke-static {v6, v1}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return v0

    .line 316
    :cond_7
    invoke-static {v2, v1, v3, p0}, Lcom/tct/drm/api/TctDrmManager;->getSDDrmScheme([BIILjava/lang/String;)I

    move-result v0

    .line 318
    return v0

    .line 267
    .end local v0    # "mDrmType":I
    .end local v2    # "data":[B
    .end local v3    # "count":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "checkFLCD":[B
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "your filePath DO NOT be empty or NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDrmVideoThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 576
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 577
    return-object v1

    .line 579
    :cond_0
    sget-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    if-eqz v0, :cond_1

    .line 580
    invoke-virtual {v0, p0, p1, p2}, Lcom/tct/drm/TctDrmManagerClient;->getDrmVideoThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 582
    :cond_1
    return-object v1
.end method

.method public static getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 453
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 454
    return-object v1

    .line 456
    :cond_0
    sget-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {v0, p0}, Lcom/tct/drm/TctDrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0

    .line 459
    :cond_1
    return-object v1
.end method

.method public static getMovie(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Movie;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "mMovie":Landroid/graphics/Movie;
    sget-boolean v1, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v1, :cond_0

    .line 624
    return-object v0

    .line 626
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/Movie;->decodeFromUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Movie;

    move-result-object v0

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMovie uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mMovie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TctDrmManager-API"

    invoke-static {v2, v1}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-object v0
.end method

.method public static getMovie(Ljava/lang/String;)Landroid/graphics/Movie;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, "mMovie":Landroid/graphics/Movie;
    sget-boolean v1, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v1, :cond_0

    .line 635
    return-object v0

    .line 637
    :cond_0
    invoke-static {p0}, Landroid/graphics/Movie;->decodeFromPath(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v0

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMovie path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mMovie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TctDrmManager-API"

    invoke-static {v2, v1}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return-object v0
.end method

.method private static getSDDrmScheme([BIILjava/lang/String;)I
    .locals 12
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .line 322
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 323
    return v1

    .line 325
    :cond_0
    const/4 v0, 0x0

    .line 326
    .local v0, "mDrmType":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 327
    .local v2, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 329
    .local v3, "start_index":I
    const/4 v4, 0x1

    aget-byte v5, p0, v4

    .line 330
    .local v5, "second_byte":B
    const/4 v6, 0x2

    aget-byte v7, p0, v6

    .line 331
    .local v7, "third_byte":B
    and-int/lit16 v8, v7, 0xff

    .line 332
    .local v8, "cid_length":I
    and-int/lit16 v9, v5, 0xff

    .line 334
    .local v9, "ctype_length":I
    if-lez v8, :cond_1

    if-lez v9, :cond_1

    .line 335
    add-int/lit8 v3, v9, 0x2

    .line 338
    :cond_1
    if-eqz v3, :cond_3

    add-int/lit8 v10, v3, 0x3

    if-ge v10, p2, :cond_3

    .line 339
    const/4 v10, 0x3

    new-array v10, v10, [B

    add-int/lit8 v11, v3, 0x1

    aget-byte v11, p0, v11

    aput-byte v11, v10, v1

    add-int/lit8 v1, v3, 0x2

    aget-byte v1, p0, v1

    aput-byte v1, v10, v4

    add-int/lit8 v1, v3, 0x3

    aget-byte v1, p0, v1

    aput-byte v1, v10, v6

    move-object v1, v10

    .line 344
    .local v1, "cid_byte_array":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .line 345
    .local v4, "cid_str":Ljava/lang/String;
    const-string v6, "cid"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 346
    const-string v6, "Rights-Issuer"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v10, -0x1

    if-ne v6, v10, :cond_2

    const-string v6, "Encryption-Method"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    .line 348
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "This file "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is DRM SD file . mDrmType="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "TctDrmManager-API"

    invoke-static {v10, v6}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x3

    .line 353
    .end local v1    # "cid_byte_array":[B
    .end local v4    # "cid_str":Ljava/lang/String;
    :cond_3
    return v0
.end method

.method public static getSDRightsIssuer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 473
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 474
    return-object v1

    .line 476
    :cond_0
    sget-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {v0, p0}, Lcom/tct/drm/TctDrmManagerClient;->getSdRightsIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 479
    :cond_1
    return-object v1
.end method

.method public static getSDVendor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 483
    const-string v0, ""

    .line 484
    .local v0, "sdVendorUrl":Ljava/lang/String;
    sget-boolean v1, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v1, :cond_0

    .line 485
    return-object v0

    .line 487
    :cond_0
    invoke-static {p0}, Lcom/tct/drm/api/TctDrmManager;->getDrmType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 490
    invoke-static {p0}, Lcom/tct/drm/api/TctDrmManager;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 491
    .local v1, "contentValue":Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    .line 492
    const-string v2, "content_vendor"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 488
    .end local v1    # "contentValue":Landroid/content/ContentValues;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " getSdVendor filePath should be Sd filePath"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isAllowForward(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "canForward":Z
    sget-boolean v1, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v1, :cond_0

    .line 421
    const/4 v1, 0x1

    return v1

    .line 423
    :cond_0
    invoke-static {p0}, Lcom/tct/drm/api/TctDrmManager;->getDrmType(Ljava/lang/String;)I

    move-result v1

    .line 424
    .local v1, "mDrmType":I
    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 426
    :cond_1
    const/4 v0, 0x1

    .line 428
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",isAllowForward="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TctDrmManager-API"

    invoke-static {v3, v2}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return v0
.end method

.method public static isDrmEnabled()Z
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDrmEnabled() == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TctDrmManager-API"

    invoke-static {v1, v0}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    return v0
.end method


# virtual methods
.method public SELinux_isDrm(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "result":Z
    sget-boolean v1, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v1, :cond_0

    .line 190
    return v0

    .line 192
    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 195
    sget-object v1, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v1, p1}, Lcom/tct/drm/TctDrmManagerClient;->isDrm(Ljava/lang/String;)Z

    move-result v0

    .line 198
    :cond_1
    return v0

    .line 193
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SELinux_isDrm:your filePath DO NOT be empty or NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public activateContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filepath"    # Ljava/lang/String;

    .line 499
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v0, :cond_0

    .line 500
    return-void

    .line 502
    :cond_0
    sget-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {v0, p1, p2}, Lcom/tct/drm/TctDrmManagerClient;->activateContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 505
    :cond_1
    return-void
.end method

.method public getDrmBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "ret":Landroid/graphics/Bitmap;
    sget-boolean v1, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v1, :cond_0

    .line 646
    return-object v0

    .line 649
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 653
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->getDrmThumbnailNotConsume(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 654
    return-object v0

    .line 650
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "your filePath DO NOT be empty or NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDrmBitmap2(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "ret":Landroid/graphics/Bitmap;
    sget-boolean v1, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v1, :cond_0

    .line 659
    return-object v0

    .line 661
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 664
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->getDrmThumbnailNotConsumeIn(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 665
    return-object v0

    .line 662
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "your filePath DO NOT be empty or NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasCountConstraint(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 609
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v0, :cond_0

    .line 610
    const/4 v0, 0x0

    return v0

    .line 613
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 617
    sget-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    invoke-virtual {v0, p1}, Lcom/tct/drm/TctDrmManagerClient;->hasCountConstraint(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 614
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "your filePath DO NOT be empty or NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCDType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 223
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 224
    return v1

    .line 226
    :cond_0
    invoke-static {p1}, Lcom/tct/drm/api/TctDrmManager;->getDrmType(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isDrm(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "result":Z
    sget-boolean v1, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v1, :cond_0

    .line 166
    return v0

    .line 168
    :cond_0
    invoke-static {p1}, Lcom/tct/drm/api/TctDrmManager;->getDrmType(Ljava/lang/String;)I

    move-result v1

    .line 169
    .local v1, "scheme":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 172
    :cond_1
    const/4 v0, 0x1

    .line 174
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDrm path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TctDrmManager-API"

    invoke-static {v3, v2}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return v0
.end method

.method public isFLType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 209
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    return v1

    .line 212
    :cond_0
    invoke-static {p1}, Lcom/tct/drm/api/TctDrmManager;->getDrmType(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isRightValid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 440
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x1

    return v0

    .line 443
    :cond_0
    sget-object v0, Lcom/tct/drm/api/TctDrmManager;->mTctDrmClient:Lcom/tct/drm/TctDrmManagerClient;

    if-eqz v0, :cond_1

    .line 444
    const/4 v1, 0x0

    .line 445
    .local v1, "isRightValid":Z
    invoke-virtual {v0, p1}, Lcom/tct/drm/TctDrmManagerClient;->isRightValid(Ljava/lang/String;)Z

    move-result v0

    .line 446
    .end local v1    # "isRightValid":Z
    .local v0, "isRightValid":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filepath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isRightValid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TctDrmManager-API"

    invoke-static {v2, v1}, Lcom/tct/drm/api/TctDrmManager;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return v0

    .line 449
    .end local v0    # "isRightValid":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSDType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 237
    sget-boolean v0, Lcom/tct/drm/api/TctDrmManager;->isTctDrmEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 238
    return v1

    .line 240
    :cond_0
    invoke-static {p1}, Lcom/tct/drm/api/TctDrmManager;->getDrmType(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSdType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .line 252
    invoke-virtual {p0, p1}, Lcom/tct/drm/api/TctDrmManager;->isSDType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
