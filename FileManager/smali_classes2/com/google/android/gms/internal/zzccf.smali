.class final Lcom/google/android/gms/internal/zzccf;
.super Lcom/google/android/gms/internal/zzcds;


# static fields
.field static final zziqe:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzdtw:Landroid/content/SharedPreferences;

.field public final zziqf:Lcom/google/android/gms/internal/zzccj;

.field public final zziqg:Lcom/google/android/gms/internal/zzcci;

.field public final zziqh:Lcom/google/android/gms/internal/zzcci;

.field public final zziqi:Lcom/google/android/gms/internal/zzcci;

.field public final zziqj:Lcom/google/android/gms/internal/zzcci;

.field public final zziqk:Lcom/google/android/gms/internal/zzcci;

.field public final zziql:Lcom/google/android/gms/internal/zzcci;

.field public final zziqm:Lcom/google/android/gms/internal/zzcck;

.field private zziqn:Ljava/lang/String;

.field private zziqo:Z

.field private zziqp:J

.field private zziqq:Ljava/lang/String;

.field private zziqr:J

.field private final zziqs:Ljava/lang/Object;

.field public final zziqt:Lcom/google/android/gms/internal/zzcci;

.field public final zziqu:Lcom/google/android/gms/internal/zzcci;

.field public final zziqv:Lcom/google/android/gms/internal/zzcch;

.field public final zziqw:Lcom/google/android/gms/internal/zzcci;

.field public final zziqx:Lcom/google/android/gms/internal/zzcci;

.field public zziqy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/zzccf;->zziqe:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzccu;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcds;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    new-instance p1, Lcom/google/android/gms/internal/zzccj;

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawp()J

    move-result-wide v3

    const-string v2, "health_monitor"

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzccj;-><init>(Lcom/google/android/gms/internal/zzccf;Ljava/lang/String;JLcom/google/android/gms/internal/zzccg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqf:Lcom/google/android/gms/internal/zzccj;

    new-instance p1, Lcom/google/android/gms/internal/zzcci;

    const-string v0, "last_upload"

    const-wide/16 v1, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcci;-><init>(Lcom/google/android/gms/internal/zzccf;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqg:Lcom/google/android/gms/internal/zzcci;

    new-instance p1, Lcom/google/android/gms/internal/zzcci;

    const-string v0, "last_upload_attempt"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcci;-><init>(Lcom/google/android/gms/internal/zzccf;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqh:Lcom/google/android/gms/internal/zzcci;

    new-instance p1, Lcom/google/android/gms/internal/zzcci;

    const-string v0, "backoff"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcci;-><init>(Lcom/google/android/gms/internal/zzccf;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqi:Lcom/google/android/gms/internal/zzcci;

    new-instance p1, Lcom/google/android/gms/internal/zzcci;

    const-string v0, "last_delete_stale"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcci;-><init>(Lcom/google/android/gms/internal/zzccf;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqj:Lcom/google/android/gms/internal/zzcci;

    new-instance p1, Lcom/google/android/gms/internal/zzcci;

    const-string v0, "time_before_start"

    const-wide/16 v3, 0x2710

    invoke-direct {p1, p0, v0, v3, v4}, Lcom/google/android/gms/internal/zzcci;-><init>(Lcom/google/android/gms/internal/zzccf;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqt:Lcom/google/android/gms/internal/zzcci;

    new-instance p1, Lcom/google/android/gms/internal/zzcci;

    const-string v0, "session_timeout"

    const-wide/32 v3, 0x1b7740

    invoke-direct {p1, p0, v0, v3, v4}, Lcom/google/android/gms/internal/zzcci;-><init>(Lcom/google/android/gms/internal/zzccf;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqu:Lcom/google/android/gms/internal/zzcci;

    new-instance p1, Lcom/google/android/gms/internal/zzcch;

    const-string v0, "start_new_session"

    const/4 v3, 0x1

    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/internal/zzcch;-><init>(Lcom/google/android/gms/internal/zzccf;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqv:Lcom/google/android/gms/internal/zzcch;

    new-instance p1, Lcom/google/android/gms/internal/zzcci;

    const-string v0, "last_pause_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcci;-><init>(Lcom/google/android/gms/internal/zzccf;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqw:Lcom/google/android/gms/internal/zzcci;

    new-instance p1, Lcom/google/android/gms/internal/zzcci;

    const-string v0, "time_active"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcci;-><init>(Lcom/google/android/gms/internal/zzccf;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqx:Lcom/google/android/gms/internal/zzcci;

    new-instance p1, Lcom/google/android/gms/internal/zzcci;

    const-string v0, "midnight_offset"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcci;-><init>(Lcom/google/android/gms/internal/zzccf;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqk:Lcom/google/android/gms/internal/zzcci;

    new-instance p1, Lcom/google/android/gms/internal/zzcci;

    const-string v0, "first_open_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcci;-><init>(Lcom/google/android/gms/internal/zzccf;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziql:Lcom/google/android/gms/internal/zzcci;

    new-instance p1, Lcom/google/android/gms/internal/zzcck;

    const-string v0, "app_instance_id"

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/zzcck;-><init>(Lcom/google/android/gms/internal/zzccf;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqm:Lcom/google/android/gms/internal/zzcck;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqs:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzccf;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzccf;->zzdtw:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private final zzayk()Landroid/content/SharedPreferences;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccf;->zzdtw:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzccf;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccf;->zzayk()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final setMeasurementEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Setting measurementEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccf;->zzayk()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzayl()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccf;->zzayk()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gmp_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzaym()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccf;->zziqs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzccf;->zziqr:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccf;->zziqq:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final zzayn()Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccf;->zzayk()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccf;->zzayk()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method final zzayo()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Clearing collection preferences."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccf;->zzayk()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzccf;->zzbn(Z)Z

    move-result v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccf;->zzayk()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzccf;->setMeasurementEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected final zzayp()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccf;->zzayk()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "previous_os_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaua()Lcom/google/android/gms/internal/zzcbc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccf;->zzayk()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method final zzbm(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Setting useService"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccf;->zzayk()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzbn(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccf;->zzayk()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method final zzjh(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzccf;->zziqn:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzccf;->zziqp:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccf;->zziqn:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzccf;->zziqo:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaum()Lcom/google/android/gms/internal/zzcav;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzcbk;->zzint:Lcom/google/android/gms/internal/zzcbl;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/zzcav;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcbl;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzccf;->zziqp:J

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzccf;->zziqn:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqo:Z

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqn:Ljava/lang/String;

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzccf;->zziqn:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzccf;->zziqn:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccf;->zziqn:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzccf;->zziqo:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method final zzji(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzccf;->zzjh(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "MD5"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcfu;->zzed(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v5, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    const-string p1, "%032X"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzjj(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccf;->zzayk()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gmp_app_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzjk(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccf;->zziqs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzccf;->zziqq:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzccf;->zziqr:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final zzuh()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzccf;->zzdtw:Landroid/content/SharedPreferences;

    const-string v1, "has_been_opened"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzccf;->zziqy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccf;->zzdtw:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
