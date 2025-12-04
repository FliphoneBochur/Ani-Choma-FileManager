.class final Lcom/google/android/gms/internal/zzccm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaok:Landroid/content/Context;

.field private synthetic zziri:Lcom/google/android/gms/internal/zzccu;

.field private synthetic zzirj:J

.field private synthetic zzirk:Landroid/os/Bundle;

.field private synthetic zzirl:Lcom/google/android/gms/internal/zzcbu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccl;Lcom/google/android/gms/internal/zzccu;JLandroid/os/Bundle;Landroid/content/Context;Lcom/google/android/gms/internal/zzcbu;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzccm;->zziri:Lcom/google/android/gms/internal/zzccu;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzccm;->zzirj:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzccm;->zzirk:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzccm;->zzaok:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzccm;->zzirl:Lcom/google/android/gms/internal/zzcbu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccm;->zziri:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccm;->zziri:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccu;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbp;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_fot"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcaw;->zzaj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcft;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iget-wide v5, p0, Lcom/google/android/gms/internal/zzccm;->zzirj:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    cmp-long v0, v5, v3

    if-gez v0, :cond_1

    cmp-long v0, v5, v1

    if-gtz v0, :cond_2

    :cond_1
    const-wide/16 v5, 0x1

    sub-long v5, v3, v5

    :cond_2
    cmp-long v0, v5, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccm;->zzirk:Landroid/os/Bundle;

    const-string v1, "click_timestamp"

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzccm;->zzaok:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurement;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccm;->zzirk:Landroid/os/Bundle;

    const-string v2, "auto"

    const-string v3, "_cmp"

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccm;->zzirl:Lcom/google/android/gms/internal/zzcbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Install campaign recorded"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void
.end method
