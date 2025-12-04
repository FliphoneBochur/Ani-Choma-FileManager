.class final Lcom/google/android/gms/internal/zzcfk;
.super Lcom/google/android/gms/internal/zzcba;


# instance fields
.field private synthetic zziwq:Lcom/google/android/gms/internal/zzcfj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcfj;Lcom/google/android/gms/internal/zzccu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfk;->zziwq:Lcom/google/android/gms/internal/zzcfj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcba;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfk;->zziwq:Lcom/google/android/gms/internal/zzcfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session started, time"

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzccf;->zziqv:Lcom/google/android/gms/internal/zzcch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcch;->set(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzaty()Lcom/google/android/gms/internal/zzcdu;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "auto"

    const-string v4, "_s"

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/internal/zzcdu;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzccf;->zziqw:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    return-void
.end method
