.class Lcom/jrdcom/filemanager/activity/PathSelectionActivity$ListListener;
.super Ljava/lang/Object;
.source "PathSelectionActivity.java"

# interfaces
.implements Lcom/jrdcom/filemanager/listener/OperationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/activity/PathSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$ListListener;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;Lcom/jrdcom/filemanager/activity/PathSelectionActivity$1;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$ListListener;-><init>(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onTaskPrepare()V
    .locals 0

    .line 205
    return-void
.end method

.method public onTaskProgress(Lcom/jrdcom/filemanager/task/ProgressInfo;)V
    .locals 0

    .line 210
    return-void
.end method

.method public onTaskResult(Lcom/jrdcom/filemanager/utils/TaskInfo;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/PathSelectionActivity$ListListener;->this$0:Lcom/jrdcom/filemanager/activity/PathSelectionActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/PathSelectionActivity;->access$600(Lcom/jrdcom/filemanager/activity/PathSelectionActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 201
    return-void
.end method
