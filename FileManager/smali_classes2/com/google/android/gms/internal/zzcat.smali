.class public final Lcom/google/android/gms/internal/zzcat;
.super Lcom/google/android/gms/internal/zzbcc;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public packageName:Ljava/lang/String;

.field private versionCode:I

.field public zzilz:Ljava/lang/String;

.field public zzima:Lcom/google/android/gms/internal/zzcfr;

.field public zzimb:J

.field public zzimc:Z

.field public zzimd:Ljava/lang/String;

.field public zzime:Lcom/google/android/gms/internal/zzcbi;

.field public zzimf:J

.field public zzimg:Lcom/google/android/gms/internal/zzcbi;

.field public zzimh:J

.field public zzimi:Lcom/google/android/gms/internal/zzcbi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcau;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcfr;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcbi;JLcom/google/android/gms/internal/zzcbi;JLcom/google/android/gms/internal/zzcbi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcc;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcat;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcat;->zzimb:J

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcat;->zzimd:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzcat;->zzime:Lcom/google/android/gms/internal/zzcbi;

    iput-wide p10, p0, Lcom/google/android/gms/internal/zzcat;->zzimf:J

    iput-object p12, p0, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    iput-wide p13, p0, Lcom/google/android/gms/internal/zzcat;->zzimh:J

    iput-object p15, p0, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzcat;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcc;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcat;->versionCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbp;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzcat;->zzimb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcat;->zzimb:J

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->zzimd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcat;->zzimd:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->zzime:Lcom/google/android/gms/internal/zzcbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcat;->zzime:Lcom/google/android/gms/internal/zzcbi;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzcat;->zzimf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcat;->zzimf:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzcat;->zzimh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcat;->zzimh:J

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcfr;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcbi;JLcom/google/android/gms/internal/zzcbi;JLcom/google/android/gms/internal/zzcbi;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcc;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcat;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcat;->zzimb:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcat;->zzimd:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcat;->zzime:Lcom/google/android/gms/internal/zzcbi;

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzcat;->zzimf:J

    iput-object p11, p0, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    iput-wide p12, p0, Lcom/google/android/gms/internal/zzcat;->zzimh:J

    iput-object p14, p0, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcf;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzcat;->versionCode:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbcf;->zzc(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcat;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcat;->zzilz:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcat;->zzima:Lcom/google/android/gms/internal/zzcfr;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcat;->zzimb:J

    const/4 v4, 0x5

    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;IJ)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcat;->zzimc:Z

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcat;->zzimd:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcat;->zzime:Lcom/google/android/gms/internal/zzcbi;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcat;->zzimf:J

    const/16 v4, 0x9

    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcat;->zzimg:Lcom/google/android/gms/internal/zzcbi;

    const/16 v2, 0xa

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcat;->zzimh:J

    const/16 v4, 0xb

    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcat;->zzimi:Lcom/google/android/gms/internal/zzcbi;

    const/16 v2, 0xc

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/zzbcf;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbcf;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
