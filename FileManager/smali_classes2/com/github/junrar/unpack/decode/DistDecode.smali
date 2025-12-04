.class public Lcom/github/junrar/unpack/decode/DistDecode;
.super Lcom/github/junrar/unpack/decode/Decode;
.source "DistDecode.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/github/junrar/unpack/decode/Decode;-><init>()V

    .line 34
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/decode/DistDecode;->decodeNum:[I

    .line 35
    return-void
.end method
