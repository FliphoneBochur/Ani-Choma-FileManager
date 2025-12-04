.class final Lcom/google/android/gms/internal/zzcbb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzimy:Lcom/google/android/gms/internal/zzcba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcbb;->zzimy:Lcom/google/android/gms/internal/zzcba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbb;->zzimy:Lcom/google/android/gms/internal/zzcba;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcba;->zza(Lcom/google/android/gms/internal/zzcba;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbb;->zzimy:Lcom/google/android/gms/internal/zzcba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcba;->zzdp()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcbb;->zzimy:Lcom/google/android/gms/internal/zzcba;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzcba;->zza(Lcom/google/android/gms/internal/zzcba;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbb;->zzimy:Lcom/google/android/gms/internal/zzcba;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcba;->zzb(Lcom/google/android/gms/internal/zzcba;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbb;->zzimy:Lcom/google/android/gms/internal/zzcba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcba;->run()V

    :cond_1
    return-void
.end method
