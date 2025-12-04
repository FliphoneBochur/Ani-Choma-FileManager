.class public Lcom/jrdcom/filemanager/singleton/RunningTaskMap;
.super Ljava/util/HashMap;
.source "RunningTaskMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap;"
    }
.end annotation


# static fields
.field private static runSingle:Lcom/jrdcom/filemanager/singleton/RunningTaskMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jrdcom/filemanager/singleton/RunningTaskMap<",
            "Ljava/lang/Long;",
            "Lcom/jrdcom/filemanager/task/BaseAsyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->runSingle:Lcom/jrdcom/filemanager/singleton/RunningTaskMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 16
    return-void
.end method

.method public static addRunningTask(JLcom/jrdcom/filemanager/task/BaseAsyncTask;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->runSingle:Lcom/jrdcom/filemanager/singleton/RunningTaskMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public static clearRunningTask()V
    .locals 1

    .line 33
    sget-object v0, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->runSingle:Lcom/jrdcom/filemanager/singleton/RunningTaskMap;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->clear()V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/jrdcom/filemanager/singleton/RunningTaskMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jrdcom/filemanager/singleton/RunningTaskMap<",
            "Ljava/lang/Long;",
            "Lcom/jrdcom/filemanager/task/BaseAsyncTask;",
            ">;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->runSingle:Lcom/jrdcom/filemanager/singleton/RunningTaskMap;

    return-object v0
.end method

.method public static getRunningTask(J)Lcom/jrdcom/filemanager/task/BaseAsyncTask;
    .locals 1

    .line 37
    sget-object v0, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->runSingle:Lcom/jrdcom/filemanager/singleton/RunningTaskMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    return-object p0
.end method

.method public static getRunningTaskSize()I
    .locals 1

    .line 41
    sget-object v0, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->runSingle:Lcom/jrdcom/filemanager/singleton/RunningTaskMap;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->size()I

    move-result v0

    return v0
.end method

.method public static removeRunningTask(J)V
    .locals 1

    .line 29
    sget-object v0, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->runSingle:Lcom/jrdcom/filemanager/singleton/RunningTaskMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/singleton/RunningTaskMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method
