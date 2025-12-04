.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/internal/zzcfi;


# instance fields
.field private zzikm:Lcom/google/android/gms/internal/zzcff;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private final zzats()Lcom/google/android/gms/internal/zzcff;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->zzikm:Lcom/google/android/gms/internal/zzcff;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcff;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcff;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->zzikm:Lcom/google/android/gms/internal/zzcff;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->zzikm:Lcom/google/android/gms/internal/zzcff;

    return-object v0
.end method


# virtual methods
.method public final callServiceStopSelfResult(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/AppMeasurementService;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzats()Lcom/google/android/gms/internal/zzcff;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcff;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzats()Lcom/google/android/gms/internal/zzcff;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcff;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzats()Lcom/google/android/gms/internal/zzcff;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcff;->onDestroy()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzats()Lcom/google/android/gms/internal/zzcff;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcff;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzats()Lcom/google/android/gms/internal/zzcff;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcff;->onStartCommand(Landroid/content/Intent;II)I

    invoke-static {p1}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    const/4 p1, 0x2

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzats()Lcom/google/android/gms/internal/zzcff;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcff;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final zza(Landroid/app/job/JobParameters;Z)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
