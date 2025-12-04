.class public Lcom/jrdcom/filemanager/singleton/DataContentObserver;
.super Landroid/database/ContentObserver;
.source "DataContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/singleton/DataContentObserver$onDataRefreshListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private static mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

.field public static mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;


# instance fields
.field private isTimerStarted:Z

.field private lastFileChangeTime:J

.field private mCategoryMonitor:Lcom/jrdcom/filemanager/observer/CategoryMonitor;

.field private mFileTimer:Lcom/jrdcom/filemanager/singleton/FilesTimer;

.field private mListener:Lcom/jrdcom/filemanager/singleton/DataContentObserver$onDataRefreshListener;

.field task:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->TAG:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    sput-object v0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 21
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getAppHandler()Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 23
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->isTimerStarted:Z

    .line 24
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mFileTimer:Lcom/jrdcom/filemanager/singleton/FilesTimer;

    .line 26
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->lastFileChangeTime:J

    .line 139
    new-instance p1, Lcom/jrdcom/filemanager/singleton/DataContentObserver$3;

    invoke-direct {p1, p0}, Lcom/jrdcom/filemanager/singleton/DataContentObserver$3;-><init>(Lcom/jrdcom/filemanager/singleton/DataContentObserver;)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->task:Ljava/util/TimerTask;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/singleton/DataContentObserver;)Lcom/jrdcom/filemanager/singleton/DataContentObserver$onDataRefreshListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mListener:Lcom/jrdcom/filemanager/singleton/DataContentObserver$onDataRefreshListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/singleton/DataContentObserver;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->lastFileChangeTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/jrdcom/filemanager/singleton/DataContentObserver;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->lastFileChangeTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/jrdcom/filemanager/singleton/DataContentObserver;)Lcom/jrdcom/filemanager/singleton/FilesTimer;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mFileTimer:Lcom/jrdcom/filemanager/singleton/FilesTimer;

    return-object p0
.end method

.method public static getInstance()Lcom/jrdcom/filemanager/singleton/DataContentObserver;
    .locals 3

    .line 87
    sget-object v0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    sget-object v1, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    sget-object v2, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-direct {v0, v1, v2}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    .line 90
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mDataContentObserver:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    return-object v0
.end method


# virtual methods
.method public cancelFileTimerWatcher()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mFileTimer:Lcom/jrdcom/filemanager/singleton/FilesTimer;

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->TAG:Ljava/lang/String;

    const-string v1, "cancelFileTimerWatcher()"

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mFileTimer:Lcom/jrdcom/filemanager/singleton/FilesTimer;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/FilesTimer;->cancel()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mFileTimer:Lcom/jrdcom/filemanager/singleton/FilesTimer;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->isTimerStarted:Z

    .line 121
    :cond_0
    return-void
.end method

.method public onChange(Z)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 127
    sget-object p1, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->TAG:Ljava/lang/String;

    const-string v0, "onchange name ==>"

    invoke-static {p1, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setDataRefreshListener(Lcom/jrdcom/filemanager/singleton/DataContentObserver$onDataRefreshListener;)V
    .locals 1

    .line 35
    if-nez p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mCategoryMonitor:Lcom/jrdcom/filemanager/observer/CategoryMonitor;

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->unregister()V

    .line 38
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mCategoryMonitor:Lcom/jrdcom/filemanager/observer/CategoryMonitor;

    .line 40
    :cond_0
    return-void

    .line 42
    :cond_1
    iput-object p1, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mListener:Lcom/jrdcom/filemanager/singleton/DataContentObserver$onDataRefreshListener;

    .line 43
    iget-object p1, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mCategoryMonitor:Lcom/jrdcom/filemanager/observer/CategoryMonitor;

    if-nez p1, :cond_2

    .line 44
    new-instance p1, Lcom/jrdcom/filemanager/observer/CategoryMonitor;

    invoke-direct {p1}, Lcom/jrdcom/filemanager/observer/CategoryMonitor;-><init>()V

    iput-object p1, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mCategoryMonitor:Lcom/jrdcom/filemanager/observer/CategoryMonitor;

    .line 45
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->register()V

    .line 46
    iget-object p1, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mCategoryMonitor:Lcom/jrdcom/filemanager/observer/CategoryMonitor;

    new-instance v0, Lcom/jrdcom/filemanager/singleton/DataContentObserver$1;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/singleton/DataContentObserver$1;-><init>(Lcom/jrdcom/filemanager/singleton/DataContentObserver;)V

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->setOnChangeListener(Lcom/jrdcom/filemanager/observer/CategoryMonitor$OnChangeListener;)V

    .line 59
    :cond_2
    return-void
.end method

.method public startFileTimerWatcher()V
    .locals 8

    .line 94
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->isTimerStarted:Z

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->TAG:Ljava/lang/String;

    const-string v1, "startFileTimerWatcher()"

    invoke-static {v0, v1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v2, Lcom/jrdcom/filemanager/singleton/FilesTimer;

    invoke-direct {v2}, Lcom/jrdcom/filemanager/singleton/FilesTimer;-><init>()V

    iput-object v2, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->mFileTimer:Lcom/jrdcom/filemanager/singleton/FilesTimer;

    .line 98
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->isTimerStarted:Z

    .line 99
    new-instance v3, Lcom/jrdcom/filemanager/singleton/DataContentObserver$2;

    invoke-direct {v3, p0}, Lcom/jrdcom/filemanager/singleton/DataContentObserver$2;-><init>(Lcom/jrdcom/filemanager/singleton/DataContentObserver;)V

    const-wide/16 v4, 0x78

    const-wide/16 v6, 0x1388

    invoke-virtual/range {v2 .. v7}, Lcom/jrdcom/filemanager/singleton/FilesTimer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    sget-object v1, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->TAG:Ljava/lang/String;

    const-string v2, "Exception occurred when startFileTimerWatcher:"

    invoke-static {v1, v2, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_0
    :goto_0
    return-void
.end method
