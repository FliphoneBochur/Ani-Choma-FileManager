.class final Lcom/google/android/gms/internal/zzcfa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziwf:Lcom/google/android/gms/internal/zzcbm;

.field private synthetic zziwg:Lcom/google/android/gms/internal/zzcez;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzcbm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfa;->zziwg:Lcom/google/android/gms/internal/zzcez;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcfa;->zziwf:Lcom/google/android/gms/internal/zzcbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfa;->zziwg:Lcom/google/android/gms/internal/zzcez;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfa;->zziwg:Lcom/google/android/gms/internal/zzcez;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzcez;->zza(Lcom/google/android/gms/internal/zzcez;Z)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfa;->zziwg:Lcom/google/android/gms/internal/zzcez;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcez;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcem;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfa;->zziwg:Lcom/google/android/gms/internal/zzcez;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcez;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Connected to service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfa;->zziwg:Lcom/google/android/gms/internal/zzcez;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcez;->zzivw:Lcom/google/android/gms/internal/zzcem;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcfa;->zziwf:Lcom/google/android/gms/internal/zzcbm;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcem;->zza(Lcom/google/android/gms/internal/zzcbm;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
