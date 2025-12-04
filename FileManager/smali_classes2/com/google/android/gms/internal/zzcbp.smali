.class public final Lcom/google/android/gms/internal/zzcbp;
.super Lcom/google/android/gms/internal/zzcds;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private zzcxs:Ljava/lang/String;

.field private zzdmg:Ljava/lang/String;

.field private zzdmh:Ljava/lang/String;

.field private zziky:Ljava/lang/String;

.field private zzilc:J

.field private zzioz:I

.field private zzipa:J

.field private zzipb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcds;-><init>(Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method

.method private final zzaup()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbu;->zzaye()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v0

    const-string v1, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method final getAppId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbp;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final getGmpAppId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbp;->zzcxs:Ljava/lang/String;

    return-object v0
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

.method final zzaxz()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfu;->zzazx()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const-string v0, "%032x"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzaya()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    iget v0, p0, Lcom/google/android/gms/internal/zzcbp;->zzioz:I

    return v0
.end method

.method final zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcaq;
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    new-instance v21, Lcom/google/android/gms/internal/zzcaq;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcbp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcbp;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcbp;->zzdmh:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcbp;->zzaya()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    iget-object v7, v0, Lcom/google/android/gms/internal/zzcbp;->zziky:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzauu()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzug()V

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzcbp;->zzipa:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcbp;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccu;->zzaug()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/internal/zzcfu;->zzai(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/internal/zzcbp;->zzipa:J

    :cond_0
    iget-wide v10, v0, Lcom/google/android/gms/internal/zzcbp;->zzipa:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcbp;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccu;->isEnabled()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcdr;->zzaul()Lcom/google/android/gms/internal/zzccf;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzccf;->zziqy:Z

    xor-int/lit8 v14, v1, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcbp;->zzaup()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    const-wide/16 v16, 0x0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcbp;->zzikb:Lcom/google/android/gms/internal/zzccu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzccu;->zzazd()J

    move-result-wide v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcds;->zzwh()V

    iget v0, v0, Lcom/google/android/gms/internal/zzcbp;->zzipb:I

    move/from16 v20, v0

    move-object/from16 v1, v21

    move-object/from16 v12, p1

    invoke-direct/range {v1 .. v20}, Lcom/google/android/gms/internal/zzcaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJI)V

    return-object v21
.end method

.method public final bridge synthetic zzug()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzug()V

    return-void
.end method

.method protected final zzuh()V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "Unknown"

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "unknown"

    const/high16 v6, -0x80000000

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-virtual {v1, v8, v7}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v1, v2

    goto/16 :goto_4

    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/internal/zzcbw;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v5, :cond_2

    const-string v5, "manual_install"

    goto :goto_1

    :cond_2
    const-string v7, "com.android.vending"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v5, v3

    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    :try_start_2
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v7

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving package info. appId, appName"

    invoke-virtual {v7, v9, v8, v2}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/internal/zzcbp;->mAppId:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gms/internal/zzcbp;->zziky:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcbp;->zzdmh:Ljava/lang/String;

    iput v6, p0, Lcom/google/android/gms/internal/zzcbp;->zzioz:I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcbp;->zzdmg:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzcbp;->zzipa:J

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/zzca;->zzcc(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v6

    goto :goto_5

    :cond_5
    move v7, v4

    :goto_5
    if-nez v7, :cond_7

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    const-string v8, "GoogleService failed to initialize (no status)"

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    const-string v10, "GoogleService failed to initialize, status"

    invoke-virtual {v8, v10, v9, v5}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_6
    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaum()Lcom/google/android/gms/internal/zzcav;

    move-result-object v5

    const-string v7, "firebase_analytics_collection_enabled"

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/zzcav;->zzit(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzaum()Lcom/google/android/gms/internal/zzcav;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcav;->zzawk()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzayg()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    const-string v6, "Collection disabled with firebase_analytics_collection_deactivated=1"

    :goto_7
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzayg()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    const-string v6, "Collection disabled with firebase_analytics_collection_enabled=0"

    goto :goto_7

    :cond_9
    if-nez v5, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzaie()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzayg()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    const-string v6, "Collection disabled with google_app_measurement_enable=0"

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v5

    const-string v7, "Collection enabled"

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/zzcbw;->log(Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    :goto_8
    move v6, v4

    :goto_9
    iput-object v3, p0, Lcom/google/android/gms/internal/zzcbp;->zzcxs:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzcbp;->zzilc:J

    invoke-static {}, Lcom/google/android/gms/internal/zzcav;->zzawj()Z

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzca;->zzaid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_a

    :cond_c
    move-object v3, v1

    :goto_a
    iput-object v3, p0, Lcom/google/android/gms/internal/zzcbp;->zzcxs:Ljava/lang/String;

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcbu;->zzayi()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v1

    const-string v2, "App package, google app id"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcbp;->mAppId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcbp;->zzcxs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->zzauk()Lcom/google/android/gms/internal/zzcbu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcbu;->zzayc()Lcom/google/android/gms/internal/zzcbw;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcbu;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "getGoogleAppId or isMeasurementEnabled failed with exception. appId"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzcbw;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    :goto_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdt;->zzcq(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzcbp;->zzipb:I

    return-void

    :cond_e
    iput v4, p0, Lcom/google/android/gms/internal/zzcbp;->zzipb:I

    return-void
.end method

.method public final bridge synthetic zzvu()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcds;->zzvu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method
