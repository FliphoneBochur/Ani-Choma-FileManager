.class final Lcom/google/android/gms/internal/zzcdq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziab:Ljava/lang/String;

.field private synthetic zziub:Lcom/google/android/gms/internal/zzccz;

.field private synthetic zziuh:Ljava/lang/String;

.field private synthetic zziui:Ljava/lang/String;

.field private synthetic zziuj:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdq;->zziub:Lcom/google/android/gms/internal/zzccz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcdq;->zziuh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcdq;->zziab:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcdq;->zziui:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcdq;->zziuj:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdq;->zziuh:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdq;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzauc()Lcom/google/android/gms/internal/zzcei;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdq;->zziab:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcei;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/AppMeasurement$zzb;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdq;->zziui:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikg:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdq;->zziuh:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikh:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcdq;->zziuj:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziki:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdq;->zziub:Lcom/google/android/gms/internal/zzccz;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccz;)Lcom/google/android/gms/internal/zzccu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccu;->zzauc()Lcom/google/android/gms/internal/zzcei;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcdq;->zziab:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcei;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void
.end method
