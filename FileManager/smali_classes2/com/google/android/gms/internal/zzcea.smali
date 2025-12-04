.class final Lcom/google/android/gms/internal/zzcea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziup:Lcom/google/android/gms/internal/zzcdu;

.field private synthetic zziut:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcdu;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcea;->zziup:Lcom/google/android/gms/internal/zzcdu;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcea;->zziut:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcea;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzccf;->zziqt:Lcom/google/android/gms/internal/zzcci;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcea;->zziut:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcea;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcea;->zziut:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Minimum session duration set"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
