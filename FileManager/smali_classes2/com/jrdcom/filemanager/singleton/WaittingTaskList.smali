.class public Lcom/jrdcom/filemanager/singleton/WaittingTaskList;
.super Ljava/util/ArrayList;
.source "WaittingTaskList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList;"
    }
.end annotation


# static fields
.field private static waitSingle:Lcom/jrdcom/filemanager/singleton/WaittingTaskList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jrdcom/filemanager/singleton/WaittingTaskList<",
            "Lcom/jrdcom/filemanager/task/BaseAsyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->waitSingle:Lcom/jrdcom/filemanager/singleton/WaittingTaskList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    return-void
.end method

.method public static addWaittingningTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->waitSingle:Lcom/jrdcom/filemanager/singleton/WaittingTaskList;

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public static clearWaittingTask()V
    .locals 1

    .line 33
    sget-object v0, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->waitSingle:Lcom/jrdcom/filemanager/singleton/WaittingTaskList;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->clear()V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/jrdcom/filemanager/singleton/WaittingTaskList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jrdcom/filemanager/singleton/WaittingTaskList<",
            "Lcom/jrdcom/filemanager/task/BaseAsyncTask;",
            ">;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->waitSingle:Lcom/jrdcom/filemanager/singleton/WaittingTaskList;

    return-object v0
.end method

.method public static getWaittingTask(I)Lcom/jrdcom/filemanager/task/BaseAsyncTask;
    .locals 1

    .line 41
    sget-object v0, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->waitSingle:Lcom/jrdcom/filemanager/singleton/WaittingTaskList;

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jrdcom/filemanager/task/BaseAsyncTask;

    return-object p0
.end method

.method public static getWaittingTaskSize()I
    .locals 1

    .line 37
    sget-object v0, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->waitSingle:Lcom/jrdcom/filemanager/singleton/WaittingTaskList;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->size()I

    move-result v0

    return v0
.end method

.method public static removeWaittingTask(Lcom/jrdcom/filemanager/task/BaseAsyncTask;)V
    .locals 1

    .line 29
    sget-object v0, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->waitSingle:Lcom/jrdcom/filemanager/singleton/WaittingTaskList;

    invoke-virtual {v0, p0}, Lcom/jrdcom/filemanager/singleton/WaittingTaskList;->remove(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method
