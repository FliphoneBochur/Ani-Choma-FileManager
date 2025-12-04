.class final Lcom/google/android/gms/internal/zzced;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zziud:Ljava/lang/String;

.field private synthetic zziup:Lcom/google/android/gms/internal/zzcdu;

.field private synthetic zziuu:J

.field private synthetic zziuz:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcdu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzced;->zziup:Lcom/google/android/gms/internal/zzcdu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzced;->zziud:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzced;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzced;->zziuz:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzced;->zziuu:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzced;->zziup:Lcom/google/android/gms/internal/zzcdu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzced;->zziud:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzced;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzced;->zziuz:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzced;->zziuu:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcdu;->zza(Lcom/google/android/gms/internal/zzcdu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
