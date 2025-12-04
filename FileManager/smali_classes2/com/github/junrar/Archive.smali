.class public Lcom/github/junrar/Archive;
.super Ljava/lang/Object;
.source "Archive.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private currentHeaderIndex:I

.field private final dataIO:Lcom/github/junrar/unpack/ComprDataIO;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/junrar/rarfile/BaseBlock;",
            ">;"
        }
    .end annotation
.end field

.field private markHead:Lcom/github/junrar/rarfile/MarkHeader;

.field private newMhd:Lcom/github/junrar/rarfile/MainHeader;

.field private rof:Lcom/github/junrar/io/IReadOnlyAccess;

.field private totalPackedRead:J

.field private totalPackedSize:J

.field private unpack:Lcom/github/junrar/unpack/Unpack;

.field private final unrarCallback:Lcom/github/junrar/UnrarCallback;

.field private volume:Lcom/github/junrar/Volume;

.field private volumeManager:Lcom/github/junrar/VolumeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/github/junrar/Archive;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/Archive;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/VolumeManager;)V
    .locals 1
    .param p1, "volumeManager"    # Lcom/github/junrar/VolumeManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/junrar/Archive;-><init>(Lcom/github/junrar/VolumeManager;Lcom/github/junrar/UnrarCallback;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/VolumeManager;Lcom/github/junrar/UnrarCallback;)V
    .locals 3
    .param p1, "volumeManager"    # Lcom/github/junrar/VolumeManager;
    .param p2, "unrarCallback"    # Lcom/github/junrar/UnrarCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/junrar/Archive;->markHead:Lcom/github/junrar/rarfile/MarkHeader;

    .line 75
    iput-object v0, p0, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    .line 82
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/github/junrar/Archive;->totalPackedSize:J

    .line 85
    iput-wide v1, p0, Lcom/github/junrar/Archive;->totalPackedRead:J

    .line 105
    iput-object p1, p0, Lcom/github/junrar/Archive;->volumeManager:Lcom/github/junrar/VolumeManager;

    .line 106
    iput-object p2, p0, Lcom/github/junrar/Archive;->unrarCallback:Lcom/github/junrar/UnrarCallback;

    .line 108
    invoke-interface {p1, p0, v0}, Lcom/github/junrar/VolumeManager;->nextArchive(Lcom/github/junrar/Archive;Lcom/github/junrar/Volume;)Lcom/github/junrar/Volume;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/Archive;->setVolume(Lcom/github/junrar/Volume;)V

    .line 109
    new-instance v0, Lcom/github/junrar/unpack/ComprDataIO;

    invoke-direct {v0, p0}, Lcom/github/junrar/unpack/ComprDataIO;-><init>(Lcom/github/junrar/Archive;)V

    iput-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "firstVolume"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/github/junrar/impl/FileVolumeManager;

    invoke-direct {v0, p1}, Lcom/github/junrar/impl/FileVolumeManager;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/github/junrar/Archive;-><init>(Lcom/github/junrar/VolumeManager;Lcom/github/junrar/UnrarCallback;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/github/junrar/UnrarCallback;)V
    .locals 1
    .param p1, "firstVolume"    # Ljava/io/File;
    .param p2, "unrarCallback"    # Lcom/github/junrar/UnrarCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/github/junrar/impl/FileVolumeManager;

    invoke-direct {v0, p1}, Lcom/github/junrar/impl/FileVolumeManager;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Lcom/github/junrar/Archive;-><init>(Lcom/github/junrar/VolumeManager;Lcom/github/junrar/UnrarCallback;)V

    .line 119
    return-void
.end method

