.class final Lcom/google/android/gms/internal/zzcas;
.super Lcom/google/android/gms/internal/zzcds;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcds;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method

.method private final zza(DLcom/google/android/gms/internal/zzcfy;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p1

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/internal/zzcas;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzcfy;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(JLcom/google/android/gms/internal/zzcfy;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p1, 0x0

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/internal/zzcas;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzcfy;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcfw;Lcom/google/android/gms/internal/zzcgf;J)Ljava/lang/Boolean;
    .locals 9

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfw;->zzixm:Lcom/google/android/gms/internal/zzcfy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfw;->zzixm:Lcom/google/android/gms/internal/zzcfy;

    invoke-direct {p0, p3, p4, v0}, Lcom/google/android/gms/internal/zzcas;->zza(JLcom/google/android/gms/internal/zzcfy;)Ljava/lang/Boolean;

    move-result-object p3

    if-nez p3, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_1

    return-object v2

    :cond_1
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iget-object p4, p1, Lcom/google/android/gms/internal/zzcfw;->zzixk:[Lcom/google/android/gms/internal/zzcfx;

    array-length v0, p4

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v5, p4, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcfx;->zzixr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "null or empty param name in filter. event"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_2
    iget-object v5, v5, Lcom/google/android/gms/internal/zzcfx;->zzixr:Ljava/lang/String;

    invoke-interface {p3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcgf;->zziys:[Lcom/google/android/gms/internal/zzcgg;

    array-length v4, v0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_8

    aget-object v6, v0, v5

    iget-object v7, v6, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    invoke-interface {p3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v6, Lcom/google/android/gms/internal/zzcgg;->zziyw:Ljava/lang/Long;

    if-eqz v7, :cond_4

    iget-object v7, v6, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcgg;->zziyw:Ljava/lang/Long;

    :goto_2
    invoke-interface {p4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object v7, v6, Lcom/google/android/gms/internal/zzcgg;->zziwx:Ljava/lang/Double;

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcgg;->zziwx:Ljava/lang/Double;

    goto :goto_2

    :cond_5
    iget-object v7, v6, Lcom/google/android/gms/internal/zzcgg;->zzfwi:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcgg;->zzfwi:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    iget-object p4, v6, Lcom/google/android/gms/internal/zzcgg;->name:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/zzcbs;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Unknown value for param. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    iget-object p1, p1, Lcom/google/android/gms/internal/zzcfw;->zzixk:[Lcom/google/android/gms/internal/zzcfx;

    array-length p3, p1

    :goto_4
    const/4 v0, 0x1

    if-ge v1, p3, :cond_17

    aget-object v4, p1, v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcfx;->zzixq:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcfx;->zzixr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Event has empty param name. event"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_9
    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_c

    iget-object v8, v4, Lcom/google/android/gms/internal/zzcfx;->zzixp:Lcom/google/android/gms/internal/zzcfy;

    if-nez v8, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    invoke-virtual {p3, v6}, Lcom/google/android/gms/internal/zzcbs;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "No number filter for long param. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_a
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcfx;->zzixp:Lcom/google/android/gms/internal/zzcfy;

    invoke-direct {p0, v6, v7, v4}, Lcom/google/android/gms/internal/zzcas;->zza(JLcom/google/android/gms/internal/zzcfy;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_b

    return-object v3

    :cond_b
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    if-eqz v0, :cond_12

    return-object v2

    :cond_c
    instance-of v8, v7, Ljava/lang/Double;

    if-eqz v8, :cond_f

    iget-object v8, v4, Lcom/google/android/gms/internal/zzcfx;->zzixp:Lcom/google/android/gms/internal/zzcfy;

    if-nez v8, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    invoke-virtual {p3, v6}, Lcom/google/android/gms/internal/zzcbs;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "No number filter for double param. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_d
    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcfx;->zzixp:Lcom/google/android/gms/internal/zzcfy;

    invoke-direct {p0, v6, v7, v4}, Lcom/google/android/gms/internal/zzcas;->zza(DLcom/google/android/gms/internal/zzcfy;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_e

    return-object v3

    :cond_e
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    if-eqz v0, :cond_12

    return-object v2

    :cond_f
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_15

    iget-object v8, v4, Lcom/google/android/gms/internal/zzcfx;->zzixo:Lcom/google/android/gms/internal/zzcga;

    if-eqz v8, :cond_10

    check-cast v7, Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcfx;->zzixo:Lcom/google/android/gms/internal/zzcga;

    invoke-direct {p0, v7, v4}, Lcom/google/android/gms/internal/zzcas;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcga;)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_5

    :cond_10
    iget-object v8, v4, Lcom/google/android/gms/internal/zzcfx;->zzixp:Lcom/google/android/gms/internal/zzcfy;

    if-eqz v8, :cond_14

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzcfu;->zzkf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcfx;->zzixp:Lcom/google/android/gms/internal/zzcfy;

    invoke-direct {p0, v7, v4}, Lcom/google/android/gms/internal/zzcas;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfy;)Ljava/lang/Boolean;

    move-result-object v4

    :goto_5
    if-nez v4, :cond_11

    return-object v3

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    if-eqz v0, :cond_12

    return-object v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    invoke-virtual {p3, v6}, Lcom/google/android/gms/internal/zzcbs;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Invalid param value for number filter. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    invoke-virtual {p3, v6}, Lcom/google/android/gms/internal/zzcbs;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "No filter for String param. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    if-nez v7, :cond_16

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    invoke-virtual {p3, v6}, Lcom/google/android/gms/internal/zzcbs;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Missing param for filter. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object p3

    invoke-virtual {p3, v6}, Lcom/google/android/gms/internal/zzcbs;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Unknown param type. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    return-object v0

    :cond_2
    if-nez p4, :cond_3

    return-object v0

    :cond_3
    if-nez p3, :cond_5

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_0
    packed-switch p2, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :pswitch_5
    if-eqz p3, :cond_6

    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    const/16 p2, 0x42

    :goto_2
    :try_start_0
    invoke-static {p6, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p1

    const-string p2, "Invalid regular expression in REGEXP audience filter. expression"

    invoke-virtual {p1, p2, p6}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfy;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcfu;->zzkf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/internal/zzcas;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzcfy;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    return-object v1
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcga;)Ljava/lang/Boolean;
    .locals 10

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, p2, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_4

    :cond_2
    return-object v0

    :cond_3
    iget-object v1, p2, Lcom/google/android/gms/internal/zzcga;->zziyb:Ljava/lang/String;

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p2, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcga;->zziyc:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcga;->zziyc:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    move v6, v4

    goto :goto_0

    :cond_5
    move v6, v3

    :goto_0
    if-nez v6, :cond_7

    if-eq v5, v4, :cond_7

    if-ne v5, v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p2, Lcom/google/android/gms/internal/zzcga;->zziyb:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, p2, Lcom/google/android/gms/internal/zzcga;->zziyb:Ljava/lang/String;

    :goto_2
    move-object v7, v1

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    if-nez v1, :cond_8

    move-object v8, v0

    goto :goto_4

    :cond_8
    iget-object p2, p2, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    if-eqz v6, :cond_9

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    move-object v8, p2

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    :goto_3
    if-ge v3, v2, :cond_a

    aget-object v8, p2, v3

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    move-object v8, v1

    :goto_4
    if-ne v5, v4, :cond_b

    move-object v9, v7

    goto :goto_5

    :cond_b
    move-object v9, v0

    :goto_5
    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/zzcas;->zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_6
    return-object v0
.end method

.method private static zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzcfy;D)Ljava/lang/Boolean;
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfy;->zzixs:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfy;->zzixs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfy;->zzixs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfy;->zzixv:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfy;->zzixw:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfy;->zzixu:Ljava/lang/String;

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfy;->zzixs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcfy;->zzixs:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcfy;->zzixv:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfu;->zzkf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcfy;->zzixw:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfu;->zzkf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzcfy;->zzixv:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcfy;->zzixw:Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    move-object v3, v1

    goto :goto_1

    :catch_0
    move-exception p0

    :cond_5
    :goto_0
    return-object v1

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcfy;->zzixu:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfu;->zzkf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    return-object v1

    :cond_7
    :try_start_1
    new-instance v3, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcfy;->zzixu:Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    move-object v4, p1

    :goto_1
    if-ne v0, v2, :cond_8

    if-nez p1, :cond_9

    return-object v1

    :cond_8
    if-eqz v3, :cond_14

    :cond_9
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_12

    const/4 v8, 0x2

    if-eq v0, v8, :cond_10

    const/4 v9, 0x3

    if-eq v0, v9, :cond_c

    if-eq v0, v2, :cond_a

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eq p1, v5, :cond_b

    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-eq p0, v7, :cond_b

    move v6, v7

    :cond_b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_e

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v8}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v7, :cond_d

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v8}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v5, :cond_d

    move v6, v7

    :cond_d
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_f

    move v6, v7

    :cond_f
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v7, :cond_11

    move v6, v7

    :cond_11
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v5, :cond_13

    move v6, v7

    :cond_13
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_14
    :goto_2
    return-object v1

    :catch_1
    move-exception p0

    :cond_15
    :goto_3
    return-object v1
.end method


# virtual methods
.method final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcgf;[Lcom/google/android/gms/internal/zzcgk;)[Lcom/google/android/gms/internal/zzcge;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p2

    move-object/from16 v12, p3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    new-instance v14, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v14}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v15, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v15}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v9, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v9}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/zzcaw;->zziz(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzcgj;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/BitSet;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v15, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7}, Ljava/util/BitSet;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v8, 0x0

    :goto_1
    iget-object v10, v5, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    array-length v10, v10

    shl-int/lit8 v10, v10, 0x6

    if-ge v8, v10, :cond_3

    iget-object v10, v5, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    invoke-static {v10, v8}, Lcom/google/android/gms/internal/zzcfu;->zza([JI)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v10

    move-object/from16 v17, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v18, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v19, v9

    const-string v9, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v10, v9, v2, v3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v5, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/zzcfu;->zza([JI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v9

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v9, v19

    goto :goto_1

    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v9

    new-instance v2, Lcom/google/android/gms/internal/zzcge;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzcge;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzcge;->zziyq:Ljava/lang/Boolean;

    iput-object v5, v2, Lcom/google/android/gms/internal/zzcge;->zziyp:Lcom/google/android/gms/internal/zzcgj;

    new-instance v3, Lcom/google/android/gms/internal/zzcgj;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzcgj;-><init>()V

    iput-object v3, v2, Lcom/google/android/gms/internal/zzcge;->zziyo:Lcom/google/android/gms/internal/zzcgj;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcge;->zziyo:Lcom/google/android/gms/internal/zzcgj;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/util/BitSet;)[J

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcge;->zziyo:Lcom/google/android/gms/internal/zzcgj;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/util/BitSet;)[J

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v9, v19

    goto/16 :goto_0

    :cond_4
    move-object/from16 v19, v9

    const/4 v9, 0x0

    const-string v16, "null"

    const-string v7, "Filter definition"

    const-string v5, "Skipping failed audience ID"

    const/16 v17, 0x1

    if-eqz v0, :cond_13

    new-instance v6, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v6}, Landroid/support/v4/util/ArrayMap;-><init>()V

    array-length v4, v0

    move v3, v9

    :goto_3
    if-ge v3, v4, :cond_13

    aget-object v2, v0, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {v8, v11, v9}, Lcom/google/android/gms/internal/zzcaw;->zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcbe;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v10

    iget-object v0, v2, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v8, v10, v9, v0}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcbe;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    const-wide/16 v21, 0x1

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcgf;->zziyt:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v25, v2

    move-object v2, v0

    move/from16 v26, v3

    move-object/from16 v3, p1

    move/from16 v27, v4

    move-object v4, v8

    move-object/from16 v23, v0

    move-object v0, v5

    move-object v8, v6

    const-wide/16 v5, 0x1

    move-object/from16 v29, v7

    move-object/from16 v28, v8

    move-wide/from16 v7, v21

    move-object/from16 v12, v19

    const/16 v1, 0x100

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/zzcbe;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    move-object/from16 v2, v23

    goto :goto_4

    :cond_5
    move-object/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    move-object v0, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v12, v19

    const/16 v1, 0x100

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcbe;->zzaxx()Lcom/google/android/gms/internal/zzcbe;

    move-result-object v2

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcbe;)V

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzcbe;->zzind:J

    move-object/from16 v4, v25

    iget-object v5, v4, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    move-object/from16 v6, v28

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v5

    iget-object v7, v4, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-virtual {v5, v11, v7}, Lcom/google/android/gms/internal/zzcaw;->zzam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_6

    new-instance v5, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_6
    iget-object v7, v4, Lcom/google/android/gms/internal/zzcgf;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v0, v8}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcge;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/BitSet;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    if-nez v9, :cond_9

    new-instance v1, Lcom/google/android/gms/internal/zzcge;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcge;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v1, Lcom/google/android/gms/internal/zzcge;->zziyq:Ljava/lang/Boolean;

    new-instance v10, Ljava/util/BitSet;

    invoke-direct {v10}, Ljava/util/BitSet;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v12, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, Lcom/google/android/gms/internal/zzcfw;

    move-object/from16 v28, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v6

    move-object/from16 v18, v7

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzcbu;->zzad(I)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v20, v9

    iget-object v9, v5, Lcom/google/android/gms/internal/zzcfw;->zzixi:Ljava/lang/Integer;

    move-object/from16 v21, v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v12

    move-object/from16 v22, v15

    iget-object v15, v5, Lcom/google/android/gms/internal/zzcfw;->zzixj:Ljava/lang/String;

    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/zzcbs;->zzjc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "Evaluating filter. audience, filter, event"

    invoke-virtual {v6, v15, v7, v9, v12}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/zzcbs;->zza(Lcom/google/android/gms/internal/zzcfw;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, v29

    invoke-virtual {v6, v9, v7}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    move-object/from16 v20, v9

    move-object/from16 v21, v12

    move-object/from16 v22, v15

    move-object/from16 v9, v29

    :goto_7
    iget-object v6, v5, Lcom/google/android/gms/internal/zzcfw;->zzixi:Ljava/lang/Integer;

    if-eqz v6, :cond_f

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcfw;->zzixi:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x100

    if-le v6, v7, :cond_b

    goto/16 :goto_9

    :cond_b
    iget-object v6, v5, Lcom/google/android/gms/internal/zzcfw;->zzixi:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v10, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcfw;->zzixi:Ljava/lang/Integer;

    const-string v15, "Event filter already evaluated true. audience ID, filter ID"

    invoke-virtual {v6, v15, v12, v5}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v29, v9

    move-object/from16 v7, v18

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    move-object/from16 v12, v21

    move-object/from16 v15, v22

    goto/16 :goto_b

    :cond_c
    move-object/from16 v6, p0

    invoke-direct {v6, v5, v4, v2, v3}, Lcom/google/android/gms/internal/zzcas;->zza(Lcom/google/android/gms/internal/zzcfw;Lcom/google/android/gms/internal/zzcgf;J)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v15

    move-wide/from16 v23, v2

    if-nez v12, :cond_d

    move-object/from16 v7, v16

    goto :goto_8

    :cond_d
    move-object v7, v12

    :goto_8
    const-string v2, "Event filter result"

    invoke-virtual {v15, v2, v7}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v12, :cond_e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    iget-object v2, v5, Lcom/google/android/gms/internal/zzcfw;->zzixi:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v5, Lcom/google/android/gms/internal/zzcfw;->zzixi:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_a

    :cond_f
    :goto_9
    move-object/from16 v6, p0

    move-wide/from16 v23, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcfw;->zzixi:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Invalid event filter ID. appId, id"

    invoke-virtual {v2, v7, v3, v5}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    :goto_a
    move-object/from16 v29, v9

    move-object/from16 v7, v18

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    move-object/from16 v12, v21

    move-object/from16 v15, v22

    move-wide/from16 v2, v23

    :goto_b
    move-object/from16 v6, v28

    goto/16 :goto_6

    :cond_11
    move-object/from16 v28, v6

    move-object/from16 v6, p0

    move-object/from16 v6, v28

    const/16 v1, 0x100

    goto/16 :goto_5

    :cond_12
    move-object/from16 v28, v6

    move-object/from16 v21, v12

    move-object/from16 v22, v15

    move-object/from16 v9, v29

    move-object/from16 v6, p0

    add-int/lit8 v3, v26, 0x1

    move-object/from16 v12, p3

    move-object v5, v0

    move-object v1, v6

    move-object v7, v9

    move-object/from16 v19, v21

    move/from16 v4, v27

    move-object/from16 v6, v28

    const/4 v9, 0x0

    move-object/from16 v0, p2

    goto/16 :goto_3

    :cond_13
    move-object v6, v1

    move-object v0, v5

    move-object v9, v7

    move-object/from16 v22, v15

    move-object/from16 v21, v19

    move-object/from16 v2, p3

    move-object/from16 v3, v21

    if-eqz v2, :cond_2a

    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    array-length v5, v2

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v5, :cond_2a

    aget-object v7, v2, v10

    iget-object v8, v7, Lcom/google/android/gms/internal/zzcgk;->name:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v8

    iget-object v12, v7, Lcom/google/android/gms/internal/zzcgk;->name:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/internal/zzcaw;->zzan(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    if-nez v8, :cond_14

    new-instance v8, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v8}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_14
    iget-object v12, v7, Lcom/google/android/gms/internal/zzcgk;->name:Ljava/lang/String;

    invoke-interface {v4, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_29

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v0, v15}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_16
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzcge;

    move-object/from16 v18, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v22

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    move-object/from16 v19, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    if-nez v1, :cond_17

    new-instance v0, Lcom/google/android/gms/internal/zzcge;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcge;-><init>()V

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcge;->zziyq:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    move-object/from16 v19, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_17
    move-object v1, v0

    :goto_e
    move-object/from16 v0, v19

    move-object/from16 v19, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v4, v20

    check-cast v4, Lcom/google/android/gms/internal/zzcfz;

    move/from16 v20, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    move-object/from16 v22, v8

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/zzcbu;->zzad(I)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v23, v12

    iget-object v12, v4, Lcom/google/android/gms/internal/zzcfz;->zzixi:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v11

    move-object/from16 v24, v3

    iget-object v3, v4, Lcom/google/android/gms/internal/zzcfz;->zzixy:Ljava/lang/String;

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "Evaluating filter. audience, filter, property"

    invoke-virtual {v5, v11, v8, v12, v3}, Lcom/google/android/gms/internal/zzcbw;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzcbs;->zza(Lcom/google/android/gms/internal/zzcfz;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v9, v5}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    :cond_18
    move-object/from16 v24, v3

    move-object/from16 v23, v12

    :goto_10
    iget-object v3, v4, Lcom/google/android/gms/internal/zzcfz;->zzixi:Ljava/lang/Integer;

    if-eqz v3, :cond_27

    iget-object v3, v4, Lcom/google/android/gms/internal/zzcfz;->zzixi:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x100

    if-le v3, v5, :cond_19

    goto/16 :goto_17

    :cond_19
    iget-object v3, v4, Lcom/google/android/gms/internal/zzcfz;->zzixi:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcfz;->zzixi:Ljava/lang/Integer;

    const-string v11, "Property filter already evaluated true. audience ID, filter ID"

    invoke-virtual {v3, v11, v8, v4}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    :goto_11
    move-object/from16 v11, p1

    move/from16 v5, v20

    move-object/from16 v4, v21

    move-object/from16 v8, v22

    move-object/from16 v12, v23

    move-object/from16 v3, v24

    goto/16 :goto_f

    :cond_1b
    iget-object v3, v4, Lcom/google/android/gms/internal/zzcfz;->zzixz:Lcom/google/android/gms/internal/zzcfx;

    if-nez v3, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v8

    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "Missing property filter. property"

    :goto_12
    invoke-virtual {v3, v11, v8}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_13
    const/4 v3, 0x0

    goto/16 :goto_15

    :cond_1c
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v11, v3, Lcom/google/android/gms/internal/zzcfx;->zzixq:Ljava/lang/Boolean;

    invoke-virtual {v8, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->zziyw:Ljava/lang/Long;

    if-eqz v11, :cond_1e

    iget-object v11, v3, Lcom/google/android/gms/internal/zzcfx;->zzixp:Lcom/google/android/gms/internal/zzcfy;

    if-nez v11, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v8

    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "No number filter for long property. property"

    goto :goto_12

    :cond_1d
    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->zziyw:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcfx;->zzixp:Lcom/google/android/gms/internal/zzcfy;

    invoke-direct {v6, v11, v12, v3}, Lcom/google/android/gms/internal/zzcas;->zza(JLcom/google/android/gms/internal/zzcfy;)Ljava/lang/Boolean;

    move-result-object v3

    :goto_14
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/zzcas;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_15

    :cond_1e
    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->zziwx:Ljava/lang/Double;

    if-eqz v11, :cond_20

    iget-object v11, v3, Lcom/google/android/gms/internal/zzcfx;->zzixp:Lcom/google/android/gms/internal/zzcfy;

    if-nez v11, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v8

    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "No number filter for double property. property"

    goto :goto_12

    :cond_1f
    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->zziwx:Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcfx;->zzixp:Lcom/google/android/gms/internal/zzcfy;

    invoke-direct {v6, v11, v12, v3}, Lcom/google/android/gms/internal/zzcas;->zza(DLcom/google/android/gms/internal/zzcfy;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_14

    :cond_20
    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->zzfwi:Ljava/lang/String;

    if-eqz v11, :cond_24

    iget-object v11, v3, Lcom/google/android/gms/internal/zzcfx;->zzixo:Lcom/google/android/gms/internal/zzcga;

    if-nez v11, :cond_23

    iget-object v11, v3, Lcom/google/android/gms/internal/zzcfx;->zzixp:Lcom/google/android/gms/internal/zzcfy;

    if-nez v11, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v8

    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "No string or number filter defined. property"

    goto/16 :goto_12

    :cond_21
    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->zzfwi:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/zzcfu;->zzkf(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_22

    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->zzfwi:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcfx;->zzixp:Lcom/google/android/gms/internal/zzcfy;

    invoke-direct {v6, v11, v3}, Lcom/google/android/gms/internal/zzcas;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfy;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_14

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v8

    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->zzfwi:Ljava/lang/String;

    const-string v12, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual {v3, v12, v8, v11}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_23
    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->zzfwi:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcfx;->zzixo:Lcom/google/android/gms/internal/zzcga;

    invoke-direct {v6, v11, v3}, Lcom/google/android/gms/internal/zzcas;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcga;)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_14

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauf()Lcom/google/android/gms/internal/zzcbs;

    move-result-object v8

    iget-object v11, v7, Lcom/google/android/gms/internal/zzcgk;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/zzcbs;->zzje(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "User property has no value, property"

    goto/16 :goto_12

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v8

    if-nez v3, :cond_25

    move-object/from16 v11, v16

    goto :goto_16

    :cond_25
    move-object v11, v3

    :goto_16
    const-string v12, "Property filter result"

    invoke-virtual {v8, v12, v11}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v3, :cond_26

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_26
    iget-object v8, v4, Lcom/google/android/gms/internal/zzcfz;->zzixi:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v4, Lcom/google/android/gms/internal/zzcfz;->zzixi:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_11

    :cond_27
    const/16 v5, 0x100

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v4, Lcom/google/android/gms/internal/zzcfz;->zzixi:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid property filter ID. appId, id"

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p1

    move-object/from16 v0, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v8, v22

    move-object/from16 v12, v23

    move-object/from16 v3, v24

    move-object/from16 v22, v2

    goto :goto_18

    :cond_28
    move-object/from16 v11, p1

    move-object/from16 v22, v2

    move-object/from16 v0, v18

    move-object/from16 v4, v19

    :goto_18
    move-object/from16 v2, p3

    goto/16 :goto_d

    :cond_29
    move-object/from16 v18, v0

    move-object/from16 v24, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v2, v22

    const/16 v5, 0x100

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v11, p1

    move/from16 v5, v20

    move-object/from16 v2, p3

    goto/16 :goto_c

    :cond_2a
    move-object/from16 v24, v3

    move-object/from16 v2, v22

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Lcom/google/android/gms/internal/zzcge;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v10, 0x0

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzcge;

    if-nez v4, :cond_2b

    new-instance v4, Lcom/google/android/gms/internal/zzcge;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzcge;-><init>()V

    :cond_2b
    add-int/lit8 v5, v10, 0x1

    aput-object v4, v1, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/google/android/gms/internal/zzcge;->zzixe:Ljava/lang/Integer;

    new-instance v7, Lcom/google/android/gms/internal/zzcgj;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzcgj;-><init>()V

    iput-object v7, v4, Lcom/google/android/gms/internal/zzcge;->zziyo:Lcom/google/android/gms/internal/zzcgj;

    iget-object v7, v4, Lcom/google/android/gms/internal/zzcge;->zziyo:Lcom/google/android/gms/internal/zzcgj;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/util/BitSet;)[J

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/internal/zzcgj;->zzjab:[J

    iget-object v7, v4, Lcom/google/android/gms/internal/zzcge;->zziyo:Lcom/google/android/gms/internal/zzcgj;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, v24

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzcfu;->zza(Ljava/util/BitSet;)[J

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/internal/zzcgj;->zzjaa:[J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v7

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcge;->zziyo:Lcom/google/android/gms/internal/zzcgj;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzegz;->zzbjo()I

    move-result v8

    new-array v10, v8, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v11, 0x0

    :try_start_1
    invoke-static {v10, v11, v8}, Lcom/google/android/gms/internal/zzegr;->zzi([BII)Lcom/google/android/gms/internal/zzegr;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/zzegz;->zza(Lcom/google/android/gms/internal/zzegr;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzegr;->zzcch()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "app_id"

    move-object/from16 v12, p1

    invoke-virtual {v4, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v8, "audience_id"

    invoke-virtual {v4, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "current_results"

    invoke-virtual {v4, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcaw;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v8, "audience_filter_values"
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v10, 0x5

    const/4 v15, 0x0

    :try_start_3
    invoke-virtual {v0, v8, v15, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v16

    const-wide/16 v18, -0x1

    cmp-long v0, v16, v18

    if-nez v0, :cond_2c

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v4, "Failed to insert filter results (got -1). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1d

    :catch_0
    move-exception v0

    goto :goto_1a

    :catch_1
    move-exception v0

    const/4 v15, 0x0

    :goto_1a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Error storing filter results. appId"

    goto :goto_1c

    :catch_2
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_1b

    :catch_3
    move-exception v0

    move-object/from16 v12, p1

    const/4 v11, 0x0

    :goto_1b
    const/4 v15, 0x0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Configuration loss. Failed to serialize filter results. appId"

    :goto_1c
    invoke-virtual {v4, v8, v7, v0}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    :goto_1d
    move v10, v5

    move-object/from16 v24, v9

    goto/16 :goto_19

    :cond_2d
    move-object/from16 v12, p1

    goto/16 :goto_19

    :cond_2e
    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzcge;

    return-object v0
.end method

.method protected final zzuh()V
    .locals 0

    return-void
.end method
