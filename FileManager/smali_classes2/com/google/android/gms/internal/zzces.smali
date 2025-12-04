.class final Lcom/google/android/gms/internal/zzces;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzivw:Lcom/google/android/gms/internal/zzcem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcem;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzces;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzces;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcem;->zzd(Lcom/google/android/gms/internal/zzcem;)Lcom/google/android/gms/internal/zzcbm;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzces;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Failed to send measurementEnabled to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzces;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzces;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzayj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcbp;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcaq;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcbm;->zzb(Lcom/google/android/gms/internal/zzcaq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzces;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcem;->zze(Lcom/google/android/gms/internal/zzcem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzces;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Failed to send measurementEnabled to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