.method private doExtractFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "hd"    # Lcom/github/junrar/rarfile/FileHeader;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {v0, p2}, Lcom/github/junrar/unpack/ComprDataIO;->init(Ljava/io/OutputStream;)V

    .line 491
    iget-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {v0, p1}, Lcom/github/junrar/unpack/ComprDataIO;->init(Lcom/github/junrar/rarfile/FileHeader;)V

    .line 492
    iget-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {p0}, Lcom/github/junrar/Archive;->isOldFormat()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/github/junrar/unpack/ComprDataIO;->setUnpFileCRC(J)V

    .line 493
    iget-object v0, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    if-nez v0, :cond_1

    .line 494
    new-instance v0, Lcom/github/junrar/unpack/Unpack;

    iget-object v1, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/Unpack;-><init>(Lcom/github/junrar/unpack/ComprDataIO;)V

    iput-object v0, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    .line 496
    :cond_1
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->isSolid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/Unpack;->init([B)V

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFullUnpackSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/github/junrar/unpack/Unpack;->setDestSize(J)V

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getUnpVersion()B

    move-result v1

    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->isSolid()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/junrar/unpack/Unpack;->doUnpack(IZ)V

    .line 503
    iget-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ComprDataIO;->getSubHeader()Lcom/github/junrar/rarfile/FileHeader;

    move-result-object v0

    move-object p1, v0

    .line 504
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ComprDataIO;->getPackedCRC()J

    move-result-wide v0

    not-long v0, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/github/junrar/Archive;->dataIO:Lcom/github/junrar/unpack/ComprDataIO;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ComprDataIO;->getUnpFileCRC()J

    move-result-wide v0

    not-long v0, v0

    .line 506
    .local v0, "actualCRC":J
    :goto_1
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFileCRC()I

    move-result v2

    .line 507
    .local v2, "expectedCRC":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_4

    .line 524
    .end local v0    # "actualCRC":J
    .end local v2    # "expectedCRC":I
    nop

    .line 525
    return-void

    .line 508
    .restart local v0    # "actualCRC":J
    .restart local v2    # "expectedCRC":I
    :cond_4
    new-instance v3, Lcom/github/junrar/exception/RarException;

    sget-object v4, Lcom/github/junrar/exception/RarException$RarExceptionType;->crcError:Lcom/github/junrar/exception/RarException$RarExceptionType;

    invoke-direct {v3, v4}, Lcom/github/junrar/exception/RarException;-><init>(Lcom/github/junrar/exception/RarException$RarExceptionType;)V

    .end local p0    # "this":Lcom/github/junrar/Archive;
    .end local p1    # "hd":Lcom/github/junrar/rarfile/FileHeader;
    .end local p2    # "os":Ljava/io/OutputStream;
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v0    # "actualCRC":J
    .end local v2    # "expectedCRC":I
    .restart local p0    # "this":Lcom/github/junrar/Archive;
    .restart local p1    # "hd":Lcom/github/junrar/rarfile/FileHeader;
    .restart local p2    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/Unpack;->cleanUp()V

    .line 518
    instance-of v1, v0, Lcom/github/junrar/exception/RarException;

    if-eqz v1, :cond_5

    .line 520
    move-object v1, v0

    check-cast v1, Lcom/github/junrar/exception/RarException;

    throw v1

    .line 522
    :cond_5
    new-instance v1, Lcom/github/junrar/exception/RarException;

    invoke-direct {v1, v0}, Lcom/github/junrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private readHeaders(J)V
    .locals 31
    .param p1, "fileLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 218
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/github/junrar/Archive;->markHead:Lcom/github/junrar/rarfile/MarkHeader;

    .line 219
    iput-object v1, v0, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    .line 220
    iget-object v2, v0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 221
    const/4 v2, 0x0

    iput v2, v0, Lcom/github/junrar/Archive;->currentHeaderIndex:I

    .line 222
    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    .line 225
    .local v2, "toRead":I
    :goto_0
    const/16 v16, 0x0

    .line 226
    .local v16, "size":I
    const-wide/16 v17, 0x0

    .line 227
    .local v17, "newpos":J
    const/4 v1, 0x7

    move/from16 v20, v2

    .end local v2    # "toRead":I
    .local v20, "toRead":I
    new-array v2, v1, [B

    .line 229
    .local v2, "baseBlockBuffer":[B
    iget-object v1, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    invoke-interface {v1}, Lcom/github/junrar/io/IReadOnlyAccess;->getPosition()J

    move-result-wide v12

    .line 232
    .local v12, "position":J
    cmp-long v1, v12, p1

    if-ltz v1, :cond_0

    .line 233
    goto :goto_1

    .line 237
    :cond_0
    iget-object v1, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    move-object/from16 v24, v15

    const/4 v15, 0x7

    invoke-interface {v1, v2, v15}, Lcom/github/junrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v1

    .line 238
    .end local v16    # "size":I
    .local v1, "size":I
    if-nez v1, :cond_1

    .line 239
    nop

    .line 426
    .end local v1    # "size":I
    .end local v2    # "baseBlockBuffer":[B
    .end local v12    # "position":J
    .end local v17    # "newpos":J
    :goto_1
    return-void

    .line 241
    .restart local v1    # "size":I
    .restart local v2    # "baseBlockBuffer":[B
    .restart local v12    # "position":J
    .restart local v17    # "newpos":J
    :cond_1
    new-instance v15, Lcom/github/junrar/rarfile/BaseBlock;

    invoke-direct {v15, v2}, Lcom/github/junrar/rarfile/BaseBlock;-><init>([B)V

    .line 243
    .local v15, "block":Lcom/github/junrar/rarfile/BaseBlock;
    invoke-virtual {v15, v12, v13}, Lcom/github/junrar/rarfile/BaseBlock;->setPositionInFile(J)V

    .line 245
    sget-object v16, Lcom/github/junrar/Archive$2;->$SwitchMap$com$github$junrar$rarfile$UnrarHeadertype:[I

    invoke-virtual {v15}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/github/junrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v25

    aget v16, v16, v25

    move/from16 v25, v1

    .end local v1    # "size":I
    .local v25, "size":I
    packed-switch v16, :pswitch_data_0

    move-object/from16 v26, v2

    const/16 v16, 0x0

    .line 329
    .end local v2    # "baseBlockBuffer":[B
    .local v3, "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .local v4, "mainbuff":[B
    .local v5, "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .local v6, "signBuff":[B
    .local v7, "avBuff":[B
    .local v8, "avHead":Lcom/github/junrar/rarfile/AVHeader;
    .local v9, "commBuff":[B
    .local v10, "commHead":Lcom/github/junrar/rarfile/CommentHeader;
    .local v11, "endArcHead":Lcom/github/junrar/rarfile/EndArcHeader;
    .local v26, "baseBlockBuffer":[B
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 330
    .local v1, "blockHeaderBuffer":[B
    move-object/from16 v27, v3

    .end local v3    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .local v27, "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    iget-object v3, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v3, v1, v2}, Lcom/github/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 331
    new-instance v3, Lcom/github/junrar/rarfile/BlockHeader;

    invoke-direct {v3, v15, v1}, Lcom/github/junrar/rarfile/BlockHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    .line 334
    .local v3, "blockHead":Lcom/github/junrar/rarfile/BlockHeader;
    sget-object v28, Lcom/github/junrar/Archive$2;->$SwitchMap$com$github$junrar$rarfile$UnrarHeadertype:[I

    invoke-virtual {v3}, Lcom/github/junrar/rarfile/BlockHeader;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/github/junrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v29

    aget v2, v28, v29

    move-object/from16 v28, v1

    goto/16 :goto_4

    .line 245
    .end local v1    # "blockHeaderBuffer":[B
    .end local v3    # "blockHead":Lcom/github/junrar/rarfile/BlockHeader;
    .end local v4    # "mainbuff":[B
    .end local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .end local v6    # "signBuff":[B
    .end local v7    # "avBuff":[B
    .end local v8    # "avHead":Lcom/github/junrar/rarfile/AVHeader;
    .end local v9    # "commBuff":[B
    .end local v10    # "commHead":Lcom/github/junrar/rarfile/CommentHeader;
    .end local v11    # "endArcHead":Lcom/github/junrar/rarfile/EndArcHeader;
    .end local v26    # "baseBlockBuffer":[B
    .end local v27    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .restart local v2    # "baseBlockBuffer":[B
    :pswitch_0
    move-object v1, v7

    .local v1, "avBuff":[B
    .local v3, "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .restart local v4    # "mainbuff":[B
    .restart local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v6    # "signBuff":[B
    move-object v7, v8

    .local v7, "avHead":Lcom/github/junrar/rarfile/AVHeader;
    move-object v8, v9

    .local v8, "commBuff":[B
    move-object v9, v10

    .line 306
    .local v9, "commHead":Lcom/github/junrar/rarfile/CommentHeader;
    const/4 v10, 0x0

    .line 307
    .end local v20    # "toRead":I
    .local v10, "toRead":I
    invoke-virtual {v15}, Lcom/github/junrar/rarfile/BaseBlock;->hasArchiveDataCRC()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 308
    add-int/lit8 v10, v10, 0x4

    .line 310
    :cond_2
    invoke-virtual {v15}, Lcom/github/junrar/rarfile/BaseBlock;->hasVolumeNumber()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 311
    add-int/lit8 v10, v10, 0x2

    .line 314
    :cond_3
    if-lez v10, :cond_4

    .line 315
    new-array v11, v10, [B

    .line 316
    .local v11, "endArchBuff":[B
    iget-object v14, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v14, v11, v10}, Lcom/github/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 317
    new-instance v14, Lcom/github/junrar/rarfile/EndArcHeader;

    invoke-direct {v14, v15, v11}, Lcom/github/junrar/rarfile/EndArcHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    move-object v11, v14

    .line 320
    .local v11, "endArcHead":Lcom/github/junrar/rarfile/EndArcHeader;
    goto :goto_2

    .line 322
    .end local v11    # "endArcHead":Lcom/github/junrar/rarfile/EndArcHeader;
    :cond_4
    new-instance v11, Lcom/github/junrar/rarfile/EndArcHeader;

    const/4 v14, 0x0

    invoke-direct {v11, v15, v14}, Lcom/github/junrar/rarfile/EndArcHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    .line 324
    .restart local v11    # "endArcHead":Lcom/github/junrar/rarfile/EndArcHeader;
    :goto_2
    iget-object v14, v0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-void

    .line 245
    .end local v1    # "avBuff":[B
    .end local v3    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .end local v4    # "mainbuff":[B
    .end local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .end local v6    # "signBuff":[B
    .end local v7    # "avHead":Lcom/github/junrar/rarfile/AVHeader;
    .end local v8    # "commBuff":[B
    .end local v9    # "commHead":Lcom/github/junrar/rarfile/CommentHeader;
    .end local v10    # "toRead":I
    .end local v11    # "endArcHead":Lcom/github/junrar/rarfile/EndArcHeader;
    .restart local v20    # "toRead":I
    :pswitch_1
    const/16 v16, 0x0

    .line 292
    .restart local v3    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .restart local v4    # "mainbuff":[B
    .restart local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v6    # "signBuff":[B
    .local v7, "avBuff":[B
    .local v8, "avHead":Lcom/github/junrar/rarfile/AVHeader;
    const/4 v1, 0x6

    .line 293
    .end local v20    # "toRead":I
    .local v1, "toRead":I
    new-array v9, v1, [B

    .line 294
    .local v9, "commBuff":[B
    iget-object v10, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v10, v9, v1}, Lcom/github/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 295
    new-instance v10, Lcom/github/junrar/rarfile/CommentHeader;

    invoke-direct {v10, v15, v9}, Lcom/github/junrar/rarfile/CommentHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    .line 296
    .local v10, "commHead":Lcom/github/junrar/rarfile/CommentHeader;
    move/from16 v19, v1

    .end local v1    # "toRead":I
    .local v19, "toRead":I
    iget-object v1, v0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v10}, Lcom/github/junrar/rarfile/CommentHeader;->getPositionInFile()J

    move-result-wide v20

    invoke-virtual {v10}, Lcom/github/junrar/rarfile/CommentHeader;->getHeaderSize()S

    move-result v1

    move-object/from16 v26, v2

    .end local v2    # "baseBlockBuffer":[B
    .restart local v26    # "baseBlockBuffer":[B
    int-to-long v1, v1

    add-long v1, v20, v1

    .line 301
    .end local v17    # "newpos":J
    .local v1, "newpos":J
    move-object/from16 v21, v3

    .end local v3    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .local v21, "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    iget-object v3, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v3, v1, v2}, Lcom/github/junrar/io/IReadOnlyAccess;->setPosition(J)V

    .line 303
    move/from16 v2, v19

    move-object/from16 v3, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v15, v24

    goto/16 :goto_7

    .line 245
    .end local v1    # "newpos":J
    .end local v4    # "mainbuff":[B
    .end local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .end local v6    # "signBuff":[B
    .end local v7    # "avBuff":[B
    .end local v8    # "avHead":Lcom/github/junrar/rarfile/AVHeader;
    .end local v9    # "commBuff":[B
    .end local v10    # "commHead":Lcom/github/junrar/rarfile/CommentHeader;
    .end local v19    # "toRead":I
    .end local v21    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .end local v26    # "baseBlockBuffer":[B
    .restart local v2    # "baseBlockBuffer":[B
    .restart local v17    # "newpos":J
    .restart local v20    # "toRead":I
    :pswitch_2
    move-object/from16 v26, v2

    const/16 v16, 0x0

    .line 283
    .end local v2    # "baseBlockBuffer":[B
    .restart local v3    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .restart local v4    # "mainbuff":[B
    .restart local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v6    # "signBuff":[B
    .restart local v26    # "baseBlockBuffer":[B
    const/4 v1, 0x7

    .line 284
    .end local v20    # "toRead":I
    .local v1, "toRead":I
    new-array v7, v1, [B

    .line 285
    .restart local v7    # "avBuff":[B
    iget-object v2, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v2, v7, v1}, Lcom/github/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 286
    new-instance v2, Lcom/github/junrar/rarfile/AVHeader;

    invoke-direct {v2, v15, v7}, Lcom/github/junrar/rarfile/AVHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    move-object v8, v2

    .line 287
    .restart local v8    # "avHead":Lcom/github/junrar/rarfile/AVHeader;
    iget-object v2, v0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    move v2, v1

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v15, v24

    goto/16 :goto_7

    .line 245
    .end local v1    # "toRead":I
    .end local v3    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .end local v4    # "mainbuff":[B
    .end local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .end local v6    # "signBuff":[B
    .end local v7    # "avBuff":[B
    .end local v8    # "avHead":Lcom/github/junrar/rarfile/AVHeader;
    .end local v26    # "baseBlockBuffer":[B
    .restart local v2    # "baseBlockBuffer":[B
    .restart local v20    # "toRead":I
    :pswitch_3
    move-object/from16 v26, v2

    const/16 v16, 0x0

    .line 273
    .end local v2    # "baseBlockBuffer":[B
    .restart local v3    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .restart local v4    # "mainbuff":[B
    .restart local v26    # "baseBlockBuffer":[B
    const/16 v1, 0x8

    .line 274
    .end local v20    # "toRead":I
    .restart local v1    # "toRead":I
    new-array v6, v1, [B

    .line 275
    .restart local v6    # "signBuff":[B
    iget-object v2, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v2, v6, v1}, Lcom/github/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 276
    new-instance v2, Lcom/github/junrar/rarfile/SignHeader;

    invoke-direct {v2, v15, v6}, Lcom/github/junrar/rarfile/SignHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    move-object v5, v2

    .line 277
    .restart local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    iget-object v2, v0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    move v2, v1

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v15, v24

    goto/16 :goto_7

    .line 258
    .end local v1    # "toRead":I
    .end local v3    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .end local v4    # "mainbuff":[B
    .end local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .end local v6    # "signBuff":[B
    .end local v26    # "baseBlockBuffer":[B
    .restart local v2    # "baseBlockBuffer":[B
    .restart local v20    # "toRead":I
    :pswitch_4
    move-object/from16 v26, v2

    const/16 v16, 0x0

    .end local v2    # "baseBlockBuffer":[B
    .restart local v26    # "baseBlockBuffer":[B
    invoke-virtual {v15}, Lcom/github/junrar/rarfile/BaseBlock;->hasEncryptVersion()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x7

    goto :goto_3

    :cond_5
    const/4 v1, 0x6

    .line 260
    .end local v20    # "toRead":I
    .restart local v1    # "toRead":I
    :goto_3
    new-array v4, v1, [B

    .line 261
    .restart local v4    # "mainbuff":[B
    iget-object v2, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v2, v4, v1}, Lcom/github/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 262
    new-instance v2, Lcom/github/junrar/rarfile/MainHeader;

    invoke-direct {v2, v15, v4}, Lcom/github/junrar/rarfile/MainHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;[B)V

    move-object v3, v2

    .line 263
    .restart local v3    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    iget-object v2, v0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iput-object v3, v0, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    .line 265
    invoke-virtual {v3}, Lcom/github/junrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v1

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v15, v24

    goto/16 :goto_7

    .line 266
    :cond_6
    new-instance v2, Lcom/github/junrar/exception/RarException;

    sget-object v5, Lcom/github/junrar/exception/RarException$RarExceptionType;->rarEncryptedException:Lcom/github/junrar/exception/RarException$RarExceptionType;

    invoke-direct {v2, v5}, Lcom/github/junrar/exception/RarException;-><init>(Lcom/github/junrar/exception/RarException$RarExceptionType;)V

    throw v2

    .line 248
    .end local v1    # "toRead":I
    .end local v3    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .end local v4    # "mainbuff":[B
    .end local v26    # "baseBlockBuffer":[B
    .restart local v2    # "baseBlockBuffer":[B
    .restart local v20    # "toRead":I
    :pswitch_5
    move-object/from16 v26, v2

    const/16 v16, 0x0

    .end local v2    # "baseBlockBuffer":[B
    .restart local v26    # "baseBlockBuffer":[B
    new-instance v1, Lcom/github/junrar/rarfile/MarkHeader;

    invoke-direct {v1, v15}, Lcom/github/junrar/rarfile/MarkHeader;-><init>(Lcom/github/junrar/rarfile/BaseBlock;)V

    iput-object v1, v0, Lcom/github/junrar/Archive;->markHead:Lcom/github/junrar/rarfile/MarkHeader;

    .line 249
    invoke-virtual {v1}, Lcom/github/junrar/rarfile/MarkHeader;->isSignature()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 253
    iget-object v1, v0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    iget-object v2, v0, Lcom/github/junrar/Archive;->markHead:Lcom/github/junrar/rarfile/MarkHeader;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    move/from16 v2, v20

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v15, v24

    goto/16 :goto_7

    .line 250
    :cond_7
    new-instance v1, Lcom/github/junrar/exception/RarException;

    sget-object v2, Lcom/github/junrar/exception/RarException$RarExceptionType;->badRarArchive:Lcom/github/junrar/exception/RarException$RarExceptionType;

    invoke-direct {v1, v2}, Lcom/github/junrar/exception/RarException;-><init>(Lcom/github/junrar/exception/RarException$RarExceptionType;)V

    throw v1

    .line 334
    .local v3, "blockHead":Lcom/github/junrar/rarfile/BlockHeader;
    .restart local v4    # "mainbuff":[B
    .restart local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v6    # "signBuff":[B
    .restart local v7    # "avBuff":[B
    .restart local v8    # "avHead":Lcom/github/junrar/rarfile/AVHeader;
    .restart local v9    # "commBuff":[B
    .restart local v10    # "commHead":Lcom/github/junrar/rarfile/CommentHeader;
    .restart local v11    # "endArcHead":Lcom/github/junrar/rarfile/EndArcHeader;
    .restart local v27    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .local v28, "blockHeaderBuffer":[B
    :goto_4
    const/4 v1, 0x1

    if-eq v2, v1, :cond_d

    const/4 v1, 0x2

    if-eq v2, v1, :cond_d

    const/4 v1, 0x3

    if-eq v2, v1, :cond_c

    const/4 v1, 0x4

    if-ne v2, v1, :cond_b

    .local v14, "ph":Lcom/github/junrar/rarfile/ProtectHeader;
    move-object/from16 v1, v24

    .local v1, "protectHeaderBuffer":[B
    move-object/from16 v2, v22

    .local v2, "fh":Lcom/github/junrar/rarfile/FileHeader;
    move-object/from16 v21, v23

    .line 365
    .local v21, "fileHeaderBuffer":[B
    const/4 v1, 0x3

    .end local v1    # "protectHeaderBuffer":[B
    .end local v2    # "fh":Lcom/github/junrar/rarfile/FileHeader;
    .local v22, "fh":Lcom/github/junrar/rarfile/FileHeader;
    .local v24, "protectHeaderBuffer":[B
    new-array v2, v1, [B

    .line 366
    .local v2, "subHeadbuffer":[B
    move-object/from16 v30, v4

    .end local v4    # "mainbuff":[B
    .local v30, "mainbuff":[B
    iget-object v4, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v4, v2, v1}, Lcom/github/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 368
    new-instance v1, Lcom/github/junrar/rarfile/SubBlockHeader;

    invoke-direct {v1, v3, v2}, Lcom/github/junrar/rarfile/SubBlockHeader;-><init>(Lcom/github/junrar/rarfile/BlockHeader;[B)V

    .line 370
    .local v1, "subHead":Lcom/github/junrar/rarfile/SubBlockHeader;
    invoke-virtual {v1}, Lcom/github/junrar/rarfile/SubBlockHeader;->print()V

    .line 371
    sget-object v4, Lcom/github/junrar/Archive$2;->$SwitchMap$com$github$junrar$rarfile$SubBlockHeaderType:[I

    invoke-virtual {v1}, Lcom/github/junrar/rarfile/SubBlockHeader;->getSubType()Lcom/github/junrar/rarfile/SubBlockHeaderType;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/github/junrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v23

    aget v4, v4, v23

    move-object/from16 v23, v2

    const/4 v2, 0x1

    .end local v2    # "subHeadbuffer":[B
    .local v23, "subHeadbuffer":[B
    if-eq v4, v2, :cond_a

    const/4 v2, 0x3

    if-eq v4, v2, :cond_9

    const/4 v2, 0x6

    if-eq v4, v2, :cond_8

    move-object/from16 v19, v5

    goto :goto_5

    .line 401
    :cond_8
    invoke-virtual {v1}, Lcom/github/junrar/rarfile/SubBlockHeader;->getHeaderSize()S

    move-result v2

    .line 402
    .end local v20    # "toRead":I
    .local v2, "toRead":I
    add-int/lit8 v2, v2, -0x7

    .line 403
    add-int/lit8 v2, v2, -0x4

    .line 404
    add-int/lit8 v2, v2, -0x3

    .line 405
    new-array v4, v2, [B

    .line 406
    .local v4, "uoHeaderBuffer":[B
    move-object/from16 v19, v5

    .end local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .local v19, "signHead":Lcom/github/junrar/rarfile/SignHeader;
    iget-object v5, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v5, v4, v2}, Lcom/github/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 407
    new-instance v5, Lcom/github/junrar/rarfile/UnixOwnersHeader;

    invoke-direct {v5, v1, v4}, Lcom/github/junrar/rarfile/UnixOwnersHeader;-><init>(Lcom/github/junrar/rarfile/SubBlockHeader;[B)V

    .line 409
    .local v5, "uoHeader":Lcom/github/junrar/rarfile/UnixOwnersHeader;
    invoke-virtual {v5}, Lcom/github/junrar/rarfile/UnixOwnersHeader;->print()V

    .line 410
    move/from16 v20, v2

    .end local v2    # "toRead":I
    .restart local v20    # "toRead":I
    iget-object v2, v0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    move/from16 v2, v20

    goto :goto_6

    .line 387
    .end local v4    # "uoHeaderBuffer":[B
    .end local v19    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .local v5, "signHead":Lcom/github/junrar/rarfile/SignHeader;
    :cond_9
    move-object/from16 v19, v5

    .end local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v19    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    const/16 v2, 0xa

    new-array v4, v2, [B

    .line 388
    .local v4, "eaHeaderBuffer":[B
    iget-object v5, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v5, v4, v2}, Lcom/github/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 389
    new-instance v2, Lcom/github/junrar/rarfile/EAHeader;

    invoke-direct {v2, v1, v4}, Lcom/github/junrar/rarfile/EAHeader;-><init>(Lcom/github/junrar/rarfile/SubBlockHeader;[B)V

    .line 391
    .local v2, "eaHeader":Lcom/github/junrar/rarfile/EAHeader;
    invoke-virtual {v2}, Lcom/github/junrar/rarfile/EAHeader;->print()V

    .line 392
    iget-object v5, v0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    goto :goto_5

    .line 373
    .end local v2    # "eaHeader":Lcom/github/junrar/rarfile/EAHeader;
    .end local v4    # "eaHeaderBuffer":[B
    .end local v19    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    :cond_a
    move-object/from16 v19, v5

    .end local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v19    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    const/16 v2, 0x8

    new-array v4, v2, [B

    .line 374
    .local v4, "macHeaderbuffer":[B
    iget-object v5, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v5, v4, v2}, Lcom/github/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 376
    new-instance v2, Lcom/github/junrar/rarfile/MacInfoHeader;

    invoke-direct {v2, v1, v4}, Lcom/github/junrar/rarfile/MacInfoHeader;-><init>(Lcom/github/junrar/rarfile/SubBlockHeader;[B)V

    .line 378
    .local v2, "macHeader":Lcom/github/junrar/rarfile/MacInfoHeader;
    invoke-virtual {v2}, Lcom/github/junrar/rarfile/MacInfoHeader;->print()V

    .line 379
    iget-object v5, v0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    nop

    .line 416
    .end local v2    # "macHeader":Lcom/github/junrar/rarfile/MacInfoHeader;
    .end local v4    # "macHeaderbuffer":[B
    .end local v19    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    :goto_5
    move/from16 v2, v20

    .end local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .end local v20    # "toRead":I
    .local v2, "toRead":I
    .restart local v19    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    :goto_6
    move-object/from16 v5, v19

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    move-object/from16 v15, v24

    move-object/from16 v3, v27

    move-object/from16 v4, v30

    goto/16 :goto_7

    .line 334
    .end local v1    # "subHead":Lcom/github/junrar/rarfile/SubBlockHeader;
    .end local v2    # "toRead":I
    .end local v14    # "ph":Lcom/github/junrar/rarfile/ProtectHeader;
    .end local v19    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .end local v21    # "fileHeaderBuffer":[B
    .end local v22    # "fh":Lcom/github/junrar/rarfile/FileHeader;
    .end local v23    # "subHeadbuffer":[B
    .end local v24    # "protectHeaderBuffer":[B
    .end local v30    # "mainbuff":[B
    .local v4, "mainbuff":[B
    .restart local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v20    # "toRead":I
    :cond_b
    move-object/from16 v30, v4

    move-object/from16 v19, v5

    .end local v4    # "mainbuff":[B
    .end local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v19    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v30    # "mainbuff":[B
    move-object v1, v14

    .local v1, "ph":Lcom/github/junrar/rarfile/ProtectHeader;
    move-object/from16 v2, v24

    .local v2, "protectHeaderBuffer":[B
    move-object/from16 v4, v22

    .local v4, "fh":Lcom/github/junrar/rarfile/FileHeader;
    move-object/from16 v5, v23

    .line 419
    .local v5, "fileHeaderBuffer":[B
    sget-object v14, Lcom/github/junrar/Archive;->logger:Ljava/util/logging/Logger;

    move-object/from16 v16, v1

    .end local v1    # "ph":Lcom/github/junrar/rarfile/ProtectHeader;
    .local v16, "ph":Lcom/github/junrar/rarfile/ProtectHeader;
    const-string v1, "Unknown Header"

    invoke-virtual {v14, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 420
    new-instance v1, Lcom/github/junrar/exception/RarException;

    sget-object v14, Lcom/github/junrar/exception/RarException$RarExceptionType;->notRarArchive:Lcom/github/junrar/exception/RarException$RarExceptionType;

    invoke-direct {v1, v14}, Lcom/github/junrar/exception/RarException;-><init>(Lcom/github/junrar/exception/RarException$RarExceptionType;)V

    throw v1

    .line 334
    .end local v2    # "protectHeaderBuffer":[B
    .end local v16    # "ph":Lcom/github/junrar/rarfile/ProtectHeader;
    .end local v19    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .end local v30    # "mainbuff":[B
    .local v4, "mainbuff":[B
    .local v5, "signHead":Lcom/github/junrar/rarfile/SignHeader;
    :cond_c
    move-object/from16 v30, v4

    move-object/from16 v19, v5

    .end local v4    # "mainbuff":[B
    .end local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v19    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v30    # "mainbuff":[B
    move-object/from16 v1, v22

    .local v1, "fh":Lcom/github/junrar/rarfile/FileHeader;
    move-object/from16 v2, v23

    .line 351
    .local v2, "fileHeaderBuffer":[B
    invoke-virtual {v3}, Lcom/github/junrar/rarfile/BlockHeader;->getHeaderSize()S

    move-result v4

    const/4 v5, 0x7

    sub-int/2addr v4, v5

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    .line 354
    .end local v20    # "toRead":I
    .local v4, "toRead":I
    new-array v5, v4, [B

    .line 355
    .local v5, "protectHeaderBuffer":[B
    iget-object v14, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v14, v5, v4}, Lcom/github/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 356
    new-instance v14, Lcom/github/junrar/rarfile/ProtectHeader;

    invoke-direct {v14, v3, v5}, Lcom/github/junrar/rarfile/ProtectHeader;-><init>(Lcom/github/junrar/rarfile/BlockHeader;[B)V

    .line 359
    .restart local v14    # "ph":Lcom/github/junrar/rarfile/ProtectHeader;
    invoke-virtual {v14}, Lcom/github/junrar/rarfile/ProtectHeader;->getPositionInFile()J

    move-result-wide v20

    .end local v1    # "fh":Lcom/github/junrar/rarfile/FileHeader;
    .restart local v22    # "fh":Lcom/github/junrar/rarfile/FileHeader;
    invoke-virtual {v14}, Lcom/github/junrar/rarfile/ProtectHeader;->getHeaderSize()S

    move-result v1

    .end local v2    # "fileHeaderBuffer":[B
    .local v23, "fileHeaderBuffer":[B
    int-to-long v1, v1

    add-long v20, v20, v1

    invoke-virtual {v14}, Lcom/github/junrar/rarfile/ProtectHeader;->getDataSize()I

    move-result v1

    int-to-long v1, v1

    add-long v1, v20, v1

    .line 361
    .end local v17    # "newpos":J
    .local v1, "newpos":J
    move/from16 v20, v4

    .end local v4    # "toRead":I
    .restart local v20    # "toRead":I
    iget-object v4, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v4, v1, v2}, Lcom/github/junrar/io/IReadOnlyAccess;->setPosition(J)V

    .line 362
    move-object v15, v5

    move-object/from16 v5, v19

    move/from16 v2, v20

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v3, v27

    move-object/from16 v4, v30

    goto :goto_7

    .line 334
    .end local v1    # "newpos":J
    .end local v14    # "ph":Lcom/github/junrar/rarfile/ProtectHeader;
    .end local v19    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .end local v22    # "fh":Lcom/github/junrar/rarfile/FileHeader;
    .end local v23    # "fileHeaderBuffer":[B
    .end local v30    # "mainbuff":[B
    .local v4, "mainbuff":[B
    .local v5, "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v17    # "newpos":J
    :cond_d
    move-object/from16 v30, v4

    move-object/from16 v19, v5

    .line 337
    .end local v4    # "mainbuff":[B
    .end local v5    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v19    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .restart local v30    # "mainbuff":[B
    invoke-virtual {v3}, Lcom/github/junrar/rarfile/BlockHeader;->getHeaderSize()S

    move-result v1

    const/4 v2, 0x7

    sub-int/2addr v1, v2

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    .line 340
    .end local v20    # "toRead":I
    .local v1, "toRead":I
    new-array v2, v1, [B

    .line 341
    .restart local v2    # "fileHeaderBuffer":[B
    iget-object v4, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v4, v2, v1}, Lcom/github/junrar/io/IReadOnlyAccess;->readFully([BI)I

    .line 343
    new-instance v4, Lcom/github/junrar/rarfile/FileHeader;

    invoke-direct {v4, v3, v2}, Lcom/github/junrar/rarfile/FileHeader;-><init>(Lcom/github/junrar/rarfile/BlockHeader;[B)V

    .line 344
    .local v4, "fh":Lcom/github/junrar/rarfile/FileHeader;
    iget-object v5, v0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {v4}, Lcom/github/junrar/rarfile/FileHeader;->getPositionInFile()J

    move-result-wide v20

    invoke-virtual {v4}, Lcom/github/junrar/rarfile/FileHeader;->getHeaderSize()S

    move-result v5

    move/from16 v22, v1

    move-object/from16 v23, v2

    .end local v1    # "toRead":I
    .end local v2    # "fileHeaderBuffer":[B
    .local v22, "toRead":I
    .restart local v23    # "fileHeaderBuffer":[B
    int-to-long v1, v5

    add-long v20, v20, v1

    invoke-virtual {v4}, Lcom/github/junrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v1

    add-long v1, v20, v1

    .line 347
    .end local v17    # "newpos":J
    .local v1, "newpos":J
    iget-object v5, v0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v5, v1, v2}, Lcom/github/junrar/io/IReadOnlyAccess;->setPosition(J)V

    .line 348
    move-object v12, v4

    move-object/from16 v5, v19

    move/from16 v2, v22

    move-object/from16 v13, v23

    move-object/from16 v15, v24

    move-object/from16 v3, v27

    move-object/from16 v4, v30

    .line 425
    .end local v1    # "newpos":J
    .end local v3    # "blockHead":Lcom/github/junrar/rarfile/BlockHeader;
    .end local v4    # "fh":Lcom/github/junrar/rarfile/FileHeader;
    .end local v6    # "signBuff":[B
    .end local v7    # "avBuff":[B
    .end local v8    # "avHead":Lcom/github/junrar/rarfile/AVHeader;
    .end local v9    # "commBuff":[B
    .end local v10    # "commHead":Lcom/github/junrar/rarfile/CommentHeader;
    .end local v11    # "endArcHead":Lcom/github/junrar/rarfile/EndArcHeader;
    .end local v12    # "position":J
    .end local v15    # "block":Lcom/github/junrar/rarfile/BaseBlock;
    .end local v19    # "signHead":Lcom/github/junrar/rarfile/SignHeader;
    .end local v22    # "toRead":I
    .end local v23    # "fileHeaderBuffer":[B
    .end local v25    # "size":I
    .end local v26    # "baseBlockBuffer":[B
    .end local v27    # "mainhead":Lcom/github/junrar/rarfile/MainHeader;
    .end local v28    # "blockHeaderBuffer":[B
    .end local v30    # "mainbuff":[B
    .local v2, "toRead":I
    :goto_7
    move-object/from16 v1, v16

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFile(Lcom/github/junrar/io/IReadOnlyAccess;J)V
    .locals 6
    .param p1, "file"    # Lcom/github/junrar/io/IReadOnlyAccess;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/junrar/Archive;->totalPackedSize:J

    .line 132
    iput-wide v0, p0, Lcom/github/junrar/Archive;->totalPackedRead:J

    .line 133
    invoke-virtual {p0}, Lcom/github/junrar/Archive;->close()V

    .line 134
    iput-object p1, p0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    .line 136
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/github/junrar/Archive;->readHeaders(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/github/junrar/Archive;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "exception in archive constructor maybe file is encrypted or currupt"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/junrar/rarfile/BaseBlock;

    .line 146
    .local v1, "block":Lcom/github/junrar/rarfile/BaseBlock;
    invoke-virtual {v1}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v2

    sget-object v3, Lcom/github/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    if-ne v2, v3, :cond_0

    .line 147
    iget-wide v2, p0, Lcom/github/junrar/Archive;->totalPackedSize:J

    move-object v4, v1

    check-cast v4, Lcom/github/junrar/rarfile/FileHeader;

    invoke-virtual {v4}, Lcom/github/junrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/github/junrar/Archive;->totalPackedSize:J

    .end local v1    # "block":Lcom/github/junrar/rarfile/BaseBlock;
    :cond_0
    goto :goto_1

    .line 150
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lcom/github/junrar/Archive;->unrarCallback:Lcom/github/junrar/UnrarCallback;

    if-eqz v0, :cond_2

    .line 151
    iget-wide v1, p0, Lcom/github/junrar/Archive;->totalPackedRead:J

    iget-wide v3, p0, Lcom/github/junrar/Archive;->totalPackedSize:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/github/junrar/UnrarCallback;->volumeProgressChanged(JJ)V

    .line 154
    :cond_2
    return-void
.end method


# virtual methods
.method public bytesReadRead(I)V
    .locals 5
    .param p1, "count"    # I

    .line 157
    if-lez p1, :cond_0

    .line 158
    iget-wide v0, p0, Lcom/github/junrar/Archive;->totalPackedRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/junrar/Archive;->totalPackedRead:J

    .line 159
    iget-object v2, p0, Lcom/github/junrar/Archive;->unrarCallback:Lcom/github/junrar/UnrarCallback;

    if-eqz v2, :cond_0

    .line 160
    iget-wide v3, p0, Lcom/github/junrar/Archive;->totalPackedSize:J

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/github/junrar/UnrarCallback;->volumeProgressChanged(JJ)V

    .line 164
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    if-eqz v0, :cond_0

    .line 544
    invoke-interface {v0}, Lcom/github/junrar/io/IReadOnlyAccess;->close()V

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/github/junrar/Archive;->unpack:Lcom/github/junrar/unpack/Unpack;

    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {v0}, Lcom/github/junrar/unpack/Unpack;->cleanUp()V

    .line 550
    :cond_1
    return-void
.end method

.method public extractFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "hd"    # Lcom/github/junrar/rarfile/FileHeader;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/github/junrar/Archive;->doExtractFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    nop

    .line 451
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Lcom/github/junrar/exception/RarException;

    if-eqz v1, :cond_0

    .line 446
    move-object v1, v0

    check-cast v1, Lcom/github/junrar/exception/RarException;

    throw v1

    .line 448
    :cond_0
    new-instance v1, Lcom/github/junrar/exception/RarException;

    invoke-direct {v1, v0}, Lcom/github/junrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Lcom/github/junrar/exception/RarException;

    sget-object v1, Lcom/github/junrar/exception/RarException$RarExceptionType;->headerNotInArchive:Lcom/github/junrar/exception/RarException$RarExceptionType;

    invoke-direct {v0, v1}, Lcom/github/junrar/exception/RarException;-><init>(Lcom/github/junrar/exception/RarException$RarExceptionType;)V

    throw v0
.end method

.method public getFileHeaders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/junrar/rarfile/FileHeader;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/github/junrar/rarfile/FileHeader;>;"
    iget-object v1, p0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/junrar/rarfile/BaseBlock;

    .line 176
    .local v2, "block":Lcom/github/junrar/rarfile/BaseBlock;
    invoke-virtual {v2}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v3

    sget-object v4, Lcom/github/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v3, v4}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    move-object v3, v2

    check-cast v3, Lcom/github/junrar/rarfile/FileHeader;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "block":Lcom/github/junrar/rarfile/BaseBlock;
    :cond_0
    goto :goto_0

    .line 180
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public getInputStream(Lcom/github/junrar/rarfile/FileHeader;)Ljava/io/InputStream;
    .locals 4
    .param p1, "hd"    # Lcom/github/junrar/rarfile/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/junrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/io/PipedInputStream;

    const v1, 0x8000

    invoke-direct {v0, v1}, Ljava/io/PipedInputStream;-><init>(I)V

    .line 467
    .local v0, "in":Ljava/io/PipedInputStream;
    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    .line 471
    .local v1, "out":Ljava/io/PipedOutputStream;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/github/junrar/Archive$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/github/junrar/Archive$1;-><init>(Lcom/github/junrar/Archive;Lcom/github/junrar/rarfile/FileHeader;Ljava/io/PipedOutputStream;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 485
    return-object v0
.end method

.method public getMainHeader()Lcom/github/junrar/rarfile/MainHeader;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    return-object v0
.end method

.method public getRof()Lcom/github/junrar/io/IReadOnlyAccess;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/github/junrar/Archive;->rof:Lcom/github/junrar/io/IReadOnlyAccess;

    return-object v0
.end method

.method public getUnrarCallback()Lcom/github/junrar/UnrarCallback;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/github/junrar/Archive;->unrarCallback:Lcom/github/junrar/UnrarCallback;

    return-object v0
.end method

.method public getVolume()Lcom/github/junrar/Volume;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/github/junrar/Archive;->volume:Lcom/github/junrar/Volume;

    return-object v0
.end method

.method public getVolumeManager()Lcom/github/junrar/VolumeManager;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/github/junrar/Archive;->volumeManager:Lcom/github/junrar/VolumeManager;

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/github/junrar/Archive;->newMhd:Lcom/github/junrar/rarfile/MainHeader;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/github/junrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v0

    return v0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mainheader is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOldFormat()Z
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/github/junrar/Archive;->markHead:Lcom/github/junrar/rarfile/MarkHeader;

    invoke-virtual {v0}, Lcom/github/junrar/rarfile/MarkHeader;->isOldFormat()Z

    move-result v0

    return v0
.end method

.method public nextFileHeader()Lcom/github/junrar/rarfile/FileHeader;
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 185
    .local v0, "n":I
    :goto_0
    iget v1, p0, Lcom/github/junrar/Archive;->currentHeaderIndex:I

    if-ge v1, v0, :cond_1

    .line 186
    iget-object v2, p0, Lcom/github/junrar/Archive;->headers:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/github/junrar/Archive;->currentHeaderIndex:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/junrar/rarfile/BaseBlock;

    .line 187
    .local v1, "block":Lcom/github/junrar/rarfile/BaseBlock;
    invoke-virtual {v1}, Lcom/github/junrar/rarfile/BaseBlock;->getHeaderType()Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v2

    sget-object v3, Lcom/github/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    if-ne v2, v3, :cond_0

    .line 188
    move-object v2, v1

    check-cast v2, Lcom/github/junrar/rarfile/FileHeader;

    return-object v2

    .line 190
    .end local v1    # "block":Lcom/github/junrar/rarfile/BaseBlock;
    :cond_0
    goto :goto_0

    .line 191
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public setVolume(Lcom/github/junrar/Volume;)V
    .locals 3
    .param p1, "volume"    # Lcom/github/junrar/Volume;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    iput-object p1, p0, Lcom/github/junrar/Archive;->volume:Lcom/github/junrar/Volume;

    .line 581
    invoke-interface {p1}, Lcom/github/junrar/Volume;->getReadOnlyAccess()Lcom/github/junrar/io/IReadOnlyAccess;

    move-result-object v0

    invoke-interface {p1}, Lcom/github/junrar/Volume;->getLength()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/github/junrar/Archive;->setFile(Lcom/github/junrar/io/IReadOnlyAccess;J)V

    .line 582
    return-void
.end method

.method public setVolumeManager(Lcom/github/junrar/VolumeManager;)V
    .locals 0
    .param p1, "volumeManager"    # Lcom/github/junrar/VolumeManager;

    .line 564
    iput-object p1, p0, Lcom/github/junrar/Archive;->volumeManager:Lcom/github/junrar/VolumeManager;

    .line 565
    return-void
.end method
