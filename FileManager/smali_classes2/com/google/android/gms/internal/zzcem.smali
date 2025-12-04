.class public final Lcom/google/android/gms/internal/zzcem;
.super Lcom/google/android/gms/internal/zzcds;


# instance fields
.field private final zzivp:Lcom/google/android/gms/internal/zzcez;

.field private zzivq:Lcom/google/android/gms/internal/zzcbm;

.field private zzivr:Ljava/lang/Boolean;

.field private final zzivs:Lcom/google/android/gms/internal/zzcba;

.field private final zzivt:Lcom/google/android/gms/internal/zzcfo;

.field private final zzivu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzivv:Lcom/google/android/gms/internal/zzcba;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzccu;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcds;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivu:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzcfo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzccu;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcfo;-><init>(Lcom/google/android/gms/common/util/zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivt:Lcom/google/android/gms/internal/zzcfo;

    new-instance v0, Lcom/google/android/gms/internal/zzcez;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcez;-><init>(Lcom/google/android/gms/internal/zzcem;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivp:Lcom/google/android/gms/internal/zzcez;

    new-instance v0, Lcom/google/android/gms/internal/zzcen;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcen;-><init>(Lcom/google/android/gms/internal/zzcem;Lcom/google/android/gms/internal/zzccu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivs:Lcom/google/android/gms/internal/zzcba;

    new-instance v0, Lcom/google/android/gms/internal/zzcer;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcer;-><init>(Lcom/google/android/gms/internal/zzcem;Lcom/google/android/gms/internal/zzccu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivv:Lcom/google/android/gms/internal/zzcba;

    return-void
.end method

.method private final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivq:Lcom/google/android/gms/internal/zzcbm;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivq:Lcom/google/android/gms/internal/zzcbm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcem;->zzxe()V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcem;Lcom/google/android/gms/internal/zzcbm;)Lcom/google/android/gms/internal/zzcbm;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcem;->zzivq:Lcom/google/android/gms/internal/zzcbm;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcem;)Lcom/google/android/gms/internal/zzcez;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcem;->zzivp:Lcom/google/android/gms/internal/zzcez;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcem;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcem;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method private final zzazq()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcem;->zzivu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing queued up service tasks"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivv:Lcom/google/android/gms/internal/zzcba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcba;->cancel()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcem;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcem;->zzazq()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcem;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcem;->zzwu()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcem;)Lcom/google/android/gms/internal/zzcbm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcem;->zzivq:Lcom/google/android/gms/internal/zzcbm;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzcem;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcem;->zzwt()V

    return-void
.end method

.method private final zzj(Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcem;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawo()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcem;->zzivv:Lcom/google/android/gms/internal/zzcba;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcba;->zzs(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcem;->zzxe()V

    return-void
.end method

.method private final zzwt()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivt:Lcom/google/android/gms/internal/zzcfo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfo;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivs:Lcom/google/android/gms/internal/zzcba;

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcba;->zzs(J)V

    return-void
.end method

.method private final zzwu()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcem;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcem;->disconnect()V

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzaky()Lcom/google/android/gms/common/stats/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcem;->zzivp:Lcom/google/android/gms/internal/zzcez;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivq:Lcom/google/android/gms/internal/zzcbm;

    return-void
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final isConnected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivq:Lcom/google/android/gms/internal/zzcbm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzcbm;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcem;->zzivq:Lcom/google/android/gms/internal/zzcbm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcem;->zzwt()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcem;->zzazq()V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/zzcbm;Lcom/google/android/gms/internal/zzbcc;)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzaws()I

    const/4 v1, 0x0

    const/16 v2, 0x64

    move v3, v1

    move v4, v2

    :goto_0
    const/16 v5, 0x3e9

    if-ge v3, v5, :cond_6

    if-ne v4, v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaud()Lcom/google/android/gms/internal/zzcbq;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzcbq;->zzdv(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz p2, :cond_1

    if-ge v4, v2, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/google/android/gms/internal/zzbcc;

    instance-of v9, v8, Lcom/google/android/gms/internal/zzcbi;

    if-eqz v9, :cond_2

    :try_start_0
    check-cast v8, Lcom/google/android/gms/internal/zzcbi;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcbu;->zzayj()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/zzcbp;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcaq;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Lcom/google/android/gms/internal/zzcbm;->zza(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v9

    const-string v10, "Failed to send event to the service"

    :goto_3
    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of v9, v8, Lcom/google/android/gms/internal/zzcfr;

    if-eqz v9, :cond_3

    :try_start_1
    check-cast v8, Lcom/google/android/gms/internal/zzcfr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcbu;->zzayj()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/zzcbp;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcaq;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Lcom/google/android/gms/internal/zzcbm;->zza(Lcom/google/android/gms/internal/zzcfr;Lcom/google/android/gms/internal/zzcaq;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v9

    const-string v10, "Failed to send attribute to the service"

    goto :goto_3

    :cond_3
    instance-of v9, v8, Lcom/google/android/gms/internal/zzcat;

    if-eqz v9, :cond_4

    :try_start_2
    check-cast v8, Lcom/google/android/gms/internal/zzcat;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcbu;->zzayj()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/zzcbp;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcaq;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Lcom/google/android/gms/internal/zzcbm;->zza(Lcom/google/android/gms/internal/zzcat;Lcom/google/android/gms/internal/zzcaq;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v9

    const-string v10, "Failed to send conditional property to the service"

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v8

    const-string v9, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    new-instance v0, Lcom/google/android/gms/internal/zzceq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzceq;-><init>(Lcom/google/android/gms/internal/zzcem;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcem;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    new-instance v0, Lcom/google/android/gms/internal/zzceo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzceo;-><init>(Lcom/google/android/gms/internal/zzcem;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcem;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcat;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    new-instance v6, Lcom/google/android/gms/internal/zzcev;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcev;-><init>(Lcom/google/android/gms/internal/zzcem;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/zzcem;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcfr;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    new-instance v7, Lcom/google/android/gms/internal/zzcew;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcew;-><init>(Lcom/google/android/gms/internal/zzcem;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/zzcem;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcfr;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    new-instance v0, Lcom/google/android/gms/internal/zzcey;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzcey;-><init>(Lcom/google/android/gms/internal/zzcem;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcem;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic zzatt()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatt()V

    return-void
.end method

.method public final bridge synthetic zzatu()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatu()V

    return-void
.end method

.method public final bridge synthetic zzatv()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatv()V

    return-void
.end method

.method public final bridge synthetic zzatw()Lcom/google/android/gms/internal/zzcal;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatw()Lcom/google/android/gms/internal/zzcal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzatx()Lcom/google/android/gms/internal/zzcas;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatx()Lcom/google/android/gms/internal/zzcas;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaty()Lcom/google/android/gms/internal/zzcdu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaty()Lcom/google/android/gms/internal/zzcdu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzatz()Lcom/google/android/gms/internal/zzcbp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaua()Lcom/google/android/gms/internal/zzcbc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaua()Lcom/google/android/gms/internal/zzcbc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaub()Lcom/google/android/gms/internal/zzcem;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauc()Lcom/google/android/gms/internal/zzcei;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauc()Lcom/google/android/gms/internal/zzcei;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaud()Lcom/google/android/gms/internal/zzcbq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaud()Lcom/google/android/gms/internal/zzcbq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaue()Lcom/google/android/gms/internal/zzcaw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauf()Lcom/google/android/gms/internal/zzcbs;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaug()Lcom/google/android/gms/internal/zzcfu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauh()Lcom/google/android/gms/internal/zzcco;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaui()Lcom/google/android/gms/internal/zzcfj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaui()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauj()Lcom/google/android/gms/internal/zzccp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauk()Lcom/google/android/gms/internal/zzcbu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaul()Lcom/google/android/gms/internal/zzccf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaum()Lcom/google/android/gms/internal/zzcav;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaum()Lcom/google/android/gms/internal/zzcav;

    move-result-object v0

    return-object v0
.end method

.method protected final zzazo()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    new-instance v0, Lcom/google/android/gms/internal/zzces;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzces;-><init>(Lcom/google/android/gms/internal/zzcem;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcem;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzazp()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    new-instance v0, Lcom/google/android/gms/internal/zzcep;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcep;-><init>(Lcom/google/android/gms/internal/zzcem;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcem;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/internal/zzcfr;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaud()Lcom/google/android/gms/internal/zzcbq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcbq;->zza(Lcom/google/android/gms/internal/zzcfr;)Z

    move-result v0

    new-instance v1, Lcom/google/android/gms/internal/zzcex;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/zzcex;-><init>(Lcom/google/android/gms/internal/zzcem;ZLcom/google/android/gms/internal/zzcfr;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzcem;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzc(Lcom/google/android/gms/internal/zzcbi;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaud()Lcom/google/android/gms/internal/zzcbq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcbq;->zza(Lcom/google/android/gms/internal/zzcbi;)Z

    move-result v4

    new-instance v0, Lcom/google/android/gms/internal/zzcet;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcet;-><init>(Lcom/google/android/gms/internal/zzcem;ZZLcom/google/android/gms/internal/zzcbi;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcem;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzf(Lcom/google/android/gms/internal/zzcat;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaud()Lcom/google/android/gms/internal/zzcbq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcbq;->zzc(Lcom/google/android/gms/internal/zzcat;)Z

    move-result v4

    new-instance v5, Lcom/google/android/gms/internal/zzcat;

    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/zzcat;-><init>(Lcom/google/android/gms/internal/zzcat;)V

    new-instance v0, Lcom/google/android/gms/internal/zzceu;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzceu;-><init>(Lcom/google/android/gms/internal/zzcem;ZZLcom/google/android/gms/internal/zzcat;Lcom/google/android/gms/internal/zzcat;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcem;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic zzug()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzug()V

    return-void
.end method

.method protected final zzuh()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzvu()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method

.method final zzxe()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcem;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivr:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccf;->zzayn()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivr:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "State of service unknown"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/zze;->zzaew()Lcom/google/android/gms/common/zze;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zze;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    const/16 v3, 0x12

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "Service updating"

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "Service invalid"

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "Service disabled"

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "Service container out of date"

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "Service missing"

    :goto_0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "Service available"

    :goto_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivr:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcem;->zzivr:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzccf;->zzbm(Z)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Using measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcem;->zzivp:Lcom/google/android/gms/internal/zzcez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcez;->zzazr()V

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Using local app measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-direct {v1, v2, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcem;->zzivp:Lcom/google/android/gms/internal/zzcez;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcez;->zzk(Landroid/content/Intent;)V

    return-void

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void
.end method
