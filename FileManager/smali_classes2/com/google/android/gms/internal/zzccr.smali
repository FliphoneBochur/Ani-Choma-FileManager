.class final Lcom/google/android/gms/internal/zzccr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final zzisc:Ljava/lang/String;

.field private synthetic zzisd:Lcom/google/android/gms/internal/zzccp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzccp;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccr;->zzisd:Lcom/google/android/gms/internal/zzccp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzccr;->zzisc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzccr;->zzisd:Lcom/google/android/gms/internal/zzccp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccr;->zzisc:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
