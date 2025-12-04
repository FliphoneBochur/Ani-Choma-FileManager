.class final Lcom/google/android/gms/internal/zzcej;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzivj:Z

.field private synthetic zzivk:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private synthetic zzivl:Lcom/google/android/gms/internal/zzcel;

.field private synthetic zzivm:Lcom/google/android/gms/internal/zzcei;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcei;ZLcom/google/android/gms/measurement/AppMeasurement$zzb;Lcom/google/android/gms/internal/zzcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcej;->zzivm:Lcom/google/android/gms/internal/zzcei;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcej;->zzivj:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcej;->zzivk:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcej;->zzivl:Lcom/google/android/gms/internal/zzcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcej;->zzivj:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcej;->zzivm:Lcom/google/android/gms/internal/zzcei;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcei;->zziva:Lcom/google/android/gms/internal/zzcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcej;->zzivm:Lcom/google/android/gms/internal/zzcei;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcei;->zziva:Lcom/google/android/gms/internal/zzcel;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcei;->zza(Lcom/google/android/gms/internal/zzcei;Lcom/google/android/gms/internal/zzcel;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcej;->zzivk:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziki:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcej;->zzivl:Lcom/google/android/gms/internal/zzcel;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzcel;->zziki:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcej;->zzivk:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikh:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcej;->zzivl:Lcom/google/android/gms/internal/zzcel;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcel;->zzikh:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcfu;->zzau(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcej;->zzivk:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikg:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcej;->zzivl:Lcom/google/android/gms/internal/zzcel;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcel;->zzikg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcfu;->zzau(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcej;->zzivl:Lcom/google/android/gms/internal/zzcel;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzcei;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcej;->zzivk:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikg:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcej;->zzivk:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikg:Ljava/lang/String;

    const-string v2, "_pn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcej;->zzivk:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikh:Ljava/lang/String;

    const-string v2, "_pc"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcej;->zzivk:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-wide v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziki:J

    const-string v3, "_pi"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcej;->zzivm:Lcom/google/android/gms/internal/zzcei;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzaty()Lcom/google/android/gms/internal/zzcdu;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_vs"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcdu;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcej;->zzivm:Lcom/google/android/gms/internal/zzcei;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcej;->zzivl:Lcom/google/android/gms/internal/zzcel;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcei;->zziva:Lcom/google/android/gms/internal/zzcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcej;->zzivm:Lcom/google/android/gms/internal/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcej;->zzivl:Lcom/google/android/gms/internal/zzcel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcem;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void
.end method
