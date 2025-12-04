.class public final Lcom/google/android/gms/internal/zzcdu;
.super Lcom/google/android/gms/internal/zzcds;


# instance fields
.field protected zziuk:Lcom/google/android/gms/internal/zzceh;

.field private zziul:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

.field private final zzium:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private zziun:Z

.field private final zziuo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzccu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcds;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdu;->zzium:Ljava/util/Set;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdu;->zziuo:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static getMaxUserProperties(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzavz()I

    move-result p0

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcdu;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcdu;->zzb(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcdu;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/internal/zzcdu;->zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcdu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzcdu;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcdu;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcdu;->zzbp(Z)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcfu;->zzjy(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid conditional user property name"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzcfu;->zzl(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Invalid conditional user property value"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzcfu;->zzm(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unable to normalize conditional user property value"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    iput-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    iget-object v3, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, 0x1

    if-nez v3, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawb()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-gtz v3, :cond_3

    cmp-long v3, v1, v4

    if-gez v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Invalid conditional user property timeout"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawc()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-gtz v3, :cond_6

    cmp-long v3, v1, v4

    if-gez v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcdw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcdw;-><init>(Lcom/google/android/gms/internal/zzcdu;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Invalid conditional user property time to live"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p5

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v11, v0

    goto :goto_3

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    check-cast v3, Landroid/os/Bundle;

    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    instance-of v2, v3, [Landroid/os/Parcelable;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    check-cast v3, [Landroid/os/Parcelable;

    :goto_1
    array-length v2, v3

    if-ge v4, v2, :cond_1

    aget-object v2, v3, v4

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_3

    new-instance v2, Landroid/os/Bundle;

    aget-object v5, v3, v4

    check-cast v5, Landroid/os/Bundle;

    invoke-direct {v2, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v2, v3, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    instance-of v2, v3, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    check-cast v3, Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Landroid/os/Bundle;

    if-eqz v5, :cond_5

    new-instance v5, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v5, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move-object v11, v1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcec;

    move-object v5, v1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-wide/from16 v9, p3

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/internal/zzcec;-><init>(Lcom/google/android/gms/internal/zzcdu;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/internal/zzced;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzced;-><init>(Lcom/google/android/gms/internal/zzcdu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzcdu;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzayu()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Setting user property (FE)"

    invoke-virtual {v0, v2, v1, p3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcfr;

    move-object v3, v0

    move-object v4, p2

    move-wide v5, p4

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzcfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcem;->zzb(Lcom/google/android/gms/internal/zzcfr;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iput-object p1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iput-object p2, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iput-wide v0, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    if-eqz p3, :cond_0

    iput-object p3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iput-object p4, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzcdx;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/internal/zzcdx;-><init>(Lcom/google/android/gms/internal/zzcdu;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccp;->zzayr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "Cannot get user properties from analytics worker thread"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzaq()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "Cannot get user properties from main thread"

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/zzcdz;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcdz;-><init>(Lcom/google/android/gms/internal/zzcdu;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 p1, 0x1388

    :try_start_1
    invoke-virtual {v7, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p2

    const-string p3, "Interrupted waiting for get user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "Timed out waiting for get user properties"

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/support/v4/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/zzcfr;

    iget-object p4, p3, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcfr;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object p2

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcdu;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcdu;->zzc(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 23

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzccu;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Conditional property not sent since Firebase Analytics is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v8, Lcom/google/android/gms/internal/zzcfr;

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    iget-object v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzcbi;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v14

    iget-object v15, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v14 .. v21}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzcbi;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v14

    iget-object v15, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v14 .. v21}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzcbi;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v14, Lcom/google/android/gms/internal/zzcat;

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    move-object v12, v10

    iget-wide v9, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    iget-wide v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-object v2, v14

    move-object v5, v8

    const/4 v8, 0x0

    move-wide/from16 v17, v9

    move-object v9, v11

    move-object v10, v12

    move-wide/from16 v11, v17

    move-object/from16 v22, v14

    move-wide v14, v0

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/zzcat;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcfr;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcbi;JLcom/google/android/gms/internal/zzcbi;JLcom/google/android/gms/internal/zzcbi;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcem;->zzf(Lcom/google/android/gms/internal/zzcat;)V

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, v1, Lcom/google/android/gms/internal/zzcdu;->zziun:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_1

    iput-boolean v11, v1, Lcom/google/android/gms/internal/zzcdu;->zziun:Z

    :try_start_0
    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "initialize"

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v10

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v2

    const-string v3, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayg()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v2, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "am"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzcfu;->zzkd(Ljava/lang/String;)Z

    move-result v2

    if-eqz p6, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcdu;->zziul:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v3

    move-object/from16 v12, p5

    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/zzcbs;->zzw(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Passing event to registered event handler (FE)"

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcdu;->zziul:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-wide/from16 v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;->interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    :cond_2
    move-object/from16 v12, p5

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzccu;->zzayu()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/zzcfu;->zzjw(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzavm()I

    move-result v0

    invoke-static {v9, v0, v11}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    :cond_4
    iget-object v1, v1, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v1

    const-string v3, "_ev"

    move-object/from16 p0, v1

    move-object/from16 p1, p9

    move/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v0

    move/from16 p5, v10

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_5
    const-string v13, "_o"

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v2

    const/4 v7, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object v5, v14

    move/from16 v6, p8

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v15

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfu;->zzazx()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v5

    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Landroid/os/Bundle;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v4, v12

    move v2, v10

    move v3, v2

    :goto_1
    const-string v10, "_eid"

    if-ge v3, v4, :cond_8

    aget-object v11, v12, v3

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-object/from16 p6, v7

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcfu;->zzac(Ljava/lang/Object;)[Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_7

    move/from16 p5, v2

    array-length v2, v7

    invoke-virtual {v15, v11, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move/from16 v16, v3

    const/4 v2, 0x0

    :goto_2
    array-length v3, v7

    if-ge v2, v3, :cond_6

    aget-object v17, v7, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v3

    const/16 v18, 0x0

    const-string v19, "_ep"

    move/from16 v20, p5

    move/from16 v21, v2

    move-object v2, v3

    move-object/from16 v3, v19

    move/from16 v19, v4

    move-object/from16 v4, v17

    move-wide/from16 v22, v5

    move-object v5, v14

    move/from16 v6, p8

    move-object/from16 p5, v12

    move-object/from16 v12, p6

    move-object/from16 p6, v14

    move-object v14, v7

    move/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_en"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v3, v22

    invoke-virtual {v2, v10, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "_gn"

    invoke-virtual {v2, v5, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    array-length v5, v14

    const-string v6, "_ll"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "_i"

    move/from16 v6, v21

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v6, 0x1

    move-wide v5, v3

    move-object v7, v14

    move/from16 v4, v19

    move-object/from16 v14, p6

    move-object/from16 p6, v12

    move-object/from16 v12, p5

    move/from16 p5, v20

    goto :goto_2

    :cond_6
    move/from16 v20, p5

    move/from16 v19, v4

    move-wide v3, v5

    move-object/from16 p5, v12

    move-object/from16 v12, p6

    move-object/from16 p6, v14

    move-object v14, v7

    array-length v2, v14

    move/from16 v5, v20

    add-int/2addr v2, v5

    goto :goto_3

    :cond_7
    move/from16 v16, v3

    move/from16 v19, v4

    move-wide v3, v5

    move-object/from16 p5, v12

    move-object/from16 v12, p6

    move v5, v2

    move-object/from16 p6, v14

    :goto_3
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v14, p6

    move-object v7, v12

    const/4 v11, 0x1

    move-object/from16 v12, p5

    move-wide/from16 v24, v3

    move v3, v5

    move-wide/from16 v5, v24

    move/from16 v4, v19

    goto/16 :goto_1

    :cond_8
    move-wide v3, v5

    move-object v12, v7

    move v5, v2

    if-eqz v5, :cond_9

    invoke-virtual {v15, v10, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "_epc"

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauc()Lcom/google/android/gms/internal/zzcei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcei;->zzazm()Lcom/google/android/gms/internal/zzcel;

    move-result-object v10

    const-string v11, "_sc"

    if-eqz v10, :cond_a

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/google/android/gms/internal/zzcel;->zzivo:Z

    :cond_a
    const/4 v14, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_10

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz v14, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_c

    const-string v3, "_ep"

    goto :goto_6

    :cond_c
    move-object v3, v9

    :goto_6
    invoke-virtual {v2, v13, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/zzcei;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Landroid/os/Bundle;)V

    :cond_d
    if-eqz p7, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzcfu;->zzx(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :cond_e
    move-object v15, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/zzcbs;->zzw(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Logging event (FE)"

    invoke-virtual {v2, v6, v4, v5}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/google/android/gms/internal/zzcbi;

    new-instance v4, Lcom/google/android/gms/internal/zzcbf;

    invoke-direct {v4, v15}, Lcom/google/android/gms/internal/zzcbf;-><init>(Landroid/os/Bundle;)V

    move-object v2, v6

    move-object/from16 v5, p1

    move-object v8, v6

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcbi;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcbf;Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object v2

    move-object/from16 v6, p9

    invoke-virtual {v2, v8, v6}, Lcom/google/android/gms/internal/zzcem;->zzc(Lcom/google/android/gms/internal/zzcbi;Ljava/lang/String;)V

    if-nez v0, :cond_f

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcdu;->zzium:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v6, p9

    goto :goto_7

    :cond_f
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p1

    goto/16 :goto_4

    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauc()Lcom/google/android/gms/internal/zzcei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcei;->zzazm()Lcom/google/android/gms/internal/zzcel;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v0, "_ae"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaui()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfj;->zzbr(Z)Z

    :cond_11
    return-void
.end method

.method private final zzbp(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Setting app measurement enabled (FE)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzccf;->setMeasurementEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcem;->zzazo()V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 21

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzccu;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Conditional property not cleared since Firebase Analytics is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v8, Lcom/google/android/gms/internal/zzcfr;

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    iget-object v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzcbi;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v14, Lcom/google/android/gms/internal/zzcat;

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-boolean v9, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    const/4 v15, 0x0

    move-wide/from16 v17, v12

    iget-wide v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-object v2, v14

    move-object v5, v8

    move v8, v9

    move-object v9, v10

    const/4 v0, 0x0

    move-object v10, v0

    move-wide/from16 v19, v11

    move-wide/from16 v11, v17

    move-object v13, v15

    move-object v0, v14

    move-wide/from16 v14, v19

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/zzcat;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcfr;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcbi;JLcom/google/android/gms/internal/zzcbi;JLcom/google/android/gms/internal/zzcbi;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcem;->zzf(Lcom/google/android/gms/internal/zzcat;)V

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private final zzk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccp;->zzayr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzaq()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from main thread"

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/zzcdy;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcdy;-><init>(Lcom/google/android/gms/internal/zzcdu;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p3

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Interrupted waiting for get conditional user properties"

    invoke-virtual {v0, v1, p1, p3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p2

    const-string p3, "Timed out waiting for get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzcat;

    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iput-object p1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iput-object p2, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/internal/zzcat;->zzimb:J

    iput-wide v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcfr;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfr;->getValue()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-boolean v3, v1, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    iput-boolean v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzimd:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzime:Lcom/google/android/gms/internal/zzcbi;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzime:Lcom/google/android/gms/internal/zzcbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzime:Lcom/google/android/gms/internal/zzcbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcbi;->zzinj:Lcom/google/android/gms/internal/zzcbf;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzime:Lcom/google/android/gms/internal/zzcbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcbi;->zzinj:Lcom/google/android/gms/internal/zzcbf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbf;->zzaxy()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    :cond_3
    iget-wide v3, v1, Lcom/google/android/gms/internal/zzcat;->zzimf:J

    iput-wide v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcbi;->zzinj:Lcom/google/android/gms/internal/zzcbf;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcbi;->zzinj:Lcom/google/android/gms/internal/zzcbf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbf;->zzaxy()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    :cond_4
    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-wide v3, v3, Lcom/google/android/gms/internal/zzcfr;->zziwu:J

    iput-wide v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    iget-wide v3, v1, Lcom/google/android/gms/internal/zzcat;->zzimh:J

    iput-wide v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcbi;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcbi;->zzinj:Lcom/google/android/gms/internal/zzcbf;

    if-eqz v3, :cond_5

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcbi;->zzinj:Lcom/google/android/gms/internal/zzcbf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbf;->zzaxy()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public final clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcdu;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final clearConditionalUserPropertyAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatt()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzcdu;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final getAppInstanceId()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccf;->zzaym()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccp;->zzays()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcef;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcef;-><init>(Lcom/google/android/gms/internal/zzcdu;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Failed to schedule task for getAppInstanceId"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzcdu;->zzk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getConditionalUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatt()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcdu;->zzk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcdu;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final getUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatt()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzcdu;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdu;->zzium:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "OnEventListener already registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    iget-object p1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v1, "Package name should be null when calling setConditionalUserProperty"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcdu;->zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public final setConditionalUserPropertyAs(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatt()V

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcdu;->zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public final setEventInterceptor(Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdu;->zziul:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eq p1, v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbp;->zza(ZLjava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdu;->zziul:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    return-void
.end method

.method public final setMeasurementEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcdv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcdv;-><init>(Lcom/google/android/gms/internal/zzcdu;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setMinimumSessionDuration(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcea;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzcea;-><init>(Lcom/google/android/gms/internal/zzcdu;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setSessionTimeoutDuration(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzceb;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzceb;-><init>(Lcom/google/android/gms/internal/zzcdu;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final unregisterOnMeasurementEventListener(Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdu;->zzium:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "OnEventListener had not been registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzcdu;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    iget-object p4, p0, Lcom/google/android/gms/internal/zzcdu;->zziul:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eqz p4, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcfu;->zzkd(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    move v5, p4

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcdu;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzatt()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatt()V

    return-void
.end method

.method public final bridge synthetic zzatu()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatu()V

    return-void
.end method

.method public final bridge synthetic zzatv()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatv()V

    return-void
.end method

.method public final bridge synthetic zzatw()Lcom/google/android/gms/internal/zzcal;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatw()Lcom/google/android/gms/internal/zzcal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzatx()Lcom/google/android/gms/internal/zzcas;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatx()Lcom/google/android/gms/internal/zzcas;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaty()Lcom/google/android/gms/internal/zzcdu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaty()Lcom/google/android/gms/internal/zzcdu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzatz()Lcom/google/android/gms/internal/zzcbp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzatz()Lcom/google/android/gms/internal/zzcbp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaua()Lcom/google/android/gms/internal/zzcbc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaua()Lcom/google/android/gms/internal/zzcbc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaub()Lcom/google/android/gms/internal/zzcem;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaub()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauc()Lcom/google/android/gms/internal/zzcei;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauc()Lcom/google/android/gms/internal/zzcei;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaud()Lcom/google/android/gms/internal/zzcbq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaud()Lcom/google/android/gms/internal/zzcbq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaue()Lcom/google/android/gms/internal/zzcaw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauf()Lcom/google/android/gms/internal/zzcbs;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaug()Lcom/google/android/gms/internal/zzcfu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauh()Lcom/google/android/gms/internal/zzcco;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauh()Lcom/google/android/gms/internal/zzcco;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaui()Lcom/google/android/gms/internal/zzcfj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaui()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauj()Lcom/google/android/gms/internal/zzccp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzauk()Lcom/google/android/gms/internal/zzcbu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaul()Lcom/google/android/gms/internal/zzccf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaum()Lcom/google/android/gms/internal/zzcav;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzaum()Lcom/google/android/gms/internal/zzcav;

    move-result-object v0

    return-object v0
.end method

.method public final zzaym()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdu;->zziuo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzcfu;->zzjy(Ljava/lang/String;)I

    move-result v0

    const-string v1, "_ev"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzavn()I

    move-result p1

    invoke-static {p2, p1, v3}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object p2

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzcfu;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/zzcfu;->zzl(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzavn()I

    move-result p1

    invoke-static {p2, p1, v3}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    instance-of p2, p3, Ljava/lang/String;

    if-nez p2, :cond_2

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    :cond_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object p2

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzcfu;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/zzcfu;->zzm(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcdu;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcdu;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method final zzbc(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzceg;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzceg;-><init>(Lcom/google/android/gms/internal/zzcdu;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "Interrupted waiting for app instance id"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final zzbq(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcfr;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayh()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Fetching user attributes (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccp;->zzayr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "Cannot get all user properties from analytics worker thread"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauj()Lcom/google/android/gms/internal/zzccp;

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzaq()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "Cannot get all user properties from main thread"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdu;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccu;->zzauj()Lcom/google/android/gms/internal/zzccp;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcee;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/zzcee;-><init>(Lcom/google/android/gms/internal/zzcdu;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzccp;->zzg(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x1388

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "Interrupted waiting for get user properties"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string v0, "Timed out waiting for get user properties"

    goto :goto_0

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzatu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdu;->zziul:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcfu;->zzkd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v6, v0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzcdu;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method final zzjk(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdu;->zziuo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic zzug()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzug()V

    return-void
.end method

.method protected final zzuh()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzvu()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method
