.class public Lcom/google/android/gms/internal/zzccu;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzccu$zza;
    }
.end annotation


# static fields
.field private static volatile zzisi:Lcom/google/android/gms/internal/zzccu;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzasl:Lcom/google/android/gms/common/util/zzd;

.field private final zzdoj:Z

.field private final zzisj:Lcom/google/android/gms/internal/zzcav;

.field private final zzisk:Lcom/google/android/gms/internal/zzccf;

.field private final zzisl:Lcom/google/android/gms/internal/zzcbu;

.field private final zzism:Lcom/google/android/gms/internal/zzccp;

.field private final zzisn:Lcom/google/android/gms/internal/zzcfj;

.field private final zziso:Lcom/google/android/gms/internal/zzcco;

.field private final zzisp:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final zzisq:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final zzisr:Lcom/google/android/gms/internal/zzcfu;

.field private final zziss:Lcom/google/android/gms/internal/zzcbs;

.field private final zzist:Lcom/google/android/gms/internal/zzcaw;

.field private final zzisu:Lcom/google/android/gms/internal/zzcbq;

.field private final zzisv:Lcom/google/android/gms/internal/zzcby;

.field private final zzisw:Lcom/google/android/gms/internal/zzcei;

.field private final zzisx:Lcom/google/android/gms/internal/zzcem;

.field private final zzisy:Lcom/google/android/gms/internal/zzcbc;

.field private final zzisz:Lcom/google/android/gms/internal/zzcdu;

.field private final zzita:Lcom/google/android/gms/internal/zzcbp;

.field private final zzitb:Lcom/google/android/gms/internal/zzccd;

.field private final zzitc:Lcom/google/android/gms/internal/zzcfp;

.field private final zzitd:Lcom/google/android/gms/internal/zzcas;

.field private final zzite:Lcom/google/android/gms/internal/zzcal;

.field private zzitf:Z

.field private zzitg:Ljava/lang/Boolean;

.field private zzith:J

.field private zziti:Ljava/nio/channels/FileLock;

.field private zzitj:Ljava/nio/channels/FileChannel;

.field private zzitk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzitl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzitm:I

.field private zzitn:I

.field private zzito:J

.field private zzitp:J

.field private zzitq:Z

.field private zzitr:Z

.field private zzits:Z

