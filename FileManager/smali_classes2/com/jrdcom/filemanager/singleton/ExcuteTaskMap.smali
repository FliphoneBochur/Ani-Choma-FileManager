.class public Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;
.super Ljava/util/HashMap;
.source "ExcuteTaskMap.java"


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
.field private static finishSingle:Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap<",
            "Ljava/lang/Long;",
            "Lcom/jrdcom/filemanager/utils/RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->finishSingle:Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 15
    return-void
.end method

.method public static addFinishTask(JLcom/jrdcom/filemanager/utils/RunningTaskInfo;)V
    .locals 1

    .line 24
    sget-object v0, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->finishSingle:Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public static clearFinishTask()V
    .locals 1

    .line 32
    sget-object v0, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->finishSingle:Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->clear()V

    .line 33
    return-void
.end method

.method public static getFinishTask(J)Lcom/jrdcom/filemanager/utils/RunningTaskInfo;
    .locals 1

    .line 40
    sget-object v0, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->finishSingle:Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jrdcom/filemanager/utils/RunningTaskInfo;

    .line 41
    return-object p0
.end method

.method public static getFinishTaskSize()I
    .locals 1

    .line 36
    sget-object v0, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->finishSingle:Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->size()I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap<",
            "Ljava/lang/Long;",
            "Lcom/jrdcom/filemanager/utils/RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->finishSingle:Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;

    return-object v0
.end method

.method public static isExist(J)Z
    .locals 1

    .line 44
    sget-object v0, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->finishSingle:Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static removeFinishTask(J)V
    .locals 1

    .line 28
    sget-object v0, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->finishSingle:Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/singleton/ExcuteTaskMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method
