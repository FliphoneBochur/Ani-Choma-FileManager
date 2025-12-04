.class final Lcom/google/android/gms/internal/zzcdj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziua:Lcom/google/android/gms/internal/zzcaq;

.field private synthetic zziub:Lcom/google/android/gms/internal/zzccz;

.field private synthetic zziuf:Lcom/google/android/gms/internal/zzcbi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccz;Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdj;->zziub:Lcom/google/android/gms/internal/zzccz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcdj;->zziuf:Lcom/google/android/gms/internal/zzcbi;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcdj;->zziua:Lcom/google/android/gms/internal/zzcaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzazj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdj;->zziuf:Lcom/google/android/gms/internal/zzcbi;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcdj;->zziua:Lcom/google/android/gms/internal/zzcaq;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzccu;->zzb(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V

    return-void
.end method
