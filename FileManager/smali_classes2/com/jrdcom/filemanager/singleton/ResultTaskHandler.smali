.class public Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;
.super Landroid/os/Handler;
.source "ResultTaskHandler.java"


# static fields
.field private static mActivytListener:Lcom/jrdcom/filemanager/IActivityListener;

.field private static mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 23
    return-void
.end method

.method private constructor <init>(Lcom/jrdcom/filemanager/IActivityListener;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 26
    sput-object p1, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->mActivytListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 27
    return-void
.end method

.method public static getInstance(Lcom/jrdcom/filemanager/IActivityListener;)Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;
    .locals 1

    .line 31
    sput-object p0, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->mActivytListener:Lcom/jrdcom/filemanager/IActivityListener;

    .line 32
    sget-object p0, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    if-nez p0, :cond_0

    .line 33
    new-instance p0, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    sget-object v0, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->mActivytListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;-><init>(Lcom/jrdcom/filemanager/IActivityListener;)V

    sput-object p0, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    .line 36
    :cond_0
    sget-object p0, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->mResultHandler:Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;

    return-object p0
.end method


# virtual methods
.method public getActivytListener()Lcom/jrdcom/filemanager/IActivityListener;
    .locals 1

    .line 41
    sget-object v0, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->mActivytListener:Lcom/jrdcom/filemanager/IActivityListener;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 49
    const-string v0, "TASKRESULT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/TaskInfo;

    .line 50
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getBaseTaskType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 55
    :pswitch_0
    sget-object v0, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->mActivytListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0, p1}, Lcom/jrdcom/filemanager/IActivityListener;->managerTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 56
    goto :goto_0

    .line 52
    :pswitch_1
    sget-object v0, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->mActivytListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0, p1}, Lcom/jrdcom/filemanager/IActivityListener;->managerTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 53
    goto :goto_0

    .line 66
    :cond_0
    :pswitch_2
    sget-object v0, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->mActivytListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0, p1}, Lcom/jrdcom/filemanager/IActivityListener;->managerTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 67
    goto :goto_0

    .line 75
    :cond_1
    :pswitch_3
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    if-nez v0, :cond_2

    .line 76
    return-void

    .line 78
    :cond_2
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/TaskInfo;->getApplication()Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v0, p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->wakeWaittingTask(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 79
    sget-object v0, Lcom/jrdcom/filemanager/singleton/ResultTaskHandler;->mActivytListener:Lcom/jrdcom/filemanager/IActivityListener;

    invoke-interface {v0, p1}, Lcom/jrdcom/filemanager/IActivityListener;->managerTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V

    .line 83
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
