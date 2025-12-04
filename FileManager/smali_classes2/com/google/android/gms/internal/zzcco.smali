.class public final Lcom/google/android/gms/internal/zzcco;
.super Lcom/google/android/gms/internal/zzcds;


# instance fields
.field private final zzirm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzirn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zziro:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzirp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcgc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzirq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcds;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcco;->zzirm:Ljava/util/Map;

    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcco;->zzirn:Ljava/util/Map;

    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcco;->zziro:Ljava/util/Map;

    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcco;->zzirp:Ljava/util/Map;

    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcco;->zzirq:Ljava/util/Map;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcgc;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcgc;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgc;->zziyj:[Lcom/google/android/gms/internal/zzcgd;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcgc;->zziyj:[Lcom/google/android/gms/internal/zzcgd;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcgd;->key:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcgd;->value:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgc;)V
    .locals 7

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    if-eqz p2, :cond_2

    iget-object v2, p2, Lcom/google/android/gms/internal/zzcgc;->zziyk:[Lcom/google/android/gms/internal/zzcgb;

    if-eqz v2, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgc;->zziyk:[Lcom/google/android/gms/internal/zzcgb;

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/google/android/gms/internal/zzcgb;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zzil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iput-object v5, v4, Lcom/google/android/gms/internal/zzcgb;->name:Ljava/lang/String;

    :cond_0
    iget-object v5, v4, Lcom/google/android/gms/internal/zzcgb;->name:Ljava/lang/String;

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcgb;->zziyf:Ljava/lang/Boolean;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/google/android/gms/internal/zzcgb;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcgb;->zziyg:Ljava/lang/Boolean;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcco;->zzirn:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcco;->zziro:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zzc(Ljava/lang/String;[B)Lcom/google/android/gms/internal/zzcgc;
    .locals 4

    if-nez p2, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzcgc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzcgc;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/zzegq;->zzh([BII)Lcom/google/android/gms/internal/zzegq;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/zzcgc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcgc;-><init>()V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzegz;->zza(Lcom/google/android/gms/internal/zzegq;)Lcom/google/android/gms/internal/zzegz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object p2

    const-string v1, "Parsed config. version, gmp_app_id"

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgc;->zziyh:Ljava/lang/Long;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgc;->zziln:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Unable to merge remote config. appId"

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcgc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzcgc;-><init>()V

    return-object p1
.end method

.method private final zzjm(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zzirp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcaw;->zziy(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zzirm:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zzirn:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zziro:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zzirp:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zzirq:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcco;->zzc(Ljava/lang/String;[B)Lcom/google/android/gms/internal/zzcgc;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcco;->zzirm:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcco;->zza(Lcom/google/android/gms/internal/zzcgc;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcco;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgc;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcco;->zzirp:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zzirq:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zzap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcco;->zzjm(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zzirm:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final zzaq(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcco;->zzjm(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcfu;->zzkg(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcfu;->zzkd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcfu;->zzkh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcfu;->zzju(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zzirn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method final zzar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcco;->zzjm(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zziro:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    return v0
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

.method protected final zzb(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/internal/zzcco;->zzc(Ljava/lang/String;[B)Lcom/google/android/gms/internal/zzcgc;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzcco;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgc;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcco;->zzirp:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcco;->zzirq:Ljava/util/Map;

    move-object/from16 v5, p3

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcco;->zzirm:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcco;->zza(Lcom/google/android/gms/internal/zzcgc;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzatx()Lcom/google/android/gms/internal/zzcas;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcgc;->zziyl:[Lcom/google/android/gms/internal/zzcfv;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v6, v5

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    iget-object v9, v8, Lcom/google/android/gms/internal/zzcfv;->zzixg:[Lcom/google/android/gms/internal/zzcfw;

    array-length v10, v9

    move v11, v3

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v12, v9, v11

    iget-object v13, v12, Lcom/google/android/gms/internal/zzcfw;->zzixj:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zzil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    iput-object v13, v12, Lcom/google/android/gms/internal/zzcfw;->zzixj:Ljava/lang/String;

    :cond_1
    iget-object v12, v12, Lcom/google/android/gms/internal/zzcfw;->zzixk:[Lcom/google/android/gms/internal/zzcfx;

    array-length v13, v12

    move v14, v3

    :goto_2
    if-ge v14, v13, :cond_3

    aget-object v15, v12, v14

    iget-object v3, v15, Lcom/google/android/gms/internal/zzcfx;->zzixr:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/AppMeasurement$Param;->zzil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iput-object v3, v15, Lcom/google/android/gms/internal/zzcfx;->zzixr:Ljava/lang/String;

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    iget-object v3, v8, Lcom/google/android/gms/internal/zzcfv;->zzixf:[Lcom/google/android/gms/internal/zzcfz;

    array-length v8, v3

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_6

    aget-object v10, v3, v9

    iget-object v11, v10, Lcom/google/android/gms/internal/zzcfz;->zzixy:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zzil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    iput-object v11, v10, Lcom/google/android/gms/internal/zzcfz;->zzixy:Ljava/lang/String;

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcdr;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/zzcaw;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcfv;)V

    const/4 v3, 0x0

    :try_start_0
    iput-object v3, v0, Lcom/google/android/gms/internal/zzcgc;->zziyl:[Lcom/google/android/gms/internal/zzcfv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegz;->zzbjo()I

    move-result v3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/zzegr;->zzi([BII)Lcom/google/android/gms/internal/zzegr;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzegz;->zza(Lcom/google/android/gms/internal/zzegr;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Unable to serialize reduced-size config. Storing full config instead. appId"

    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v4, p2

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaue()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "remote_config"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcaw;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "apps"

    const-string v6, "app_id = ?"

    new-array v7, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v4, "Failed to update remote config (got 0). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Error storing remote config. appId"

    invoke-virtual {v1, v4, v2, v0}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_5
    return v3
.end method

.method protected final zzjn(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgc;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcco;->zzjm(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zzirp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcgc;

    return-object p1
.end method

.method protected final zzjo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zzirq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final zzjp(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zzirq:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final zzjq(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcco;->zzirp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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
