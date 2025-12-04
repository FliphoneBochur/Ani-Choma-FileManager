.class final Lcom/google/android/gms/internal/zzcdb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziua:Lcom/google/android/gms/internal/zzcaq;

.field private synthetic zziub:Lcom/google/android/gms/internal/zzccz;

.field private synthetic zziuc:Lcom/google/android/gms/internal/zzcat;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccz;Lcom/google/android/gms/internal/zzcat;Lcom/google/android/gms/internal/zzcaq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdb;->zziub:Lcom/google/android/gms/internal/zzccz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcdb;->zziuc:Lcom/google/android/gms/internal/zzcat;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcdb;->zziua:Lcom/google/android/gms/internal/zzcaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdb;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzazj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdb;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdb;->zziuc:Lcom/google/android/gms/internal/zzcat;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcdb;->zziua:Lcom/google/android/gms/internal/zzcaq;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzccu;->zzc(Lcom/google/android/gms/internal/zzcat;Lcom/google/android/gms/internal/zzcaq;)V

    return-void
.end method
