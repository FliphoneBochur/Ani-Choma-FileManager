.class final Lcom/google/android/gms/internal/zzcan;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaoi:Ljava/lang/String;

.field private synthetic zzikq:J

.field private synthetic zzikr:Lcom/google/android/gms/internal/zzcal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcal;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcan;->zzikr:Lcom/google/android/gms/internal/zzcal;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcan;->zzaoi:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcan;->zzikq:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcan;->zzikr:Lcom/google/android/gms/internal/zzcal;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcan;->zzaoi:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcan;->zzikq:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcal;->zzb(Lcom/google/android/gms/internal/zzcal;Ljava/lang/String;J)V

    return-void
.end method
