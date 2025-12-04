.class abstract Lcom/google/android/gms/internal/zzcba;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzdqx:Landroid/os/Handler;


# instance fields
.field private volatile zzdqy:J

.field private final zzikb:Lcom/google/android/gms/internal/zzccu;

.field private zzimx:Z

.field private final zzv:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcba;->zzikb:Lcom/google/android/gms/internal/zzccu;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcba;->zzimx:Z

    new-instance p1, Lcom/google/android/gms/internal/zzcbb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcbb;-><init>(Lcom/google/android/gms/internal/zzcba;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcba;->zzv:Ljava/lang/Runnable;

    return-void
.end method

.method private final getHandler()Landroid/os/Handler;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzcba;->zzdqx:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzcba;->zzdqx:Landroid/os/Handler;

    return-object v0

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/zzcba;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzcba;->zzdqx:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcba;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzccu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/internal/zzcba;->zzdqx:Landroid/os/Handler;

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/zzcba;->zzdqx:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcba;J)J
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcba;->zzdqy:J

    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcba;)Lcom/google/android/gms/internal/zzccu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcba;->zzikb:Lcom/google/android/gms/internal/zzccu;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcba;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzcba;->zzimx:Z

    return p0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcba;->zzdqy:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcba;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcba;->zzv:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract run()V
.end method

.method public final zzdp()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcba;->zzdqy:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzs(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcba;->cancel()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcba;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcba;->zzdqy:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcba;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcba;->zzv:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcba;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Failed to schedule delayed post. time"

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
