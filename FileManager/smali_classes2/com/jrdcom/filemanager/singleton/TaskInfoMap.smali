.class public Lcom/jrdcom/filemanager/singleton/TaskInfoMap;
.super Ljava/util/HashMap;
.source "TaskInfoMap.java"


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
.field private static runSingle:Lcom/jrdcom/filemanager/singleton/TaskInfoMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jrdcom/filemanager/singleton/TaskInfoMap<",
            "Ljava/lang/Long;",
            "Lcom/jrdcom/filemanager/utils/TaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->runSingle:Lcom/jrdcom/filemanager/singleton/TaskInfoMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 16
    return-void
.end method

.method public static addtaskInfo(JLcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->runSingle:Lcom/jrdcom/filemanager/singleton/TaskInfoMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public static clearAllTaskInfo()V
    .locals 1

    .line 33
    sget-object v0, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->runSingle:Lcom/jrdcom/filemanager/singleton/TaskInfoMap;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->clear()V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/jrdcom/filemanager/singleton/TaskInfoMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jrdcom/filemanager/singleton/TaskInfoMap<",
            "Ljava/lang/Long;",
            "Lcom/jrdcom/filemanager/utils/TaskInfo;",
            ">;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->runSingle:Lcom/jrdcom/filemanager/singleton/TaskInfoMap;

    return-object v0
.end method

.method public static getTaskInfo(J)Lcom/jrdcom/filemanager/utils/TaskInfo;
    .locals 1

    .line 37
    sget-object v0, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->runSingle:Lcom/jrdcom/filemanager/singleton/TaskInfoMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jrdcom/filemanager/utils/TaskInfo;

    return-object p0
.end method

.method public static getTaskInfoSize()I
    .locals 1

    .line 41
    sget-object v0, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->runSingle:Lcom/jrdcom/filemanager/singleton/TaskInfoMap;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->size()I

    move-result v0

    return v0
.end method

.method public static removeTaskInfo(J)V
    .locals 1

    .line 29
    sget-object v0, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->runSingle:Lcom/jrdcom/filemanager/singleton/TaskInfoMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/singleton/TaskInfoMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method
