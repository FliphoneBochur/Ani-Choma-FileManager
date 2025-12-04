.class Lcom/jrdcom/filemanager/activity/FileSelectionActivity$ListListener;
.super Ljava/lang/Object;
.source "FileSelectionActivity.java"

# interfaces
.implements Lcom/jrdcom/filemanager/listener/OperationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/activity/FileSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$ListListener;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;Lcom/jrdcom/filemanager/activity/FileSelectionActivity$1;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$ListListener;-><init>(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onTaskPrepare()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$ListListener;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$800(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 261
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 262
    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$ListListener;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {v1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$800(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    return-void
.end method

.method public onTaskProgress(Lcom/jrdcom/filemanager/task/ProgressInfo;)V
    .locals 0

    .line 268
    return-void
.end method

.method public onTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 253
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$ListListener;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$800(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 254
    const/16 v0, 0xc

    iput v0, p1, Landroid/os/Message;->what:I

    .line 255
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileSelectionActivity$ListListener;->this$0:Lcom/jrdcom/filemanager/activity/FileSelectionActivity;

    invoke-static {v0}, Lcom/jrdcom/filemanager/activity/FileSelectionActivity;->access$800(Lcom/jrdcom/filemanager/activity/FileSelectionActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    return-void
.end method
