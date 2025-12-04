.class public Lcom/jrdcom/filemanager/manager/CategoryManager;
.super Ljava/lang/Object;
.source "CategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/manager/CategoryManager$CountTextCallback;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/Executor;

.field public static mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field public static mCategoryItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mCurrentCagegory:I

.field public static mCurrentMode:I

.field public static mLastCagegory:I

.field public static mSizeStr:Ljava/lang/String;

.field private static mountManager:Lcom/jrdcom/filemanager/manager/MountManager;

.field private static sInstance:Lcom/jrdcom/filemanager/manager/CategoryManager;

.field private static sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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
    .locals 10

    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    .line 29
    const/4 v1, -0x1

    sput v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 30
    sput v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mLastCagegory:I

    .line 33
    const/4 v1, 0x0

    sput-object v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 34
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/filemanager/FileManagerApplication;

    sput-object v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 59
    add-int/lit8 v3, v1, 0x1

    .line 60
    nop

    .line 61
    new-instance v9, Lcom/jrdcom/filemanager/manager/CategoryManager$1;

    invoke-direct {v9}, Lcom/jrdcom/filemanager/manager/CategoryManager$1;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 70
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/jrdcom/filemanager/manager/CategoryManager;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mSizeMap:Ljava/util/HashMap;

    .line 40
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 41
    return-void
.end method

.method public static getCategoryPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 180
    nop

    .line 181
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 182
    if-eqz p0, :cond_1

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/Download"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 185
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 186
    if-eqz p0, :cond_1

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/bluetooth"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 191
    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getCategoryString(I)I
    .locals 0

    .line 196
    packed-switch p0, :pswitch_data_0

    .line 225
    const/4 p0, 0x0

    goto :goto_0

    .line 222
    :pswitch_0
    const p0, 0x7f0c0030

    .line 223
    goto :goto_0

    .line 201
    :pswitch_1
    const p0, 0x7f0c0090

    .line 202
    goto :goto_0

    .line 207
    :pswitch_2
    const p0, 0x7f0c008f

    .line 208
    goto :goto_0

    .line 219
    :pswitch_3
    const p0, 0x7f0c0037

    .line 220
    goto :goto_0

    .line 216
    :pswitch_4
    const p0, 0x7f0c0035

    .line 217
    goto :goto_0

    .line 213
    :pswitch_5
    const p0, 0x7f0c0031

    .line 214
    goto :goto_0

    .line 210
    :pswitch_6
    const p0, 0x7f0c0033

    .line 211
    goto :goto_0

    .line 204
    :pswitch_7
    const p0, 0x7f0c0032

    .line 205
    goto :goto_0

    .line 198
    :pswitch_8
    const p0, 0x7f0c0091

    .line 199
    nop

    .line 229
    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCountFromFiles(Landroid/content/Context;I)I
    .locals 6

    .line 129
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 130
    sget-object v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/MountManager;->getPhonePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 131
    sget-object v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/manager/MountManager;->getSDCardPath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 132
    nop

    .line 133
    move v2, v3

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v1, v3

    .line 134
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 135
    invoke-static {v4, p1}, Lcom/jrdcom/filemanager/manager/CategoryManager;->getCategoryPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, p1}, Lcom/jrdcom/filemanager/manager/CategoryManager;->getCountFromPath(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v2, v4

    .line 133
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const-string p0, ""

    sput-object p0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mSizeStr:Ljava/lang/String;

    .line 146
    return v2
.end method

.method public static getCountFromPath(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    .line 102
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    nop

    .line 104
    nop

    .line 108
    invoke-static {p0}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 109
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_3

    .line 110
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 111
    if-eqz p0, :cond_3

    .line 112
    array-length p1, p0

    .line 115
    move v0, p2

    :goto_0
    if-ge p2, p1, :cond_2

    .line 116
    aget-object v1, p0, p2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-boolean v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->isShowHidden:Z

    if-nez v1, :cond_0

    aget-object v1, p0, p2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 115
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v0

    .line 124
    :cond_3
    return p2
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 5

    .line 155
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 158
    :cond_0
    nop

    .line 160
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 161
    if-eqz p0, :cond_2

    .line 162
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 163
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 164
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v3

    .line 162
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_2
    goto :goto_1

    .line 168
    :catch_0
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    :goto_1
    return-wide v0

    .line 156
    :cond_3
    :goto_2
    return-wide v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/manager/CategoryManager;
    .locals 1

    .line 44
    sget-object v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->sInstance:Lcom/jrdcom/filemanager/manager/CategoryManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/jrdcom/filemanager/manager/CategoryManager;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/manager/CategoryManager;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->sInstance:Lcom/jrdcom/filemanager/manager/CategoryManager;

    .line 47
    :cond_0
    sget-object v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCategoryItemMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 48
    :cond_1
    invoke-static {p0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getCategoryCountInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCategoryItemMap:Ljava/util/Map;

    .line 51
    :cond_2
    sget-object p0, Lcom/jrdcom/filemanager/manager/CategoryManager;->sInstance:Lcom/jrdcom/filemanager/manager/CategoryManager;

    return-object p0
.end method

.method public static setCurrentMode(I)V
    .locals 0

    .line 176
    sput p0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    .line 177
    return-void
.end method


# virtual methods
.method public clearMap()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mSizeMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mSizeMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 98
    :cond_0
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearTaskQueue()V
    .locals 1

    .line 74
    sget-object v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 75
    return-void
.end method

.method public loadCategoryCountText(Lcom/jrdcom/filemanager/manager/CategoryManager$CountTextCallback;)V
    .locals 4

    .line 80
    new-instance v0, Lcom/jrdcom/filemanager/utils/TaskInfo;

    sget-object v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v2, 0x0

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(Lcom/jrdcom/filemanager/FileManagerApplication;Lcom/jrdcom/filemanager/listener/OperationEventListener;I)V

    .line 81
    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCountCallback(Lcom/jrdcom/filemanager/manager/CategoryManager$CountTextCallback;)V

    .line 82
    sget-object p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object p1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->addNewTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 84
    return-void
.end method

.method public putMap(Ljava/lang/String;J)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mSizeMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mSizeMap:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
