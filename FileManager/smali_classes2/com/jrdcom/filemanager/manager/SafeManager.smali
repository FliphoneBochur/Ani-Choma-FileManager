.class public Lcom/jrdcom/filemanager/manager/SafeManager;
.super Ljava/lang/Object;
.source "SafeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;
    }
.end annotation


# static fields
.field public static isFileTypeInterface:Z

.field public static isPrivateFileTypeInterface:Z

.field public static mCurrentSafeCategory:I

.field public static mCurrentmode:I

.field public static mSafeCurrentOperration:I

.field public static mSafeCurrentmode:J

.field public static notQuitSafe:Z

.field private static sInstance:Lcom/jrdcom/filemanager/manager/SafeManager;


# instance fields
.field public mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/jrdcom/filemanager/manager/SafeManager;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/manager/SafeManager;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/manager/SafeManager;->sInstance:Lcom/jrdcom/filemanager/manager/SafeManager;

    .line 47
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentmode:J

    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 50
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jrdcom/filemanager/manager/SafeManager;->notQuitSafe:Z

    .line 51
    const/4 v2, -0x1

    sput v2, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 52
    sput v0, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentmode:I

    .line 53
    sput-boolean v1, Lcom/jrdcom/filemanager/manager/SafeManager;->isFileTypeInterface:Z

    .line 54
    sput-boolean v1, Lcom/jrdcom/filemanager/manager/SafeManager;->isPrivateFileTypeInterface:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/SafeManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSizeMap:Ljava/util/HashMap;

    .line 49
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/SafeManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/manager/SafeManager;
    .locals 0

    .line 60
    sget-object p0, Lcom/jrdcom/filemanager/manager/SafeManager;->sInstance:Lcom/jrdcom/filemanager/manager/SafeManager;

    return-object p0
.end method

.method public static getPrivateFileCount(Landroid/content/Context;)I
    .locals 8

    .line 103
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isInPrivacyMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 104
    return v1

    .line 106
    :cond_0
    nop

    .line 107
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 108
    const-string v0, "count(*)"

    filled-new-array {v0}, [Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const-string v2, "tct_is_private = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 115
    if-eqz p0, :cond_1

    .line 116
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 119
    :cond_1
    goto :goto_0

    .line 118
    :catch_0
    move-exception p0

    .line 121
    :goto_0
    return v1
.end method

.method public static needDecrypt(Ljava/lang/String;)Z
    .locals 2

    .line 94
    const-string v0, "application/zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 95
    const-string v0, "application/x-rar-compressed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const-string v0, "application/x-tar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    const-string v0, "application/x-7z-compressed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    .line 99
    :goto_1
    xor-int/2addr p0, v1

    return p0
.end method

.method public static setCurrentMode(J)V
    .locals 0

    .line 90
    sput-wide p0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentmode:J

    .line 91
    return-void
.end method


# virtual methods
.method public clearMap()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSizeMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadCategoryCountText(Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;)V
    .locals 4

    .line 65
    new-instance v0, Lcom/jrdcom/filemanager/utils/TaskInfo;

    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/SafeManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x0

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 66
    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setSafeCountCallback(Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;)V

    .line 67
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/SafeManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addNewTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 69
    return-void
.end method

.method public putMap(Ljava/lang/String;J)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSizeMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/SafeManager;->mSizeMap:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
