.class public Lcom/jrdcom/filemanager/observer/CategoryMonitor;
.super Ljava/lang/Object;
.source "CategoryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/observer/CategoryMonitor$OnChangeListener;,
        Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mMediaObserver:Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;

.field private mObserverHandler:Landroid/os/Handler;

.field private mObserverThread:Landroid/os/HandlerThread;

.field private onChangeListener:Lcom/jrdcom/filemanager/observer/CategoryMonitor$OnChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mMediaObserver:Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;

    .line 22
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/observer/CategoryMonitor;)Lcom/jrdcom/filemanager/observer/CategoryMonitor$OnChangeListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->onChangeListener:Lcom/jrdcom/filemanager/observer/CategoryMonitor$OnChangeListener;

    return-object p0
.end method


# virtual methods
.method public register()V
    .locals 4

    .line 26
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "media observer thread"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mObserverThread:Landroid/os/HandlerThread;

    .line 27
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mObserverHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;

    iget-object v1, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mObserverHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;-><init>(Lcom/jrdcom/filemanager/observer/CategoryMonitor;Landroid/os/Handler;Lcom/jrdcom/filemanager/observer/CategoryMonitor$1;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mMediaObserver:Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;

    .line 32
    iget-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mMediaObserver:Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 33
    iget-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mMediaObserver:Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 34
    iget-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mMediaObserver:Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 35
    iget-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mMediaObserver:Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 36
    iget-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/external/object"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mMediaObserver:Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 37
    return-void
.end method

.method public setOnChangeListener(Lcom/jrdcom/filemanager/observer/CategoryMonitor$OnChangeListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->onChangeListener:Lcom/jrdcom/filemanager/observer/CategoryMonitor$OnChangeListener;

    .line 41
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mMediaObserver:Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mMediaObserver:Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mMediaObserver:Lcom/jrdcom/filemanager/observer/CategoryMonitor$MediaObserver;

    .line 50
    iput-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mObserverHandler:Landroid/os/Handler;

    .line 51
    iget-object v1, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 52
    iput-object v0, p0, Lcom/jrdcom/filemanager/observer/CategoryMonitor;->mObserverThread:Landroid/os/HandlerThread;

    .line 54
    :cond_0
    return-void
.end method
