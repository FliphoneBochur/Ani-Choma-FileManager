.class final Lcom/google/android/gms/internal/zzcbv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzips:Ljava/lang/String;

.field private synthetic zzipt:Lcom/google/android/gms/internal/zzcbu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcbu;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcbv;->zzipt:Lcom/google/android/gms/internal/zzcbu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcbv;->zzips:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbv;->zzipt:Lcom/google/android/gms/internal/zzcbu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcbu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcds;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbv;->zzipt:Lcom/google/android/gms/internal/zzcbu;

    const/4 v1, 0x6

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcbu;->zzk(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/zzccf;->zziqf:Lcom/google/android/gms/internal/zzccj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcbv;->zzips:Ljava/lang/String;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzccj;->zzf(Ljava/lang/String;J)V

    return-void
.end method
