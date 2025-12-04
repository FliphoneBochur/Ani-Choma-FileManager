.class Lcom/jrdcom/filemanager/singleton/DataContentObserver$1;
.super Ljava/lang/Object;
.source "DataContentObserver.java"

# interfaces
.implements Lcom/jrdcom/filemanager/observer/CategoryMonitor$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/singleton/DataContentObserver;->setDataRefreshListener(Lcom/jrdcom/filemanager/singleton/DataContentObserver$onDataRefreshListener;)V
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

    .line 46
    iput-object p1, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver$1;->this$0:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCategoryFileChange()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver$1;->this$0:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-static {v0}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->access$000(Lcom/jrdcom/filemanager/singleton/DataContentObserver;)Lcom/jrdcom/filemanager/singleton/DataContentObserver$onDataRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver$1;->this$0:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-static {v2}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->access$100(Lcom/jrdcom/filemanager/singleton/DataContentObserver;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver$1;->this$0:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->access$102(Lcom/jrdcom/filemanager/singleton/DataContentObserver;J)J

    .line 52
    iget-object v0, p0, Lcom/jrdcom/filemanager/singleton/DataContentObserver$1;->this$0:Lcom/jrdcom/filemanager/singleton/DataContentObserver;

    invoke-static {v0}, Lcom/jrdcom/filemanager/singleton/DataContentObserver;->access$000(Lcom/jrdcom/filemanager/singleton/DataContentObserver;)Lcom/jrdcom/filemanager/singleton/DataContentObserver$onDataRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jrdcom/filemanager/singleton/DataContentObserver$onDataRefreshListener;->onDataRefresh()V

    .line 55
    :cond_0
    return-void
.end method
