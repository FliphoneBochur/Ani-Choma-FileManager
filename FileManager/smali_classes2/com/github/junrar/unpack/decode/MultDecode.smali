.class public Lcom/github/junrar/unpack/decode/MultDecode;
.super Lcom/github/junrar/unpack/decode/Decode;
.source "MultDecode.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/github/junrar/unpack/decode/Decode;-><init>()V

    .line 34
    const/16 v0, 0x101

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/decode/MultDecode;->decodeNum:[I

    .line 35
    return-void
.end method
