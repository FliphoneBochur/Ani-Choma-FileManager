.class final Lcom/google/android/gms/internal/zzcfm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzikq:J

.field private synthetic zziwq:Lcom/google/android/gms/internal/zzcfj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcfj;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfm;->zziwq:Lcom/google/android/gms/internal/zzcfj;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcfm;->zzikq:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfm;->zziwq:Lcom/google/android/gms/internal/zzcfj;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfm;->zzikq:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfj;->zza(Lcom/google/android/gms/internal/zzcfj;J)V

    return-void
.end method
