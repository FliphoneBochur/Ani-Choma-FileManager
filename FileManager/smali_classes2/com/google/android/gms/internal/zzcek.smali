.class final Lcom/google/android/gms/internal/zzcek;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzivm:Lcom/google/android/gms/internal/zzcei;

.field private synthetic zzivn:Lcom/google/android/gms/internal/zzcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcei;Lcom/google/android/gms/internal/zzcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcek;->zzivm:Lcom/google/android/gms/internal/zzcei;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcek;->zzivn:Lcom/google/android/gms/internal/zzcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzivm:Lcom/google/android/gms/internal/zzcei;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcek;->zzivn:Lcom/google/android/gms/internal/zzcel;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcei;->zza(Lcom/google/android/gms/internal/zzcei;Lcom/google/android/gms/internal/zzcel;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzivm:Lcom/google/android/gms/internal/zzcei;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcei;->zziva:Lcom/google/android/gms/internal/zzcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzivm:Lcom/google/android/gms/internal/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcem;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void
.end method
