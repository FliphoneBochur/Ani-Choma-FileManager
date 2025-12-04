.class public abstract Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.super Ljava/lang/Object;
.source "PKWareExtraHeader.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;,
        Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;
    }
.end annotation


# instance fields
.field private centralData:[B

.field private final headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private localData:[B


# direct methods
.method protected constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V
    .locals 0
    .param p1, "headerId"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 82
    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    if-eqz v0, :cond_0

    .line 157
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->getLocalFileDataData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    if-eqz v0, :cond_0

    .line 144
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    array-length v0, v0

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 112
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 189
    new-array v0, p3, [B

    .line 190
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->setCentralDirectoryData([B)V

    .line 192
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    if-nez v1, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->setLocalFileDataData([B)V

    .line 195
    :cond_0
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 173
    new-array v0, p3, [B

    .line 174
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->setLocalFileDataData([B)V

    .line 176
    return-void
.end method

.method public setCentralDirectoryData([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 132
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    .line 133
    return-void
.end method

.method public setLocalFileDataData([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 102
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    .line 103
    return-void
.end method
