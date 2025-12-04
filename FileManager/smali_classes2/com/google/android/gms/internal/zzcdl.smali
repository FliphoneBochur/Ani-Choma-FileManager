.class final Lcom/google/android/gms/internal/zzcdl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field private synthetic zziab:Ljava/lang/String;

.field private synthetic zziub:Lcom/google/android/gms/internal/zzccz;

.field private synthetic zziuf:Lcom/google/android/gms/internal/zzcbi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccz;Lcom/google/android/gms/internal/zzcbi;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdl;->zziub:Lcom/google/android/gms/internal/zzccz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcdl;->zziuf:Lcom/google/android/gms/internal/zzcbi;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcdl;->zziab:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdl;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzazj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdl;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdl;->zziuf:Lcom/google/android/gms/internal/zzcbi;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcdl;->zziab:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcbi;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
