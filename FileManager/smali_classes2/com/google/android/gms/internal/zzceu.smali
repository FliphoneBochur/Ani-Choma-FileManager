.class final Lcom/google/android/gms/internal/zzceu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzivw:Lcom/google/android/gms/internal/zzcem;

.field private synthetic zzivz:Z

.field private synthetic zziwa:Z

.field private synthetic zziwb:Lcom/google/android/gms/internal/zzcat;

.field private synthetic zziwc:Lcom/google/android/gms/internal/zzcat;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcem;ZZLcom/google/android/gms/internal/zzcat;Lcom/google/android/gms/internal/zzcat;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzceu;->zzivw:Lcom/google/android/gms/internal/zzcem;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzceu;->zzivz:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzceu;->zziwa:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzceu;->zziwb:Lcom/google/android/gms/internal/zzcat;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzceu;->zziwc:Lcom/google/android/gms/internal/zzcat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzceu;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcem;->zzd(Lcom/google/android/gms/internal/zzcem;)Lcom/google/android/gms/internal/zzcbm;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzceu;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzceu;->zzivz:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzceu;->zzivw:Lcom/google/android/gms/internal/zzcem;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzceu;->zziwa:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzceu;->zziwb:Lcom/google/android/gms/internal/zzcat;

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzcem;->zza(Lcom/google/android/gms/internal/zzcbm;Lcom/google/android/gms/internal/zzbcc;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzceu;->zziwc:Lcom/google/android/gms/internal/zzcat;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzceu;->zziwb:Lcom/google/android/gms/internal/zzcat;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzceu;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcdr;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzceu;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzayj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcbp;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcaq;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzcbm;->zza(Lcom/google/android/gms/internal/zzcat;Lcom/google/android/gms/internal/zzcaq;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzceu;->zziwb:Lcom/google/android/gms/internal/zzcat;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcbm;->zzb(Lcom/google/android/gms/internal/zzcat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzceu;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzceu;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcem;->zze(Lcom/google/android/gms/internal/zzcem;)V

    return-void
.end method
