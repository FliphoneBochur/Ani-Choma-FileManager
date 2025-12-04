.class public Lcom/jrdcom/filemanager/drm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/drm/DrmManager$newThread;
    }
.end annotation


# static fields
.field public static CONSTRAINT_TYPE:Ljava/lang/String;

.field public static CONTENT_VENDOR:Ljava/lang/String;

.field public static DRM_SCHEME_OMA1_CD:I

.field public static DRM_SCHEME_OMA1_FL:I

.field public static DRM_SCHEME_OMA1_SD:I

.field public static METHOD_FL:I

.field public static METHOD_SD:I

.field public static RIGHTS_ISSUER:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static isDrmEnable:Z

.field public static mCurrentDrm:I

.field private static sInstance:Lcom/jrdcom/filemanager/drm/DrmManager;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private mContext:Landroid/content/Context;

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mTctDrmManager:Lcom/tct/drm/api/TctDrmManager;

.field private mtkDrmManagerForM:Lcom/mtk/drm/frameworks/MtkDrmManager;

.field private mtkDrmManagerForN:Lcom/tct/omadrm/MtkDrmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/jrdcom/filemanager/drm/DrmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/drm/DrmManager;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    .line 62
    const/4 v0, 0x1

    sput v0, Lcom/jrdcom/filemanager/drm/DrmManager;->METHOD_FL:I

    .line 63
    const/4 v0, 0x3

    sput v0, Lcom/jrdcom/filemanager/drm/DrmManager;->METHOD_SD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 100
    iput-object p1, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Lcom/jrdcom/filemanager/drm/DrmManager;->getDrmPlatform()I

    move-result v0

    sput v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    .line 102
    invoke-static {}, Lcom/jrdcom/filemanager/drm/DrmManager;->setScheme()V

    .line 103
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_3

    .line 104
    new-instance v0, Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 105
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 p1, 0x14

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Lcom/tct/drm/api/TctDrmManager;

    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/tct/drm/api/TctDrmManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mTctDrmManager:Lcom/tct/drm/api/TctDrmManager;

    .line 119
    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasBelowN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object p1, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getInstance(Landroid/content/Context;)Lcom/mtk/drm/frameworks/MtkDrmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForM:Lcom/mtk/drm/frameworks/MtkDrmManager;

    goto :goto_0

    .line 111
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/tct/omadrm/MtkDrmManager;->getInstance(Landroid/content/Context;)Lcom/tct/omadrm/MtkDrmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForN:Lcom/tct/omadrm/MtkDrmManager;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception p1

    .line 124
    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/drm/DrmManager;)Lcom/tct/omadrm/MtkDrmManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForN:Lcom/tct/omadrm/MtkDrmManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jrdcom/filemanager/drm/DrmManager;)Lcom/mtk/drm/frameworks/MtkDrmManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForM:Lcom/mtk/drm/frameworks/MtkDrmManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jrdcom/filemanager/drm/DrmManager;)Lcom/tct/drm/api/TctDrmManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mTctDrmManager:Lcom/tct/drm/api/TctDrmManager;

    return-object p0
.end method

.method public static getAction(Ljava/lang/String;)I
    .locals 2

    .line 273
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 p0, 0x7

    return p0

    .line 275
    :cond_0
    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 276
    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 280
    :cond_1
    return v1

    .line 277
    :cond_2
    :goto_0
    return v1
.end method

