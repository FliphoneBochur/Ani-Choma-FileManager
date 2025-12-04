.class public Lcom/jrdcom/filemanager/utils/DisplayUtil;
.super Ljava/lang/Object;
.source "DisplayUtil.java"


# instance fields
.field private density:F

.field private densityDpi:I

.field private fontScale:F

.field private height:I

.field private mActivity:Landroid/app/Activity;

.field private mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private mContext:Landroid/content/Context;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->mActivity:Landroid/app/Activity;

    .line 58
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 59
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 60
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 61
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->width:I

    .line 62
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->height:I

    .line 63
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->density:F

    .line 64
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->densityDpi:I

    .line 65
    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->fontScale:F

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 74
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 76
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 78
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->width:I

    .line 79
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->height:I

    .line 80
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->density:F

    .line 81
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->densityDpi:I

    .line 82
    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->fontScale:F

    .line 83
    return-void
.end method


# virtual methods
.method public dipToPx(F)I
    .locals 1

    .line 149
    iget v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getScreenDensity()F
    .locals 1

    .line 109
    iget v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->density:F

    return v0
.end method

.method public getScreenDensityDpi()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->densityDpi:I

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->height:I

    return v0
.end method

.method public getScreenScaledDensity()F
    .locals 1

    .line 127
    iget v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->fontScale:F

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->width:I

    return v0
.end method

.method public pxToDip(F)I
    .locals 1

    .line 138
    iget v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->density:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public pxToSp(F)I
    .locals 1

    .line 160
    iget v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->fontScale:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public spToPx(F)I
    .locals 1

    .line 171
    iget v0, p0, Lcom/jrdcom/filemanager/utils/DisplayUtil;->fontScale:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
