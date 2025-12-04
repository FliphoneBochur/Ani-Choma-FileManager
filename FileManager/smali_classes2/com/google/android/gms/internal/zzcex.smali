.class final Lcom/google/android/gms/internal/zzcex;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziug:Lcom/google/android/gms/internal/zzcfr;

.field private synthetic zzivw:Lcom/google/android/gms/internal/zzcem;

.field private synthetic zziwa:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcem;ZLcom/google/android/gms/internal/zzcfr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcex;->zzivw:Lcom/google/android/gms/internal/zzcem;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcex;->zziwa:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcex;->zziug:Lcom/google/android/gms/internal/zzcfr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcex;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcem;->zzd(Lcom/google/android/gms/internal/zzcem;)Lcom/google/android/gms/internal/zzcbm;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcex;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcex;->zzivw:Lcom/google/android/gms/internal/zzcem;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcex;->zziwa:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcex;->zziug:Lcom/google/android/gms/internal/zzcfr;

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzcem;->zza(Lcom/google/android/gms/internal/zzcbm;Lcom/google/android/gms/internal/zzbcc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcex;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcem;->zze(Lcom/google/android/gms/internal/zzcem;)V

    return-void
.end method
