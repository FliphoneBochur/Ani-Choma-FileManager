.class final Lcom/google/android/gms/internal/zzcde;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziub:Lcom/google/android/gms/internal/zzccz;

.field private synthetic zziuc:Lcom/google/android/gms/internal/zzcat;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccz;Lcom/google/android/gms/internal/zzcat;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcde;->zziub:Lcom/google/android/gms/internal/zzccz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcde;->zziuc:Lcom/google/android/gms/internal/zzcat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcde;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzazj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcde;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcde;->zziuc:Lcom/google/android/gms/internal/zzcat;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzccu;->zzd(Lcom/google/android/gms/internal/zzcat;)V

    return-void
.end method
