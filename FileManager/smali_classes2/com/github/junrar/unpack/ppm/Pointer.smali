.class public abstract Lcom/github/junrar/unpack/ppm/Pointer;
.super Ljava/lang/Object;
.source "Pointer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mem:[B

.field protected pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "mem"    # [B

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/github/junrar/unpack/ppm/Pointer;->mem:[B

    .line 37
    return-void
.end method


# virtual methods
.method public getAddress()I
    .locals 1

    .line 43
    nop

    .line 44
    iget v0, p0, Lcom/github/junrar/unpack/ppm/Pointer;->pos:I

    return v0
.end method

.method public setAddress(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 55
    nop

    .line 56
    nop

    .line 57
    iput p1, p0, Lcom/github/junrar/unpack/ppm/Pointer;->pos:I

    .line 58
    return-void
.end method
