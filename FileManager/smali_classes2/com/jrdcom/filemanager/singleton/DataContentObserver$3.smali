.class Lcom/jrdcom/filemanager/singleton/DataContentObserver$3;
.super Ljava/util/TimerTask;
.source "DataContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/singleton/DataContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/singleton/DataContentObserver;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/singleton/DataContentObserver;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver$3;->this$0:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver$3;->this$0:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-static {v0}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->access$200(Lcom/jrdcom/filemanager/singleton/DataContentObserver;)Lcom/jrdcom/filemanager/singleton/FilesTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver$3;->this$0:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-static {v0}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->access$200(Lcom/jrdcom/filemanager/singleton/DataContentObserver;)Lcom/jrdcom/filemanager/singleton/FilesTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/singleton/FilesTimer;->changeFileInfo()V

    .line 146
    :cond_0
    return-void
.end method
