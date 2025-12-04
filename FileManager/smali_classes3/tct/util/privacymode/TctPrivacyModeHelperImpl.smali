.class public Ltct/util/privacymode/TctPrivacyModeHelperImpl;
.super Ljava/lang/Object;
.source "TctPrivacyModeHelperImpl.java"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field mIsPrivacyMode:Z

.field private mResultListener:Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;

.field private mResultListenerStub:Ltct/util/privacymode/ITctPrivacyModeResult$Stub;

.field private mService:Ltct/util/privacymode/ITctPrivacyModeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    sput-object v0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mHandler:Landroid/os/Handler;

    .line 55
    sput-object v0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mResultListener:Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;

    .line 58
    new-instance v0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;

    invoke-direct {v0, p0}, Ltct/util/privacymode/TctPrivacyModeHelperImpl$1;-><init>(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)V

    iput-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mResultListenerStub:Ltct/util/privacymode/ITctPrivacyModeResult$Stub;

    .line 76
    new-instance v0, Ltct/util/privacymode/TctPrivacyModeHelperImpl$2;

    invoke-direct {v0, p0}, Ltct/util/privacymode/TctPrivacyModeHelperImpl$2;-><init>(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)V

    iput-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mConnection:Landroid/content/ServiceConnection;

    .line 97
    iput-object p1, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic access$000(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;
    .locals 1
    .param p0, "x0"    # Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    .line 49
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mResultListener:Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;

    return-object v0
.end method

.method static synthetic access$100(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)V
    .locals 0
    .param p0, "x0"    # Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    .line 49
    invoke-direct {p0}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->unbindService()V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .line 49
    invoke-static {}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)Ltct/util/privacymode/ITctPrivacyModeService;
    .locals 1
    .param p0, "x0"    # Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    .line 49
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mService:Ltct/util/privacymode/ITctPrivacyModeService;

    return-object v0
.end method

.method static synthetic access$302(Ltct/util/privacymode/TctPrivacyModeHelperImpl;Ltct/util/privacymode/ITctPrivacyModeService;)Ltct/util/privacymode/ITctPrivacyModeService;
    .locals 0
    .param p0, "x0"    # Ltct/util/privacymode/TctPrivacyModeHelperImpl;
    .param p1, "x1"    # Ltct/util/privacymode/ITctPrivacyModeService;

    .line 49
    iput-object p1, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mService:Ltct/util/privacymode/ITctPrivacyModeService;

    return-object p1
.end method

.method static synthetic access$400(Ltct/util/privacymode/TctPrivacyModeHelperImpl;)Ltct/util/privacymode/ITctPrivacyModeResult$Stub;
    .locals 1
    .param p0, "x0"    # Ltct/util/privacymode/TctPrivacyModeHelperImpl;

    .line 49
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mResultListenerStub:Ltct/util/privacymode/ITctPrivacyModeResult$Stub;

    return-object v0
.end method

.method private bindService()V
    .locals 4

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.tct.privacymode"

    const-string v2, "com.tct.privacymode.PrivacyModeService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 112
    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    .line 123
    sget-object v0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Unbind Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mHandler:Landroid/os/Handler;

    .line 129
    :cond_0
    sget-object v0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private unbindService()V
    .locals 2

    .line 116
    :try_start_0
    iget-object v0, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 120
    :goto_0
    return-void
.end method


# virtual methods
.method public enterPrivacyMode(ZLtct/util/privacymode/TctPrivacyModeHelper$OnResultListener;)V
    .locals 0
    .param p1, "isPrivacy"    # Z
    .param p2, "resultListener"    # Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;

    .line 101
    iput-boolean p1, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mIsPrivacyMode:Z

    .line 102
    iput-object p2, p0, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->mResultListener:Ltct/util/privacymode/TctPrivacyModeHelper$OnResultListener;

    .line 104
    invoke-direct {p0}, Ltct/util/privacymode/TctPrivacyModeHelperImpl;->bindService()V

    .line 105
    return-void
.end method
