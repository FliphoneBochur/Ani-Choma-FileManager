.class public Lcom/jrdcom/filemanager/MountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MountReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/MountReceiver$MountListener;
    }
.end annotation


# instance fields
.field private final mMountListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jrdcom/filemanager/MountReceiver$MountListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public static registerMountReceiver(Landroid/content/Context;)Lcom/jrdcom/filemanager/MountReceiver;
    .locals 3

    .line 106
    new-instance v0, Lcom/jrdcom/filemanager/MountReceiver;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/MountReceiver;-><init>()V

    .line 108
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    nop

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 60
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 60
    :cond_0
    const/4 v1, 0x0

    .line 64
    :goto_0
    if-eqz v1, :cond_c

    if-nez p2, :cond_1

    goto/16 :goto_8

    .line 68
    :cond_1
    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 69
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jrdcom/filemanager/manager/MountManager;->init(Landroid/content/Context;)V

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jrdcom/filemanager/MountReceiver$MountListener;

    .line 72
    invoke-interface {p2}, Lcom/jrdcom/filemanager/MountReceiver$MountListener;->onMounted()V

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    monitor-exit p0

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 75
    :cond_3
    const-string p1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 76
    const-string p1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_5

    .line 83
    :cond_4
    const-string p1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 84
    iget-object p1, p0, Lcom/jrdcom/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jrdcom/filemanager/MountReceiver$MountListener;

    .line 85
    invoke-interface {p2}, Lcom/jrdcom/filemanager/MountReceiver$MountListener;->onScannerFinished()V

    .line 86
    goto :goto_2

    :cond_5
    goto :goto_7

    .line 87
    :cond_6
    const-string p1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 88
    iget-object p1, p0, Lcom/jrdcom/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jrdcom/filemanager/MountReceiver$MountListener;

    .line 89
    invoke-interface {p2}, Lcom/jrdcom/filemanager/MountReceiver$MountListener;->onScannerStarted()V

    .line 90
    goto :goto_3

    :cond_7
    goto :goto_7

    .line 91
    :cond_8
    const-string p1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 92
    iget-object p1, p0, Lcom/jrdcom/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jrdcom/filemanager/MountReceiver$MountListener;

    .line 93
    invoke-interface {p2}, Lcom/jrdcom/filemanager/MountReceiver$MountListener;->onEject()V

    .line 94
    goto :goto_4

    .line 78
    :cond_9
    :goto_5
    monitor-enter p0

    .line 79
    :try_start_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jrdcom/filemanager/MountReceiver$MountListener;

    .line 80
    invoke-interface {p2, v1}, Lcom/jrdcom/filemanager/MountReceiver$MountListener;->onUnmounted(Ljava/lang/String;)V

    .line 81
    goto :goto_6

    .line 82
    :cond_a
    monitor-exit p0

    .line 96
    :cond_b
    :goto_7
    return-void

    .line 82
    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 65
    :cond_c
    :goto_8
    return-void
.end method

.method public registerMountListener(Lcom/jrdcom/filemanager/MountReceiver$MountListener;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/jrdcom/filemanager/MountReceiver;->mMountListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
