.class final Lcom/google/android/gms/internal/zzcfo;
.super Ljava/lang/Object;


# instance fields
.field private mStartTime:J

.field private final zzasl:Lcom/google/android/gms/common/util/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfo;->zzasl:Lcom/google/android/gms/common/util/zzd;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcfo;->mStartTime:J

    return-void
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfo;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcfo;->mStartTime:J

    return-void
.end method

.method public final zzu(J)Z
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfo;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfo;->zzasl:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcfo;->mStartTime:J

    sub-long/2addr v2, v4

    cmp-long p1, v2, p1

    if-ltz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
