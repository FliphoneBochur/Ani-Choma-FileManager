.class final Lcom/google/android/gms/internal/zzcey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzius:Z

.field private synthetic zzivw:Lcom/google/android/gms/internal/zzcem;

.field private synthetic zzivx:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcem;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcey;->zzivw:Lcom/google/android/gms/internal/zzcem;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcey;->zzivx:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzcey;->zzius:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcey;->zzivx:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcey;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcem;->zzd(Lcom/google/android/gms/internal/zzcem;)Lcom/google/android/gms/internal/zzcbm;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcey;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Failed to get user properties"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcey;->zzivx:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcey;->zzivx:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcey;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcdr;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcbp;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcaq;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzcey;->zzius:Z

    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/internal/zzcbm;->zza(Lcom/google/android/gms/internal/zzcaq;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcey;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcem;->zze(Lcom/google/android/gms/internal/zzcem;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcey;->zzivx:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcey;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v2

    const-string v3, "Failed to get user properties"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcey;->zzivx:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcey;->zzivx:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
