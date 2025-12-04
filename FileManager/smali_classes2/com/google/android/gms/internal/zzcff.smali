.class public final Lcom/google/android/gms/internal/zzcff;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/google/android/gms/internal/zzcfi;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zziwi:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcff;->zziwi:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcff;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcff;->zziwi:Landroid/content/Context;

    return-object p0
.end method

.method private final zza(Ljava/lang/Integer;Landroid/app/job/JobParameters;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcff;->zziwi:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zzdm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/zzcfg;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcfg;-><init>(Lcom/google/android/gms/internal/zzcff;Lcom/google/android/gms/internal/zzccu;Ljava/lang/Integer;Lcom/google/android/gms/internal/zzcbu;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzauk()Lcom/google/android/gms/internal/zzcbu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcff;->zziwi:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zzdm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    return-object v0
.end method

.method public static zzk(Landroid/content/Context;Z)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    const-string p1, "com.google.android.gms.measurement.AppMeasurementJobService"

    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzcfu;->zzw(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p1, "com.google.android.gms.measurement.AppMeasurementService"

    goto :goto_0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcff;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v1, "onBind called with null intent"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/zzccz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcff;->zziwi:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zzdm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzccz;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcff;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "onBind received unknown action"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcff;->zziwi:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zzdm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcff;->zziwi:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zzdm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcff;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "onRebind called with null intent"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcff;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "onRebind called. action"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcff;->zziwi:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzccu;->zzdm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzccu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p2

    const/4 v0, 0x2

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "AppMeasurementService started with null intent"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Local AppMeasurementService called. startId, action"

    invoke-virtual {p2, v2, v1, p1}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzcff;->zza(Ljava/lang/Integer;Landroid/app/job/JobParameters;)V

    :cond_1
    return v0
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcff;->zziwi:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zzdm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v2, "Local AppMeasurementJobService called. action"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzcff;->zza(Ljava/lang/Integer;Landroid/app/job/JobParameters;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcff;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v1, "onUnbind called with null intent"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcff;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "onUnbind called for intent. action"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method
