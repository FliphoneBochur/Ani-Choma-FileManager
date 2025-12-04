.class final Lcom/google/android/gms/internal/zzcfq;
.super Lcom/google/android/gms/internal/zzcba;


# instance fields
.field private synthetic zziwt:Lcom/google/android/gms/internal/zzcfp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcfp;Lcom/google/android/gms/internal/zzccu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfq;->zziwt:Lcom/google/android/gms/internal/zzcfp;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcba;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfq;->zziwt:Lcom/google/android/gms/internal/zzcfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Sending upload intent from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfq;->zziwt:Lcom/google/android/gms/internal/zzcfp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcfp;->zza(Lcom/google/android/gms/internal/zzcfp;)V

    return-void
.end method
