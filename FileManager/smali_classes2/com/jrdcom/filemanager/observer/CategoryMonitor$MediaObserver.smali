.class Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;
.super Landroid/database/ContentObserver;
.source "CategoryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/observer/CategoryMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/observer/CategoryMonitor;


# direct methods
.method private constructor <init>(Lcom/jrdcom/filemanager/observer/CategoryMonitor;Landroid/os/Handler;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;->this$0:Lcom/jrdcom/filemanager/observer/CategoryMonitor;

    .line 58
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/jrdcom/filemanager/observer/CategoryMonitor;Landroid/os/Handler;Lcom/jrdcom/filemanager/observer/CategoryMonitor$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;-><init>(Lcom/jrdcom/filemanager/observer/CategoryMonitor;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;->this$0:Lcom/jrdcom/filemanager/observer/CategoryMonitor;

    invoke-static {p1}, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->access$100(Lcom/jrdcom/filemanager/observer/CategoryMonitor;)Lcom/jrdcom/filemanager/observer/CategoryMonitor$OnChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;->this$0:Lcom/jrdcom/filemanager/observer/CategoryMonitor;

    invoke-static {p1}, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->access$100(Lcom/jrdcom/filemanager/observer/CategoryMonitor;)Lcom/jrdcom/filemanager/observer/CategoryMonitor$OnChangeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/jrdcom/filemanager/observer/CategoryMonitor$OnChangeListener;->onCategoryFileChange()V

    .line 67
    :cond_0
    return-void
.end method
