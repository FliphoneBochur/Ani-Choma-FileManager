.class final Lcom/google/android/gms/internal/zzcfe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziwg:Lcom/google/android/gms/internal/zzcez;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcez;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziwg:Lcom/google/android/gms/internal/zzcez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziwg:Lcom/google/android/gms/internal/zzcez;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcez;->zzivw:Lcom/google/android/gms/internal/zzcem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcem;->zza(Lcom/google/android/gms/internal/zzcem;Lcom/google/android/gms/internal/zzcbm;)Lcom/google/android/gms/internal/zzcbm;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziwg:Lcom/google/android/gms/internal/zzcez;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcez;->zzivw:Lcom/google/android/gms/internal/zzcem;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcem;->zzb(Lcom/google/android/gms/internal/zzcem;)V

    return-void
.end method
