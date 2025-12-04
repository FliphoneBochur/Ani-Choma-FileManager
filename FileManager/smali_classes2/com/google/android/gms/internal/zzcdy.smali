.class final Lcom/google/android/gms/internal/zzcdy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziab:Ljava/lang/String;

.field private synthetic zziud:Ljava/lang/String;

.field private synthetic zziue:Ljava/lang/String;

.field private synthetic zziup:Lcom/google/android/gms/internal/zzcdu;

.field private synthetic zziur:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcdu;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdy;->zziup:Lcom/google/android/gms/internal/zzcdu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcdy;->zziur:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcdy;->zziab:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcdy;->zziud:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcdy;->zziue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdy;->zziup:Lcom/google/android/gms/internal/zzcdu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdy;->zziur:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcdy;->zziab:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcdy;->zziud:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcdy;->zziue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcem;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
