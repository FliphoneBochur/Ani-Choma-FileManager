.class public final Lcom/google/android/gms/internal/zzcaq;
.super Lcom/google/android/gms/internal/zzbcc;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcaq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final zzhtl:Ljava/lang/String;

.field public final zziln:Ljava/lang/String;

.field public final zzilo:Ljava/lang/String;

.field public final zzilp:J

.field public final zzilq:J

.field public final zzilr:Ljava/lang/String;

.field public final zzils:Z

.field public final zzilt:Z

.field public final zzilu:J

.field public final zzilv:Ljava/lang/String;

.field public final zzilw:J

.field public final zzilx:J

.field public final zzily:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcar;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcar;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcaq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJI)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcc;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzgf(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzhtl:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilu:J

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilo:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilp:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilq:J

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilr:Ljava/lang/String;

    move v1, p12

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzils:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilt:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilv:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilw:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilx:J

    move/from16 v1, p19

    iput v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzily:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJI)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcc;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzhtl:Ljava/lang/String;

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilu:J

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilo:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilp:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilq:J

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilr:Ljava/lang/String;

    move v1, p10

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzils:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilt:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilv:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilw:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzilx:J

    move/from16 v1, p19

    iput v1, v0, Lcom/google/android/gms/internal/zzcaq;->zzily:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcf;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcaq;->packageName:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcaq;->zziln:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzhtl:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzilo:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzilp:J

    const/4 v3, 0x6

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzilq:J

    const/4 v3, 0x7

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzilr:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzils:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzilt:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;IZ)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzilu:J

    const/16 v3, 0xb

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzilv:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzilw:J

    const/16 v2, 0xd

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzilx:J

    const/16 v2, 0xe

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;IJ)V

    iget v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzily:I

    const/16 v1, 0xf

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/zzbcf;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbcf;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