.field private final zzitt:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzcdt;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcdt;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzccu;->zzito:J

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzalc()Lcom/google/android/gms/common/util/zzd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitt:J

    new-instance p1, Lcom/google/android/gms/internal/zzcav;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcav;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    new-instance p1, Lcom/google/android/gms/internal/zzccf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzccf;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzisk:Lcom/google/android/gms/internal/zzccf;

    new-instance p1, Lcom/google/android/gms/internal/zzcbu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcbu;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzisl:Lcom/google/android/gms/internal/zzcbu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayg()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzauu()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "App measurement is starting up, version"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayg()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcfu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcfu;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzisr:Lcom/google/android/gms/internal/zzcfu;

    new-instance p1, Lcom/google/android/gms/internal/zzcbs;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcbs;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zziss:Lcom/google/android/gms/internal/zzcbs;

    new-instance p1, Lcom/google/android/gms/internal/zzcbc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcbc;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzisy:Lcom/google/android/gms/internal/zzcbc;

    new-instance p1, Lcom/google/android/gms/internal/zzcbp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcbp;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzita:Lcom/google/android/gms/internal/zzcbp;

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbp;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcfu;->zzke(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayg()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayg()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcaw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcaw;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzist:Lcom/google/android/gms/internal/zzcaw;

    new-instance p1, Lcom/google/android/gms/internal/zzcbq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcbq;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzisu:Lcom/google/android/gms/internal/zzcbq;

    new-instance p1, Lcom/google/android/gms/internal/zzcas;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcas;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzitd:Lcom/google/android/gms/internal/zzcas;

    new-instance p1, Lcom/google/android/gms/internal/zzcal;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcal;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzite:Lcom/google/android/gms/internal/zzcal;

    new-instance p1, Lcom/google/android/gms/internal/zzcby;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcby;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzisv:Lcom/google/android/gms/internal/zzcby;

    new-instance p1, Lcom/google/android/gms/internal/zzcei;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcei;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzisw:Lcom/google/android/gms/internal/zzcei;

    new-instance p1, Lcom/google/android/gms/internal/zzcem;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcem;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzisx:Lcom/google/android/gms/internal/zzcem;

    new-instance p1, Lcom/google/android/gms/internal/zzcdu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcdu;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzisz:Lcom/google/android/gms/internal/zzcdu;

    new-instance p1, Lcom/google/android/gms/internal/zzcfp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcfp;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzitc:Lcom/google/android/gms/internal/zzcfp;

    new-instance p1, Lcom/google/android/gms/internal/zzccd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzccd;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzitb:Lcom/google/android/gms/internal/zzccd;

    new-instance p1, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzisp:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance p1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {p1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzisq:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance p1, Lcom/google/android/gms/internal/zzcfj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcfj;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzisn:Lcom/google/android/gms/internal/zzcfj;

    new-instance p1, Lcom/google/android/gms/internal/zzcco;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcco;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zziso:Lcom/google/android/gms/internal/zzcco;

    new-instance p1, Lcom/google/android/gms/internal/zzccp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzccp;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcds;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzism:Lcom/google/android/gms/internal/zzccp;

    iget p1, p0, Lcom/google/android/gms/internal/zzccu;->zzitm:I

    iget v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitn:I

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzccu;->zzitn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzccu;->zzdoj:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaty()Lcom/google/android/gms/internal/zzcdu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcdu;->zziuk:Lcom/google/android/gms/internal/zzceh;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzceh;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/zzceh;-><init>(Lcom/google/android/gms/internal/zzcdu;Lcom/google/android/gms/internal/zzcdv;)V

    iput-object v1, p1, Lcom/google/android/gms/internal/zzcdu;->zziuk:Lcom/google/android/gms/internal/zzceh;

    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/internal/zzcdu;->zziuk:Lcom/google/android/gms/internal/zzceh;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcdu;->zziuk:Lcom/google/android/gms/internal/zzceh;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "Registered activity lifecycle callback"

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "Application context is not an Application"

    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzism:Lcom/google/android/gms/internal/zzccp;

    new-instance v0, Lcom/google/android/gms/internal/zzccv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzccv;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v1, "Bad chanel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcbd;Lcom/google/android/gms/internal/zzcaq;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcbd;->mAppId:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcbd;->mAppId:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbp;->zzbh(Z)V

    new-instance v3, Lcom/google/android/gms/internal/zzcgi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzcgi;-><init>()V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zziyz:Ljava/lang/Integer;

    const-string v5, "android"

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzizh:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcaq;->zzilo:Ljava/lang/String;

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzilo:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcaq;->zzhtl:Ljava/lang/String;

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzhtl:Ljava/lang/String;

    iget-wide v5, v2, Lcom/google/android/gms/internal/zzcaq;->zzilu:J

    const-wide/32 v7, -0x80000000

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    iget-wide v7, v2, Lcom/google/android/gms/internal/zzcaq;->zzilu:J

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzizu:Ljava/lang/Integer;

    iget-wide v7, v2, Lcom/google/android/gms/internal/zzcaq;->zzilp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzizl:Ljava/lang/Long;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zziln:Ljava/lang/String;

    iget-wide v7, v2, Lcom/google/android/gms/internal/zzcaq;->zzilq:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-nez v5, :cond_1

    move-object v5, v6

    goto :goto_1

    :cond_1
    iget-wide v7, v2, Lcom/google/android/gms/internal/zzcaq;->zzilq:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_1
    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzizq:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/zzccf;->zzjh(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iput-object v7, v3, Lcom/google/android/gms/internal/zzcgi;->zzizn:Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzizo:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaua()Lcom/google/android/gms/internal/zzcbc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzizi:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaua()Lcom/google/android/gms/internal/zzcbc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzcy:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaua()Lcom/google/android/gms/internal/zzcbc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbc;->zzaxv()J

    move-result-wide v7

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzizk:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaua()Lcom/google/android/gms/internal/zzcbc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbc;->zzaxw()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzizj:Ljava/lang/String;

    iput-object v6, v3, Lcom/google/android/gms/internal/zzcgi;->zzizm:Ljava/lang/Long;

    iput-object v6, v3, Lcom/google/android/gms/internal/zzcgi;->zzizc:Ljava/lang/Long;

    iput-object v6, v3, Lcom/google/android/gms/internal/zzcgi;->zzizd:Ljava/lang/Long;

    iput-object v6, v3, Lcom/google/android/gms/internal/zzcgi;->zzize:Ljava/lang/Long;

    iget-wide v7, v2, Lcom/google/android/gms/internal/zzcaq;->zzilw:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzizy:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzaxg()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    iput-object v6, v3, Lcom/google/android/gms/internal/zzcgi;->zzizz:Ljava/lang/String;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzcaw;->zziw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcap;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v5, Lcom/google/android/gms/internal/zzcap;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-direct {v5, v1, v6}, Lcom/google/android/gms/internal/zzcap;-><init>(Lcom/google/android/gms/internal/zzccu;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcbp;->zzaxz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzcap;->zzim(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcaq;->zzilv:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzcap;->zzip(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzcap;->zzin(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzccf;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzcap;->zzio(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/zzcap;->zzaq(J)V

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/zzcap;->zzal(J)V

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/zzcap;->zzam(J)V

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcaq;->zzhtl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzcap;->setAppVersion(Ljava/lang/String;)V

    iget-wide v6, v2, Lcom/google/android/gms/internal/zzcaq;->zzilu:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/zzcap;->zzan(J)V

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcaq;->zzilo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzcap;->zziq(Ljava/lang/String;)V

    iget-wide v6, v2, Lcom/google/android/gms/internal/zzcaq;->zzilp:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/zzcap;->zzao(J)V

    iget-wide v6, v2, Lcom/google/android/gms/internal/zzcaq;->zzilq:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/zzcap;->zzap(J)V

    iget-boolean v6, v2, Lcom/google/android/gms/internal/zzcaq;->zzils:Z

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzcap;->setMeasurementEnabled(Z)V

    iget-wide v6, v2, Lcom/google/android/gms/internal/zzcaq;->zzilw:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/zzcap;->zzaz(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcap;)V

    :cond_4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcap;->getAppInstanceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/google/android/gms/internal/zzcgi;->zzizp:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcap;->zzaup()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzilv:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/zzcaw;->zziv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/zzcgk;

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzizb:[Lcom/google/android/gms/internal/zzcgk;

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    new-instance v7, Lcom/google/android/gms/internal/zzcgk;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzcgk;-><init>()V

    iget-object v8, v3, Lcom/google/android/gms/internal/zzcgi;->zzizb:[Lcom/google/android/gms/internal/zzcgk;

    aput-object v7, v8, v6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcft;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcft;->mName:Ljava/lang/String;

    iput-object v8, v7, Lcom/google/android/gms/internal/zzcgk;->name:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcft;

    iget-wide v11, v8, Lcom/google/android/gms/internal/zzcft;->zziwy:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/internal/zzcgk;->zzjad:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/zzcft;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    invoke-virtual {v8, v7, v11}, Lcom/google/android/gms/internal/zzcfu;->zza(Lcom/google/android/gms/internal/zzcgk;Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcgi;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/internal/zzcbd;->zzinc:Lcom/google/android/gms/internal/zzcbf;

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/google/android/gms/internal/zzcbd;->zzinc:Lcom/google/android/gms/internal/zzcbf;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcbf;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v11, "_r"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/internal/zzcbd;->mAppId:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/internal/zzcbd;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8, v11}, Lcom/google/android/gms/internal/zzcco;->zzar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaze()J

    move-result-wide v12

    iget-object v14, v0, Lcom/google/android/gms/internal/zzcbd;->mAppId:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v19}, Lcom/google/android/gms/internal/zzcaw;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcax;

    move-result-object v8

    if-eqz v7, :cond_8

    iget-wide v7, v8, Lcom/google/android/gms/internal/zzcax;->zzimv:J

    iget-object v11, v1, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    iget-object v12, v0, Lcom/google/android/gms/internal/zzcbd;->mAppId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/zzcav;->zzis(Ljava/lang/String;)I

    move-result v11

    int-to-long v11, v11

    cmp-long v7, v7, v11

    if-gez v7, :cond_8

    goto :goto_3

    :cond_8
    move v4, v5

    :goto_3
    invoke-virtual {v6, v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcbd;JZ)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-wide v9, v1, Lcom/google/android/gms/internal/zzccu;->zzitp:J

    :cond_9
    return-void

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    iget-object v2, v3, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Data loss. Failed to insert raw event metadata. appId"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcdr;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcds;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "Bad chanel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcgk;[Lcom/google/android/gms/internal/zzcgf;)[Lcom/google/android/gms/internal/zzcge;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzatx()Lcom/google/android/gms/internal/zzcas;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/zzcas;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcgf;[Lcom/google/android/gms/internal/zzcgk;)[Lcom/google/android/gms/internal/zzcge;

    move-result-object p1

    return-object p1
.end method

.method static zzatt()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzaza()Lcom/google/android/gms/internal/zzccd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitb:Lcom/google/android/gms/internal/zzccd;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzazb()Lcom/google/android/gms/internal/zzcfp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitc:Lcom/google/android/gms/internal/zzcfp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitc:Lcom/google/android/gms/internal/zzcfp;

    return-object v0
.end method

.method private final zzazc()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawh()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitj:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zziti:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaze()J
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    iget-object v3, v2, Lcom/google/android/gms/internal/zzccf;->zziqk:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfu;->zzazx()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    iget-object v2, v2, Lcom/google/android/gms/internal/zzccf;->zziqk:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzazg()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->zzaxm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->zzaxh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzazh()V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzazk()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lcom/google/android/gms/internal/zzccu;->zzitp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    iget-wide v7, v0, Lcom/google/android/gms/internal/zzccu;->zzitp:J

    sub-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaza()Lcom/google/android/gms/internal/zzccd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccd;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzazb()Lcom/google/android/gms/internal/zzcfp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->cancel()V

    return-void

    :cond_1
    iput-wide v3, v0, Lcom/google/android/gms/internal/zzccu;->zzitp:J

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzayu()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzazg()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzaxc()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcaw;->zzaxn()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcaw;->zzaxi()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_7

    iget-object v10, v0, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcav;->zzaxf()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawy()J

    move-result-wide v10

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawx()J

    move-result-wide v10

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzaww()J

    move-result-wide v10

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v12

    iget-object v12, v12, Lcom/google/android/gms/internal/zzccf;->zziqg:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v14

    iget-object v14, v14, Lcom/google/android/gms/internal/zzccf;->zziqh:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcaw;->zzaxk()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcaw;->zzaxl()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    cmp-long v10, v8, v3

    if-nez v10, :cond_9

    :cond_8
    move-wide v5, v3

    goto :goto_4

    :cond_9
    sub-long/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v10, v1, v10

    sub-long/2addr v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long/2addr v1, v12

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    add-long/2addr v5, v8

    if-eqz v7, :cond_a

    cmp-long v7, v10, v3

    if-lez v7, :cond_a

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    add-long v5, v5, v17

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v7

    move-wide/from16 v12, v17

    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/google/android/gms/internal/zzcfu;->zzf(JJ)Z

    move-result v7

    if-nez v7, :cond_b

    add-long v5, v10, v12

    :cond_b
    cmp-long v7, v1, v3

    if-eqz v7, :cond_d

    cmp-long v7, v1, v8

    if-ltz v7, :cond_d

    const/4 v8, 0x0

    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzaxe()I

    move-result v7

    if-ge v8, v7, :cond_8

    const/4 v7, 0x1

    shl-int v9, v7, v8

    int-to-long v9, v9

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzaxd()J

    move-result-wide v11

    mul-long/2addr v11, v9

    add-long/2addr v5, v11

    cmp-long v9, v5, v1

    if-lez v9, :cond_c

    goto :goto_4

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    cmp-long v1, v5, v3

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaza()Lcom/google/android/gms/internal/zzccd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccd;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzazb()Lcom/google/android/gms/internal/zzcfp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->cancel()V

    return-void

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzayz()Lcom/google/android/gms/internal/zzcby;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcby;->zzyu()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaza()Lcom/google/android/gms/internal/zzccd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccd;->zzyr()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzazb()Lcom/google/android/gms/internal/zzcfp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->cancel()V

    return-void

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzccf;->zziqi:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v1

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawv()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v7, v8}, Lcom/google/android/gms/internal/zzcfu;->zzf(JJ)Z

    move-result v9

    if-nez v9, :cond_10

    add-long/2addr v1, v7

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaza()Lcom/google/android/gms/internal/zzccd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccd;->unregister()V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-gtz v1, :cond_11

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawz()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzccf;->zziqg:Lcom/google/android/gms/internal/zzcci;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzazb()Lcom/google/android/gms/internal/zzcfp;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/zzcfp;->zzs(J)V

    return-void

    :cond_12
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaza()Lcom/google/android/gms/internal/zzccd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccd;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzazb()Lcom/google/android/gms/internal/zzcfp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->cancel()V

    return-void
.end method

.method private final zzazk()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzazl()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitq:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitr:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzccu;->zzits:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitl:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzccu;->zzitq:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzccu;->zzitr:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzccu;->zzits:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzcap;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcap;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcap;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzccu;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcap;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcap;->getAppInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/zzcbk;->zzinw:Lcom/google/android/gms/internal/zzcbl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbl;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzcbk;->zzinx:Lcom/google/android/gms/internal/zzcbl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcbl;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "config/app/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "app_instance_id"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platform"

    const-string v3, "android"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gmp_version"

    const-string v3, "11220"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcap;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcap;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcco;->zzjn(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgc;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcap;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzcco;->zzjo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v2, "If-Modified-Since"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzccu;->zzitq:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzayz()Lcom/google/android/gms/internal/zzcby;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcap;->getAppId()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/internal/zzccy;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/zzccy;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/zzccc;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzccc;-><init>(Lcom/google/android/gms/internal/zzcby;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/zzcca;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzccp;->zzh(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcap;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V
    .locals 27

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v12, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    iget-object v15, v12, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/zzcfu;->zzd(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v12, Lcom/google/android/gms/internal/zzcaq;->zzils:Z

    if-nez v0, :cond_1

    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/zzccu;->zzf(Lcom/google/android/gms/internal/zzcaq;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    invoke-virtual {v0, v15, v2}, Lcom/google/android/gms/internal/zzcco;->zzaq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v9, "_err"

    const/4 v10, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropping blacklisted event. appId"

    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/zzcfu;->zzkg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/zzcfu;->zzkh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v10, v2

    :cond_3
    if-nez v10, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    const/16 v3, 0xb

    iget-object v5, v1, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "_ev"

    move-object v1, v0

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/zzcaw;->zziw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcap;->zzauz()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcap;->zzauy()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, v11, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawn()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Fetching config for blacklisted app"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-direct {v11, v0}, Lcom/google/android/gms/internal/zzccu;->zzb(Lcom/google/android/gms/internal/zzcap;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzcbu;->zzad(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzcbs;->zzb(Lcom/google/android/gms/internal/zzcbi;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Logging event"

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->beginTransaction()V

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/zzcbi;->zzinj:Lcom/google/android/gms/internal/zzcbf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbf;->zzaxy()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/zzccu;->zzf(Lcom/google/android/gms/internal/zzcaq;)V

    const-string v0, "_iap"

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "ecommerce_purchase"

    if-nez v0, :cond_9

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    move-object/from16 v22, v6

    move v10, v8

    goto/16 :goto_7

    :cond_9
    :goto_0
    const-string v0, "currency"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "value"

    if-eqz v3, :cond_c

    :try_start_2
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v18

    const-wide/16 v20, 0x0

    cmpl-double v3, v16, v20

    if-nez v3, :cond_a

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-double v3, v3

    mul-double v16, v3, v18

    :cond_a
    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v3, v16, v3

    if-gtz v3, :cond_b

    const-wide/high16 v3, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v3, v16, v3

    if-ltz v3, :cond_b

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    goto :goto_1

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Data lost. Currency value is too big. appId"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    return-void

    :cond_c
    :try_start_3
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "[A-Z]{3}"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "_ltv_"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0, v15, v5}, Lcom/google/android/gms/internal/zzcaw;->zzaj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcft;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v7, v0, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Long;

    if-nez v7, :cond_e

    goto :goto_3

    :cond_e
    iget-object v0, v0, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    new-instance v0, Lcom/google/android/gms/internal/zzcft;

    iget-object v7, v1, Lcom/google/android/gms/internal/zzcbi;->zzilz:Ljava/lang/String;

    iget-object v2, v11, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v18

    add-long v16, v16, v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object v2, v0

    move-object v3, v15

    move-object v4, v7

    move-object/from16 v22, v6

    move-wide/from16 v6, v18

    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzcft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    const/4 v10, 0x2

    goto :goto_6

    :cond_f
    :goto_3
    move-object/from16 v22, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v6

    iget-object v0, v11, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    sget-object v7, Lcom/google/android/gms/internal/zzcbk;->zziow:Lcom/google/android/gms/internal/zzcbl;

    invoke-virtual {v0, v15, v7}, Lcom/google/android/gms/internal/zzcav;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcbl;)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v15}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcds;->zzwh()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcaw;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v15, v2, v10

    const/16 v16, 0x1

    aput-object v15, v2, v16

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v10, 0x2

    :try_start_5
    aput-object v0, v2, v10

    invoke-virtual {v7, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v10, 0x2

    :goto_4
    :try_start_6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v2

    const-string v6, "Error pruning currencies. appId"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v6, v7, v0}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    new-instance v0, Lcom/google/android/gms/internal/zzcft;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzcbi;->zzilz:Ljava/lang/String;

    iget-object v2, v11, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object v2, v0

    move-object v3, v15

    move-object v4, v6

    move-wide v6, v7

    move-object/from16 v8, v17

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzcft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcft;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v2

    const-string v3, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcft;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v2

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v15

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_10
    :goto_7
    iget-object v0, v1, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcfu;->zzju(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaze()J

    move-result-wide v3

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v18, 0x0

    move-object v5, v15

    move v7, v0

    move/from16 v9, v17

    move-wide/from16 v19, v13

    const/4 v13, 0x0

    move v14, v10

    move/from16 v10, v18

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/internal/zzcaw;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcax;

    move-result-object v2

    iget-wide v3, v2, Lcom/google/android/gms/internal/zzcax;->zzims:J

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzavv()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const-wide/16 v8, 0x3e8

    const-wide/16 v23, 0x1

    if-lez v7, :cond_12

    rem-long/2addr v3, v8

    cmp-long v0, v3, v23

    if-nez v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Data loss. Too many events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v2, Lcom/google/android/gms/internal/zzcax;->zzims:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    return-void

    :cond_12
    if-eqz v0, :cond_14

    :try_start_7
    iget-wide v3, v2, Lcom/google/android/gms/internal/zzcax;->zzimr:J

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzavw()J

    move-result-wide v25

    sub-long v3, v3, v25

    cmp-long v0, v3, v5

    if-lez v0, :cond_14

    rem-long/2addr v3, v8

    cmp-long v0, v3, v23

    if-nez v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "Data loss. Too many public events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v2, Lcom/google/android/gms/internal/zzcax;->zzimr:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    const/16 v3, 0x10

    const-string v4, "_ev"

    iget-object v5, v1, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    return-void

    :cond_14
    if-eqz v17, :cond_16

    :try_start_8
    iget-wide v3, v2, Lcom/google/android/gms/internal/zzcax;->zzimu:J

    iget-object v0, v11, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    iget-object v7, v12, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/zzcbk;->zziod:Lcom/google/android/gms/internal/zzcbl;

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/zzcav;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcbl;)I

    move-result v0

    const v7, 0xf4240

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v7, v0

    sub-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_16

    cmp-long v0, v3, v23

    if-nez v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Too many error events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v2, Lcom/google/android/gms/internal/zzcax;->zzimu:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    return-void

    :cond_16
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    const-string v2, "_o"

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcbi;->zzilz:Ljava/lang/String;

    move-object/from16 v10, v22

    invoke-virtual {v0, v10, v2, v3}, Lcom/google/android/gms/internal/zzcfu;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/zzcfu;->zzke(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    const-string v2, "_dbg"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v10, v2, v3}, Lcom/google/android/gms/internal/zzcfu;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    const-string v2, "_r"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v10, v2, v3}, Lcom/google/android/gms/internal/zzcfu;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/zzcaw;->zzix(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v5

    if-lez v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v4, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v5, v2}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/zzcbd;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcbi;->zzilz:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzcbi;->zzink:J

    const-wide/16 v8, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v4, v15

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzcbd;-><init>(Lcom/google/android/gms/internal/zzccu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcbd;->mName:Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/internal/zzcaw;->zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcbe;

    move-result-object v1

    if-nez v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/zzcaw;->zzja(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzavu()I

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcbd;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzavu()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    return-void

    :cond_19
    :try_start_a
    new-instance v10, Lcom/google/android/gms/internal/zzcbe;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcbd;->mName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzcbd;->zzfcw:J

    move-object v1, v10

    move-object v2, v15

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzcbe;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    goto :goto_8

    :cond_1a
    iget-wide v2, v1, Lcom/google/android/gms/internal/zzcbe;->zzinf:J

    invoke-virtual {v0, v11, v2, v3}, Lcom/google/android/gms/internal/zzcbd;->zza(Lcom/google/android/gms/internal/zzccu;J)Lcom/google/android/gms/internal/zzcbd;

    move-result-object v0

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzcbd;->zzfcw:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcbe;->zzbb(J)Lcom/google/android/gms/internal/zzcbe;

    move-result-object v10

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcbe;)V

    invoke-direct {v11, v0, v12}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcbd;Lcom/google/android/gms/internal/zzcaq;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/zzcbu;->zzad(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Event recorded"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzcbs;->zza(Lcom/google/android/gms/internal/zzcbd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzazh()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long v1, v1, v19

    const-wide/32 v3, 0x7a120

    add-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Background event processing time, ms"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    throw v0
.end method

.method public static zzdm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzccu;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzccu;->zzisi:Lcom/google/android/gms/internal/zzccu;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/zzccu;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzccu;->zzisi:Lcom/google/android/gms/internal/zzccu;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzcdt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcdt;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/zzccu;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzccu;-><init>(Lcom/google/android/gms/internal/zzcdt;)V

    sput-object p0, Lcom/google/android/gms/internal/zzccu;->zzisi:Lcom/google/android/gms/internal/zzccu;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/zzccu;->zzisi:Lcom/google/android/gms/internal/zzccu;

    return-object p0
.end method

.method private final zzf(Lcom/google/android/gms/internal/zzcaq;)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcaw;->zziw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzccf;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcap;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/zzcap;-><init>(Lcom/google/android/gms/internal/zzccu;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbp;->zzaxz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcap;->zzim(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcap;->zzio(Ljava/lang/String;)V

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcap;->zzauo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcap;->zzio(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbp;->zzaxz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcap;->zzim(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcap;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcap;->zzin(Ljava/lang/String;)V

    move v1, v2

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilv:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilv:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcap;->zzaup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcaq;->zzilv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcap;->zzip(Ljava/lang/String;)V

    move v1, v2

    :cond_3
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilp:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilp:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcap;->zzauu()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilp:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcap;->zzao(J)V

    move v1, v2

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzhtl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzhtl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcap;->zzul()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcaq;->zzhtl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcap;->setAppVersion(Ljava/lang/String;)V

    move v1, v2

    :cond_5
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilu:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcap;->zzaus()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilu:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcap;->zzan(J)V

    move v1, v2

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilo:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilo:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcap;->zzaut()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcaq;->zzilo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcap;->zziq(Ljava/lang/String;)V

    move v1, v2

    :cond_7
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilq:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcap;->zzauv()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilq:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcap;->zzap(J)V

    move v1, v2

    :cond_8
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzils:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcap;->zzauw()Z

    move-result v4

    if-eq v3, v4, :cond_9

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzcaq;->zzils:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcap;->setMeasurementEnabled(Z)V

    move v1, v2

    :cond_9
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilr:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcap;->zzavh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcaq;->zzilr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcap;->zzir(Ljava/lang/String;)V

    move v1, v2

    :cond_a
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilw:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcap;->zzavj()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcaq;->zzilw:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcap;->zzaz(J)V

    goto :goto_2

    :cond_b
    move v2, v1

    :goto_2
    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcap;)V

    :cond_c
    return-void
.end method

.method private final zzg(Ljava/lang/String;J)Z
    .locals 31

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcaw;->beginTransaction()V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/zzccu$zza;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/zzccu$zza;-><init>(Lcom/google/android/gms/internal/zzccu;Lcom/google/android/gms/internal/zzccv;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v4

    iget-wide v5, v1, Lcom/google/android/gms/internal/zzccu;->zzito:J

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcds;->zzwh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcaw;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v13, ""

    if-eqz v12, :cond_4

    cmp-long v12, v5, v7

    if-eqz v12, :cond_0

    :try_start_2
    new-array v14, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v11

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v10
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v12, v3

    move-object/from16 v21, v12

    goto/16 :goto_9

    :cond_0
    :try_start_3
    new-array v14, v10, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v11
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v12, :cond_1

    :try_start_4
    const-string v13, "rowid <= ? and "
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_1
    :try_start_5
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit16 v12, v12, 0x94

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v12, :cond_3

    if-eqz v3, :cond_2

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_a

    :cond_3
    :try_start_8
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    const/16 v21, 0x0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v5, v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, v0

    goto :goto_1

    :cond_4
    cmp-long v3, v5, v7

    if-eqz v3, :cond_5

    :try_start_a
    new-array v12, v9, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v14, v12, v11

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v10
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/16 v21, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    goto/16 :goto_24

    :catch_3
    move-exception v0

    move-object v5, v0

    const/4 v3, 0x0

    :goto_1
    const/4 v12, 0x0

    :goto_2
    const/16 v21, 0x0

    goto/16 :goto_9

    :cond_5
    const/16 v21, 0x0

    :try_start_b
    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v12

    :goto_3
    if-eqz v3, :cond_6

    const-string v13, " and rowid <= ?"

    :cond_6
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x54

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by rowid limit 1;"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-nez v12, :cond_7

    if-eqz v3, :cond_d

    :goto_4
    :try_start_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto/16 :goto_a

    :cond_7
    :try_start_e
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v23, v13

    move-object/from16 v22, v21

    :goto_5
    :try_start_f
    const-string v13, "raw_events_metadata"

    const-string v12, "metadata"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v14

    const-string v16, "app_id = ? and metadata_fingerprint = ?"

    new-array v12, v9, [Ljava/lang/String;

    aput-object v22, v12, v11

    aput-object v23, v12, v10

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    const-string v20, "2"

    move-object/from16 v24, v12

    move-object v12, v15

    move-object/from16 v25, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v24

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    const-string v6, "Raw event metadata record is missing. appId"

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_8
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v11, v13}, Lcom/google/android/gms/internal/zzegq;->zzh([BII)Lcom/google/android/gms/internal/zzegq;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/internal/zzcgi;

    invoke-direct {v13}, Lcom/google/android/gms/internal/zzcgi;-><init>()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/zzegz;->zza(Lcom/google/android/gms/internal/zzegq;)Lcom/google/android/gms/internal/zzegz;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v12

    const-string v14, "Get multiple raw event metadata records, expected one. appId"

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-interface {v2, v13}, Lcom/google/android/gms/internal/zzcay;->zzb(Lcom/google/android/gms/internal/zzcgi;)V

    cmp-long v12, v5, v7

    const/4 v15, 0x3

    if-eqz v12, :cond_a

    const-string v12, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    new-array v13, v15, [Ljava/lang/String;

    aput-object v22, v13, v11

    aput-object v23, v13, v10

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v9

    move-object v5, v12

    move-object/from16 v16, v13

    goto :goto_6

    :cond_a
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    new-array v6, v9, [Ljava/lang/String;

    aput-object v22, v6, v11

    aput-object v23, v6, v10

    move-object/from16 v16, v6

    :goto_6
    const-string v13, "raw_events"

    const-string v6, "rowid"

    const-string v12, "name"

    const-string v14, "timestamp"

    const-string v15, "data"

    filled-new-array {v6, v12, v14, v15}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    const/16 v20, 0x0

    move-object/from16 v12, v25

    const/4 v6, 0x3

    move-object v15, v5

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    const-string v6, "Raw event data disappeared while in transaction. appId"

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v3, :cond_d

    goto/16 :goto_4

    :cond_b
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    array-length v14, v5

    invoke-static {v5, v11, v14}, Lcom/google/android/gms/internal/zzegq;->zzh([BII)Lcom/google/android/gms/internal/zzegq;

    move-result-object v5

    new-instance v14, Lcom/google/android/gms/internal/zzcgf;

    invoke-direct {v14}, Lcom/google/android/gms/internal/zzcgf;-><init>()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/zzegz;->zza(Lcom/google/android/gms/internal/zzegq;)Lcom/google/android/gms/internal/zzegz;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v14, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v14, Lcom/google/android/gms/internal/zzcgf;->zziyt:Ljava/lang/Long;

    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/zzcay;->zza(JLcom/google/android/gms/internal/zzcgf;)Z

    move-result v5

    if-nez v5, :cond_c

    if-eqz v3, :cond_d

    goto/16 :goto_4

    :catch_4
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v12

    const-string v13, "Data loss. Failed to merge raw event. appId"

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v5}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz v3, :cond_d

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v6

    const-string v12, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v12, v13, v5}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v3, :cond_d

    goto/16 :goto_4

    :catch_6
    move-exception v0

    move-object v5, v0

    move-object/from16 v12, v22

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v5, v0

    move-object/from16 v12, v21

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v21

    goto/16 :goto_24

    :catch_8
    move-exception v0

    move-object v5, v0

    move-object/from16 v3, v21

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v21, v3

    :goto_7
    move-object v2, v0

    goto/16 :goto_24

    :catch_9
    move-exception v0

    move-object/from16 v21, v3

    move-object v5, v0

    :goto_8
    move-object v12, v3

    :goto_9
    :try_start_14
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v4

    const-string v6, "Data loss. Error selecting raw event. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v6, v12, v5}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-eqz v3, :cond_d

    goto/16 :goto_4

    :cond_d
    :goto_a
    :try_start_15
    iget-object v3, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    if-eqz v3, :cond_f

    iget-object v3, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_b

    :cond_e
    move v3, v11

    goto :goto_c

    :cond_f
    :goto_b
    move v3, v10

    :goto_c
    if-nez v3, :cond_38

    iget-object v3, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/zzcgf;

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcgi;->zziza:[Lcom/google/android/gms/internal/zzcgf;

    move v4, v11

    move v5, v4

    move v6, v5

    :goto_d
    iget-object v12, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    iget-object v14, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/zzcgf;

    iget-object v14, v14, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/internal/zzcco;->zzaq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    const-string v13, "_err"

    if-eqz v12, :cond_12

    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v12

    const-string v14, "Dropping blacklisted raw event. appId"

    iget-object v15, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v15, v15, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v9

    iget-object v7, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzcgf;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v14, v15, v7}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzcfu;->zzkg(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzcfu;->zzkh(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_e

    :cond_10
    move v7, v11

    goto :goto_f

    :cond_11
    :goto_e
    move v7, v10

    :goto_f
    if-nez v7, :cond_28

    iget-object v7, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzcgf;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v22

    iget-object v7, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    const/16 v24, 0xb

    const-string v25, "_ev"

    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcgf;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    const/16 v27, 0x0

    move-object/from16 v23, v7

    move-object/from16 v26, v8

    invoke-virtual/range {v22 .. v27}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_18

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcgf;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/zzcco;->zzar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcgf;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzcfu;->zzki(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    :cond_13
    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcgf;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    if-nez v8, :cond_14

    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcgf;

    new-array v9, v11, [Lcom/google/android/gms/internal/zzcgg;

    iput-object v9, v8, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    :cond_14
    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcgf;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    array-length v9, v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move v12, v11

    move v14, v12

    move v15, v14

    :goto_10
    const-string v11, "_r"

    const-string v10, "_c"

    const-wide/16 v22, 0x1

    if-ge v12, v9, :cond_17

    move/from16 v20, v9

    :try_start_17
    aget-object v9, v8, v12

    move-object/from16 v24, v8

    iget-object v8, v9, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v9, Lcom/google/android/gms/internal/zzcgg;->zziyw:Ljava/lang/Long;

    const/4 v14, 0x1

    goto :goto_11

    :cond_15
    iget-object v8, v9, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v9, Lcom/google/android/gms/internal/zzcgg;->zziyw:Ljava/lang/Long;

    const/4 v15, 0x1

    :cond_16
    :goto_11
    add-int/lit8 v12, v12, 0x1

    move/from16 v9, v20

    move-object/from16 v8, v24

    const/4 v10, 0x1

    goto :goto_10

    :cond_17
    if-nez v14, :cond_18

    if-eqz v7, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v8

    const-string v9, "Marking event as conversion"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v12

    iget-object v14, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/zzcgf;

    iget-object v14, v14, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcgf;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcgf;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    array-length v9, v9

    const/4 v12, 0x1

    add-int/2addr v9, v12

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/zzcgg;

    new-instance v9, Lcom/google/android/gms/internal/zzcgg;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzcgg;-><init>()V

    iput-object v10, v9, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v9, Lcom/google/android/gms/internal/zzcgg;->zziyw:Ljava/lang/Long;

    array-length v12, v8

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    aput-object v9, v8, v12

    iget-object v9, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcgf;

    iput-object v8, v9, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    :cond_18
    if-nez v15, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v8

    const-string v9, "Marking event as real-time"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v12

    iget-object v14, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/zzcgf;

    iget-object v14, v14, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcgf;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcgf;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    array-length v9, v9

    const/4 v12, 0x1

    add-int/2addr v9, v12

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/zzcgg;

    new-instance v9, Lcom/google/android/gms/internal/zzcgg;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzcgg;-><init>()V

    iput-object v11, v9, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v9, Lcom/google/android/gms/internal/zzcgg;->zziyw:Ljava/lang/Long;

    array-length v12, v8

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    aput-object v9, v8, v12

    iget-object v9, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcgf;

    iput-object v8, v9, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaze()J

    move-result-wide v23

    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v25, v8

    invoke-virtual/range {v22 .. v30}, Lcom/google/android/gms/internal/zzcaw;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcax;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/android/gms/internal/zzcax;->zzimv:J

    iget-object v12, v1, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    iget-object v14, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v14, v14, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/zzcav;->zzis(Ljava/lang/String;)I

    move-result v12

    int-to-long v14, v12

    cmp-long v8, v8, v14

    if-lez v8, :cond_1d

    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcgf;

    const/4 v9, 0x0

    :goto_12
    iget-object v12, v8, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    array-length v12, v12

    if-ge v9, v12, :cond_1e

    iget-object v12, v8, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    aget-object v12, v12, v9

    iget-object v12, v12, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    iget-object v11, v8, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    array-length v11, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    new-array v12, v11, [Lcom/google/android/gms/internal/zzcgg;

    if-lez v9, :cond_1a

    iget-object v14, v8, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    const/4 v15, 0x0

    invoke-static {v14, v15, v12, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    if-ge v9, v11, :cond_1b

    iget-object v14, v8, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    add-int/lit8 v15, v9, 0x1

    sub-int/2addr v11, v9

    invoke-static {v14, v15, v12, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    iput-object v12, v8, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    goto :goto_13

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_1d
    const/4 v6, 0x1

    :cond_1e
    :goto_13
    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcgf;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzcfu;->zzju(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    if-eqz v7, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaze()J

    move-result-wide v23

    iget-object v7, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v25, v7

    invoke-virtual/range {v22 .. v30}, Lcom/google/android/gms/internal/zzcaw;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcax;

    move-result-object v7

    iget-wide v7, v7, Lcom/google/android/gms/internal/zzcax;->zzimt:J

    iget-object v9, v1, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    iget-object v11, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/internal/zzcbk;->zziof:Lcom/google/android/gms/internal/zzcbl;

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/internal/zzcav;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcbl;)I

    move-result v9

    int-to-long v11, v9

    cmp-long v7, v7, v11

    if-lez v7, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v7

    const-string v8, "Too many conversions. Not logging as conversion. appId"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzcgf;

    iget-object v8, v7, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    array-length v9, v8

    move-object/from16 v14, v21

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_14
    if-ge v11, v9, :cond_21

    aget-object v15, v8, v11

    move/from16 p2, v6

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    move-object v14, v15

    goto :goto_15

    :cond_1f
    iget-object v6, v15, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v12, 0x1

    :cond_20
    :goto_15
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, p2

    goto :goto_14

    :cond_21
    move/from16 p2, v6

    if-eqz v12, :cond_24

    if-eqz v14, :cond_24

    iget-object v6, v7, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    array-length v6, v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    new-array v6, v6, [Lcom/google/android/gms/internal/zzcgg;

    iget-object v8, v7, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_16
    if-ge v10, v9, :cond_23

    aget-object v12, v8, v10

    if-eq v12, v14, :cond_22

    add-int/lit8 v13, v11, 0x1

    aput-object v12, v6, v11

    move v11, v13

    :cond_22
    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    :cond_23
    iput-object v6, v7, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    goto :goto_17

    :cond_24
    if-eqz v14, :cond_25

    iput-object v13, v14, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v14, Lcom/google/android/gms/internal/zzcgg;->zziyw:Ljava/lang/Long;

    goto :goto_17

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v6

    const-string v7, "Did not find conversion parameter. appId"

    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17

    :cond_26
    move/from16 p2, v6

    :goto_17
    move/from16 v6, p2

    :cond_27
    iget-object v7, v3, Lcom/google/android/gms/internal/zzcgi;->zziza:[Lcom/google/android/gms/internal/zzcgf;

    add-int/lit8 v8, v5, 0x1

    iget-object v9, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcgf;

    aput-object v9, v7, v5

    move v5, v8

    :cond_28
    :goto_18
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_d

    :cond_29
    iget-object v4, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzaom:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_2a

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcgi;->zziza:[Lcom/google/android/gms/internal/zzcgf;

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/zzcgf;

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcgi;->zziza:[Lcom/google/android/gms/internal/zzcgf;

    :cond_2a
    iget-object v4, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcgi;->zzizb:[Lcom/google/android/gms/internal/zzcgk;

    iget-object v7, v3, Lcom/google/android/gms/internal/zzcgi;->zziza:[Lcom/google/android/gms/internal/zzcgf;

    invoke-direct {v1, v4, v5, v7}, Lcom/google/android/gms/internal/zzccu;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcgk;[Lcom/google/android/gms/internal/zzcgf;)[Lcom/google/android/gms/internal/zzcge;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcgi;->zzizt:[Lcom/google/android/gms/internal/zzcge;

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcgi;->zzizd:Ljava/lang/Long;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcgi;->zzize:Ljava/lang/Long;

    const/4 v4, 0x0

    :goto_19
    iget-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zziza:[Lcom/google/android/gms/internal/zzcgf;

    array-length v5, v5

    if-ge v4, v5, :cond_2d

    iget-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zziza:[Lcom/google/android/gms/internal/zzcgf;

    aget-object v5, v5, v4

    iget-object v7, v5, Lcom/google/android/gms/internal/zzcgf;->zziyt:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, v3, Lcom/google/android/gms/internal/zzcgi;->zzizd:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_2b

    iget-object v7, v5, Lcom/google/android/gms/internal/zzcgf;->zziyt:Ljava/lang/Long;

    iput-object v7, v3, Lcom/google/android/gms/internal/zzcgi;->zzizd:Ljava/lang/Long;

    :cond_2b
    iget-object v7, v5, Lcom/google/android/gms/internal/zzcgf;->zziyt:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, v3, Lcom/google/android/gms/internal/zzcgi;->zzize:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_2c

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcgf;->zziyt:Ljava/lang/Long;

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzize:Ljava/lang/Long;

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_2d
    iget-object v4, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzcaw;->zziw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcap;

    move-result-object v5

    if-nez v5, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    const-string v7, "Bundling raw events w/o app info. appId"

    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1d

    :cond_2e
    iget-object v7, v3, Lcom/google/android/gms/internal/zzcgi;->zziza:[Lcom/google/android/gms/internal/zzcgf;

    array-length v7, v7

    if-lez v7, :cond_32

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcap;->zzaur()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2f

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_1a

    :cond_2f
    move-object/from16 v14, v21

    :goto_1a
    iput-object v14, v3, Lcom/google/android/gms/internal/zzcgi;->zzizg:Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcap;->zzauq()J

    move-result-wide v11

    cmp-long v13, v11, v9

    if-nez v13, :cond_30

    goto :goto_1b

    :cond_30
    move-wide v7, v11

    :goto_1b
    cmp-long v9, v7, v9

    if-eqz v9, :cond_31

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_1c

    :cond_31
    move-object/from16 v7, v21

    :goto_1c
    iput-object v7, v3, Lcom/google/android/gms/internal/zzcgi;->zzizf:Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcap;->zzava()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcap;->zzaux()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v3, Lcom/google/android/gms/internal/zzcgi;->zzizr:Ljava/lang/Integer;

    iget-object v7, v3, Lcom/google/android/gms/internal/zzcgi;->zzizd:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/zzcap;->zzal(J)V

    iget-object v7, v3, Lcom/google/android/gms/internal/zzcgi;->zzize:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/zzcap;->zzam(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcap;->zzavi()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/google/android/gms/internal/zzcgi;->zzilr:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcap;)V

    :cond_32
    :goto_1d
    iget-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zziza:[Lcom/google/android/gms/internal/zzcgf;

    array-length v5, v5

    if-lez v5, :cond_36

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/zzcco;->zzjn(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgc;

    move-result-object v5

    if-eqz v5, :cond_34

    iget-object v7, v5, Lcom/google/android/gms/internal/zzcgc;->zziyh:Ljava/lang/Long;

    if-nez v7, :cond_33

    goto :goto_1f

    :cond_33
    iget-object v5, v5, Lcom/google/android/gms/internal/zzcgc;->zziyh:Ljava/lang/Long;

    :goto_1e
    iput-object v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzizx:Ljava/lang/Long;

    goto :goto_20

    :cond_34
    :goto_1f
    iget-object v5, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcgi;->zziln:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_35

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_1e

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    const-string v7, "Did not find measurement config or missing version info. appId"

    iget-object v8, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitv:Lcom/google/android/gms/internal/zzcgi;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcgi;Z)Z

    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/internal/zzccu$zza;->zzitw:Ljava/util/List;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/zzcaw;->zzae(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcaw;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    const-string v6, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    const/4 v8, 0x1

    :try_start_19
    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto :goto_22

    :catch_a
    move-exception v0

    goto :goto_21

    :catch_b
    move-exception v0

    const/4 v8, 0x1

    :goto_21
    move-object v5, v0

    :try_start_1a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v2

    const-string v6, "Failed to remove unused event metadata. appId"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v6, v4, v5}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V

    iget-object v2, v3, Lcom/google/android/gms/internal/zzcgi;->zziza:[Lcom/google/android/gms/internal/zzcgf;

    array-length v2, v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    if-lez v2, :cond_37

    move v10, v8

    goto :goto_23

    :cond_37
    const/4 v10, 0x0

    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    return v10

    :cond_38
    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    const/4 v1, 0x0

    return v1

    :catchall_3
    move-exception v0

    goto/16 :goto_7

    :goto_24
    if-eqz v3, :cond_39

    :try_start_1c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_39
    throw v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    throw v2
.end method

.method private final zzjr(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcaq;
    .locals 21

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcaw;->zziw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcap;

    move-result-object v16

    const/4 v0, 0x0

    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcap;->zzul()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbdv;->zzcs(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbdu;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/zzbdu;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcap;->zzul()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcap;->zzul()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v3, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcaq;

    move-object v1, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcap;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcap;->zzul()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcap;->zzaus()J

    move-result-wide v5

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcap;->zzaut()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcap;->zzauu()J

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcap;->zzauv()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcap;->zzauw()Z

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcap;->zzaup()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcap;->zzavj()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v20}, Lcom/google/android/gms/internal/zzcaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJI)V

    return-object v0

    :cond_2
    :goto_0
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v3, "No app data available; dropping"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcav;->zzawk()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcav;->zzit(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzaie()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzccf;->zzbn(Z)Z

    move-result v0

    return v0
.end method

.method protected final start()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->zzaxj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzccf;->zziqg:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzccf;->zziqg:Lcom/google/android/gms/internal/zzcci;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzccf;->zziql:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzccu;->zzitt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Persisting first open"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzccf;->zziql:Lcom/google/android/gms/internal/zzcci;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzccu;->zzitt:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzayu()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfu;->zzdu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfu;->zzdu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdv;->zzcs(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbdu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbdu;->zzalq()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzccl;->zzj(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v2, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcff;->zzk(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbp;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccf;->zzayl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbp;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzccf;->zzjj(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbp;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayg()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccf;->zzayo()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisx:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcem;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisx:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcem;->zzxe()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbp;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzccf;->zzjj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzccf;->zziql:Lcom/google/android/gms/internal/zzcci;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzccu;->zzitt:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzccf;->zziqm:Lcom/google/android/gms/internal/zzcck;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcck;->zzjl(Ljava/lang/String;)V

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaty()Lcom/google/android/gms/internal/zzcdu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzccf;->zziqm:Lcom/google/android/gms/internal/zzcck;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcck;->zzayq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcdu;->zzjk(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbp;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaty()Lcom/google/android/gms/internal/zzcdu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccu;->zzayu()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcem;->zzazp()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccf;->zzayp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzaua()Lcom/google/android/gms/internal/zzcbc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_po"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v3, "_ou"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzcdu;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcem;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazh()V

    return-void
.end method

.method protected final zza(ILjava/lang/Throwable;[B)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, v0, [B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzccu;->zzitk:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzccu;->zzitk:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_5

    :cond_1
    if-nez p2, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzccf;->zziqg:Lcom/google/android/gms/internal/zzcci;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzccf;->zziqh:Lcom/google/android/gms/internal/zzcci;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p2

    const-string v2, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p1, p3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcaw;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcaw;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    new-array v6, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "queue"

    const-string v2, "rowid=?"

    invoke-virtual {p2, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-ne p2, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string p2, "Deleted fewer rows from queue than expected"

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception p1

    :try_start_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p2

    const-string p3, "Failed to delete a bundle in a queue table"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzayz()Lcom/google/android/gms/internal/zzcby;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcby;->zzyu()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazg()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzazf()V

    goto :goto_1

    :cond_4
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzccu;->zzito:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazh()V

    :goto_1
    iput-wide v4, p0, Lcom/google/android/gms/internal/zzccu;->zzitp:J

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    throw p1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzccu;->zzitp:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzccu;->zzitp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzccf;->zziqh:Lcom/google/android/gms/internal/zzcci;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_7

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    move v3, v0

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzccf;->zziqi:Lcom/google/android/gms/internal/zzcci;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazh()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitr:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazl()V

    return-void

    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitr:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazl()V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcbi;Ljava/lang/String;)[B
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v12, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-static {}, Lcom/google/android/gms/internal/zzccu;->zzatt()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    new-instance v13, Lcom/google/android/gms/internal/zzcgh;

    invoke-direct {v13}, Lcom/google/android/gms/internal/zzcgh;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcaw;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/zzcaw;->zziw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcap;

    move-result-object v14

    const/4 v15, 0x0

    if-nez v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Log and bundle not available. package_name"

    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-array v0, v15, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->zzauw()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v10, Lcom/google/android/gms/internal/zzcgi;

    invoke-direct {v10}, Lcom/google/android/gms/internal/zzcgi;-><init>()V

    const/4 v8, 0x1

    new-array v1, v8, [Lcom/google/android/gms/internal/zzcgi;

    aput-object v10, v1, v15

    iput-object v1, v13, Lcom/google/android/gms/internal/zzcgh;->zziyx:[Lcom/google/android/gms/internal/zzcgi;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zziyz:Ljava/lang/Integer;

    const-string v1, "android"

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzizh:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->zzaut()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzilo:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->zzul()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzhtl:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->zzaus()J

    move-result-wide v1

    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    const/4 v9, 0x0

    if-nez v3, :cond_2

    move-object v1, v9

    goto :goto_1

    :cond_2
    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzizu:Ljava/lang/Integer;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->zzauu()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzizl:Ljava/lang/Long;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zziln:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->zzauv()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzizq:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzaxg()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v11, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    iget-object v2, v10, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcav;->zziu(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    iput-object v9, v10, Lcom/google/android/gms/internal/zzcgi;->zzizz:Ljava/lang/String;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v1

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzccf;->zzjh(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v10, Lcom/google/android/gms/internal/zzcgi;->zzizn:Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzizo:Ljava/lang/Boolean;

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaua()Lcom/google/android/gms/internal/zzcbc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzizi:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaua()Lcom/google/android/gms/internal/zzcbc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzcy:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaua()Lcom/google/android/gms/internal/zzcbc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbc;->zzaxv()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzizk:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaua()Lcom/google/android/gms/internal/zzcbc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbc;->zzaxw()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzizj:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->getAppInstanceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzizp:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->zzaup()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/gms/internal/zzcgi;->zzilv:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcaw;->zziv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzcgk;

    iput-object v2, v10, Lcom/google/android/gms/internal/zzcgi;->zzizb:[Lcom/google/android/gms/internal/zzcgk;

    move v2, v15

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    new-instance v3, Lcom/google/android/gms/internal/zzcgk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzcgk;-><init>()V

    iget-object v4, v10, Lcom/google/android/gms/internal/zzcgi;->zzizb:[Lcom/google/android/gms/internal/zzcgk;

    aput-object v3, v4, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzcft;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcft;->mName:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcgk;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzcft;

    iget-wide v4, v4, Lcom/google/android/gms/internal/zzcft;->zziwy:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcgk;->zzjad:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzcft;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/zzcfu;->zza(Lcom/google/android/gms/internal/zzcgk;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/zzcbi;->zzinj:Lcom/google/android/gms/internal/zzcbf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbf;->zzaxy()Landroid/os/Bundle;

    move-result-object v6

    const-string v1, "_iap"

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "_r"

    const-wide/16 v3, 0x1

    if-eqz v1, :cond_6

    :try_start_2
    const-string v1, "_c"

    invoke-virtual {v6, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v5, "Marking in-app purchase as real-time"

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    const-string v1, "_o"

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcbi;->zzilz:Ljava/lang/String;

    invoke-virtual {v6, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v1

    iget-object v5, v10, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/zzcfu;->zzke(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v1

    const-string v5, "_dbg"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v5, v7}, Lcom/google/android/gms/internal/zzcfu;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v6, v2, v3}, Lcom/google/android/gms/internal/zzcfu;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    invoke-virtual {v1, v12, v2}, Lcom/google/android/gms/internal/zzcaw;->zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcbe;

    move-result-object v1

    const-wide/16 v16, 0x0

    if-nez v1, :cond_8

    new-instance v7, Lcom/google/android/gms/internal/zzcbe;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    const-wide/16 v4, 0x1

    const-wide/16 v18, 0x0

    iget-wide v1, v0, Lcom/google/android/gms/internal/zzcbi;->zzink:J

    move-wide/from16 v20, v1

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v22, v6

    move-object v15, v7

    move-wide/from16 v6, v18

    move v12, v8

    move-object/from16 v18, v9

    move-wide/from16 v8, v20

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzcbe;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcbe;)V

    move-wide/from16 v8, v16

    goto :goto_3

    :cond_8
    move-object/from16 v22, v6

    move v12, v8

    move-object/from16 v18, v9

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzcbe;->zzinf:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzcbi;->zzink:J

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/zzcbe;->zzbb(J)Lcom/google/android/gms/internal/zzcbe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbe;->zzaxx()Lcom/google/android/gms/internal/zzcbe;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcbe;)V

    move-wide v8, v2

    :goto_3
    new-instance v15, Lcom/google/android/gms/internal/zzcbd;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcbi;->zzilz:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzcbi;->zzink:J

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object v0, v10

    move-object/from16 v10, v22

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzcbd;-><init>(Lcom/google/android/gms/internal/zzccu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v1, Lcom/google/android/gms/internal/zzcgf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcgf;-><init>()V

    new-array v2, v12, [Lcom/google/android/gms/internal/zzcgf;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcgi;->zziza:[Lcom/google/android/gms/internal/zzcgf;

    iget-wide v2, v15, Lcom/google/android/gms/internal/zzcbd;->zzfcw:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcgf;->zziyt:Ljava/lang/Long;

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcbd;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    iget-wide v2, v15, Lcom/google/android/gms/internal/zzcbd;->zzinb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcgf;->zziyu:Ljava/lang/Long;

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcbd;->zzinc:Lcom/google/android/gms/internal/zzcbf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbf;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzcgg;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcbd;->zzinc:Lcom/google/android/gms/internal/zzcbf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbf;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/zzcgg;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzcgg;-><init>()V

    iget-object v6, v1, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    add-int/lit8 v7, v3, 0x1

    aput-object v5, v6, v3

    iput-object v4, v5, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    iget-object v3, v15, Lcom/google/android/gms/internal/zzcbd;->zzinc:Lcom/google/android/gms/internal/zzcbf;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcbf;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v4

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/internal/zzcfu;->zza(Lcom/google/android/gms/internal/zzcgg;Ljava/lang/Object;)V

    move v3, v7

    goto :goto_4

    :cond_9
    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgi;->zzizb:[Lcom/google/android/gms/internal/zzcgk;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcgi;->zziza:[Lcom/google/android/gms/internal/zzcgf;

    invoke-direct {v11, v2, v3, v4}, Lcom/google/android/gms/internal/zzccu;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcgk;[Lcom/google/android/gms/internal/zzcgf;)[Lcom/google/android/gms/internal/zzcge;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcgi;->zzizt:[Lcom/google/android/gms/internal/zzcge;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcgf;->zziyt:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcgi;->zzizd:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgf;->zziyt:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcgi;->zzize:Ljava/lang/Long;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->zzaur()J

    move-result-wide v1

    cmp-long v3, v1, v16

    if-eqz v3, :cond_a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_5

    :cond_a
    move-object/from16 v9, v18

    :goto_5
    iput-object v9, v0, Lcom/google/android/gms/internal/zzcgi;->zzizg:Ljava/lang/Long;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->zzauq()J

    move-result-wide v3

    cmp-long v5, v3, v16

    if-nez v5, :cond_b

    goto :goto_6

    :cond_b
    move-wide v1, v3

    :goto_6
    cmp-long v3, v1, v16

    if-eqz v3, :cond_c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_7

    :cond_c
    move-object/from16 v9, v18

    :goto_7
    iput-object v9, v0, Lcom/google/android/gms/internal/zzcgi;->zzizf:Ljava/lang/Long;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->zzava()V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcap;->zzaux()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcgi;->zzizr:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzauu()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcgi;->zzizm:Ljava/lang/Long;

    iget-object v1, v11, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcgi;->zzizc:Ljava/lang/Long;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcgi;->zzizs:Ljava/lang/Boolean;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgi;->zzizd:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v14, v1, v2}, Lcom/google/android/gms/internal/zzcap;->zzal(J)V

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgi;->zzize:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Lcom/google/android/gms/internal/zzcap;->zzam(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcap;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    :try_start_3
    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzegz;->zzbjo()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzegr;->zzi([BII)Lcom/google/android/gms/internal/zzegr;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/zzegz;->zza(Lcom/google/android/gms/internal/zzegr;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegr;->zzcch()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfu;->zzo([B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v18

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    throw v0
.end method

.method public final zzatw()Lcom/google/android/gms/internal/zzcal;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzite:Lcom/google/android/gms/internal/zzcal;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcdr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzite:Lcom/google/android/gms/internal/zzcal;

    return-object v0
.end method

.method public final zzatx()Lcom/google/android/gms/internal/zzcas;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitd:Lcom/google/android/gms/internal/zzcas;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitd:Lcom/google/android/gms/internal/zzcas;

    return-object v0
.end method

.method public final zzaty()Lcom/google/android/gms/internal/zzcdu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisz:Lcom/google/android/gms/internal/zzcdu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisz:Lcom/google/android/gms/internal/zzcdu;

    return-object v0
.end method

.method public final zzatz()Lcom/google/android/gms/internal/zzcbp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzita:Lcom/google/android/gms/internal/zzcbp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzita:Lcom/google/android/gms/internal/zzcbp;

    return-object v0
.end method

.method public final zzaua()Lcom/google/android/gms/internal/zzcbc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisy:Lcom/google/android/gms/internal/zzcbc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisy:Lcom/google/android/gms/internal/zzcbc;

    return-object v0
.end method

.method public final zzaub()Lcom/google/android/gms/internal/zzcem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisx:Lcom/google/android/gms/internal/zzcem;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisx:Lcom/google/android/gms/internal/zzcem;

    return-object v0
.end method

.method public final zzauc()Lcom/google/android/gms/internal/zzcei;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisw:Lcom/google/android/gms/internal/zzcei;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisw:Lcom/google/android/gms/internal/zzcei;

    return-object v0
.end method

.method public final zzaud()Lcom/google/android/gms/internal/zzcbq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisu:Lcom/google/android/gms/internal/zzcbq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisu:Lcom/google/android/gms/internal/zzcbq;

    return-object v0
.end method

.method public final zzaue()Lcom/google/android/gms/internal/zzcaw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzist:Lcom/google/android/gms/internal/zzcaw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzist:Lcom/google/android/gms/internal/zzcaw;

    return-object v0
.end method

.method public final zzauf()Lcom/google/android/gms/internal/zzcbs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zziss:Lcom/google/android/gms/internal/zzcbs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcdr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zziss:Lcom/google/android/gms/internal/zzcbs;

    return-object v0
.end method

.method public final zzaug()Lcom/google/android/gms/internal/zzcfu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisr:Lcom/google/android/gms/internal/zzcfu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcdr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisr:Lcom/google/android/gms/internal/zzcfu;

    return-object v0
.end method

.method public final zzauh()Lcom/google/android/gms/internal/zzcco;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zziso:Lcom/google/android/gms/internal/zzcco;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zziso:Lcom/google/android/gms/internal/zzcco;

    return-object v0
.end method

.method public final zzaui()Lcom/google/android/gms/internal/zzcfj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisn:Lcom/google/android/gms/internal/zzcfj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisn:Lcom/google/android/gms/internal/zzcfj;

    return-object v0
.end method

.method public final zzauj()Lcom/google/android/gms/internal/zzccp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzism:Lcom/google/android/gms/internal/zzccp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzism:Lcom/google/android/gms/internal/zzccp;

    return-object v0
.end method

.method public final zzauk()Lcom/google/android/gms/internal/zzcbu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisl:Lcom/google/android/gms/internal/zzcbu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisl:Lcom/google/android/gms/internal/zzcbu;

    return-object v0
.end method

.method public final zzaul()Lcom/google/android/gms/internal/zzccf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisk:Lcom/google/android/gms/internal/zzccf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcdr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisk:Lcom/google/android/gms/internal/zzccf;

    return-object v0
.end method

.method public final zzaum()Lcom/google/android/gms/internal/zzcav;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    return-object v0
.end method

.method protected final zzayu()Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitg:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzccu;->zzith:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzccu;->zzith:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzccu;->zzith:J

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfu;->zzdu(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcfu;->zzdu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdv;->zzcs(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbdu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbdu;->zzalq()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzccl;->zzj(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcff;->zzk(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbp;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfu;->zzkb(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitg:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzayv()Lcom/google/android/gms/internal/zzcbu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisl:Lcom/google/android/gms/internal/zzcbu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisl:Lcom/google/android/gms/internal/zzcbu;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final zzayw()Lcom/google/android/gms/internal/zzccp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzism:Lcom/google/android/gms/internal/zzccp;

    return-object v0
.end method

.method public final zzayx()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisp:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public final zzayy()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisq:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public final zzayz()Lcom/google/android/gms/internal/zzcby;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisv:Lcom/google/android/gms/internal/zzcby;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccu;->zza(Lcom/google/android/gms/internal/zzcds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzisv:Lcom/google/android/gms/internal/zzcby;

    return-object v0
.end method

.method final zzazd()J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzccf;->zziql:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitt:J

    return-wide v0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzccu;->zzitt:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzazf()V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzccu;->zzits:Z

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzccf;->zzayn()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    :goto_0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    iput-boolean v2, v1, Lcom/google/android/gms/internal/zzccu;->zzits:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzazl()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    goto :goto_0

    :cond_2
    iget-wide v3, v1, Lcom/google/android/gms/internal/zzccu;->zzitp:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzazh()V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    iget-object v3, v1, Lcom/google/android/gms/internal/zzccu;->zzitk:Ljava/util/List;

    if-eqz v3, :cond_4

    move v3, v0

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzayz()Lcom/google/android/gms/internal/zzcby;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcby;->zzyu()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v3, v1, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawu()J

    move-result-wide v7

    sub-long v7, v3, v7

    const/4 v9, 0x0

    invoke-direct {v1, v9, v7, v8}, Lcom/google/android/gms/internal/zzccu;->zzg(Ljava/lang/String;J)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/zzccf;->zziqg:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcci;->get()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-eqz v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcaw;->zzaxh()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_14

    iget-wide v10, v1, Lcom/google/android/gms/internal/zzccu;->zzito:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcaw;->zzaxo()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/internal/zzccu;->zzito:J

    :cond_8
    iget-object v6, v1, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    sget-object v7, Lcom/google/android/gms/internal/zzcbk;->zziny:Lcom/google/android/gms/internal/zzcbl;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/zzcav;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcbl;)I

    move-result v6

    iget-object v7, v1, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    sget-object v8, Lcom/google/android/gms/internal/zzcbk;->zzinz:Lcom/google/android/gms/internal/zzcbl;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/internal/zzcav;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcbl;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/android/gms/internal/zzcaw;->zzl(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/zzcgi;

    iget-object v10, v8, Lcom/google/android/gms/internal/zzcgi;->zzizn:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v7, v8, Lcom/google/android/gms/internal/zzcgi;->zzizn:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v7, v9

    :goto_4
    if-eqz v7, :cond_c

    move v8, v2

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_c

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/zzcgi;

    iget-object v11, v10, Lcom/google/android/gms/internal/zzcgi;->zzizn:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v10, v10, Lcom/google/android/gms/internal/zzcgi;->zzizn:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_6

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    new-instance v7, Lcom/google/android/gms/internal/zzcgh;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzcgh;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/android/gms/internal/zzcgi;

    iput-object v8, v7, Lcom/google/android/gms/internal/zzcgh;->zziyx:[Lcom/google/android/gms/internal/zzcgi;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzaxg()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v1, Lcom/google/android/gms/internal/zzccu;->zzisj:Lcom/google/android/gms/internal/zzcav;

    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/zzcav;->zziu(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    move v10, v0

    goto :goto_7

    :cond_d
    move v10, v2

    :goto_7
    move v11, v2

    :goto_8
    iget-object v12, v7, Lcom/google/android/gms/internal/zzcgh;->zziyx:[Lcom/google/android/gms/internal/zzcgi;

    array-length v12, v12

    if-ge v11, v12, :cond_f

    iget-object v12, v7, Lcom/google/android/gms/internal/zzcgh;->zziyx:[Lcom/google/android/gms/internal/zzcgi;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/zzcgi;

    aput-object v13, v12, v11

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, v7, Lcom/google/android/gms/internal/zzcgh;->zziyx:[Lcom/google/android/gms/internal/zzcgi;

    aget-object v12, v12, v11

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzauu()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/zzcgi;->zzizm:Ljava/lang/Long;

    iget-object v12, v7, Lcom/google/android/gms/internal/zzcgh;->zziyx:[Lcom/google/android/gms/internal/zzcgi;

    aget-object v12, v12, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/zzcgi;->zzizc:Ljava/lang/Long;

    iget-object v12, v7, Lcom/google/android/gms/internal/zzcgh;->zziyx:[Lcom/google/android/gms/internal/zzcgi;

    aget-object v12, v12, v11

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/zzcgi;->zzizs:Ljava/lang/Boolean;

    if-nez v10, :cond_e

    iget-object v12, v7, Lcom/google/android/gms/internal/zzcgh;->zziyx:[Lcom/google/android/gms/internal/zzcgi;

    aget-object v12, v12, v11

    iput-object v9, v12, Lcom/google/android/gms/internal/zzcgi;->zzizz:Ljava/lang/String;

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v6

    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/zzcbu;->zzad(I)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzcbs;->zza(Lcom/google/android/gms/internal/zzcgh;)Ljava/lang/String;

    move-result-object v9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzcfu;->zzb(Lcom/google/android/gms/internal/zzcgh;)[B

    move-result-object v14

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawt()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_11

    move v10, v0

    goto :goto_9

    :cond_11
    move v10, v2

    :goto_9
    invoke-static {v10}, Lcom/google/android/gms/common/internal/zzbp;->zzbh(Z)V

    iget-object v10, v1, Lcom/google/android/gms/internal/zzccu;->zzitk:Ljava/util/List;

    if-eqz v10, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v8

    const-string v10, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v1, Lcom/google/android/gms/internal/zzccu;->zzitk:Ljava/util/List;

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/zzccf;->zziqh:Lcom/google/android/gms/internal/zzcci;

    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    const-string v3, "?"

    iget-object v4, v7, Lcom/google/android/gms/internal/zzcgh;->zziyx:[Lcom/google/android/gms/internal/zzcgi;

    array-length v4, v4

    if-lez v4, :cond_13

    iget-object v3, v7, Lcom/google/android/gms/internal/zzcgh;->zziyx:[Lcom/google/android/gms/internal/zzcgi;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcgi;->zzch:Ljava/lang/String;

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v4

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v3, v8, v9}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzccu;->zzitr:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzayz()Lcom/google/android/gms/internal/zzcby;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/internal/zzccx;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzccx;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static {v13}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzccc;

    const/4 v15, 0x0

    move-object v10, v4

    move-object v12, v5

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/zzccc;-><init>(Lcom/google/android/gms/internal/zzcby;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/zzcca;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzccp;->zzh(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_14
    iput-wide v7, v1, Lcom/google/android/gms/internal/zzccu;->zzito:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawu()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcaw;->zzba(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzcaw;->zziw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzccu;->zzb(Lcom/google/android/gms/internal/zzcap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/zzccu;->zzits:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzazl()V

    throw v0
.end method

.method final zzazi()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitn:I

    return-void
.end method

.method final zzazj()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitf:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayg()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazk()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazc()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitj:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzccu;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbp;->zzaya()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzccu;->zzitj:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzccu;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitf:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazh()V

    :cond_3
    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcat;Lcom/google/android/gms/internal/zzcaq;)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcaq;->zzils:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccu;->zzf(Lcom/google/android/gms/internal/zzcaq;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcat;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcat;-><init>(Lcom/google/android/gms/internal/zzcat;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcaw;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcaw;->zzak(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcat;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    if-eqz v3, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzcat;->zzimb:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzcat;->zzimb:J

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzcat;->zzimf:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzcat;->zzimf:J

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcat;->zzimd:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcat;->zzimd:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    new-instance v2, Lcom/google/android/gms/internal/zzcfr;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-wide v5, v3, Lcom/google/android/gms/internal/zzcfr;->zziwu:J

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfr;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v8, v1, Lcom/google/android/gms/internal/zzcfr;->zzilz:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzcfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzcat;->zzimd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/zzcfr;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/internal/zzcat;->zzimb:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfr;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v8, v1, Lcom/google/android/gms/internal/zzcfr;->zzilz:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzcfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    move p1, v2

    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    new-instance v9, Lcom/google/android/gms/internal/zzcft;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzcfr;->zziwu:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfr;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzcft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcft;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcft;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcft;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/google/android/gms/internal/zzcbi;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzcat;->zzimb:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzcbi;-><init>(Lcom/google/android/gms/internal/zzcbi;J)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzccu;->zzc(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcat;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfr;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfr;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    throw p1
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/internal/zzcbi;->zzink:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/zzcfu;->zzd(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/internal/zzcaq;->zzils:Z

    if-nez v4, :cond_1

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzccu;->zzf(Lcom/google/android/gms/internal/zzcaq;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcaw;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    const-wide/16 v5, 0x0

    cmp-long v5, v11, v5

    const/4 v6, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-gez v5, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v4

    const-string v7, "Invalid time querying timed out conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v7, v8, v9}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v7, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v8, v6, [Ljava/lang/String;

    aput-object v3, v8, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/zzcaw;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzcat;

    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v8

    const-string v9, "User property timed out"

    iget-object v10, v7, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v15

    iget-object v14, v7, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v14, v14, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v7, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzcfr;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v8, v9, v10, v14, v15}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v7, Lcom/google/android/gms/internal/zzcat;->zzime:Lcom/google/android/gms/internal/zzcbi;

    if-eqz v8, :cond_4

    new-instance v8, Lcom/google/android/gms/internal/zzcbi;

    iget-object v9, v7, Lcom/google/android/gms/internal/zzcat;->zzime:Lcom/google/android/gms/internal/zzcbi;

    invoke-direct {v8, v9, v11, v12}, Lcom/google/android/gms/internal/zzcbi;-><init>(Lcom/google/android/gms/internal/zzcbi;J)V

    invoke-direct {v1, v8, v2}, Lcom/google/android/gms/internal/zzccu;->zzc(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v8

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v8, v3, v7}, Lcom/google/android/gms/internal/zzcaw;->zzal(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    if-gez v5, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v4

    const-string v7, "Invalid time querying expired conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v7, v8, v9}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v7, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v8, v6, [Ljava/lang/String;

    aput-object v3, v8, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/zzcaw;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcat;

    if-eqz v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v9

    const-string v10, "User property expired"

    iget-object v14, v8, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v15

    iget-object v6, v8, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v15, v8, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzcfr;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v9, v10, v14, v6, v15}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v6

    iget-object v9, v8, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v6, v3, v9}, Lcom/google/android/gms/internal/zzcaw;->zzai(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v8, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    if-eqz v6, :cond_8

    iget-object v6, v8, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v6

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v6, v3, v8}, Lcom/google/android/gms/internal/zzcaw;->zzal(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    goto :goto_3

    :cond_9
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v13

    :goto_4
    if-ge v6, v4, :cond_a

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Lcom/google/android/gms/internal/zzcbi;

    new-instance v9, Lcom/google/android/gms/internal/zzcbi;

    invoke-direct {v9, v8, v11, v12}, Lcom/google/android/gms/internal/zzcbi;-><init>(Lcom/google/android/gms/internal/zzcbi;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/internal/zzccu;->zzc(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    if-gez v5, :cond_b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    const-string v7, "Invalid time querying triggered conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v7, v3, v4, v6}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_5

    :cond_b
    const-string v5, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v6, v7, v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v7, v6

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/zzcaw;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/internal/zzcat;

    if-eqz v15, :cond_c

    iget-object v4, v15, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    new-instance v10, Lcom/google/android/gms/internal/zzcft;

    iget-object v5, v15, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfr;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/zzcft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcft;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/zzcft;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    :goto_7
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/zzcft;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    goto :goto_7

    :goto_8
    iget-object v4, v15, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    if-eqz v4, :cond_e

    iget-object v4, v15, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v4, Lcom/google/android/gms/internal/zzcfr;

    invoke-direct {v4, v13}, Lcom/google/android/gms/internal/zzcfr;-><init>(Lcom/google/android/gms/internal/zzcft;)V

    iput-object v4, v15, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcat;)Z

    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_f
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/internal/zzccu;->zzc(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v0, :cond_10

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v13, v13, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzcbi;

    new-instance v4, Lcom/google/android/gms/internal/zzcbi;

    invoke-direct {v4, v3, v11, v12}, Lcom/google/android/gms/internal/zzcbi;-><init>(Lcom/google/android/gms/internal/zzcbi;J)V

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/internal/zzccu;->zzc(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    throw v0
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcbi;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzcaw;->zziw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcap;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zzcap;->zzul()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdv;->zzcs(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbdu;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/zzbdu;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zzcap;->zzul()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zzcap;->zzul()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v0, v2, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    const-string v3, "_ui"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "Could not find package. appId"

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcaq;

    move-object v3, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zzcap;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zzcap;->zzul()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zzcap;->zzaus()J

    move-result-wide v7

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zzcap;->zzaut()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zzcap;->zzauu()J

    move-result-wide v10

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zzcap;->zzauv()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zzcap;->zzauw()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zzcap;->zzaup()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zzcap;->zzavj()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v22}, Lcom/google/android/gms/internal/zzcaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJI)V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzccu;->zzb(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "No app data available; dropping event"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcds;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzccu;->zzitm:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzccu;->zzitm:I

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcfr;Lcom/google/android/gms/internal/zzcaq;)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcaq;->zzils:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccu;->zzf(Lcom/google/android/gms/internal/zzcaq;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfu;->zzjy(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzavn()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_2
    move v7, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    const-string v5, "_ev"

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfr;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcfu;->zzl(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzavn()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfr;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_5
    move v10, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v5

    iget-object v6, p2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    const-string v8, "_ev"

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfr;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfu;->zzm(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/zzcft;

    iget-object v4, p2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/internal/zzcfr;->zzilz:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/internal/zzcfr;->zziwu:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/zzcft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcft;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    invoke-virtual {p1, v3, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcaw;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccu;->zzf(Lcom/google/android/gms/internal/zzcaq;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcft;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "User property set"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcft;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcft;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcft;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    throw p1
.end method

.method final zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcaw;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzcaw;->zziw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcap;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    if-nez p3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p4}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/internal/zzcap;->zzas(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcap;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzcco;->zzjp(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzccf;->zziqh:Lcom/google/android/gms/internal/zzcci;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_1

    :cond_5
    move v4, v0

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzccf;->zziqi:Lcom/google/android/gms/internal/zzcci;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzcci;->set(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazh()V

    goto/16 :goto_8

    :cond_8
    :goto_2
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_3

    :cond_9
    move-object p5, p3

    :goto_3
    if-eqz p5, :cond_a

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object p5, p3

    :goto_4
    if-eq p2, v5, :cond_c

    if-ne p2, v3, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/internal/zzcco;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_d

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitq:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazl()V

    return-void

    :cond_c
    :goto_6
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/zzcco;->zzjn(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgc;

    move-result-object p5

    if-nez p5, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/internal/zzcco;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_d

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :cond_d
    :try_start_5
    iget-object p3, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcap;->zzar(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcap;)V

    if-ne p2, v5, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcbu;->zzayf()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzayz()Lcom/google/android/gms/internal/zzcby;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcby;->zzyu()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazg()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzazf()V

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    goto :goto_5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitq:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazl()V

    throw p1
.end method

.method public final zzbo(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;->zzazh()V

    return-void
.end method

.method final zzc(Lcom/google/android/gms/internal/zzcat;Lcom/google/android/gms/internal/zzcaq;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcaq;->zzils:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccu;->zzf(Lcom/google/android/gms/internal/zzcaq;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccu;->zzf(Lcom/google/android/gms/internal/zzcaq;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcaw;->zzak(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcat;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcaw;->zzal(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcaw;->zzai(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcbi;->zzinj:Lcom/google/android/gms/internal/zzcbf;

    if-eqz v2, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcbi;->zzinj:Lcom/google/android/gms/internal/zzcbf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbf;->zzaxy()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v2, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzcbi;->zzink:J

    const/4 p1, 0x1

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-wide v4, v5

    move v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzcbi;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzccu;->zzc(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    throw p1
.end method

.method final zzc(Lcom/google/android/gms/internal/zzcfr;Lcom/google/android/gms/internal/zzcaq;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcaq;->zzils:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccu;->zzf(Lcom/google/android/gms/internal/zzcaq;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccu;->zzf(Lcom/google/android/gms/internal/zzcaq;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/zzcaw;->zzai(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p2

    const-string v0, "User property removed"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    throw p1
.end method

.method final zzd(Lcom/google/android/gms/internal/zzcaq;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzccu;->zzf(Lcom/google/android/gms/internal/zzcaq;)V

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/zzcat;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzccu;->zzjr(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcaq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzccu;->zzb(Lcom/google/android/gms/internal/zzcat;Lcom/google/android/gms/internal/zzcaq;)V

    :cond_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/zzcaq;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "_uwa"

    const-string v0, "app_id=?"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzcaw;->zziw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcap;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcap;->getGmpAppId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v2, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/zzcap;->zzar(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcap;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object v7

    iget-object v10, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/zzcco;->zzjq(Ljava/lang/String;)V

    :cond_1
    iget-boolean v7, v2, Lcom/google/android/gms/internal/zzcaq;->zzils:Z

    if-nez v7, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/zzccu;->zzf(Lcom/google/android/gms/internal/zzcaq;)V

    return-void

    :cond_2
    iget-wide v10, v2, Lcom/google/android/gms/internal/zzcaq;->zzilx:J

    cmp-long v7, v10, v8

    if-nez v7, :cond_3

    iget-object v7, v1, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v7}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v10

    :cond_3
    iget v7, v2, Lcom/google/android/gms/internal/zzcaq;->zzily:I

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v12, v8, v13, v7}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v7, v15

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcaw;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzcaw;->zziw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcap;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcap;->getGmpAppId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcap;->getGmpAppId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v12

    const-string v13, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcap;->getAppId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcap;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-static {v8}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcaw;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/String;

    aput-object v8, v13, v15

    const-string v14, "events"

    invoke-virtual {v12, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v15

    const-string v15, "user_attributes"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "conditional_properties"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "apps"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events_metadata"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "event_filters"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "property_filters"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "audience_filter_values"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v12, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v8, v13}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v9

    const-string v12, "Error deleting application data. appId, error"

    invoke-static {v8}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v12, v8, v0}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    const/4 v8, 0x0

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcap;->zzul()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcap;->zzul()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcaq;->zzhtl:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v9, "_pv"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcap;->zzul()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/zzcbi;

    const-string v13, "_au"

    new-instance v14, Lcom/google/android/gms/internal/zzcbf;

    invoke-direct {v14, v0}, Lcom/google/android/gms/internal/zzcbf;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v8

    const/4 v9, 0x1

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcbi;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcbf;Ljava/lang/String;J)V

    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/internal/zzccu;->zzb(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V

    goto :goto_1

    :cond_7
    const/4 v9, 0x1

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/zzccu;->zzf(Lcom/google/android/gms/internal/zzcaq;)V

    if-nez v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    const-string v12, "_f"

    :goto_2
    invoke-virtual {v0, v8, v12}, Lcom/google/android/gms/internal/zzcaw;->zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcbe;

    move-result-object v0

    goto :goto_3

    :cond_8
    if-ne v7, v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    const-string v12, "_v"

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_13

    const-wide/32 v12, 0x36ee80

    div-long v14, v10, v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v18, v10

    const-wide/16 v9, 0x1

    add-long/2addr v14, v9

    mul-long/2addr v14, v12

    const-string v0, "_r"

    const-string v11, "_c"

    if-nez v7, :cond_11

    :try_start_3
    new-instance v7, Lcom/google/android/gms/internal/zzcfr;

    const-string v13, "_fot"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v7

    move-wide/from16 v14, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/internal/zzccu;->zzb(Lcom/google/android/gms/internal/zzcfr;Lcom/google/android/gms/internal/zzcaq;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x0

    invoke-virtual {v7, v6, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_a

    :cond_a
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdv;->zzcs(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbdu;

    move-result-object v0

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v14, 0x0

    :try_start_5
    invoke-virtual {v0, v11, v14}, Lcom/google/android/gms/internal/zzbdu;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    const/4 v14, 0x0

    :goto_4
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v11

    const-string v12, "Package info is null, first open report might be inaccurate. appId"

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v0}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_d

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v11, v11, v15

    if-eqz v11, :cond_d

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v11, v14

    if-eqz v0, :cond_b

    invoke-virtual {v7, v6, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v15, 0x0

    goto :goto_6

    :cond_b
    const/4 v15, 0x1

    :goto_6
    new-instance v0, Lcom/google/android/gms/internal/zzcfr;

    const-string v13, "_fi"

    if-eqz v15, :cond_c

    move-wide v11, v9

    goto :goto_7

    :cond_c
    const-wide/16 v11, 0x0

    :goto_7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v0

    const/4 v6, 0x0

    move-wide/from16 v14, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzccu;->zzb(Lcom/google/android/gms/internal/zzcfr;Lcom/google/android/gms/internal/zzcaq;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :cond_d
    move v6, v14

    :goto_8
    :try_start_7
    iget-object v0, v1, Lcom/google/android/gms/internal/zzccu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdv;->zzcs(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbdu;

    move-result-object v0

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11, v6}, Lcom/google/android/gms/internal/zzbdu;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v6

    const-string v11, "Application info is null, first open report might be inaccurate. appId"

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v11, v12, v0}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_f

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-eqz v6, :cond_e

    invoke-virtual {v7, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_e
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_f

    invoke-virtual {v7, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_f
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    const-string v4, "first_open_count"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcaw;->zzao(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v11, 0x0

    cmp-long v0, v3, v11

    if-ltz v0, :cond_10

    invoke-virtual {v7, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/zzcbi;

    const-string v13, "_f"

    new-instance v14, Lcom/google/android/gms/internal/zzcbf;

    invoke-direct {v14, v7}, Lcom/google/android/gms/internal/zzcbf;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcbi;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcbf;Ljava/lang/String;J)V

    :goto_b
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzccu;->zzb(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V

    goto :goto_c

    :cond_11
    const/4 v3, 0x1

    if-ne v7, v3, :cond_12

    new-instance v3, Lcom/google/android/gms/internal/zzcfr;

    const-string v13, "_fvt"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v3

    move-wide/from16 v14, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzccu;->zzb(Lcom/google/android/gms/internal/zzcfr;Lcom/google/android/gms/internal/zzcaq;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzwh()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/zzcbi;

    const-string v13, "_v"

    new-instance v14, Lcom/google/android/gms/internal/zzcbf;

    invoke-direct {v14, v3}, Lcom/google/android/gms/internal/zzcbf;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcbi;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcbf;Ljava/lang/String;J)V

    goto :goto_b

    :cond_12
    :goto_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_et"

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/google/android/gms/internal/zzcbi;

    const-string v13, "_e"

    new-instance v14, Lcom/google/android/gms/internal/zzcbf;

    invoke-direct {v14, v0}, Lcom/google/android/gms/internal/zzcbf;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcbi;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcbf;Ljava/lang/String;J)V

    :goto_d
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzccu;->zzb(Lcom/google/android/gms/internal/zzcbi;Lcom/google/android/gms/internal/zzcaq;)V

    goto :goto_e

    :cond_13
    move-wide/from16 v18, v10

    iget-boolean v0, v2, Lcom/google/android/gms/internal/zzcaq;->zzilt:Z

    if-eqz v0, :cond_14

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzcbi;

    const-string v13, "_cd"

    new-instance v14, Lcom/google/android/gms/internal/zzcbf;

    invoke-direct {v14, v0}, Lcom/google/android/gms/internal/zzcbf;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcbi;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcbf;Ljava/lang/String;J)V

    goto :goto_d

    :cond_14
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzccu;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcaw;->endTransaction()V

    throw v0
.end method

.method final zze(Lcom/google/android/gms/internal/zzcat;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzccu;->zzjr(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcaq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzccu;->zzc(Lcom/google/android/gms/internal/zzcat;Lcom/google/android/gms/internal/zzcaq;)V

    :cond_0
    return-void
.end method

.method final zzi(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitl:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitl:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzitl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzjs(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzccw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzccw;-><init>(Lcom/google/android/gms/internal/zzccu;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzccp;->zzd(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzccu;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzvu()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccu;->zzasl:Lcom/google/android/gms/common/util/zzd;

    return-object v0
.end method

.method final zzwh()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzccu;->zzdoj:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
