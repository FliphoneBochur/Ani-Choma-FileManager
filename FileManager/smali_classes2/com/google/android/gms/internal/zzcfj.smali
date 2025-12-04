.class public final Lcom/google/android/gms/internal/zzcfj;
.super Lcom/google/android/gms/internal/zzcds;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private zziwn:J

.field private final zziwo:Lcom/google/android/gms/internal/zzcba;

.field private final zziwp:Lcom/google/android/gms/internal/zzcba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccu;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcds;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcfk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfj;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzcfk;-><init>(Lcom/google/android/gms/internal/zzcfj;Lcom/google/android/gms/internal/zzccu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfj;->zziwo:Lcom/google/android/gms/internal/zzcba;

    new-instance p1, Lcom/google/android/gms/internal/zzcfl;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfj;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzcfl;-><init>(Lcom/google/android/gms/internal/zzcfj;Lcom/google/android/gms/internal/zzccu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfj;->zziwp:Lcom/google/android/gms/internal/zzcba;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcfj;->zziwn:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcfj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcfj;->zzazt()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcfj;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzcfj;->zzbd(J)V

    return-void
.end method

.method private final zzazs()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfj;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcfj;->mHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzazt()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcfj;->zzbr(Z)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatw()Lcom/google/android/gms/internal/zzcal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcal;->zzaj(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcfj;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzcfj;->zzbe(J)V

    return-void
.end method

.method private final zzbd(J)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcfj;->zzazs()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfj;->zziwo:Lcom/google/android/gms/internal/zzcba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcba;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfj;->zziwp:Lcom/google/android/gms/internal/zzcba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcba;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfj;->zziwn:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzccf;->zziqu:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzccf;->zziqw:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v0

    cmp-long p1, p1, v0

    const-wide/16 v0, 0x0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzccf;->zziqv:Lcom/google/android/gms/internal/zzcch;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcch;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzccf;->zziqx:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzccf;->zziqv:Lcom/google/android/gms/internal/zzcch;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcch;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcfj;->zziwo:Lcom/google/android/gms/internal/zzcba;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzccf;->zziqt:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzccf;->zziqx:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcba;->zzs(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcfj;->zziwp:Lcom/google/android/gms/internal/zzcba;

    const-wide/32 v2, 0x36ee80

    goto :goto_0
.end method

.method private final zzbe(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcfj;->zzazs()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfj;->zziwo:Lcom/google/android/gms/internal/zzcba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcba;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfj;->zziwp:Lcom/google/android/gms/internal/zzcba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcba;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfj;->zziwn:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzccf;->zziqx:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzccf;->zziqx:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzcfj;->zziwn:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
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

.method public final zzbr(Z)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzccf;->zziqw:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcfj;->zziwn:J

    sub-long v2, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzccf;->zziqx:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Recording user engagement, ms"

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauc()Lcom/google/android/gms/internal/zzcei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcei;->zzazm()Lcom/google/android/gms/internal/zzcel;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/zzcei;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaty()Lcom/google/android/gms/internal/zzcdu;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_e"

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/android/gms/internal/zzcdu;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcfj;->zziwn:J

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcfj;->zziwp:Lcom/google/android/gms/internal/zzcba;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcba;->cancel()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcfj;->zziwp:Lcom/google/android/gms/internal/zzcba;

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/zzccf;->zziqx:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcba;->zzs(J)V

    const/4 p1, 0x1

    return p1
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
