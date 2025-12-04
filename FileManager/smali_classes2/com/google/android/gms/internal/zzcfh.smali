.class final Lcom/google/android/gms/internal/zzcfh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziwm:Lcom/google/android/gms/internal/zzcfg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcfg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfh;->zziwm:Lcom/google/android/gms/internal/zzcfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfh;->zziwm:Lcom/google/android/gms/internal/zzcfg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfg;->zziwj:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfh;->zziwm:Lcom/google/android/gms/internal/zzcfg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfg;->zziwl:Lcom/google/android/gms/internal/zzcff;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcff;->zza(Lcom/google/android/gms/internal/zzcff;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcfi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfh;->zziwm:Lcom/google/android/gms/internal/zzcfg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcfg;->zziwj:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcfi;->callServiceStopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfh;->zziwm:Lcom/google/android/gms/internal/zzcfg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfg;->zzirl:Lcom/google/android/gms/internal/zzcbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfh;->zziwm:Lcom/google/android/gms/internal/zzcfg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcfg;->zziwj:Ljava/lang/Integer;

    const-string v2, "Local AppMeasurementService processed last upload request. StartId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfh;->zziwm:Lcom/google/android/gms/internal/zzcfg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfg;->zzirl:Lcom/google/android/gms/internal/zzcbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "AppMeasurementJobService processed last upload request."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfh;->zziwm:Lcom/google/android/gms/internal/zzcfg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfg;->zziwl:Lcom/google/android/gms/internal/zzcff;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcff;->zza(Lcom/google/android/gms/internal/zzcff;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcfi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfh;->zziwm:Lcom/google/android/gms/internal/zzcfg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcfg;->zziwk:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfi;->zza(Landroid/app/job/JobParameters;Z)V

    :cond_2
    return-void
.end method
