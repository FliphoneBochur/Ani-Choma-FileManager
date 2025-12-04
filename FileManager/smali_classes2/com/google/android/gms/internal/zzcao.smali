.class final Lcom/google/android/gms/internal/zzcao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzikq:J

.field private synthetic zzikr:Lcom/google/android/gms/internal/zzcal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcal;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcao;->zzikr:Lcom/google/android/gms/internal/zzcal;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcao;->zzikq:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcao;->zzikr:Lcom/google/android/gms/internal/zzcal;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcao;->zzikq:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzcal;->zza(Lcom/google/android/gms/internal/zzcal;J)V

    return-void
.end method
