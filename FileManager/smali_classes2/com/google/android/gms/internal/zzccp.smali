.class public final Lcom/google/android/gms/internal/zzccp;
.super Lcom/google/android/gms/internal/zzcds;


# static fields
.field private static final zzisb:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private zzirr:Ljava/util/concurrent/ExecutorService;

.field private zzirs:Lcom/google/android/gms/internal/zzcct;

.field private zzirt:Lcom/google/android/gms/internal/zzcct;

.field private final zziru:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Ljava/util/concurrent/FutureTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzirv:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/util/concurrent/FutureTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzirw:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzirx:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zziry:Ljava/lang/Object;

.field private final zzirz:Ljava/util/concurrent/Semaphore;

.field private volatile zzisa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/internal/zzccp;->zzisb:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzccu;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcds;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zziry:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zzirz:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zziru:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zzirv:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Lcom/google/android/gms/internal/zzccr;

    const-string v0, "Thread death: Uncaught exception on worker thread"

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzccr;-><init>(Lcom/google/android/gms/internal/zzccp;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zzirw:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance p1, Lcom/google/android/gms/internal/zzccr;

    const-string v0, "Thread death: Uncaught exception on network thread"

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzccr;-><init>(Lcom/google/android/gms/internal/zzccp;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zzirx:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzccp;Lcom/google/android/gms/internal/zzcct;)Lcom/google/android/gms/internal/zzcct;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zzirs:Lcom/google/android/gms/internal/zzcct;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzccp;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzccp;->zzirz:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzccs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzccs<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccp;->zziry:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzccp;->zziru:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zzirs:Lcom/google/android/gms/internal/zzcct;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzcct;

    const-string v1, "Measurement Worker"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzccp;->zziru:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/internal/zzcct;-><init>(Lcom/google/android/gms/internal/zzccp;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zzirs:Lcom/google/android/gms/internal/zzcct;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccp;->zzirw:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcct;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zzirs:Lcom/google/android/gms/internal/zzcct;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcct;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zzirs:Lcom/google/android/gms/internal/zzcct;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcct;->zzmi()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static zzaq()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzayt()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzccp;->zzisb:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzccp;Lcom/google/android/gms/internal/zzcct;)Lcom/google/android/gms/internal/zzcct;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zzirt:Lcom/google/android/gms/internal/zzcct;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzccp;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzccp;->zzisa:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzccp;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzccp;->zziry:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzccp;)Lcom/google/android/gms/internal/zzcct;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzccp;->zzirs:Lcom/google/android/gms/internal/zzcct;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzccp;)Lcom/google/android/gms/internal/zzcct;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzccp;->zzirt:Lcom/google/android/gms/internal/zzcct;

    return-object p0
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

.method public final zzatv()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccp;->zzirt:Lcom/google/android/gms/internal/zzcct;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method public final zzayr()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccp;->zzirs:Lcom/google/android/gms/internal/zzcct;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzays()Ljava/util/concurrent/ExecutorService;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccp;->zziry:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzccp;->zzirr:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzccp;->zzirr:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzccp;->zzirr:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzd(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzccs;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzccs;-><init>(Lcom/google/android/gms/internal/zzccp;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccp;->zzirs:Lcom/google/android/gms/internal/zzcct;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zziru:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v1, "Callable skipped the worker queue."

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccs;->run()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzccp;->zza(Lcom/google/android/gms/internal/zzccs;)V

    :goto_0
    return-object v0
.end method

.method public final zze(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzccs;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzccs;-><init>(Lcom/google/android/gms/internal/zzccp;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccp;->zzirs:Lcom/google/android/gms/internal/zzcct;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccs;->run()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzccp;->zza(Lcom/google/android/gms/internal/zzccs;)V

    :goto_0
    return-object v0
.end method

.method public final zzg(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzccs;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzccs;-><init>(Lcom/google/android/gms/internal/zzccp;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzccp;->zza(Lcom/google/android/gms/internal/zzccs;)V

    return-void
.end method

.method public final zzh(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzccs;

    const/4 v1, 0x0

    const-string v2, "Task exception on network thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzccs;-><init>(Lcom/google/android/gms/internal/zzccp;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzccp;->zziry:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzccp;->zzirv:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccp;->zzirt:Lcom/google/android/gms/internal/zzcct;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcct;

    const-string v1, "Measurement Network"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzccp;->zzirv:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzcct;-><init>(Lcom/google/android/gms/internal/zzccp;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzccp;->zzirt:Lcom/google/android/gms/internal/zzcct;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccp;->zzirx:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcct;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccp;->zzirt:Lcom/google/android/gms/internal/zzcct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcct;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzccp;->zzirt:Lcom/google/android/gms/internal/zzcct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcct;->zzmi()V

    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzug()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccp;->zzirs:Lcom/google/android/gms/internal/zzcct;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
