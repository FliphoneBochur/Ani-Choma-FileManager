.class final Lcom/google/android/gms/internal/zzcee;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziup:Lcom/google/android/gms/internal/zzcdu;

.field private synthetic zziur:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic zzius:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcdu;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcee;->zziup:Lcom/google/android/gms/internal/zzcdu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcee;->zziur:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzcee;->zzius:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcee;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcee;->zziur:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcee;->zzius:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcem;->zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-void
.end method
