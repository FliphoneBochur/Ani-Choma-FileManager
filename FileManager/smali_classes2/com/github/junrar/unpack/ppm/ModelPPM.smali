.class public Lcom/github/junrar/unpack/ppm/ModelPPM;
.super Ljava/lang/Object;
.source "ModelPPM.java"


# static fields
.field public static final BIN_SCALE:I = 0x4000

.field public static final INTERVAL:I = 0x80

.field public static final INT_BITS:I = 0x7

.field private static InitBinEsc:[I = null

.field public static final MAX_FREQ:I = 0x7c

.field public static final MAX_O:I = 0x40

.field public static final PERIOD_BITS:I = 0x7

.field public static final TOT_BITS:I = 0xe


# instance fields
.field private HB2Flag:[I

.field private NS2BSIndx:[I

.field private NS2Indx:[I

.field private SEE2Cont:[[Lcom/github/junrar/unpack/ppm/SEE2Context;

.field private binSumm:[[I

.field private charMask:[I

.field private coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

.field private dummySEE2Cont:Lcom/github/junrar/unpack/ppm/SEE2Context;

.field private escCount:I

.field private foundState:Lcom/github/junrar/unpack/ppm/State;

.field private hiBitsFlag:I

.field private initEsc:I

.field private initRL:I

.field private maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private maxOrder:I

.field private minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private numMasked:I

.field private orderFall:I

.field private prevSuccess:I

.field private final ps:[I

.field private runLength:I

.field private subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

.field private final tempPPMContext1:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private final tempPPMContext2:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private final tempPPMContext3:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private final tempPPMContext4:Lcom/github/junrar/unpack/ppm/PPMContext;

.field private final tempState1:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState2:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState3:Lcom/github/junrar/unpack/ppm/State;

.field private final tempState4:Lcom/github/junrar/unpack/ppm/State;

.field private final tempStateRef1:Lcom/github/junrar/unpack/ppm/StateRef;

.field private final tempStateRef2:Lcom/github/junrar/unpack/ppm/StateRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->InitBinEsc:[I

    return-void

    :array_0
    .array-data 4
        0x3cdd
        0x1f3f
        0x59bf
        0x48f3
        0x64a1
        0x5abc
        0x6632
        0x6051
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-class v2, Lcom/github/junrar/unpack/ppm/SEE2Context;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/github/junrar/unpack/ppm/SEE2Context;

    iput-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/github/junrar/unpack/ppm/SEE2Context;

    .line 59
    const/16 v1, 0x100

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->charMask:[I

    .line 61
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    .line 63
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    .line 65
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    .line 70
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->binSumm:[[I

    .line 72
    new-instance v0, Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-direct {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    .line 74
    new-instance v0, Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-direct {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    .line 80
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState1:Lcom/github/junrar/unpack/ppm/State;

    .line 81
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState2:Lcom/github/junrar/unpack/ppm/State;

    .line 82
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState3:Lcom/github/junrar/unpack/ppm/State;

    .line 83
    new-instance v0, Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState4:Lcom/github/junrar/unpack/ppm/State;

    .line 84
    new-instance v0, Lcom/github/junrar/unpack/ppm/StateRef;

    invoke-direct {v0}, Lcom/github/junrar/unpack/ppm/StateRef;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempStateRef1:Lcom/github/junrar/unpack/ppm/StateRef;

    .line 85
    new-instance v0, Lcom/github/junrar/unpack/ppm/StateRef;

    invoke-direct {v0}, Lcom/github/junrar/unpack/ppm/StateRef;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempStateRef2:Lcom/github/junrar/unpack/ppm/StateRef;

    .line 86
    new-instance v0, Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext1:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 87
    new-instance v0, Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext2:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 88
    new-instance v0, Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext3:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 89
    new-instance v0, Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext4:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 90
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->ps:[I

    .line 94
    iput-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 95
    iput-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 96
    return-void

    :array_0
    .array-data 4
        0x19
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x80
        0x40
    .end array-data
.end method

.method private clearMask()V
    .locals 2

    .line 182
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 183
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->charMask:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 184
    return-void
.end method

.method private createSuccessors(ZLcom/github/junrar/unpack/ppm/State;)I
    .locals 13
    .param p1, "Skip"    # Z
    .param p2, "p1"    # Lcom/github/junrar/unpack/ppm/State;

    .line 415
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempStateRef2:Lcom/github/junrar/unpack/ppm/StateRef;

    .line 416
    .local v0, "upState":Lcom/github/junrar/unpack/ppm/StateRef;
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState1:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v1

    .line 419
    .local v1, "tempState":Lcom/github/junrar/unpack/ppm/State;
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext1:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->init([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v2

    .line 420
    .local v2, "pc":Lcom/github/junrar/unpack/ppm/PPMContext;
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 421
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext2:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->init([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v3

    .line 422
    .local v3, "upBranch":Lcom/github/junrar/unpack/ppm/PPMContext;
    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 425
    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState2:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v4

    .line 426
    .local v4, "p":Lcom/github/junrar/unpack/ppm/State;
    const/4 v5, 0x0

    .line 428
    .local v5, "pps":I
    const/4 v6, 0x0

    .line 430
    .local v6, "noLoop":Z
    if-nez p1, :cond_1

    .line 431
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->ps:[I

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pps":I
    .local v8, "pps":I
    iget-object v9, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v9

    aput v9, v7, v5

    .line 432
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v5

    if-nez v5, :cond_0

    .line 433
    const/4 v6, 0x1

    move v5, v8

    goto :goto_0

    .line 432
    :cond_0
    move v5, v8

    .line 436
    .end local v8    # "pps":I
    .restart local v5    # "pps":I
    :cond_1
    :goto_0
    const/4 v7, 0x1

    if-nez v6, :cond_8

    .line 437
    const/4 v8, 0x0

    .line 438
    .local v8, "loopEntry":Z
    invoke-virtual {p2}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v9

    if-eqz v9, :cond_2

    .line 439
    invoke-virtual {p2}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 440
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 441
    const/4 v8, 0x1

    .line 444
    :cond_2
    :goto_1
    if-nez v8, :cond_5

    .line 445
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 446
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v9

    if-eq v9, v7, :cond_4

    .line 447
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 448
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v9

    iget-object v10, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v10

    if-eq v9, v10, :cond_5

    .line 450
    :cond_3
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->incAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 451
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v9

    iget-object v10, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v10

    if-ne v9, v10, :cond_3

    goto :goto_2

    .line 454
    :cond_4
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 457
    :cond_5
    :goto_2
    const/4 v8, 0x0

    .line 458
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v9

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v10

    if-eq v9, v10, :cond_6

    .line 459
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 460
    goto :goto_3

    .line 462
    :cond_6
    iget-object v9, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->ps:[I

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "pps":I
    .local v10, "pps":I
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v11

    aput v11, v9, v5

    .line 463
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v5

    if-nez v5, :cond_7

    move v5, v10

    goto :goto_3

    :cond_7
    move v5, v10

    goto :goto_1

    .line 466
    .end local v8    # "loopEntry":Z
    .end local v10    # "pps":I
    .restart local v5    # "pps":I
    :cond_8
    :goto_3
    if-nez v5, :cond_9

    .line 467
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v7

    return v7

    .line 469
    :cond_9
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v8

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v9

    aget-byte v8, v8, v9

    invoke-virtual {v0, v8}, Lcom/github/junrar/unpack/ppm/StateRef;->setSymbol(I)V

    .line 472
    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v0, v8}, Lcom/github/junrar/unpack/ppm/StateRef;->setSuccessor(I)V

    .line 473
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v8

    const/4 v9, 0x0

    if-eq v8, v7, :cond_f

    .line 474
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v8

    iget-object v10, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v10

    if-gt v8, v10, :cond_a

    .line 475
    return v9

    .line 477
    :cond_a
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 478
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v8

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v10

    if-eq v8, v10, :cond_c

    .line 480
    :cond_b
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->incAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 481
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v8

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v10

    if-ne v8, v10, :cond_b

    .line 483
    :cond_c
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v8

    sub-int/2addr v8, v7

    .line 484
    .local v8, "cf":I
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v10

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v8

    .line 486
    .local v10, "s0":I
    mul-int/lit8 v11, v8, 0x2

    if-gt v11, v10, :cond_e

    mul-int/lit8 v11, v8, 0x5

    if-le v11, v10, :cond_d

    move v11, v7

    goto :goto_4

    :cond_d
    move v11, v9

    goto :goto_4

    :cond_e
    mul-int/lit8 v11, v8, 0x2

    mul-int/lit8 v12, v10, 0x3

    add-int/2addr v11, v12

    sub-int/2addr v11, v7

    mul-int/lit8 v12, v10, 0x2

    div-int/2addr v11, v12

    :goto_4
    add-int/2addr v7, v11

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/ppm/StateRef;->setFreq(I)V

    .line 488
    .end local v8    # "cf":I
    .end local v10    # "s0":I
    goto :goto_5

    .line 489
    :cond_f
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/github/junrar/unpack/ppm/StateRef;->setFreq(I)V

    .line 493
    :goto_5
    iget-object v7, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->ps:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    invoke-virtual {v1, v7}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 494
    invoke-virtual {v2, p0, v1, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->createChild(Lcom/github/junrar/unpack/ppm/ModelPPM;Lcom/github/junrar/unpack/ppm/State;Lcom/github/junrar/unpack/ppm/StateRef;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 495
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v7

    if-nez v7, :cond_10

    .line 496
    return v9

    .line 498
    :cond_10
    if-nez v5, :cond_11

    .line 499
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v7

    return v7

    .line 498
    :cond_11
    goto :goto_5
.end method

.method private restartModelRare()V
    .locals 10

    .line 105
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->charMask:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 106
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->initSubAllocator()V

    .line 107
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    const/16 v2, 0xc

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    neg-int v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initRL:I

    .line 108
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->allocContext()I

    move-result v0

    .line 109
    .local v0, "addr":I
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 110
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3, v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 111
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->setSuffix(I)V

    .line 112
    iget v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    iput v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 113
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 114
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v3

    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v5}, Lcom/github/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 116
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Lcom/github/junrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    move-result v0

    .line 117
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v3, v0}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 118
    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/github/junrar/unpack/ppm/FreqData;->setStats(I)V

    .line 120
    new-instance v3, Lcom/github/junrar/unpack/ppm/State;

    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    .line 121
    .local v3, "state":Lcom/github/junrar/unpack/ppm/State;
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v0

    .line 122
    iget v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initRL:I

    iput v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->runLength:I

    .line 123
    iput v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    .line 124
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_1

    .line 125
    mul-int/lit8 v7, v6, 0x6

    add-int/2addr v7, v0

    invoke-virtual {v3, v7}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 126
    invoke-virtual {v3, v6}, Lcom/github/junrar/unpack/ppm/State;->setSymbol(I)V

    .line 127
    invoke-virtual {v3, v2}, Lcom/github/junrar/unpack/ppm/State;->setFreq(I)V

    .line 128
    invoke-virtual {v3, v1}, Lcom/github/junrar/unpack/ppm/State;->setSuccessor(I)V

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 131
    .end local v6    # "i":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_4

    .line 132
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3
    const/16 v4, 0x8

    if-ge v2, v4, :cond_3

    .line 133
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_4
    const/16 v6, 0x40

    if-ge v4, v6, :cond_2

    .line 134
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->binSumm:[[I

    aget-object v6, v6, v1

    add-int v7, v2, v4

    sget-object v8, Lcom/github/junrar/unpack/ppm/ModelPPM;->InitBinEsc:[I

    aget v8, v8, v2

    add-int/lit8 v9, v1, 0x2

    div-int/2addr v8, v9

    rsub-int v8, v8, 0x4000

    aput v8, v6, v7

    .line 133
    add-int/lit8 v4, v4, 0x8

    goto :goto_4

    .line 132
    .end local v4    # "m":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 131
    .end local v2    # "k":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 138
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    const/16 v2, 0x19

    if-ge v1, v2, :cond_6

    .line 139
    const/4 v2, 0x0

    .restart local v2    # "k":I
    :goto_6
    const/16 v4, 0x10

    if-ge v2, v4, :cond_5

    .line 140
    iget-object v4, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/github/junrar/unpack/ppm/SEE2Context;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Lcom/github/junrar/unpack/ppm/SEE2Context;->init(I)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 138
    .end local v2    # "k":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 143
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method private startModelRare(I)V
    .locals 8
    .param p1, "MaxOrder"    # I

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 149
    iput p1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    .line 150
    invoke-direct {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->restartModelRare()V

    .line 152
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 153
    const/4 v3, 0x2

    aput v3, v1, v0

    .line 154
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    add-int/lit8 v3, v0, 0x2

    const/4 v4, 0x4

    aput v4, v1, v3

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "j":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_1
    const/16 v1, 0xf5

    if-ge v0, v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    add-int/lit8 v3, v0, 0xb

    const/4 v4, 0x6

    aput v4, v1, v3

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    .end local v0    # "j":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    aput v0, v1, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    :cond_2
    move v1, v0

    .local v1, "m":I
    const/4 v3, 0x1

    .local v3, "k":I
    const/4 v4, 0x1

    .local v4, "Step":I
    :goto_3
    const/16 v5, 0x100

    if-ge v0, v5, :cond_4

    .line 164
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    aput v1, v5, v0

    .line 165
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_3

    .line 166
    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 163
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 170
    :cond_4
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    const/16 v6, 0x40

    if-ge v5, v6, :cond_5

    .line 171
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    aput v2, v6, v5

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 173
    .end local v5    # "j":I
    :cond_5
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    const/16 v5, 0xc0

    if-ge v2, v5, :cond_6

    .line 174
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    add-int/lit8 v6, v2, 0x40

    const/16 v7, 0x8

    aput v7, v5, v6

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 176
    .end local v2    # "j":I
    :cond_6
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lcom/github/junrar/unpack/ppm/SEE2Context;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Lcom/github/junrar/unpack/ppm/SEE2Context;->setShift(I)V

    .line 178
    return-void
.end method

.method private updateModel()V
    .locals 16

    .line 512
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempStateRef1:Lcom/github/junrar/unpack/ppm/StateRef;

    .line 513
    .local v1, "fs":Lcom/github/junrar/unpack/ppm/StateRef;
    iget-object v2, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v1, v2}, Lcom/github/junrar/unpack/ppm/StateRef;->setValues(Lcom/github/junrar/unpack/ppm/State;)V

    .line 514
    iget-object v2, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState3:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v2

    .line 515
    .local v2, "p":Lcom/github/junrar/unpack/ppm/State;
    iget-object v3, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempState4:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/junrar/unpack/ppm/State;->init([B)Lcom/github/junrar/unpack/ppm/State;

    move-result-object v3

    .line 517
    .local v3, "tempState":Lcom/github/junrar/unpack/ppm/State;
    iget-object v4, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext3:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/junrar/unpack/ppm/PPMContext;->init([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v4

    .line 518
    .local v4, "pc":Lcom/github/junrar/unpack/ppm/PPMContext;
    iget-object v5, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->tempPPMContext4:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->init([B)Lcom/github/junrar/unpack/ppm/PPMContext;

    move-result-object v5

    .line 521
    .local v5, "successor":Lcom/github/junrar/unpack/ppm/PPMContext;
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 522
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x1f

    if-ge v6, v9, :cond_3

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v6

    if-eqz v6, :cond_3

    .line 523
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v6

    if-eq v6, v8, :cond_2

    .line 524
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 525
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v6

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v9

    if-eq v6, v9, :cond_1

    .line 527
    :cond_0
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->incAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 528
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v6

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v9

    if-ne v6, v9, :cond_0

    .line 529
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    add-int/lit8 v6, v6, -0x6

    invoke-virtual {v3, v6}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 530
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v6

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    if-lt v6, v9, :cond_1

    .line 531
    invoke-static {v2, v3}, Lcom/github/junrar/unpack/ppm/State;->ppmdSwap(Lcom/github/junrar/unpack/ppm/State;Lcom/github/junrar/unpack/ppm/State;)V

    .line 532
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->decAddress()Lcom/github/junrar/unpack/ppm/State;

    .line 535
    :cond_1
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v6

    const/16 v9, 0x73

    if-ge v6, v9, :cond_3

    .line 536
    invoke-virtual {v2, v7}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    .line 537
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    goto :goto_0

    .line 540
    :cond_2
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 541
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v6

    const/16 v9, 0x20

    if-ge v6, v9, :cond_3

    .line 542
    invoke-virtual {v2, v8}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    .line 546
    :cond_3
    :goto_0
    iget v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    if-nez v6, :cond_5

    .line 547
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-direct {v0, v8, v2}, Lcom/github/junrar/unpack/ppm/ModelPPM;->createSuccessors(ZLcom/github/junrar/unpack/ppm/State;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/junrar/unpack/ppm/State;->setSuccessor(I)V

    .line 548
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    iget-object v7, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v7}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 549
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    iget-object v7, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v7}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 550
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v6

    if-nez v6, :cond_4

    .line 551
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 552
    return-void

    .line 554
    :cond_4
    return-void

    .line 556
    :cond_5
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v6

    iget-object v9, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v9

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 557
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/SubAllocator;->incPText()V

    .line 558
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 559
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v6

    iget-object v9, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getFakeUnitsStart()I

    move-result v9

    if-lt v6, v9, :cond_6

    .line 560
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 561
    return-void

    .line 565
    :cond_6
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_8

    .line 566
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v6

    iget-object v10, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v10

    if-gt v6, v10, :cond_7

    .line 567
    invoke-direct {v0, v9, v2}, Lcom/github/junrar/unpack/ppm/ModelPPM;->createSuccessors(ZLcom/github/junrar/unpack/ppm/State;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/github/junrar/unpack/ppm/StateRef;->setSuccessor(I)V

    .line 568
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v6

    if-nez v6, :cond_7

    .line 569
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 570
    return-void

    .line 573
    :cond_7
    iget v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    sub-int/2addr v6, v8

    iput v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    if-nez v6, :cond_9

    .line 574
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 575
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v6

    iget-object v10, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v10

    if-eq v6, v10, :cond_9

    .line 576
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6, v8}, Lcom/github/junrar/unpack/ppm/SubAllocator;->decPText(I)V

    goto :goto_1

    .line 581
    :cond_8
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/github/junrar/unpack/ppm/State;->setSuccessor(I)V

    .line 582
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v1, v6}, Lcom/github/junrar/unpack/ppm/StateRef;->setSuccessor(Lcom/github/junrar/unpack/ppm/PPMContext;)V

    .line 586
    :cond_9
    :goto_1
    iget-object v6, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v6

    .line 587
    .local v6, "ns":I
    iget-object v10, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v11

    sub-int/2addr v11, v8

    sub-int/2addr v10, v11

    .line 588
    .local v10, "s0":I
    iget-object v11, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v11}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 589
    :goto_2
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v11

    iget-object v12, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v12}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v12

    if-eq v11, v12, :cond_18

    .line 591
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v11

    move v12, v11

    .local v12, "ns1":I
    const/4 v13, 0x3

    if-eq v11, v8, :cond_e

    .line 592
    and-int/lit8 v11, v12, 0x1

    if-nez v11, :cond_a

    .line 594
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v11

    iget-object v14, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v15

    invoke-virtual {v15}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v15

    ushr-int/lit8 v9, v12, 0x1

    invoke-virtual {v14, v15, v9}, Lcom/github/junrar/unpack/ppm/SubAllocator;->expandUnits(II)I

    move-result v9

    invoke-virtual {v11, v9}, Lcom/github/junrar/unpack/ppm/FreqData;->setStats(I)V

    .line 597
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v9

    if-nez v9, :cond_a

    .line 598
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 599
    return-void

    .line 606
    :cond_a
    mul-int/lit8 v9, v12, 0x2

    if-ge v9, v6, :cond_b

    move v9, v8

    goto :goto_3

    :cond_b
    const/4 v9, 0x0

    :goto_3
    mul-int/lit8 v11, v12, 0x4

    if-gt v11, v6, :cond_c

    move v11, v8

    goto :goto_4

    :cond_c
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v14

    mul-int/lit8 v15, v12, 0x8

    if-gt v14, v15, :cond_d

    move v14, v8

    goto :goto_5

    :cond_d
    const/4 v14, 0x0

    :goto_5
    and-int/2addr v11, v14

    mul-int/2addr v11, v7

    add-int/2addr v9, v11

    .line 610
    .local v9, "sum":I
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 611
    .end local v9    # "sum":I
    goto :goto_8

    .line 613
    :cond_e
    iget-object v9, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v9, v8}, Lcom/github/junrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 614
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v9

    if-nez v9, :cond_f

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 616
    return-void

    .line 618
    :cond_f
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getOneState()Lcom/github/junrar/unpack/ppm/State;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/State;->setValues(Lcom/github/junrar/unpack/ppm/State;)V

    .line 619
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/github/junrar/unpack/ppm/FreqData;->setStats(Lcom/github/junrar/unpack/ppm/State;)V

    .line 620
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    const/16 v11, 0x1e

    if-ge v9, v11, :cond_10

    .line 621
    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/State;->incFreq(I)V

    goto :goto_6

    .line 624
    :cond_10
    const/16 v9, 0x78

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/State;->setFreq(I)V

    .line 626
    :goto_6
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v9

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/State;->getFreq()I

    move-result v11

    iget v14, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initEsc:I

    add-int/2addr v11, v14

    if-le v6, v13, :cond_11

    move v14, v8

    goto :goto_7

    :cond_11
    const/4 v14, 0x0

    :goto_7
    add-int/2addr v11, v14

    invoke-virtual {v9, v11}, Lcom/github/junrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 629
    :goto_8
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getFreq()I

    move-result v9

    mul-int/2addr v9, v7

    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v11

    add-int/lit8 v11, v11, 0x6

    mul-int/2addr v9, v11

    .line 630
    .local v9, "cf":I
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/junrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v11

    add-int/2addr v11, v10

    .line 631
    .local v11, "sf":I
    mul-int/lit8 v14, v11, 0x6

    if-ge v9, v14, :cond_14

    .line 632
    if-le v9, v11, :cond_12

    move v14, v8

    goto :goto_9

    :cond_12
    const/4 v14, 0x0

    :goto_9
    add-int/2addr v14, v8

    mul-int/lit8 v15, v11, 0x4

    if-lt v9, v15, :cond_13

    move v15, v8

    goto :goto_a

    :cond_13
    const/4 v15, 0x0

    :goto_a
    add-int/2addr v14, v15

    .line 633
    .end local v9    # "cf":I
    .local v14, "cf":I
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    goto :goto_e

    .line 636
    .end local v14    # "cf":I
    .restart local v9    # "cf":I
    :cond_14
    mul-int/lit8 v13, v11, 0x9

    if-lt v9, v13, :cond_15

    move v13, v8

    goto :goto_b

    :cond_15
    const/4 v13, 0x0

    :goto_b
    add-int/lit8 v13, v13, 0x4

    mul-int/lit8 v14, v11, 0xc

    if-lt v9, v14, :cond_16

    move v14, v8

    goto :goto_c

    :cond_16
    const/4 v14, 0x0

    :goto_c
    add-int/2addr v13, v14

    mul-int/lit8 v14, v11, 0xf

    if-lt v9, v14, :cond_17

    move v14, v8

    goto :goto_d

    :cond_17
    const/4 v14, 0x0

    :goto_d
    add-int/2addr v14, v13

    .line 638
    .end local v9    # "cf":I
    .restart local v14    # "cf":I
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v9

    invoke-virtual {v9, v14}, Lcom/github/junrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 640
    :goto_e
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v9

    mul-int/lit8 v13, v12, 0x6

    add-int/2addr v9, v13

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/State;->setAddress(I)V

    .line 641
    invoke-virtual {v2, v5}, Lcom/github/junrar/unpack/ppm/State;->setSuccessor(Lcom/github/junrar/unpack/ppm/PPMContext;)V

    .line 642
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/github/junrar/unpack/ppm/State;->setSymbol(I)V

    .line 643
    invoke-virtual {v2, v14}, Lcom/github/junrar/unpack/ppm/State;->setFreq(I)V

    .line 644
    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v4, v12}, Lcom/github/junrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 590
    invoke-virtual {v4}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    const/4 v9, 0x0

    goto/16 :goto_2

    .line 647
    .end local v11    # "sf":I
    .end local v12    # "ns1":I
    .end local v14    # "cf":I
    :cond_18
    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v7

    .line 648
    .local v7, "address":I
    iget-object v8, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v8, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 649
    iget-object v8, v0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v8, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 657
    return-void
.end method

.method private updateModelRestart()V
    .locals 1

    .line 504
    invoke-direct {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->restartModelRare()V

    .line 505
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 506
    return-void
.end method


# virtual methods
.method public decodeChar()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v0

    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v0

    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    move-result v1

    if-le v0, v1, :cond_0

    goto/16 :goto_4

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 241
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v0

    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v3

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getFreqData()Lcom/github/junrar/unpack/ppm/FreqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/FreqData;->getStats()I

    move-result v0

    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    move-result v3

    if-le v0, v3, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->decodeSymbol1(Lcom/github/junrar/unpack/ppm/ModelPPM;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 246
    return v2

    .line 243
    :cond_2
    :goto_0
    return v2

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->decodeBinSymbol(Lcom/github/junrar/unpack/ppm/ModelPPM;)V

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->decode()V

    .line 252
    :goto_1
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getAddress()I

    move-result v0

    if-nez v0, :cond_9

    .line 253
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->ariDecNormalize()V

    .line 255
    :cond_5
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 256
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 257
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v0

    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v3

    if-le v0, v3, :cond_8

    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v0

    iget-object v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    move-result v3

    if-le v0, v3, :cond_6

    goto :goto_2

    .line 261
    :cond_6
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v0

    iget v3, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->numMasked:I

    if-eq v0, v3, :cond_5

    .line 262
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/PPMContext;->decodeSymbol2(Lcom/github/junrar/unpack/ppm/ModelPPM;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 263
    return v2

    .line 265
    :cond_7
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/RangeCoder;->decode()V

    goto :goto_1

    .line 259
    :cond_8
    :goto_2
    return v2

    .line 267
    :cond_9
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/State;->getSymbol()I

    move-result v0

    .line 268
    .local v0, "Symbol":I
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v1

    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v2}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v2

    if-le v1, v2, :cond_a

    .line 270
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/State;->getSuccessor()I

    move-result v1

    .line 271
    .local v1, "addr":I
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v2, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 272
    iget-object v2, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v2, v1}, Lcom/github/junrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 273
    .end local v1    # "addr":I
    goto :goto_3

    .line 274
    :cond_a
    invoke-direct {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->updateModel()V

    .line 276
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    if-nez v1, :cond_b

    .line 277
    invoke-direct {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->clearMask()V

    .line 280
    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v1}, Lcom/github/junrar/unpack/ppm/RangeCoder;->ariDecNormalize()V

    .line 281
    return v0

    .line 237
    .end local v0    # "Symbol":I
    :cond_c
    :goto_4
    return v2
.end method

.method public decodeInit(Lcom/github/junrar/unpack/Unpack;I)Z
    .locals 10
    .param p1, "unpackRead"    # Lcom/github/junrar/unpack/Unpack;
    .param p2, "escChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/junrar/exception/RarException;
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Lcom/github/junrar/unpack/Unpack;->getChar()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 191
    .local v0, "MaxOrder":I
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 193
    .local v1, "reset":Z
    :goto_0
    const/4 v4, 0x0

    .line 194
    .local v4, "MaxMB":I
    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {p1}, Lcom/github/junrar/unpack/Unpack;->getChar()I

    move-result v4

    goto :goto_1

    .line 197
    :cond_1
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/SubAllocator;->GetAllocatedMemory()I

    move-result v5

    if-nez v5, :cond_2

    .line 198
    return v2

    .line 201
    :cond_2
    :goto_1
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_3

    .line 202
    invoke-virtual {p1}, Lcom/github/junrar/unpack/Unpack;->getChar()I

    move-result p2

    .line 203
    invoke-virtual {p1, p2}, Lcom/github/junrar/unpack/Unpack;->setPpmEscChar(I)V

    .line 205
    :cond_3
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v5, p1}, Lcom/github/junrar/unpack/ppm/RangeCoder;->initDecoder(Lcom/github/junrar/unpack/Unpack;)V

    .line 206
    if-eqz v1, :cond_8

    .line 207
    and-int/lit8 v5, v0, 0x1f

    add-int/2addr v5, v3

    .line 208
    .end local v0    # "MaxOrder":I
    .local v5, "MaxOrder":I
    const/16 v0, 0x10

    if-le v5, v0, :cond_4

    .line 209
    add-int/lit8 v6, v5, -0x10

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v0

    move v5, v6

    .line 211
    :cond_4
    if-ne v5, v3, :cond_5

    .line 212
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    .line 213
    return v2

    .line 215
    :cond_5
    iget-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Lcom/github/junrar/unpack/ppm/SubAllocator;->startSubAllocator(I)Z

    .line 216
    new-instance v6, Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 217
    new-instance v6, Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/github/junrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    .line 218
    new-instance v6, Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/github/junrar/unpack/ppm/State;-><init>([B)V

    iput-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    .line 219
    new-instance v6, Lcom/github/junrar/unpack/ppm/SEE2Context;

    invoke-direct {v6}, Lcom/github/junrar/unpack/ppm/SEE2Context;-><init>()V

    iput-object v6, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lcom/github/junrar/unpack/ppm/SEE2Context;

    .line 220
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    const/16 v7, 0x19

    if-ge v6, v7, :cond_7

    .line 221
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v0, :cond_6

    .line 222
    iget-object v8, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/github/junrar/unpack/ppm/SEE2Context;

    aget-object v8, v8, v6

    new-instance v9, Lcom/github/junrar/unpack/ppm/SEE2Context;

    invoke-direct {v9}, Lcom/github/junrar/unpack/ppm/SEE2Context;-><init>()V

    aput-object v9, v8, v7

    .line 221
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 220
    .end local v7    # "j":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 225
    .end local v6    # "i":I
    :cond_7
    invoke-direct {p0, v5}, Lcom/github/junrar/unpack/ppm/ModelPPM;->startModelRare(I)V

    move v0, v5

    .line 227
    .end local v5    # "MaxOrder":I
    .restart local v0    # "MaxOrder":I
    :cond_8
    iget-object v5, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->minContext:Lcom/github/junrar/unpack/ppm/PPMContext;

    invoke-virtual {v5}, Lcom/github/junrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v5

    if-eqz v5, :cond_9

    move v2, v3

    :cond_9
    return v2
.end method

.method public getBinSumm()[[I
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->binSumm:[[I

    return-object v0
.end method

.method public getCharMask()[I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->charMask:[I

    return-object v0
.end method

.method public getCoder()Lcom/github/junrar/unpack/ppm/RangeCoder;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    return-object v0
.end method

.method public getDummySEE2Cont()Lcom/github/junrar/unpack/ppm/SEE2Context;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lcom/github/junrar/unpack/ppm/SEE2Context;

    return-object v0
.end method

.method public getEscCount()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    return v0
.end method

.method public getFoundState()Lcom/github/junrar/unpack/ppm/State;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    return-object v0
.end method

.method public getHB2Flag()[I
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    return-object v0
.end method

.method public getHeap()[B
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Lcom/github/junrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v0

    return-object v0
.end method

.method public getHiBitsFlag()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->hiBitsFlag:I

    return v0
.end method

.method public getInitEsc()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initEsc:I

    return v0
.end method

.method public getInitRL()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initRL:I

    return v0
.end method

.method public getNS2BSIndx()[I
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    return-object v0
.end method

.method public getNS2Indx()[I
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    return-object v0
.end method

.method public getNumMasked()I
    .locals 1

    .line 320
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->numMasked:I

    return v0
.end method

.method public getOrderFall()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    return v0
.end method

.method public getPrevSuccess()I
    .locals 1

    .line 359
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    return v0
.end method

.method public getRunLength()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->runLength:I

    return v0
.end method

.method public getSEE2Cont()[[Lcom/github/junrar/unpack/ppm/SEE2Context;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lcom/github/junrar/unpack/ppm/SEE2Context;

    return-object v0
.end method

.method public getSubAlloc()Lcom/github/junrar/unpack/ppm/SubAllocator;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    return-object v0
.end method

.method public incEscCount(I)V
    .locals 1
    .param p1, "dEscCount"    # I

    .line 310
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setEscCount(I)V

    .line 311
    return-void
.end method

.method public incRunLength(I)V
    .locals 1
    .param p1, "dRunLength"    # I

    .line 354
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->getRunLength()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/github/junrar/unpack/ppm/ModelPPM;->setRunLength(I)V

    .line 355
    return-void
.end method

.method public setEscCount(I)V
    .locals 1
    .param p1, "escCount"    # I

    .line 301
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    .line 302
    return-void
.end method

.method public setHiBitsFlag(I)V
    .locals 1
    .param p1, "hiBitsFlag"    # I

    .line 369
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->hiBitsFlag:I

    .line 370
    return-void
.end method

.method public setInitEsc(I)V
    .locals 0
    .param p1, "initEsc"    # I

    .line 340
    iput p1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initEsc:I

    .line 341
    return-void
.end method

.method public setNumMasked(I)V
    .locals 0
    .param p1, "numMasked"    # I

    .line 325
    iput p1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->numMasked:I

    .line 326
    return-void
.end method

.method public setPrevSuccess(I)V
    .locals 1
    .param p1, "prevSuccess"    # I

    .line 330
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    .line 331
    return-void
.end method

.method public setRunLength(I)V
    .locals 0
    .param p1, "runLength"    # I

    .line 345
    iput p1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->runLength:I

    .line 346
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "ModelPPM["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string v1, "\n  numMasked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->numMasked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 666
    const-string v1, "\n  initEsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initEsc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    const-string v1, "\n  orderFall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->orderFall:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 670
    const-string v1, "\n  maxOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->maxOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 672
    const-string v1, "\n  runLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->runLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 674
    const-string v1, "\n  initRL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->initRL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 676
    const-string v1, "\n  escCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->escCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 678
    const-string v1, "\n  prevSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->prevSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 680
    const-string v1, "\n  foundState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->foundState:Lcom/github/junrar/unpack/ppm/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 682
    const-string v1, "\n  coder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->coder:Lcom/github/junrar/unpack/ppm/RangeCoder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 684
    const-string v1, "\n  subAlloc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    iget-object v1, p0, Lcom/github/junrar/unpack/ppm/ModelPPM;->subAlloc:Lcom/github/junrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 686
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
