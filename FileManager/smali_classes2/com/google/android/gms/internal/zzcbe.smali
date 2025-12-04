.class final Lcom/google/android/gms/internal/zzcbe;
.super Ljava/lang/Object;


# instance fields
.field final mAppId:Ljava/lang/String;

.field final mName:Ljava/lang/String;

.field final zzind:J

.field final zzine:J

.field final zzinf:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbp;->zzbh(Z)V

    cmp-long v0, p5, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbp;->zzbh(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcbe;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcbe;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcbe;->zzind:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcbe;->zzine:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzcbe;->zzinf:J

    return-void
.end method


# virtual methods
.method final zzaxx()Lcom/google/android/gms/internal/zzcbe;
    .locals 10

    new-instance v9, Lcom/google/android/gms/internal/zzcbe;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcbe;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcbe;->mName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzcbe;->zzind:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-wide v7, p0, Lcom/google/android/gms/internal/zzcbe;->zzine:J

    add-long/2addr v5, v7

    iget-wide v7, p0, Lcom/google/android/gms/internal/zzcbe;->zzinf:J

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzcbe;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-object v9
.end method

.method final zzbb(J)Lcom/google/android/gms/internal/zzcbe;
    .locals 10

    new-instance v9, Lcom/google/android/gms/internal/zzcbe;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcbe;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcbe;->mName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzcbe;->zzind:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzcbe;->zzine:J

    move-object v0, v9

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzcbe;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-object v9
.end method
