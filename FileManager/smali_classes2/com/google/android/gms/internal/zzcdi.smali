.class final Lcom/google/android/gms/internal/zzcdi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/zzcat;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zziab:Ljava/lang/String;

.field private synthetic zziub:Lcom/google/android/gms/internal/zzccz;

.field private synthetic zziud:Ljava/lang/String;

.field private synthetic zziue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdi;->zziub:Lcom/google/android/gms/internal/zzccz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcdi;->zziab:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcdi;->zziud:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcdi;->zziue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdi;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzazj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdi;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdi;->zziab:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcdi;->zziud:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcdi;->zziue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcaw;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
