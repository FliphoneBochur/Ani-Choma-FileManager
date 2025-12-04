.class public final Lcom/google/android/gms/internal/zzcei;
.super Lcom/google/android/gms/internal/zzcds;


# instance fields
.field protected zziva:Lcom/google/android/gms/internal/zzcel;

.field private volatile zzivb:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private zzivc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private zzivd:J

.field private final zzive:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/internal/zzcel;",
            ">;"
        }
    .end annotation
.end field

.field private final zzivf:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/gms/measurement/AppMeasurement$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzivg:Z

.field private zzivh:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private zzivi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzccu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcds;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcei;->zzive:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcei;->zzivf:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private final zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzcel;Z)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivb:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivb:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcei;->zzivd:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/AppMeasurement$zzb;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivg:Z

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcei;->zzivf:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/AppMeasurement$zza;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4, v1, p2}, Lcom/google/android/gms/measurement/AppMeasurement$zza;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/2addr v0, v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    const-string v6, "onScreenChangeCallback threw exception"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    :goto_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcei;->zzivg:Z

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v3

    const-string v4, "onScreenChangeCallback loop threw exception"

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcei;->zzivb:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcei;->zzivc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcei;->zzivb:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    :goto_4
    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcel;->zzikh:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcei;->zzjt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/gms/internal/zzcel;->zzikh:Ljava/lang/String;

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/zzcel;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzcel;-><init>(Lcom/google/android/gms/internal/zzcel;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcei;->zzivb:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcei;->zzivc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzcei;->zzivd:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcei;->zzivb:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/zzcej;

    invoke-direct {v0, p0, p3, v1, p1}, Lcom/google/android/gms/internal/zzcej;-><init>(Lcom/google/android/gms/internal/zzcei;ZLcom/google/android/gms/measurement/AppMeasurement$zzb;Lcom/google/android/gms/internal/zzcel;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    :goto_5
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcei;->zzivg:Z

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcei;Lcom/google/android/gms/internal/zzcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcei;->zza(Lcom/google/android/gms/internal/zzcel;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcel;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatw()Lcom/google/android/gms/internal/zzcal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcal;->zzaj(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaui()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzcel;->zzivo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfj;->zzbr(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzcel;->zzivo:Z

    :cond_0
    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    const-string v0, "_sc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikg:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikg:Ljava/lang/String;

    const-string v2, "_sn"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziki:J

    const-string p0, "_si"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method private static zzjt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x24

    if-nez v1, :cond_0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzive:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcei;->zzq(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzcel;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivb:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivd:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivb:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcek;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcek;-><init>(Lcom/google/android/gms/internal/zzcei;Lcom/google/android/gms/internal/zzcel;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcei;->zzq(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzcei;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzcel;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatw()Lcom/google/android/gms/internal/zzcal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzcao;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/internal/zzcao;-><init>(Lcom/google/android/gms/internal/zzcal;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzive:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcel;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p1, Lcom/google/android/gms/internal/zzcel;->zziki:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcel;->zzikg:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcel;->zzikh:Ljava/lang/String;

    const-string v1, "referrer_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final registerOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zza;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "Attempting to register null OnScreenChangeCallback"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivf:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivf:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with a non-null activity"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzaq()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called from the main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivg:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "Cannot call setCurrentScreen from onScreenChangeCallback"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivb:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzive:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/zzcei;->zzjt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivb:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikh:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcei;->zzivb:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikg:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzcfu;->zzau(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayf()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzavp()I

    move-result v1

    if-le v0, v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_8
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzavp()I

    move-result v1

    if-le v0, v1, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    if-nez p2, :cond_b

    const-string v1, "null"

    goto :goto_0

    :cond_b
    move-object v1, p2

    :goto_0
    const-string v2, "Setting current screen to name, class"

    invoke-virtual {v0, v2, v1, p3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcel;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfu;->zzazw()J

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/google/android/gms/internal/zzcel;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcei;->zzive:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzcei;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzcel;Z)V

    return-void
.end method

.method public final unregisterOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zza;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivf:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivi:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcei;->zzivi:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcei;->zzivh:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

.method public final zzazm()Lcom/google/android/gms/internal/zzcel;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zziva:Lcom/google/android/gms/internal/zzcel;

    return-object v0
.end method

.method public final zzazn()Lcom/google/android/gms/measurement/AppMeasurement$zzb;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzivb:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/AppMeasurement$zzb;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-object v1
.end method

.method final zzq(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzcel;
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzive:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcel;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcei;->zzjt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcel;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfu;->zzazw()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/zzcel;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcei;->zzive:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0
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
