.class final Lcom/google/android/gms/internal/zzceh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private synthetic zziup:Lcom/google/android/gms/internal/zzcdu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzcdu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzcdu;Lcom/google/android/gms/internal/zzcdv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzceh;-><init>(Lcom/google/android/gms/internal/zzcdu;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    const-string v2, "auto"

    if-nez p2, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzcfu;->zzq(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcfu;->zzl(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gs"

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    const-string v5, "_cmp"

    invoke-virtual {v4, v0, v5, v3}, Lcom/google/android/gms/internal/zzcdu;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "referrer"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "utm_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_source"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_term"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Activity created with data \'referrer\' param without gclid and at least one utm field"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v3, "Activity created with referrer"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    const-string v3, "_ldl"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcdu;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauc()Lcom/google/android/gms/internal/zzcei;

    move-result-object v0

    if-eqz p2, :cond_7

    const-string v1, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcei;->zzq(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzcel;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/gms/internal/zzcel;->zziki:J

    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/zzcel;->zzikg:Ljava/lang/String;

    const-string v0, "referrer_name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/zzcel;->zzikh:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauc()Lcom/google/android/gms/internal/zzcei;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcei;->onActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauc()Lcom/google/android/gms/internal/zzcei;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcei;->onActivityPaused(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcdr;->zzaui()Lcom/google/android/gms/internal/zzcfj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzcfn;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/internal/zzcfn;-><init>(Lcom/google/android/gms/internal/zzcfj;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauc()Lcom/google/android/gms/internal/zzcei;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcei;->onActivityResumed(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcdr;->zzaui()Lcom/google/android/gms/internal/zzcfj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzcfm;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/internal/zzcfm;-><init>(Lcom/google/android/gms/internal/zzcfj;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzceh;->zziup:Lcom/google/android/gms/internal/zzcdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzauc()Lcom/google/android/gms/internal/zzcei;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzcei;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
