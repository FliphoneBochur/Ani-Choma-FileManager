.class public Lcom/google/android/gms/measurement/AppMeasurement$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/AppMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field public zzikg:Ljava/lang/String;

.field public zzikh:Ljava/lang/String;

.field public zziki:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikg:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzikh:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziki:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziki:J

    return-void
.end method
