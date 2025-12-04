.class final Lcom/google/android/gms/internal/zzccb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final zzbyx:I

.field private final zzdfd:Ljava/lang/Throwable;

.field private final zzipw:Lcom/google/android/gms/internal/zzcca;

.field private final zzipx:[B

.field private final zzipy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcca;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcca;",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzccb;->zzipw:Lcom/google/android/gms/internal/zzcca;

    iput p3, p0, Lcom/google/android/gms/internal/zzccb;->zzbyx:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzccb;->zzdfd:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzccb;->zzipx:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccb;->mPackageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzccb;->zzipy:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcca;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/internal/zzcbz;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzccb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcca;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccb;->zzipw:Lcom/google/android/gms/internal/zzcca;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccb;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzccb;->zzbyx:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzccb;->zzdfd:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzccb;->zzipx:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/zzccb;->zzipy:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcca;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
