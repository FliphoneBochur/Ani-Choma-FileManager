.class final Lcom/google/android/gms/internal/zzcer;
.super Lcom/google/android/gms/internal/zzcba;


# instance fields
.field private synthetic zzivw:Lcom/google/android/gms/internal/zzcem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcem;Lcom/google/android/gms/internal/zzccu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcer;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcba;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcer;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void
.end method