.method private getDrmPlatform()I
    .locals 4

    .line 184
    sget-object v0, Lcom/jrdcom/filemanager/drm/DrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "def_DRM_included"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mContext:Landroid/content/Context;

    const v3, 0x7f040003

    invoke-static {v2, v3}, Lcom/jrdcom/filemanager/PlfUtils;->getBoolResource(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/jrdcom/filemanager/PlfUtils;->getBoolResource(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/jrdcom/filemanager/drm/DrmManager;->isQcomDrm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/tct/drm/api/TctDrmManager;->isDrmEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    .line 188
    const/16 v0, 0x14

    return v0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/jrdcom/filemanager/drm/DrmManager;->isMTKDrm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-static {}, Lcom/tct/omadrm/MtkDrmManager;->isDrmEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isDrmEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    .line 195
    :goto_0
    const/16 v0, 0xa

    return v0

    .line 198
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    .line 199
    const/4 v0, -0x1

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/drm/DrmManager;
    .locals 1

    .line 132
    sget-object v0, Lcom/jrdcom/filemanager/drm/DrmManager;->sInstance:Lcom/jrdcom/filemanager/drm/DrmManager;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/jrdcom/filemanager/drm/DrmManager;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/drm/DrmManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jrdcom/filemanager/drm/DrmManager;->sInstance:Lcom/jrdcom/filemanager/drm/DrmManager;

    .line 135
    :cond_0
    sget-object p0, Lcom/jrdcom/filemanager/drm/DrmManager;->sInstance:Lcom/jrdcom/filemanager/drm/DrmManager;

    return-object p0
.end method

.method public static isDrmFileExt(Ljava/lang/String;)Z
    .locals 1

    .line 290
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_0

    .line 291
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jrdcom/filemanager/utils/FileUtils;->drmTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 293
    const/4 p0, 0x1

    return p0

    .line 296
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isMTKDrm()Z
    .locals 3

    .line 141
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "mt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    return v0

    .line 144
    :cond_0
    nop

    .line 145
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    const-string v1, "com.tct.omadrm.MtkDrmManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 148
    :cond_1
    const-string v1, "com.mtk.drm.frameworks.MtkDrmManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 150
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 151
    const/4 v0, 0x1

    return v0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 155
    :catch_1
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/LinkageError;->printStackTrace()V

    goto :goto_1

    .line 153
    :catch_2
    move-exception v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 159
    :cond_2
    :goto_1
    nop

    .line 160
    :goto_2
    return v0
.end method

.method private isQcomDrm()Z
    .locals 3

    .line 166
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "qcom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    return v0

    .line 169
    :cond_0
    const-string v1, "com.tct.drm.TctDrmManagerClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 171
    const/4 v0, 0x1

    return v0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 175
    :catch_1
    move-exception v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/LinkageError;->printStackTrace()V

    goto :goto_0

    .line 173
    :catch_2
    move-exception v1

    .line 174
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 179
    :cond_1
    :goto_0
    nop

    .line 180
    :goto_1
    return v0
.end method

.method public static setScheme()V
    .locals 7

    .line 67
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_3

    .line 68
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0xa

    const-string v2, "content_vendor"

    const-string v3, "constraint_type"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    sput v6, Lcom/jrdcom/filemanager/drm/DrmManager;->DRM_SCHEME_OMA1_FL:I

    .line 84
    sput v5, Lcom/jrdcom/filemanager/drm/DrmManager;->DRM_SCHEME_OMA1_CD:I

    .line 85
    sput v4, Lcom/jrdcom/filemanager/drm/DrmManager;->DRM_SCHEME_OMA1_SD:I

    .line 86
    const-string v0, "rights_issuer"

    sput-object v0, Lcom/jrdcom/filemanager/drm/DrmManager;->RIGHTS_ISSUER:Ljava/lang/String;

    .line 87
    sput-object v3, Lcom/jrdcom/filemanager/drm/DrmManager;->CONSTRAINT_TYPE:Ljava/lang/String;

    .line 88
    sput-object v2, Lcom/jrdcom/filemanager/drm/DrmManager;->CONTENT_VENDOR:Ljava/lang/String;

    .line 89
    goto :goto_0

    .line 70
    :cond_1
    sput v6, Lcom/jrdcom/filemanager/drm/DrmManager;->DRM_SCHEME_OMA1_FL:I

    .line 71
    sput v5, Lcom/jrdcom/filemanager/drm/DrmManager;->DRM_SCHEME_OMA1_CD:I

    .line 72
    sput v4, Lcom/jrdcom/filemanager/drm/DrmManager;->DRM_SCHEME_OMA1_SD:I

    .line 73
    const-string v0, "drm_rights_issuer"

    sput-object v0, Lcom/jrdcom/filemanager/drm/DrmManager;->RIGHTS_ISSUER:Ljava/lang/String;

    .line 74
    sput-object v3, Lcom/jrdcom/filemanager/drm/DrmManager;->CONSTRAINT_TYPE:Ljava/lang/String;

    .line 75
    sput-object v2, Lcom/jrdcom/filemanager/drm/DrmManager;->CONTENT_VENDOR:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v0

    const-string v1, "is_drm"

    if-eqz v0, :cond_2

    .line 77
    sput-object v1, Lcom/jrdcom/filemanager/utils/CommonIdentity;->TCT_IS_DRM:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_2
    sput-object v1, Lcom/jrdcom/filemanager/utils/CommonIdentity;->TCT_IS_DRM:Ljava/lang/String;

    .line 94
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public canTransfer(Ljava/lang/String;)Z
    .locals 5

    .line 224
    nop

    .line 225
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 226
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {p1, v4}, Lcom/tct/drm/api/TctDrmManager;->checkRightsStatus(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v3

    .line 237
    :cond_1
    goto :goto_0

    .line 228
    :cond_2
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForN:Lcom/tct/omadrm/MtkDrmManager;

    invoke-virtual {v0, p1, v4}, Lcom/tct/omadrm/MtkDrmManager;->checkRightsStatus(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_4

    move v1, v3

    goto :goto_0

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForM:Lcom/mtk/drm/frameworks/MtkDrmManager;

    invoke-virtual {v0, p1, v4}, Lcom/mtk/drm/frameworks/MtkDrmManager;->checkRightsStatus(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_4

    move v1, v3

    .line 242
    :cond_4
    :goto_0
    return v1
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 2

    .line 477
    nop

    .line 478
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_3

    .line 479
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    invoke-static {p1, p2}, Lcom/tct/drm/api/TctDrmManager;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    .line 489
    goto :goto_1

    .line 481
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForN:Lcom/tct/omadrm/MtkDrmManager;

    invoke-virtual {v0, p1, p2}, Lcom/tct/omadrm/MtkDrmManager;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    goto :goto_1

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForM:Lcom/mtk/drm/frameworks/MtkDrmManager;

    invoke-virtual {v0, p1, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    .line 486
    goto :goto_1

    .line 494
    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getDrmRealThumbnail(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 376
    nop

    .line 377
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_3

    .line 378
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/tct/drm/api/TctDrmManager;->getDrmRealThumbnail(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 388
    goto :goto_1

    .line 380
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForN:Lcom/tct/omadrm/MtkDrmManager;

    if-eqz p2, :cond_2

    .line 381
    invoke-virtual {p2, p1, p3}, Lcom/tct/omadrm/MtkDrmManager;->getDrmThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 382
    :cond_2
    iget-object p2, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForM:Lcom/mtk/drm/frameworks/MtkDrmManager;

    if-eqz p2, :cond_3

    .line 383
    invoke-virtual {p2, p1, p3}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getDrmThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 393
    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getDrmScheme(Ljava/lang/String;)I
    .locals 2

    .line 435
    nop

    .line 436
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_3

    .line 437
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    invoke-static {p1}, Lcom/tct/drm/api/TctDrmManager;->getDrmScheme(Ljava/lang/String;)I

    move-result p1

    .line 447
    goto :goto_1

    .line 439
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForN:Lcom/tct/omadrm/MtkDrmManager;

    invoke-virtual {v0, p1}, Lcom/tct/omadrm/MtkDrmManager;->getDrmScheme(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForM:Lcom/mtk/drm/frameworks/MtkDrmManager;

    invoke-virtual {v0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getDrmScheme(Ljava/lang/String;)I

    move-result p1

    .line 444
    goto :goto_1

    .line 452
    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getDrmThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 355
    nop

    .line 356
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_3

    .line 357
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {p1, p2}, Lcom/tct/drm/api/TctDrmManager;->getDrmThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 367
    goto :goto_1

    .line 359
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForN:Lcom/tct/omadrm/MtkDrmManager;

    invoke-virtual {v0, p1, p2}, Lcom/tct/omadrm/MtkDrmManager;->getDrmThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForM:Lcom/mtk/drm/frameworks/MtkDrmManager;

    invoke-virtual {v0, p1, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getDrmThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 364
    goto :goto_1

    .line 372
    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getDrmVideoThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 338
    nop

    .line 339
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_1

    .line 340
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/tct/drm/api/TctDrmManager;->getDrmVideoThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 346
    goto :goto_1

    .line 351
    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 456
    nop

    .line 457
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_3

    .line 458
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    invoke-static {p1}, Lcom/tct/drm/api/TctDrmManager;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 468
    goto :goto_1

    .line 460
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForN:Lcom/tct/omadrm/MtkDrmManager;

    invoke-virtual {v0, p1}, Lcom/tct/omadrm/MtkDrmManager;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    goto :goto_1

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForM:Lcom/mtk/drm/frameworks/MtkDrmManager;

    invoke-virtual {v0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 465
    goto :goto_1

    .line 473
    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 209
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 212
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public isAllowForward(Ljava/lang/String;)Z
    .locals 2

    .line 498
    nop

    .line 499
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_3

    .line 500
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    invoke-static {p1}, Lcom/tct/drm/api/TctDrmManager;->isAllowForward(Ljava/lang/String;)Z

    move-result p1

    .line 510
    goto :goto_1

    .line 502
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForN:Lcom/tct/omadrm/MtkDrmManager;

    invoke-virtual {v0, p1}, Lcom/tct/omadrm/MtkDrmManager;->isAllowForward(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForM:Lcom/mtk/drm/frameworks/MtkDrmManager;

    invoke-virtual {v0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isAllowForward(Ljava/lang/String;)Z

    move-result p1

    .line 507
    goto :goto_1

    .line 515
    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isDrm(Ljava/lang/String;)Z
    .locals 2

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/jrdcom/filemanager/drm/DrmManager$newThread;

    invoke-direct {v1, p0, p1}, Lcom/jrdcom/filemanager/drm/DrmManager$newThread;-><init>(Lcom/jrdcom/filemanager/drm/DrmManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 302
    :catch_0
    move-exception p1

    .line 303
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    const/4 p1, 0x0

    return p1
.end method

.method public isDrmCDFile(Ljava/lang/String;)Z
    .locals 2

    .line 397
    nop

    .line 398
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_2

    .line 399
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mTctDrmManager:Lcom/tct/drm/api/TctDrmManager;

    invoke-virtual {v0, p1}, Lcom/tct/drm/api/TctDrmManager;->isCDType(Ljava/lang/String;)Z

    move-result p1

    .line 407
    goto :goto_1

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForN:Lcom/tct/omadrm/MtkDrmManager;

    if-eqz v0, :cond_2

    .line 402
    invoke-virtual {v0, p1}, Lcom/tct/omadrm/MtkDrmManager;->isCDType(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    .line 412
    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isDrmSDFile(Ljava/lang/String;)Z
    .locals 2

    .line 416
    nop

    .line 417
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_2

    .line 418
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mTctDrmManager:Lcom/tct/drm/api/TctDrmManager;

    invoke-virtual {v0, p1}, Lcom/tct/drm/api/TctDrmManager;->isSdType(Ljava/lang/String;)Z

    move-result p1

    .line 426
    goto :goto_1

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForN:Lcom/tct/omadrm/MtkDrmManager;

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {v0, p1}, Lcom/tct/omadrm/MtkDrmManager;->isSdType(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    .line 431
    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isRightsStatus(Ljava/lang/String;)Z
    .locals 2

    .line 252
    nop

    .line 253
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_3

    .line 254
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mTctDrmManager:Lcom/tct/drm/api/TctDrmManager;

    invoke-virtual {v0, p1}, Lcom/tct/drm/api/TctDrmManager;->isRightValid(Ljava/lang/String;)Z

    move-result p1

    .line 264
    goto :goto_1

    .line 256
    :cond_1
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForN:Lcom/tct/omadrm/MtkDrmManager;

    invoke-virtual {v0, p1}, Lcom/tct/omadrm/MtkDrmManager;->isRightValid(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForM:Lcom/mtk/drm/frameworks/MtkDrmManager;

    invoke-virtual {v0, p1}, Lcom/mtk/drm/frameworks/MtkDrmManager;->isRightValid(Ljava/lang/String;)Z

    move-result p1

    .line 261
    goto :goto_1

    .line 269
    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public restoreWallpaper()V
    .locals 3

    .line 537
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_0

    .line 538
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drm_wallpaper_filepath"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasBelowN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mtkDrmManagerForM:Lcom/mtk/drm/frameworks/MtkDrmManager;

    iget-object v2, p0, Lcom/jrdcom/filemanager/drm/DrmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/mtk/drm/frameworks/MtkDrmManager;->checkDrmWallpaperStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 547
    :cond_0
    return-void
.end method

.method public showRefreshLicenseDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2

    .line 519
    nop

    .line 520
    sget-boolean v0, Lcom/jrdcom/filemanager/drm/DrmManager;->isDrmEnable:Z

    if-eqz v0, :cond_1

    .line 521
    sget v0, Lcom/jrdcom/filemanager/drm/DrmManager;->mCurrentDrm:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->hasBelowN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    invoke-static {p1, p2}, Lcom/mtk/drm/frameworks/MtkDrmManager;->showRefreshLicenseDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    goto :goto_1

    .line 533
    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
