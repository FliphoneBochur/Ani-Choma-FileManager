.class public final Lcom/google/android/gms/internal/zzehx;
.super Lcom/google/android/gms/internal/zzegz;


# instance fields
.field public zzgbv:J

.field public zznho:Ljava/lang/String;

.field public zznhp:Ljava/lang/String;

.field public zznhq:J

.field public zznhr:Ljava/lang/String;

.field public zznhs:J

.field public zznht:Ljava/lang/String;

.field public zznhu:Ljava/lang/String;

.field public zznhv:Ljava/lang/String;

.field public zznhw:Ljava/lang/String;

.field public zznhx:Ljava/lang/String;

.field public zznhy:I

.field public zznhz:[Lcom/google/android/gms/internal/zzehw;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegz;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznho:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhp:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzehx;->zznhq:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhr:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzehx;->zznhs:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzehx;->zzgbv:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznht:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhu:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhv:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhw:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhx:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhy:I

    invoke-static {}, Lcom/google/android/gms/internal/zzehw;->zzcev()[Lcom/google/android/gms/internal/zzehw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhz:[Lcom/google/android/gms/internal/zzehw;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzehx;->zzndw:I

    return-void
.end method

.method public static zzay([B)Lcom/google/android/gms/internal/zzehx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzegy;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzehx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehx;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzegz;->zza(Lcom/google/android/gms/internal/zzegz;[B)Lcom/google/android/gms/internal/zzegz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzehx;

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzegq;)Lcom/google/android/gms/internal/zzegz;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcbv()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegq;->zzgl(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x6a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzehc;->zzb(Lcom/google/android/gms/internal/zzegq;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehx;->zznhz:[Lcom/google/android/gms/internal/zzehw;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v3, v0, [Lcom/google/android/gms/internal/zzehw;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzehx;->zznhz:[Lcom/google/android/gms/internal/zzehw;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/zzehw;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzehw;-><init>()V

    aput-object v2, v3, v1

    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzegq;->zza(Lcom/google/android/gms/internal/zzegz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcbv()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzehw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehw;-><init>()V

    aput-object v0, v3, v1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegq;->zza(Lcom/google/android/gms/internal/zzegz;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzehx;->zznhz:[Lcom/google/android/gms/internal/zzehw;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcbw()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhy:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhx:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhw:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhv:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhu:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznht:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcdv()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzehx;->zzgbv:J

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcdv()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhs:J

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhr:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcdv()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhq:J

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhp:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznho:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_c
        0x12 -> :sswitch_b
        0x18 -> :sswitch_a
        0x22 -> :sswitch_9
        0x28 -> :sswitch_8
        0x30 -> :sswitch_7
        0x3a -> :sswitch_6
        0x42 -> :sswitch_5
        0x4a -> :sswitch_4
        0x52 -> :sswitch_3
        0x5a -> :sswitch_2
        0x60 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegr;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznho:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznho:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzegr;->zzl(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhp:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehx;->zznhp:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegr;->zzl(ILjava/lang/String;)V

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzehx;->zznhq:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzegr;->zzb(IJ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhr:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehx;->zznhr:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegr;->zzl(ILjava/lang/String;)V

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzehx;->zznhs:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzegr;->zzb(IJ)V

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzehx;->zzgbv:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzegr;->zzb(IJ)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznht:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehx;->zznht:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegr;->zzl(ILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhu:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehx;->zznhu:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegr;->zzl(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhv:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehx;->zznhv:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegr;->zzl(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhw:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehx;->zznhw:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegr;->zzl(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhx:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehx;->zznhx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzegr;->zzl(ILjava/lang/String;)V

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhy:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzegr;->zzu(II)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zznhz:[Lcom/google/android/gms/internal/zzehw;

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehx;->zznhz:[Lcom/google/android/gms/internal/zzehw;

    array-length v2, v1

    if-ge v0, v2, :cond_d

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzegr;->zza(ILcom/google/android/gms/internal/zzegz;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_d
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzegz;->zza(Lcom/google/android/gms/internal/zzegr;)V

    return-void
.end method

.method protected final zzn()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/zzegz;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehx;->zznho:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehx;->zznho:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzegr;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehx;->zznhp:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehx;->zznhp:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegr;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzehx;->zznhq:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/zzegr;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehx;->zznhr:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehx;->zznhr:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegr;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzehx;->zznhs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/zzegr;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzehx;->zzgbv:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/zzegr;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehx;->zznht:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehx;->zznht:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegr;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehx;->zznhu:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehx;->zznhu:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegr;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehx;->zznhv:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehx;->zznhv:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegr;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehx;->zznhw:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xa

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehx;->zznhw:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegr;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehx;->zznhx:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehx;->zznhx:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzegr;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/google/android/gms/internal/zzehx;->zznhy:I

    if-eqz v1, :cond_b

    const/16 v2, 0xc

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzegr;->zzv(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehx;->zznhz:[Lcom/google/android/gms/internal/zzehw;

    if-eqz v1, :cond_d

    array-length v1, v1

    if-lez v1, :cond_d

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzehx;->zznhz:[Lcom/google/android/gms/internal/zzehw;

    array-length v3, v2

    if-ge v1, v3, :cond_d

    aget-object v2, v2, v1

    if-eqz v2, :cond_c

    const/16 v3, 0xd

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzegr;->zzb(ILcom/google/android/gms/internal/zzegz;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_d
    return v0
.end method
