.class public Lcom/github/junrar/unpack/ComprDataIO;
.super Ljava/lang/Object;
.source "ComprDataIO.java"


# instance fields
.field private final archive:Lcom/github/junrar/Archive;

.field private curPackRead:J

.field private curPackWrite:J

.field private curUnpRead:J

.field private curUnpWrite:J

.field private decryption:I

.field private encryption:I

.field private inputStream:Ljava/io/InputStream;

.field private nextVolumeMissing:Z

.field private outputStream:Ljava/io/OutputStream;

.field private packFileCRC:J

.field private packVolume:Z

.field private packedCRC:J

.field private processedArcSize:J

.field private skipUnpCRC:Z

.field private subHead:Lcom/github/junrar/rarfile/FileHeader;

.field private testMode:Z

.field private totalArcSize:J

.field private totalPackRead:J

.field private unpArcSize:J

.field private unpFileCRC:J

.field private unpPackedSize:J

.field private unpVolume:Z


# direct methods
.method public constructor <init>(Lcom/github/junrar/Archive;)V
    .locals 0
    .param p1, "arc"    # Lcom/github/junrar/Archive;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    .line 82
    return-void
.end method


# virtual methods
.method public getCurPackRead()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackRead:J

    return-wide v0
.end method

.method public getCurPackWrite()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackWrite:J

    return-wide v0
.end method

.method public getCurUnpRead()J
    .locals 2

    .line 226
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpRead:J

    return-wide v0
.end method

.method public getCurUnpWrite()J
    .locals 2

    .line 234
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpWrite:J

    return-wide v0
.end method

.method public getDecryption()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->decryption:I

    return v0
.end method

.method public getEncryption()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->encryption:I

    return v0
.end method

.method public getPackFileCRC()J
    .locals 2

    .line 274
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->packFileCRC:J

    return-wide v0
.end method

.method public getPackedCRC()J
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->packedCRC:J

    return-wide v0
.end method

.method public getProcessedArcSize()J
    .locals 2

    .line 290
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->processedArcSize:J

    return-wide v0
.end method

.method public getSubHeader()Lcom/github/junrar/rarfile/FileHeader;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->subHead:Lcom/github/junrar/rarfile/FileHeader;

    return-object v0
.end method

.method public getTotalArcSize()J
    .locals 2

    .line 298
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->totalArcSize:J

    return-wide v0
.end method

.method public getTotalPackRead()J
    .locals 2

    .line 306
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->totalPackRead:J

    return-wide v0
.end method

.method public getUnpArcSize()J
    .locals 2

    .line 314
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpArcSize:J

    return-wide v0
.end method

.method public getUnpFileCRC()J
    .locals 2

    .line 322
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    return-wide v0
.end method

.method public init(Lcom/github/junrar/rarfile/FileHeader;)V
    .locals 10
    .param p1, "hd"    # Lcom/github/junrar/rarfile/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getPositionInFile()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getHeaderSize()S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 104
    .local v0, "startPos":J
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 105
    new-instance v2, Lcom/github/junrar/io/ReadOnlyAccessInputStream;

    iget-object v3, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v3}, Lcom/github/junrar/Archive;->getRof()Lcom/github/junrar/io/IReadOnlyAccess;

    move-result-object v5

    iget-wide v3, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    add-long v8, v0, v3

    move-object v4, v2

    move-wide v6, v0

    invoke-direct/range {v4 .. v9}, Lcom/github/junrar/io/ReadOnlyAccessInputStream;-><init>(Lcom/github/junrar/io/IReadOnlyAccess;JJ)V

    iput-object v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->inputStream:Ljava/io/InputStream;

    .line 107
    iput-object p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->subHead:Lcom/github/junrar/rarfile/FileHeader;

    .line 108
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpRead:J

    .line 109
    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackWrite:J

    .line 110
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->packedCRC:J

    .line 111
    return-void
.end method

