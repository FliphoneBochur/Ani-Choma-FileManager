.class public Lcom/github/junrar/unpack/ppm/PPMContext;
.super Lcom/github/junrar/unpack/ppm/Pointer;
.source "PPMContext.java"


# static fields
.field public static final ExpEscape:[I

.field public static final size:I

.field private static final unionSize:I


# instance fields
.field private final freqData:Lcom/github/junrar/unpack/ppm/FreqData;

.field private numStats:I

.field private final oneState:Lcom/github/junrar/unpack/ppm/State;

.field private final ps:[I

.field private suffix:I

.field private tempPPMContext:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private final tempState1:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState2:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState3:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState4:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState5:Lcom/github/junrar/unpack/ppm/State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x6

    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/github/junrar/unpack/ppm/PPMContext;->unionSize:I

    .line 33
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/github/junrar/unpack/ppm/PPMContext;->size:I

    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/junrar/unpack/ppm/PPMContext;->ExpEscape:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x19
        0xe
        0x9
        0x7
        0x5
        0x5
        0x4
        0x4
        0x4
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "mem"    # [B

    .line 61
    invoke-direct {p0, p1}, Lcom/github/junrar/unpack/ppm/Pointer;-><init>([B)V

    .line 51
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState1:Lcom/github/junrar/unpack/ppm/State;

    .line 52
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState2:Lcom/github/junrar/unpack/ppm/State;

    .line 53
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState3:Lcom/github/junrar/unpack/ppm/State;

    .line 54
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState4:Lcom/github/junrar/unpack/ppm/State;

    .line 55
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState5:Lcom/github/junrar/unpack/ppm/State;

    .line 56
    iput-object v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 57
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->ps:[I

    .line 62
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, p1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    .line 63
    new-instance v0, Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-direct {v0, p1}, Lcom/github/junrar/unpack/ppm/FreqData;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    .line 64
    return-void
.end method

.method private getArrayIndex(Lcom/github/junrar/unpack/ppm/ModelPPM;Lcom/github/junrar/unpack/ppm/State;)I
    .locals 5
    .param p1, "Model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;
    .param p2, "rs"    # Lcom/github/junrar/unpack/ppm/State;

    .line 238
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/github/junrar/unpack/ppm/SubAllocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v0

    .line 239
    .local v0, "tempSuffix":Lcom/github/junrar/unpack/ppm/PPMContext;
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "ret":I
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getPrevSuccess()I

    move-result v2

    add-int/2addr v1, v2

    .line 242
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getNS2BSIndx()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 243
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHiBitsFlag()I

    move-result v2

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    move-result-object v3

    invoke-virtual {p2}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v4

    aget v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 244
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getRunLength()I

    move-result v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v2, v2, 0x20

    add-int/2addr v1, v2

    .line 245
    return v1
.end method

.method private getTempPPMContext([B)Lcom/github/junrar/unpack/ppm/PPMContext;
    .locals 2
    .param p1, "mem"    # [B

    .line 141
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/github/junrar/unpack/ppm/PPMContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempPPMContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, p1}, Lcom/github/junrar/unpack/ppm/PPMContext;->init([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v0

    return-object v0
.end method

.method private makeEscFreq2(Lcom/github/junrar/unpack/ppm/ModelPPM;I)Lcom/github/junrar/unpack/ppm/SEE2Context;
    .locals 8
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;
    .param p2, "Diff"    # I

    .line 384
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    .line 385
    .local v0, "numStats":I
    const/16 v1, 0x100

    if-eq v0, v1, :cond_3

    .line 386
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v1

    .line 387
    .local v1, "suff":Lcom/github/junrar/unpack/ppm/PPMContext;
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 388
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getNS2Indx()[I

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    aget v2, v2, v3

    .line 389
    .local v2, "idx1":I
    const/4 v3, 0x0

    .line 390
    .local v3, "idx2":I
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v4

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge p2, v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    add-int/2addr v3, v4

    .line 391
    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v4

    mul-int/lit8 v7, v0, 0xb

    if-ge v4, v7, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 392
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getNumMasked()I

    move-result v4

    if-le v4, p2, :cond_2

    move v5, v6

    :cond_2
    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    .line 393
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHiBitsFlag()I

    move-result v4

    add-int/2addr v3, v4

    .line 394
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getSEE2Cont()[[Lcom/github/junrar/unpack/ppm/SEE2Context;

    move-result-object v4

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    .line 395
    .local v4, "psee2c":Lcom/github/junrar/unpack/ppm/SEE2Context;
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/SEE2Context;->getMean()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    .line 396
    .end local v1    # "suff":Lcom/github/junrar/unpack/ppm/PPMContext;
    .end local v2    # "idx1":I
    .end local v3    # "idx2":I
    goto :goto_2

    .line 397
    .end local v4    # "psee2c":Lcom/github/junrar/unpack/ppm/SEE2Context;
    :cond_3
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getDummySEE2Cont()Lcom/github/junrar/unpack/ppm/SEE2Context;

    move-result-object v4

    .line 398
    .restart local v4    # "psee2c":Lcom/github/junrar/unpack/ppm/SEE2Context;
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    .line 400
    :goto_2
    return-object v4
.end method


# virtual methods
.method public createChild(Lcom/github/junrar/unpack/ppm/ModelPPM;Lcom/github/junrar/unpack/ppm/State;Lcom/github/junrar/unpack/ppm/StateRef;)I
    .locals 2
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;
    .param p2, "pStats"    # Lcom/github/junrar/unpack/ppm/State;
    .param p3, "firstState"    # Lcom/github/junrar/unpack/ppm/StateRef;

    .line 150
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/github/junrar/unpack/ppm/SubAllocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v0

    .line 151
    .local v0, "pc":Lcom/github/junrar/unpack/ppm/PPMContext;
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/github/junrar/unpack/ppm/SubAllocator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->allocContext()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 152
    if-eqz v0, :cond_0

    .line 153
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 154
    invoke-virtual {v0, p3}, Lcom/github/junrar/unpack/ppm/PPMContext;->setOneState(Lcom/github/junrar/unpack/ppm/StateRef;)V

    .line 155
    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->setSuffix(Lcom/github/junrar/unpack/ppm/PPMContext;)V

    .line 156
    invoke-virtual {p2, v0}, Lcom/github/junrar/unpack/ppm/State;->setSuccessor(Lcom/github/junrar/unpack/ppm/PPMContext;)V

    .line 158
    :cond_0
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v1

    return v1
.end method

.method public decodeBinSymbol(Lcom/github/junrar/unpack/ppm/ModelPPM;)V
    .locals 12
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;

    .line 255
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState1:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v0

    .line 256
    .local v0, "rs":Lcom/github/junrar/unpack/ppm/State;
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 257
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setHiBitsFlag(I)V

    .line 258
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 259
    .local v1, "off1":I
    invoke-direct {p0, p1, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getArrayIndex(Lcom/github/junrar/unpack/ppm/ModelPPM;Lcom/github/junrar/unpack/ppm/State;)I

    move-result v3

    .line 260
    .local v3, "off2":I
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    move-result-object v4

    aget-object v4, v4, v1

    aget v4, v4, v3

    .line 261
    .local v4, "bs":I
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getCurrentShiftCount(I)J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long v5, v5, v7

    const v6, 0xffff

    const/4 v7, 0x2

    const/4 v8, 0x7

    const/4 v9, 0x0

    if-gez v5, :cond_1

    .line 262
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v5

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 263
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v5

    const/16 v10, 0x80

    if-ge v5, v10, :cond_0

    move v9, v2

    :cond_0
    invoke-virtual {v0, v9}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    .line 264
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 265
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    int-to-long v9, v4

    invoke-virtual {v5, v9, v10}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 266
    add-int/lit16 v5, v4, 0x80

    invoke-virtual {p0, v4, v8, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->getMean(III)I

    move-result v7

    sub-int/2addr v5, v7

    and-int v4, v5, v6

    .line 267
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    move-result-object v5

    aget-object v5, v5, v1

    aput v4, v5, v3

    .line 268
    invoke-virtual {p1, v2}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 269
    invoke-virtual {p1, v2}, Lcom/github/junrar/unpack/ppm/ModelPPM;->incRunLength(I)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    int-to-long v10, v4

    invoke-virtual {v5, v10, v11}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 272
    invoke-virtual {p0, v4, v8, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->getMean(III)I

    move-result v5

    sub-int v5, v4, v5

    and-int v4, v5, v6

    .line 273
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    move-result-object v5

    aget-object v5, v5, v1

    aput v4, v5, v3

    .line 274
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    const-wide/16 v6, 0x4000

    invoke-virtual {v5, v6, v7}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 275
    sget-object v5, Lcom/github/junrar/unpack/ppm/PPMContext;->ExpEscape:[I

    ushr-int/lit8 v6, v4, 0xa

    aget v5, v5, v6

    invoke-virtual {p1, v5}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setInitEsc(I)V

    .line 276
    invoke-virtual {p1, v2}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    .line 277
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v5

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v6

    aput v6, v2, v5

    .line 278
    invoke-virtual {p1, v9}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 279
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 282
    :goto_0
    return-void
.end method

.method public decodeSymbol1(Lcom/github/junrar/unpack/ppm/ModelPPM;)Z
    .locals 12
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;

    .line 406
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v0

    .line 407
    .local v0, "coder":Lcom/github/junrar/unpack/ppm/RangeCoder;
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v1

    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    .line 408
    new-instance v1, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 409
    .local v1, "p":Lcom/github/junrar/unpack/ppm/State;
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 411
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getCurrentCount()I

    move-result v2

    int-to-long v2, v2

    .line 412
    .local v2, "count":J
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v4

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    .line 413
    return v5

    .line 415
    :cond_0
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v4

    move v6, v4

    .local v6, "HiCnt":I
    int-to-long v7, v4

    cmp-long v4, v2, v7

    const/4 v7, 0x1

    if-gez v4, :cond_3

    .line 416
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v4

    int-to-long v8, v6

    invoke-virtual {v4, v8, v9}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 417
    mul-int/lit8 v4, v6, 0x2

    int-to-long v8, v4

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-lez v4, :cond_1

    move v5, v7

    :cond_1
    invoke-virtual {p1, v5}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 418
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getPrevSuccess()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/github/junrar/unpack/ppm/ModelPPM;->incRunLength(I)V

    .line 419
    const/4 v4, 0x4

    add-int/2addr v6, v4

    .line 420
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 421
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/State;->setFreq(I)V

    .line 422
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v5, v4}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 423
    const/16 v4, 0x7c

    if-le v6, v4, :cond_2

    .line 424
    invoke-virtual {p0, p1}, Lcom/github/junrar/unpack/ppm/PPMContext;->rescale(Lcom/github/junrar/unpack/ppm/ModelPPM;)V

    .line 426
    :cond_2
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v4

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 427
    return v7

    .line 429
    :cond_3
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v4

    if-nez v4, :cond_4

    .line 430
    return v5

    .line 433
    :cond_4
    invoke-virtual {p1, v5}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 434
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v4

    .line 435
    .local v4, "numStats":I
    add-int/lit8 v8, v4, -0x1

    .line 436
    .local v8, "i":I
    :cond_5
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->incAddress()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    add-int/2addr v9, v6

    move v6, v9

    int-to-long v9, v9

    cmp-long v9, v9, v2

    if-gtz v9, :cond_7

    .line 438
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_5

    .line 439
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    move-result-object v9

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v10

    aget v9, v9, v10

    invoke-virtual {p1, v9}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setHiBitsFlag(I)V

    .line 440
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v9

    int-to-long v10, v6

    invoke-virtual {v9, v10, v11}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 441
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v9

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v10

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v11

    aput v11, v9, v10

    .line 442
    invoke-virtual {p1, v4}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    .line 443
    add-int/lit8 v8, v4, -0x1

    .line 444
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 446
    :cond_6
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->decAddress()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v9

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v10

    aput v10, v5, v9

    .line 447
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_6

    .line 448
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 449
    return v7

    .line 452
    :cond_7
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    sub-int v9, v6, v9

    int-to-long v9, v9

    invoke-virtual {v5, v9, v10}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 453
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    int-to-long v9, v6

    invoke-virtual {v5, v9, v10}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 454
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lcom/github/junrar/unpack/ppm/PPMContext;->update1(Lcom/github/junrar/unpack/ppm/ModelPPM;I)V

    .line 455
    return v7
.end method

.method public decodeSymbol2(Lcom/github/junrar/unpack/ppm/ModelPPM;)Z
    .locals 14
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;

    .line 319
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getNumMasked()I

    move-result v1

    sub-int/2addr v0, v1

    .line 320
    .local v0, "i":I
    invoke-direct {p0, p1, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->makeEscFreq2(Lcom/github/junrar/unpack/ppm/ModelPPM;I)Lcom/github/junrar/unpack/ppm/SEE2Context;

    move-result-object v1

    .line 321
    .local v1, "psee2c":Lcom/github/junrar/unpack/ppm/SEE2Context;
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;

    move-result-object v2

    .line 323
    .local v2, "coder":Lcom/github/junrar/unpack/ppm/RangeCoder;
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState1:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v3

    .line 324
    .local v3, "p":Lcom/github/junrar/unpack/ppm/State;
    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState2:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v4

    .line 325
    .local v4, "temp":Lcom/github/junrar/unpack/ppm/State;
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v5

    add-int/lit8 v5, v5, -0x6

    invoke-virtual {v3, v5}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 326
    const/4 v5, 0x0

    .line 327
    .local v5, "pps":I
    const/4 v6, 0x0

    .line 331
    .local v6, "hiCnt":I
    :goto_0
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->incAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 332
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v7

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v8

    aget v7, v7, v8

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 333
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v7

    add-int/2addr v6, v7

    .line 334
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->ps:[I

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pps":I
    .local v8, "pps":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v9

    aput v9, v7, v5

    .line 335
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_4

    .line 336
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->incScale(I)V

    .line 337
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getCurrentCount()I

    move-result v5

    int-to-long v9, v5

    .line 338
    .local v9, "count":J
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v11

    cmp-long v5, v9, v11

    if-ltz v5, :cond_0

    .line 339
    const/4 v5, 0x0

    return v5

    .line 341
    :cond_0
    const/4 v5, 0x0

    .line 342
    .end local v8    # "pps":I
    .restart local v5    # "pps":I
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->ps:[I

    aget v7, v7, v5

    invoke-virtual {v3, v7}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 343
    int-to-long v7, v6

    cmp-long v7, v9, v7

    const/4 v11, 0x1

    if-gez v7, :cond_2

    .line 344
    const/4 v6, 0x0

    .line 345
    :goto_1
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v7

    add-int/2addr v7, v6

    move v6, v7

    int-to-long v7, v7

    cmp-long v7, v7, v9

    if-gtz v7, :cond_1

    .line 346
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->ps:[I

    add-int/lit8 v5, v5, 0x1

    aget v7, v7, v5

    invoke-virtual {v3, v7}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    goto :goto_1

    .line 348
    :cond_1
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v7

    int-to-long v12, v6

    invoke-virtual {v7, v12, v13}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 349
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v7

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    sub-int v8, v6, v8

    int-to-long v12, v8

    invoke-virtual {v7, v12, v13}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 350
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/SEE2Context;->update()V

    .line 351
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->update2(Lcom/github/junrar/unpack/ppm/ModelPPM;I)V

    goto :goto_2

    .line 353
    :cond_2
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v7

    int-to-long v12, v6

    invoke-virtual {v7, v12, v13}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 354
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v7

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 355
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v7

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getNumMasked()I

    move-result v8

    sub-int/2addr v7, v8

    .line 356
    .end local v0    # "i":I
    .local v7, "i":I
    add-int/lit8 v5, v5, -0x1

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->ps:[I

    add-int/2addr v5, v11

    aget v0, v0, v5

    invoke-virtual {v4, v0}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 359
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v0

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v8

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v12

    aput v12, v0, v8

    .line 360
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_3

    .line 361
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/RangeCoder;->getSubRange()Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v12

    long-to-int v0, v12

    invoke-virtual {v1, v0}, Lcom/github/junrar/unpack/ppm/SEE2Context;->incSumm(I)V

    .line 362
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    move v0, v7

    .line 364
    .end local v7    # "i":I
    .restart local v0    # "i":I
    :goto_2
    return v11

    .line 335
    .end local v5    # "pps":I
    .end local v9    # "count":J
    .restart local v8    # "pps":I
    :cond_4
    move v5, v8

    goto/16 :goto_0

    .line 332
    .end local v8    # "pps":I
    .restart local v5    # "pps":I
    :cond_5
    goto/16 :goto_0
.end method

.method public getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    return-object v0
.end method

.method public getMean(III)I
    .locals 2
    .param p1, "summ"    # I
    .param p2, "shift"    # I
    .param p3, "round"    # I

    .line 250
    sub-int v0, p2, p3

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/2addr v0, p1

    ushr-int/2addr v0, p2

    return v0
.end method

.method public final getNumStats()I
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->pos:I

    invoke-static {v0, v1}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->numStats:I

    .line 90
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->numStats:I

    return v0
.end method

.method public getOneState()Lcom/github/junrar/unpack/ppm/State;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    return-object v0
.end method

.method public getSuffix()I
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    iput v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->suffix:I

    .line 116
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->suffix:I

    return v0
.end method

.method public init([B)Lcom/github/junrar/unpack/ppm/PPMContext;
    .locals 1
    .param p1, "mem"    # [B

    .line 67
    iput-object p1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->pos:I

    .line 69
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v0, p1}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    .line 70
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v0, p1}, Lcom/github/junrar/unpack/ppm/FreqData;->init([B)Lcom/github/junrar/unpack/ppm/FreqData;

    .line 71
    return-object p0
.end method

.method public rescale(Lcom/github/junrar/unpack/ppm/ModelPPM;)V
    .locals 13
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;

    .line 163
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    .local v0, "OldNS":I
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 165
    .local v1, "i":I
    new-instance v3, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 166
    .local v3, "p1":Lcom/github/junrar/unpack/ppm/State;
    new-instance v4, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 167
    .local v4, "p":Lcom/github/junrar/unpack/ppm/State;
    new-instance v5, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 169
    .local v5, "temp":Lcom/github/junrar/unpack/ppm/State;
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 170
    :goto_0
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v7}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 172
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    add-int/lit8 v6, v6, -0x6

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 173
    invoke-static {v4, v5}, Lcom/github/junrar/unpack/ppm/State;->ppmdSwap(Lcom/github/junrar/unpack/ppm/State;Lcom/github/junrar/unpack/ppm/State;)V

    .line 171
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->decAddress()Lcom/github/junrar/unpack/ppm/State;

    goto :goto_0

    .line 175
    :cond_0
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 176
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    .line 177
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v7, v6}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 178
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v6

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v7

    sub-int/2addr v6, v7

    .line 179
    .local v6, "EscFreq":I
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getOrderFall()I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 180
    .local v7, "Adder":I
    :goto_1
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    add-int/2addr v8, v7

    ushr-int/2addr v8, v2

    invoke-virtual {v4, v8}, Lcom/github/junrar/unpack/ppm/State;->setFreq(I)V

    .line 181
    iget-object v8, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/github/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 183
    :goto_2
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->incAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 184
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    sub-int/2addr v6, v8

    .line 185
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    add-int/2addr v8, v7

    ushr-int/2addr v8, v2

    invoke-virtual {v4, v8}, Lcom/github/junrar/unpack/ppm/State;->setFreq(I)V

    .line 186
    iget-object v8, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 187
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v8

    add-int/lit8 v8, v8, -0x6

    invoke-virtual {v5, v8}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 188
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    if-le v8, v9, :cond_4

    .line 189
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 190
    new-instance v8, Lcom/github/junrar/unpack/ppm/StateRef;

    invoke-direct {v8}, Lcom/github/junrar/unpack/ppm/StateRef;-><init>()V

    .line 191
    .local v8, "tmp":Lcom/github/junrar/unpack/ppm/StateRef;
    invoke-virtual {v8, v3}, Lcom/github/junrar/unpack/ppm/StateRef;->setValues(Lcom/github/junrar/unpack/ppm/State;)V

    .line 192
    new-instance v9, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 193
    .local v9, "temp2":Lcom/github/junrar/unpack/ppm/State;
    new-instance v10, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 196
    .local v10, "temp3":Lcom/github/junrar/unpack/ppm/State;
    :cond_2
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v9, v11}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 197
    invoke-virtual {v3, v9}, Lcom/github/junrar/unpack/ppm/State;->setValues(Lcom/github/junrar/unpack/ppm/State;)V

    .line 198
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->decAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 199
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v10, v11}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 200
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v11

    iget-object v12, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v12}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v12

    if-eq v11, v12, :cond_3

    invoke-virtual {v8}, Lcom/github/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v11

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v12

    if-gt v11, v12, :cond_2

    .line 201
    :cond_3
    invoke-virtual {v3, v8}, Lcom/github/junrar/unpack/ppm/State;->setValues(Lcom/github/junrar/unpack/ppm/StateRef;)V

    .line 203
    .end local v8    # "tmp":Lcom/github/junrar/unpack/ppm/StateRef;
    .end local v9    # "temp2":Lcom/github/junrar/unpack/ppm/State;
    .end local v10    # "temp3":Lcom/github/junrar/unpack/ppm/State;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_9

    .line 204
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    if-nez v8, :cond_7

    .line 206
    :cond_5
    add-int/2addr v1, v2

    .line 207
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->decAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 208
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    if-eqz v8, :cond_5

    .line 209
    add-int/2addr v6, v1

    .line 210
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {p0, v8}, Lcom/github/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 211
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v8

    if-ne v8, v2, :cond_7

    .line 212
    new-instance v8, Lcom/github/junrar/unpack/ppm/StateRef;

    invoke-direct {v8}, Lcom/github/junrar/unpack/ppm/StateRef;-><init>()V

    .line 213
    .restart local v8    # "tmp":Lcom/github/junrar/unpack/ppm/StateRef;
    iget-object v9, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 214
    invoke-virtual {v8, v5}, Lcom/github/junrar/unpack/ppm/StateRef;->setValues(Lcom/github/junrar/unpack/ppm/State;)V

    .line 218
    :cond_6
    invoke-virtual {v8}, Lcom/github/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v9

    ushr-int/2addr v9, v2

    invoke-virtual {v8, v9}, Lcom/github/junrar/unpack/ppm/StateRef;->decFreq(I)V

    .line 219
    ushr-int/2addr v6, v2

    .line 220
    if-gt v6, v2, :cond_6

    .line 221
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/github/junrar/unpack/ppm/SubAllocator;

    move-result-object v9

    iget-object v10, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v10

    add-int/lit8 v11, v0, 0x1

    ushr-int/lit8 v2, v11, 0x1

    invoke-virtual {v9, v10, v2}, Lcom/github/junrar/unpack/ppm/SubAllocator;->freeUnits(II)V

    .line 222
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v2, v8}, Lcom/github/junrar/unpack/ppm/State;->setValues(Lcom/github/junrar/unpack/ppm/StateRef;)V

    .line 223
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v2

    iget-object v9, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 224
    return-void

    .line 227
    .end local v8    # "tmp":Lcom/github/junrar/unpack/ppm/StateRef;
    :cond_7
    ushr-int/lit8 v8, v6, 0x1

    sub-int/2addr v6, v8

    .line 228
    iget-object v8, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v8, v6}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 229
    add-int/lit8 v8, v0, 0x1

    ushr-int/2addr v8, v2

    .local v8, "n0":I
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v9

    add-int/2addr v9, v2

    ushr-int/lit8 v2, v9, 0x1

    .line 230
    .local v2, "n1":I
    if-eq v8, v2, :cond_8

    .line 231
    iget-object v9, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/github/junrar/unpack/ppm/SubAllocator;

    move-result-object v10

    iget-object v11, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v11}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v11

    invoke-virtual {v10, v11, v8, v2}, Lcom/github/junrar/unpack/ppm/SubAllocator;->shrinkUnits(III)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/github/junrar/unpack/ppm/FreqData;->setStats(I)V

    .line 233
    :cond_8
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v9

    iget-object v10, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 234
    return-void

    .line 203
    .end local v2    # "n1":I
    .end local v8    # "n0":I
    :cond_9
    goto/16 :goto_2
.end method

.method public setAddress(I)V
    .locals 2
    .param p1, "pos"    # I

    .line 135
    invoke-super {p0, p1}, Lcom/github/junrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 136
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 137
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/FreqData;->setAddress(I)V

    .line 138
    return-void
.end method

.method public setFreqData(Lcom/github/junrar/unpack/ppm/FreqData;)V
    .locals 2
    .param p1, "freqData"    # Lcom/github/junrar/unpack/ppm/FreqData;

    .line 81
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 82
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/FreqData;->setStats(I)V

    .line 83
    return-void
.end method

.method public final setNumStats(I)V
    .locals 3
    .param p1, "numStats"    # I

    .line 95
    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->numStats:I

    .line 96
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->pos:I

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Lcom/github/junrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 99
    :cond_0
    return-void
.end method

.method public setOneState(Lcom/github/junrar/unpack/ppm/StateRef;)V
    .locals 1
    .param p1, "oneState"    # Lcom/github/junrar/unpack/ppm/StateRef;

    .line 108
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v0, p1}, Lcom/github/junrar/unpack/ppm/State;->setValues(Lcom/github/junrar/unpack/ppm/StateRef;)V

    .line 109
    return-void
.end method

.method public setSuffix(I)V
    .locals 2
    .param p1, "suffix"    # I

    .line 126
    iput p1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->suffix:I

    .line 127
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->mem:[B

    iget v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lcom/github/junrar/io/Raw;->writeIntLittleEndian([BII)V

    .line 130
    :cond_0
    return-void
.end method

.method public setSuffix(Lcom/github/junrar/unpack/ppm/PPMContext;)V
    .locals 1
    .param p1, "suffix"    # Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 121
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->setSuffix(I)V

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "PPMContext["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v1, "\n  pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, "\n  size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    sget v1, Lcom/github/junrar/unpack/ppm/PPMContext;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    const-string v1, "\n  numStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    const-string v1, "\n  Suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    const-string v1, "\n  freqData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, "\n  oneState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->oneState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 473
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update1(Lcom/github/junrar/unpack/ppm/ModelPPM;I)V
    .locals 4
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;
    .param p2, "p"    # I

    .line 301
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 302
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    .line 303
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 304
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState3:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v0

    .line 305
    .local v0, "p0":Lcom/github/junrar/unpack/ppm/State;
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState4:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v1

    .line 306
    .local v1, "p1":Lcom/github/junrar/unpack/ppm/State;
    invoke-virtual {v0, p2}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 307
    add-int/lit8 v2, p2, -0x6

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 308
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v2

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 309
    invoke-static {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->ppmdSwap(Lcom/github/junrar/unpack/ppm/State;Lcom/github/junrar/unpack/ppm/State;)V

    .line 310
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 311
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v2

    const/16 v3, 0x7c

    if-le v2, v3, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Lcom/github/junrar/unpack/ppm/PPMContext;->rescale(Lcom/github/junrar/unpack/ppm/ModelPPM;)V

    .line 314
    :cond_0
    return-void
.end method

.method public update2(Lcom/github/junrar/unpack/ppm/ModelPPM;I)V
    .locals 3
    .param p1, "model"    # Lcom/github/junrar/unpack/ppm/ModelPPM;
    .param p2, "p"    # I

    .line 369
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->tempState5:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v0

    .line 370
    .local v0, "temp":Lcom/github/junrar/unpack/ppm/State;
    invoke-virtual {v0, p2}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 371
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 372
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getFoundState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    .line 373
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/PPMContext;->freqData:Lcom/github/junrar/unpack/ppm/FreqData;

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 374
    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v1

    const/16 v2, 0x7c

    if-le v1, v2, :cond_0

    .line 375
    invoke-virtual {p0, p1}, Lcom/github/junrar/unpack/ppm/PPMContext;->rescale(Lcom/github/junrar/unpack/ppm/ModelPPM;)V

    .line 377
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->incEscCount(I)V

    .line 378
    invoke-virtual {p1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getInitRL()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setRunLength(I)V

    .line 379
    return-void
.end method
