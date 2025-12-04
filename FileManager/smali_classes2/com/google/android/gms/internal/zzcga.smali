.class public final Lcom/google/android/gms/internal/zzcga;
.super Lcom/google/android/gms/internal/zzegt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzegt<",
        "Lcom/google/android/gms/internal/zzcga;",
        ">;"
    }
.end annotation


# instance fields
.field public zziya:Ljava/lang/Integer;

.field public zziyb:Ljava/lang/String;

.field public zziyc:Ljava/lang/Boolean;

.field public zziyd:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegt;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcga;->zziyb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcga;->zziyc:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/android/gms/internal/zzehc;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcga;->zzndn:Lcom/google/android/gms/internal/zzegv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcga;->zzndw:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzcga;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzcga;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziyb:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcga;->zziyb:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcga;->zziyb:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziyc:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcga;->zziyc:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcga;->zziyc:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegx;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zzndn:Lcom/google/android/gms/internal/zzegv;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegv;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcga;->zzndn:Lcom/google/android/gms/internal/zzegv;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcga;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegv;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzcga;->zzndn:Lcom/google/android/gms/internal/zzegv;

    if-eqz v1, :cond_c

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcga;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegv;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziyb:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziyc:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzegx;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zzndn:Lcom/google/android/gms/internal/zzegv;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegv;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zzndn:Lcom/google/android/gms/internal/zzegv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegv;->hashCode()I

    move-result v2

    :cond_4
    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

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

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzegt;->zza(Lcom/google/android/gms/internal/zzegq;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzehc;->zzb(Lcom/google/android/gms/internal/zzegq;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v3, v0, [Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcbv()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    iput-object v3, p0, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzcdw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcga;->zziyc:Ljava/lang/Boolean;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcga;->zziyb:Ljava/lang/String;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegq;->zzccd()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzegq;->zzha(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzegt;->zza(Lcom/google/android/gms/internal/zzegq;I)Z

    goto :goto_0

    :pswitch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    goto :goto_0

    :cond_8
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzegr;->zzu(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcga;->zziyb:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzegr;->zzl(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcga;->zziyc:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzegr;->zzl(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzegr;->zzl(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzegt;->zza(Lcom/google/android/gms/internal/zzegr;)V

    return-void
.end method

.method protected final zzn()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/zzegt;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziya:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzegr;->zzv(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziyb:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzegr;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziyc:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v3}, Lcom/google/android/gms/internal/zzegr;->zzgr(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzcga;->zziyd:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_4

    aget-object v5, v5, v1

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzegr;->zzra(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v0, v3

    mul-int/2addr v4, v2

    add-int/2addr v0, v4

    :cond_5
    return v0
.end method
