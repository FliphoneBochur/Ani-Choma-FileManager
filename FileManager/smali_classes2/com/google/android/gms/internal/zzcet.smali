.class final Lcom/google/android/gms/internal/zzcet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziab:Ljava/lang/String;

.field private synthetic zziuf:Lcom/google/android/gms/internal/zzcbi;

.field private synthetic zzivw:Lcom/google/android/gms/internal/zzcem;

.field private synthetic zzivz:Z

.field private synthetic zziwa:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcem;ZZLcom/google/android/gms/internal/zzcbi;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcet;->zzivw:Lcom/google/android/gms/internal/zzcem;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcet;->zzivz:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzcet;->zziwa:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcet;->zziuf:Lcom/google/android/gms/internal/zzcbi;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcet;->zziab:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcet;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcem;->zzd(Lcom/google/android/gms/internal/zzcem;)Lcom/google/android/gms/internal/zzcbm;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcet;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcet;->zzivz:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcet;->zzivw:Lcom/google/android/gms/internal/zzcem;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcet;->zziwa:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcet;->zziuf:Lcom/google/android/gms/internal/zzcbi;

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzcem;->zza(Lcom/google/android/gms/internal/zzcbm;Lcom/google/android/gms/internal/zzbcc;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcet;->zziab:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcet;->zziuf:Lcom/google/android/gms/internal/zzcbi;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcet;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcdr;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcet;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzayj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcbp;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcaq;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzcbm;->zza(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcet;->zziuf:Lcom/google/android/gms/internal/zzcbi;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcet;->zziab:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcet;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzayj()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcbm;->zza(Lcom/google/android/gms/internal/zzcbi;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcet;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Failed to send event to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcet;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcem;->zze(Lcom/google/android/gms/internal/zzcem;)V

    return-void
.end method
