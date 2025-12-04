.class public Lcom/jrdcom/filemanager/listener/HeavyOperationListener;
.super Ljava/lang/Object;
.source "HeavyOperationListener.java"

# interfaces
.implements Lcom/jrdcom/filemanager/listener/OperationEventListener;


# instance fields
.field private isHashMap:Z

.field private mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private mListenerInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field private mOperationToast:Z

.field private mPermissionToast:Z

.field private mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

.field private mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

.field private mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

.field result:I


# direct methods
.method public constructor <init>(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mPermissionToast:Z

    .line 26
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mOperationToast:Z

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->result:I

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->isHashMap:Z

    .line 36
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 37
    iput-object p1, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mListenerInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 38
    new-instance p1, Lcom/jrdcom/filemanager/view/ToastHelper;

    invoke-direct {p1, v0}, Lcom/jrdcom/filemanager/view/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mToastHelper:Lcom/jrdcom/filemanager/view/ToastHelper;

    .line 41
    return-void
.end method


# virtual methods
.method public onTaskPrepare()V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/FileManagerApplication;->getAppHandler()Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->isHashMap:Z

    .line 48
    iget-object v1, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mListenerInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getFileFilter()I

    move-result v1

    .line 49
    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    const/16 v0, 0x11

    if-eq v1, v0, :cond_0

    const/16 v0, 0x17

    if-eq v1, v0, :cond_0

    const/16 v0, 0x26

    if-eq v1, v0, :cond_0

    const/16 v0, 0x28

    if-eq v1, v0, :cond_0

    const/16 v0, 0x22

    if-eq v1, v0, :cond_0

    const/16 v0, 0x23

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    iget-object v2, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mListenerInfo:Lcom/jrdcom/filemanager/utils/TaskInfo;

    const-string v3, "TASKRESULT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 63
    iget-object v1, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {v1, v0}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->handleMessage(Landroid/os/Message;)V

    .line 64
    nop

    .line 70
    :goto_0
    return-void
.end method

.method public onTaskProgress(Lcom/jrdcom/filemanager/task/ProgressInfo;)V
    .locals 4

    .line 74
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/ProgressInfo;->isFailInfo()Z

    move-result v0

    const-string v1, "TASKRESULT"

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/16 v2, 0x19

    invoke-direct {v0, v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(I)V

    .line 76
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getErrorCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setErrorCode(I)V

    .line 77
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 78
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 79
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 80
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->handleMessage(Landroid/os/Message;)V

    .line 82
    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getProgressTaskType()I

    move-result v0

    .line 85
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/16 v2, 0x26

    if-eq v0, v2, :cond_1

    const/16 v2, 0x28

    if-eq v0, v2, :cond_1

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    const/16 v2, 0x23

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Lcom/jrdcom/filemanager/utils/TaskInfo;

    const/16 v2, 0x18

    invoke-direct {v0, v2}, Lcom/jrdcom/filemanager/utils/TaskInfo;-><init>(I)V

    .line 94
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/task/ProgressInfo;->getCreateTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setCreateTaskTime(J)V

    .line 95
    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->setProgressInfo(Lcom/jrdcom/filemanager/task/ProgressInfo;)V

    .line 96
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 97
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 98
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 99
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 100
    iget-object v0, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->handleMessage(Landroid/os/Message;)V

    .line 101
    nop

    .line 108
    :goto_0
    return-void
.end method

.method public onTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 3

    .line 112
    iput-object p1, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mResultTask:Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 113
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getResultCode()I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->result:I

    .line 114
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 115
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v2, "TASKRESULT"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 118
    if-nez p1, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    if-nez p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/FileManagerApplication;->getAppHandler()Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 123
    if-nez p1, :cond_1

    .line 124
    return-void

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/listener/HeavyOperationListener;->mResultTaskHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->handleMessage(Landroid/os/Message;)V

    .line 130
    return-void
.end method
