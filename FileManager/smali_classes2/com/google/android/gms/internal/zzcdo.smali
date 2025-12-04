.class final Lcom/google/android/gms/internal/zzcdo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/zzcft;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zziua:Lcom/google/android/gms/internal/zzcaq;

.field private synthetic zziub:Lcom/google/android/gms/internal/zzccz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccz;Lcom/google/android/gms/internal/zzcaq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdo;->zziub:Lcom/google/android/gms/internal/zzccz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcdo;->zziua:Lcom/google/android/gms/internal/zzcaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdo;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzazj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdo;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdo;->zziua:Lcom/google/android/gms/internal/zzcaq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcaw;->zziv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