.method public init(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 85
    iput-object p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->outputStream:Ljava/io/OutputStream;

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 87
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->testMode:Z

    .line 88
    iput-boolean v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->skipUnpCRC:Z

    .line 89
    iput-boolean v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->packVolume:Z

    .line 90
    iput-boolean v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpVolume:Z

    .line 91
    iput-boolean v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    .line 93
    iput v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->encryption:I

    .line 94
    iput v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->decryption:I

    .line 95
    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->totalPackRead:J

    .line 96
    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpWrite:J

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpRead:J

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackWrite:J

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackRead:J

    .line 97
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->packedCRC:J

    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    iput-wide v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->packFileCRC:J

    .line 98
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/github/junrar/unpack/ComprDataIO;->subHead:Lcom/github/junrar/rarfile/FileHeader;

    .line 99
    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->totalArcSize:J

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->processedArcSize:J

    .line 100
    return-void
.end method

.method public isNextVolumeMissing()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    return v0
.end method

.method public isPackVolume()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->packVolume:Z

    return v0
.end method

.method public isUnpVolume()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpVolume:Z

    return v0
.end method

.method public setCurPackRead(J)V
    .locals 0
    .param p1, "curPackRead"    # J

    .line 214
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackRead:J

    .line 215
    return-void
.end method

.method public setCurPackWrite(J)V
    .locals 0
    .param p1, "curPackWrite"    # J

    .line 222
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->curPackWrite:J

    .line 223
    return-void
.end method

.method public setCurUnpRead(J)V
    .locals 0
    .param p1, "curUnpRead"    # J

    .line 230
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpRead:J

    .line 231
    return-void
.end method

.method public setCurUnpWrite(J)V
    .locals 0
    .param p1, "curUnpWrite"    # J

    .line 238
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpWrite:J

    .line 239
    return-void
.end method

.method public setDecryption(I)V
    .locals 0
    .param p1, "decryption"    # I

    .line 246
    iput p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->decryption:I

    .line 247
    return-void
.end method

.method public setEncryption(I)V
    .locals 0
    .param p1, "encryption"    # I

    .line 254
    iput p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->encryption:I

    .line 255
    return-void
.end method

.method public setNextVolumeMissing(Z)V
    .locals 0
    .param p1, "nextVolumeMissing"    # Z

    .line 262
    iput-boolean p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    .line 263
    return-void
.end method

.method public setPackFileCRC(J)V
    .locals 0
    .param p1, "packFileCRC"    # J

    .line 278
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->packFileCRC:J

    .line 279
    return-void
.end method

.method public setPackVolume(Z)V
    .locals 0
    .param p1, "packVolume"    # Z

    .line 286
    iput-boolean p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->packVolume:Z

    .line 287
    return-void
.end method

.method public setPackedCRC(J)V
    .locals 0
    .param p1, "packedCRC"    # J

    .line 270
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->packedCRC:J

    .line 271
    return-void
.end method

.method public setPackedSizeToRead(J)V
    .locals 0
    .param p1, "size"    # J

    .line 193
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 194
    return-void
.end method

.method public setProcessedArcSize(J)V
    .locals 0
    .param p1, "processedArcSize"    # J

    .line 294
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->processedArcSize:J

    .line 295
    return-void
.end method

.method public setSkipUnpCRC(Z)V
    .locals 0
    .param p1, "skip"    # Z

    .line 201
    iput-boolean p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->skipUnpCRC:Z

    .line 202
    return-void
.end method

.method public setSubHeader(Lcom/github/junrar/rarfile/FileHeader;)V
    .locals 0
    .param p1, "hd"    # Lcom/github/junrar/rarfile/FileHeader;

    .line 205
    iput-object p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->subHead:Lcom/github/junrar/rarfile/FileHeader;

    .line 207
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .line 197
    iput-boolean p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->testMode:Z

    .line 198
    return-void
.end method

.method public setTotalArcSize(J)V
    .locals 0
    .param p1, "totalArcSize"    # J

    .line 302
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->totalArcSize:J

    .line 303
    return-void
.end method

.method public setTotalPackRead(J)V
    .locals 0
    .param p1, "totalPackRead"    # J

    .line 310
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->totalPackRead:J

    .line 311
    return-void
.end method

.method public setUnpArcSize(J)V
    .locals 0
    .param p1, "unpArcSize"    # J

    .line 318
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpArcSize:J

    .line 319
    return-void
.end method

.method public setUnpFileCRC(J)V
    .locals 0
    .param p1, "unpFileCRC"    # J

    .line 326
    iput-wide p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    .line 327
    return-void
.end method

.method public setUnpVolume(Z)V
    .locals 0
    .param p1, "unpVolume"    # Z

    .line 334
    iput-boolean p1, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpVolume:Z

    .line 335
    return-void
.end method

.method public unpRead([BII)I
    .locals 10
    .param p1, "addr"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    .local v0, "retCode":I
    const/4 v1, 0x0

    .line 116
    .local v1, "totalRead":I
    :goto_0
    const/4 v2, -0x1

    if-lez p3, :cond_8

    .line 117
    int-to-long v3, p3

    iget-wide v5, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    long-to-int v3, v5

    goto :goto_1

    :cond_0
    move v3, p3

    .line 119
    .local v3, "readSize":I
    :goto_1
    iget-object v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 120
    if-ltz v0, :cond_7

    .line 123
    iget-object v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->subHead:Lcom/github/junrar/rarfile/FileHeader;

    invoke-virtual {v4}, Lcom/github/junrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    iget-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->packedCRC:J

    long-to-int v4, v4

    invoke-static {v4, p1, p2, v0}, Lcom/github/junrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->packedCRC:J

    .line 128
    :cond_1
    iget-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpRead:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpRead:J

    .line 129
    add-int/2addr v1, v0

    .line 130
    add-int/2addr p2, v0

    .line 131
    sub-int/2addr p3, v0

    .line 132
    iget-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 133
    iget-object v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v4, v0}, Lcom/github/junrar/Archive;->bytesReadRead(I)V

    .line 134
    iget-wide v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpPackedSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->subHead:Lcom/github/junrar/rarfile/FileHeader;

    invoke-virtual {v4}, Lcom/github/junrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 135
    iget-object v4, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v4}, Lcom/github/junrar/Archive;->getVolumeManager()Lcom/github/junrar/VolumeManager;

    move-result-object v4

    iget-object v5, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v5}, Lcom/github/junrar/Archive;->getVolume()Lcom/github/junrar/Volume;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/github/junrar/VolumeManager;->nextArchive(Lcom/github/junrar/Archive;Lcom/github/junrar/Volume;)Lcom/github/junrar/Volume;

    move-result-object v4

    .line 137
    .local v4, "nextVolume":Lcom/github/junrar/Volume;
    if-nez v4, :cond_2

    .line 138
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/github/junrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    .line 139
    return v2

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ComprDataIO;->getSubHeader()Lcom/github/junrar/rarfile/FileHeader;

    move-result-object v5

    .line 143
    .local v5, "hd":Lcom/github/junrar/rarfile/FileHeader;
    invoke-virtual {v5}, Lcom/github/junrar/rarfile/FileHeader;->getUnpVersion()B

    move-result v6

    const/16 v7, 0x14

    if-lt v6, v7, :cond_4

    invoke-virtual {v5}, Lcom/github/junrar/rarfile/FileHeader;->getFileCRC()I

    move-result v6

    if-eq v6, v2, :cond_4

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ComprDataIO;->getPackedCRC()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/github/junrar/rarfile/FileHeader;->getFileCRC()I

    move-result v8

    not-int v8, v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    goto :goto_2

    .line 145
    :cond_3
    new-instance v2, Lcom/github/junrar/exception/RarException;

    sget-object v6, Lcom/github/junrar/exception/RarException$RarExceptionType;->crcError:Lcom/github/junrar/exception/RarException$RarExceptionType;

    invoke-direct {v2, v6}, Lcom/github/junrar/exception/RarException;-><init>(Lcom/github/junrar/exception/RarException$RarExceptionType;)V

    throw v2

    .line 147
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v6}, Lcom/github/junrar/Archive;->getUnrarCallback()Lcom/github/junrar/UnrarCallback;

    move-result-object v6

    .line 148
    .local v6, "callback":Lcom/github/junrar/UnrarCallback;
    if-eqz v6, :cond_5

    invoke-interface {v6, v4}, Lcom/github/junrar/UnrarCallback;->isNextVolumeReady(Lcom/github/junrar/Volume;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 150
    return v2

    .line 152
    :cond_5
    iget-object v7, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v7, v4}, Lcom/github/junrar/Archive;->setVolume(Lcom/github/junrar/Volume;)V

    .line 153
    iget-object v7, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v7}, Lcom/github/junrar/Archive;->nextFileHeader()Lcom/github/junrar/rarfile/FileHeader;

    move-result-object v5

    .line 154
    if-nez v5, :cond_6

    .line 155
    return v2

    .line 157
    :cond_6
    invoke-virtual {p0, v5}, Lcom/github/junrar/unpack/ComprDataIO;->init(Lcom/github/junrar/rarfile/FileHeader;)V

    .line 161
    .end local v3    # "readSize":I
    .end local v4    # "nextVolume":Lcom/github/junrar/Volume;
    .end local v5    # "hd":Lcom/github/junrar/rarfile/FileHeader;
    .end local v6    # "callback":Lcom/github/junrar/UnrarCallback;
    goto/16 :goto_0

    .line 121
    .restart local v3    # "readSize":I
    :cond_7
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 163
    .end local v3    # "readSize":I
    :cond_8
    if-eq v0, v2, :cond_9

    .line 164
    move v0, v1

    .line 166
    :cond_9
    return v0
.end method

.method public unpWrite([BII)V
    .locals 4
    .param p1, "addr"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->testMode:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 176
    :cond_0
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpWrite:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->curUnpWrite:J

    .line 178
    iget-boolean v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->skipUnpCRC:Z

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->archive:Lcom/github/junrar/Archive;

    invoke-virtual {v0}, Lcom/github/junrar/Archive;->isOldFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0, p1, p3}, Lcom/github/junrar/crc/RarCRC;->checkOldCrc(S[BI)S

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    goto :goto_0

    .line 183
    :cond_1
    iget-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    long-to-int v0, v0

    invoke-static {v0, p1, p2, p3}, Lcom/github/junrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/github/junrar/unpack/ComprDataIO;->unpFileCRC:J

    .line 190
    :cond_2
    :goto_0
    return-void
.end method
