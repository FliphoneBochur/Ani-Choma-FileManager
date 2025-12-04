.class public Lcom/github/junrar/unpack/vm/RarVM;
.super Lcom/github/junrar/unpack/vm/BitInput;
.source "RarVM.java"


# static fields
.field private static final UINT_MASK:J = -0x1L

.field public static final VM_FIXEDGLOBALSIZE:I = 0x40

.field public static final VM_GLOBALMEMADDR:I = 0x3c000

.field public static final VM_GLOBALMEMSIZE:I = 0x2000

.field public static final VM_MEMMASK:I = 0x3ffff

.field public static final VM_MEMSIZE:I = 0x40000

.field private static final regCount:I = 0x8


# instance fields
.field private IP:I

.field private R:[I

.field private codeSize:I

.field private flags:I

.field private maxOpCount:I

.field private mem:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/github/junrar/unpack/vm/BitInput;-><init>()V

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    .line 55
    const v0, 0x17d7840

    iput v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->maxOpCount:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 63
    return-void
.end method

.method private ExecuteCode(Ljava/util/List;I)Z
    .locals 17
    .param p2, "cmdCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/junrar/unpack/vm/VMPreparedCommand;",
            ">;I)Z"
        }
    .end annotation

    .line 227
    .local p1, "preparedCode":Ljava/util/List;, "Ljava/util/List<Lcom/github/junrar/unpack/vm/VMPreparedCommand;>;"
    move-object/from16 v0, p0

    const v1, 0x17d7840

    iput v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->maxOpCount:I

    .line 228
    move/from16 v1, p2

    iput v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->codeSize:I

    .line 229
    const/4 v2, 0x0

    iput v2, v0, Lcom/github/junrar/unpack/vm/RarVM;->IP:I

    .line 232
    :goto_0
    iget v3, v0, Lcom/github/junrar/unpack/vm/RarVM;->IP:I

    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    .line 233
    .local v3, "cmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getOperand(Lcom/github/junrar/unpack/vm/VMPreparedOperand;)I

    move-result v5

    .line 234
    .local v5, "op1":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getOperand(Lcom/github/junrar/unpack/vm/VMPreparedOperand;)I

    move-result v6

    .line 235
    .local v6, "op2":I
    sget-object v7, Lcom/github/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$github$junrar$unpack$vm$VMCommands:[I

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMCommands;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x8

    const-wide/16 v9, -0x2

    const v13, 0x3ffff

    const/4 v14, 0x7

    const-wide/16 v15, -0x1

    const/4 v11, 0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_21

    .line 623
    :pswitch_0
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v7

    invoke-static {v7}, Lcom/github/junrar/unpack/vm/VMStandardFilters;->findFilter(I)Lcom/github/junrar/unpack/vm/VMStandardFilters;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->ExecuteStandardFilter(Lcom/github/junrar/unpack/vm/VMStandardFilters;)V

    .line 625
    goto/16 :goto_21

    .line 615
    :pswitch_1
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    const/high16 v9, 0x40000

    if-lt v8, v9, :cond_0

    .line 616
    return v11

    .line 618
    :cond_0
    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    aget v7, v7, v14

    and-int/2addr v7, v13

    invoke-direct {v0, v2, v8, v7}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 619
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, 0x4

    aput v8, v7, v14

    .line 620
    goto :goto_0

    .line 599
    :pswitch_2
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 600
    .local v7, "value1":I
    iget v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v8, v9

    .line 601
    .local v8, "FC":I
    int-to-long v9, v7

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v12

    iget-object v13, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v12, v13, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v12

    int-to-long v12, v12

    sub-long v12, v15, v12

    and-long/2addr v9, v12

    int-to-long v12, v8

    sub-long v12, v15, v12

    and-long/2addr v9, v12

    and-long/2addr v9, v15

    long-to-int v9, v9

    .line 604
    .local v9, "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 605
    and-int/lit16 v9, v9, 0xff

    .line 607
    :cond_1
    if-gt v9, v7, :cond_4

    if-ne v9, v7, :cond_2

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    if-nez v9, :cond_3

    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    goto :goto_1

    :cond_3
    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    and-int/2addr v10, v9

    :goto_1
    or-int/2addr v10, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v10, v11

    :goto_3
    iput v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 610
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 612
    .end local v7    # "value1":I
    .end local v8    # "FC":I
    .end local v9    # "result":I
    goto/16 :goto_21

    .line 583
    :pswitch_3
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 584
    .restart local v7    # "value1":I
    iget v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v8, v9

    .line 585
    .restart local v8    # "FC":I
    int-to-long v9, v7

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v12

    iget-object v13, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v12, v13, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v12, v15

    and-long/2addr v9, v12

    int-to-long v12, v8

    add-long/2addr v12, v15

    and-long/2addr v9, v12

    and-long/2addr v9, v15

    long-to-int v9, v9

    .line 588
    .restart local v9    # "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 589
    and-int/lit16 v9, v9, 0xff

    .line 592
    :cond_5
    if-lt v9, v7, :cond_8

    if-ne v9, v7, :cond_6

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    if-nez v9, :cond_7

    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    goto :goto_4

    :cond_7
    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    and-int/2addr v10, v9

    :goto_4
    or-int/2addr v10, v2

    goto :goto_6

    :cond_8
    :goto_5
    move v10, v11

    :goto_6
    iput v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 595
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 597
    .end local v7    # "value1":I
    .end local v8    # "FC":I
    .end local v9    # "result":I
    goto/16 :goto_21

    .line 575
    :pswitch_4
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 576
    .local v7, "divider":I
    if-eqz v7, :cond_9

    .line 577
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    div-int/2addr v8, v7

    .line 578
    .local v8, "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 581
    .end local v7    # "divider":I
    .end local v8    # "result":I
    :cond_9
    goto/16 :goto_21

    .line 568
    :pswitch_5
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v9, v15

    and-long/2addr v7, v9

    and-long/2addr v7, v15

    and-long/2addr v7, v15

    long-to-int v7, v7

    .line 571
    .local v7, "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 573
    .end local v7    # "result":I
    goto/16 :goto_21

    .line 561
    :pswitch_6
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 562
    .local v7, "value1":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    invoke-direct {v0, v8, v9, v5, v10}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 564
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 566
    .end local v7    # "value1":I
    goto/16 :goto_21

    .line 558
    :pswitch_7
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v7, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-byte v8, v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 559
    goto/16 :goto_21

    .line 555
    :pswitch_8
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v7, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 556
    goto/16 :goto_21

    .line 551
    :pswitch_9
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v8, v14

    and-int/2addr v8, v13

    invoke-direct {v0, v2, v7, v8}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    iput v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 552
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, 0x4

    aput v8, v7, v14

    .line 553
    goto/16 :goto_21

    .line 547
    :pswitch_a
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, -0x4

    aput v8, v7, v14

    .line 548
    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    aget v7, v7, v14

    and-int/2addr v7, v13

    iget v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    invoke-direct {v0, v2, v8, v7, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 549
    goto/16 :goto_21

    .line 542
    :pswitch_b
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v9, v9, v14

    .local v9, "SP":I
    :goto_7
    if-ge v7, v8, :cond_a

    .line 543
    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    rsub-int/lit8 v12, v7, 0x7

    iget-object v14, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    and-int v15, v9, v13

    invoke-direct {v0, v2, v14, v15}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v14

    aput v14, v10, v12

    .line 542
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x4

    goto :goto_7

    .line 545
    .end local v7    # "i":I
    .end local v9    # "SP":I
    :cond_a
    goto/16 :goto_21

    .line 535
    :pswitch_c
    const/4 v7, 0x0

    .restart local v7    # "i":I
    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v9, v9, v14

    add-int/lit8 v9, v9, -0x4

    .restart local v9    # "SP":I
    :goto_8
    if-ge v7, v8, :cond_b

    .line 536
    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    and-int v12, v9, v13

    iget-object v15, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v15, v15, v7

    invoke-direct {v0, v2, v10, v12, v15}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 535
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, -0x4

    goto :goto_8

    .line 538
    .end local v7    # "i":I
    .end local v9    # "SP":I
    :cond_b
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, -0x20

    aput v8, v7, v14

    .line 540
    goto/16 :goto_21

    .line 532
    :pswitch_d
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    neg-int v8, v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 533
    goto/16 :goto_21

    .line 529
    :pswitch_e
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    neg-int v8, v8

    invoke-direct {v0, v11, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 530
    goto/16 :goto_21

    .line 520
    :pswitch_f
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    neg-int v7, v7

    .line 521
    .local v7, "result":I
    if-nez v7, :cond_c

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_9

    :cond_c
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v9, v7

    or-int/2addr v8, v9

    :goto_9
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 524
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 526
    .end local v7    # "result":I
    goto/16 :goto_21

    .line 510
    :pswitch_10
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 511
    .local v7, "value1":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    .line 512
    .local v8, "value2":I
    shr-int v9, v7, v8

    .line 513
    .local v9, "result":I
    if-nez v9, :cond_d

    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    goto :goto_a

    :cond_d
    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    and-int/2addr v10, v9

    :goto_a
    add-int/lit8 v12, v8, -0x1

    shr-int v12, v7, v12

    sget-object v13, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v12, v13

    or-int/2addr v10, v12

    iput v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 516
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 518
    .end local v7    # "value1":I
    .end local v8    # "value2":I
    .end local v9    # "result":I
    goto/16 :goto_21

    .line 500
    :pswitch_11
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 501
    .restart local v7    # "value1":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    .line 502
    .restart local v8    # "value2":I
    ushr-int v9, v7, v8

    .line 503
    .restart local v9    # "result":I
    if-nez v9, :cond_e

    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    goto :goto_b

    :cond_e
    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    and-int/2addr v10, v9

    :goto_b
    add-int/lit8 v12, v8, -0x1

    ushr-int v12, v7, v12

    sget-object v13, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v12, v13

    or-int/2addr v10, v12

    iput v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 506
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 508
    .end local v7    # "value1":I
    .end local v8    # "value2":I
    .end local v9    # "result":I
    goto/16 :goto_21

    .line 488
    :pswitch_12
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 489
    .restart local v7    # "value1":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    .line 490
    .restart local v8    # "value2":I
    shl-int v9, v7, v8

    .line 491
    .restart local v9    # "result":I
    if-nez v9, :cond_f

    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    goto :goto_c

    :cond_f
    sget-object v10, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v10

    and-int/2addr v10, v9

    :goto_c
    add-int/lit8 v12, v8, -0x1

    shl-int v12, v7, v12

    const/high16 v13, -0x80000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_10

    sget-object v12, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v12}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v12

    goto :goto_d

    :cond_10
    move v12, v2

    :goto_d
    or-int/2addr v10, v12

    iput v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 496
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 498
    .end local v7    # "value1":I
    .end local v8    # "value2":I
    .end local v9    # "result":I
    goto/16 :goto_21

    .line 484
    :pswitch_13
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    not-int v9, v9

    invoke-direct {v0, v7, v8, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 486
    goto/16 :goto_21

    .line 479
    :pswitch_14
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, -0x4

    aput v8, v7, v14

    .line 480
    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    aget v7, v7, v14

    and-int/2addr v7, v13

    iget v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->IP:I

    add-int/2addr v9, v11

    invoke-direct {v0, v2, v8, v7, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 481
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 482
    goto/16 :goto_0

    .line 474
    :pswitch_15
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v8, v14

    and-int/2addr v8, v13

    invoke-direct {v0, v2, v7, v8}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 476
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, 0x4

    aput v8, v7, v14

    .line 477
    goto/16 :goto_21

    .line 469
    :pswitch_16
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v8, v7, v14

    add-int/lit8 v8, v8, -0x4

    aput v8, v7, v14

    .line 470
    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    aget v7, v7, v14

    and-int/2addr v7, v13

    invoke-direct {v0, v2, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    invoke-direct {v0, v2, v8, v7, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 472
    goto/16 :goto_21

    .line 463
    :pswitch_17
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    if-nez v7, :cond_26

    .line 464
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 465
    goto/16 :goto_0

    .line 457
    :pswitch_18
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    or-int/2addr v8, v9

    and-int/2addr v7, v8

    if-nez v7, :cond_26

    .line 458
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 459
    goto/16 :goto_0

    .line 451
    :pswitch_19
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    or-int/2addr v8, v9

    and-int/2addr v7, v8

    if-eqz v7, :cond_26

    .line 452
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 453
    goto/16 :goto_0

    .line 445
    :pswitch_1a
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_26

    .line 446
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 447
    goto/16 :goto_0

    .line 439
    :pswitch_1b
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    if-nez v7, :cond_26

    .line 440
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 441
    goto/16 :goto_0

    .line 433
    :pswitch_1c
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_26

    .line 434
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 435
    goto/16 :goto_0

    .line 426
    :pswitch_1d
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    and-int/2addr v7, v8

    .line 428
    .local v7, "result":I
    if-nez v7, :cond_11

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_e

    :cond_11
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_e
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 431
    .end local v7    # "result":I
    goto/16 :goto_21

    .line 418
    :pswitch_1e
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    or-int/2addr v7, v8

    .line 420
    .restart local v7    # "result":I
    if-nez v7, :cond_12

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_f

    :cond_12
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_f
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 422
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 424
    .end local v7    # "result":I
    goto/16 :goto_21

    .line 410
    :pswitch_1f
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    and-int/2addr v7, v8

    .line 412
    .restart local v7    # "result":I
    if-nez v7, :cond_13

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_10

    :cond_13
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_10
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 414
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 416
    .end local v7    # "result":I
    goto/16 :goto_21

    .line 402
    :pswitch_20
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    xor-int/2addr v7, v8

    .line 404
    .restart local v7    # "result":I
    if-nez v7, :cond_14

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_11

    :cond_14
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_11
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 406
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 408
    .end local v7    # "result":I
    goto/16 :goto_21

    .line 399
    :pswitch_21
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 400
    goto/16 :goto_0

    .line 394
    :pswitch_22
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v12, v8

    and-long v8, v12, v9

    long-to-int v8, v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 396
    goto/16 :goto_21

    .line 387
    :pswitch_23
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v12, v8

    and-long v8, v12, v9

    long-to-int v8, v8

    invoke-direct {v0, v11, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 392
    goto/16 :goto_21

    .line 379
    :pswitch_24
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v9

    long-to-int v7, v7

    .line 380
    .restart local v7    # "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 381
    if-nez v7, :cond_15

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_12

    :cond_15
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_12
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 384
    .end local v7    # "result":I
    goto/16 :goto_21

    .line 374
    :pswitch_25
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v12, 0x0

    and-long/2addr v8, v12

    long-to-int v8, v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 376
    goto/16 :goto_21

    .line 367
    :pswitch_26
    const-wide/16 v12, 0x0

    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v12

    long-to-int v8, v8

    invoke-direct {v0, v11, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 372
    goto/16 :goto_21

    .line 355
    :pswitch_27
    const-wide/16 v12, 0x0

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v12

    long-to-int v7, v7

    .line 356
    .restart local v7    # "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 357
    and-int/lit16 v7, v7, 0xff

    .line 360
    :cond_16
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v5, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 361
    if-nez v7, :cond_17

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    goto :goto_13

    :cond_17
    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v8, v7

    :goto_13
    iput v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 364
    .end local v7    # "result":I
    goto/16 :goto_21

    .line 349
    :pswitch_28
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    if-nez v7, :cond_26

    .line 350
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 351
    goto/16 :goto_0

    .line 343
    :pswitch_29
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    sget-object v8, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_26

    .line 344
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/github/junrar/unpack/vm/RarVM;->setIP(I)Z

    .line 345
    goto/16 :goto_0

    .line 334
    :pswitch_2a
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v8, v8

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v10, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    int-to-long v12, v10

    sub-long v12, v15, v12

    and-long/2addr v8, v12

    and-long/2addr v8, v15

    long-to-int v8, v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 340
    goto/16 :goto_21

    .line 329
    :pswitch_2b
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v8, v8

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v10, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    int-to-long v12, v10

    sub-long v12, v15, v12

    and-long/2addr v8, v12

    and-long/2addr v8, v15

    long-to-int v8, v8

    invoke-direct {v0, v11, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 332
    goto/16 :goto_21

    .line 318
    :pswitch_2c
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 319
    .local v7, "value1":I
    int-to-long v8, v7

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    int-to-long v12, v10

    sub-long v12, v15, v12

    and-long/2addr v8, v12

    and-long/2addr v8, v15

    long-to-int v8, v8

    .line 321
    .local v8, "result":I
    if-nez v8, :cond_18

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    goto :goto_14

    :cond_18
    if-le v8, v7, :cond_19

    move v9, v11

    goto :goto_14

    :cond_19
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v9, v8

    or-int/2addr v9, v2

    :goto_14
    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 324
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 326
    .end local v7    # "value1":I
    .end local v8    # "result":I
    goto/16 :goto_21

    .line 309
    :pswitch_2d
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v8, v8

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v10, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    int-to-long v12, v10

    add-long/2addr v12, v15

    and-long/2addr v8, v12

    and-long/2addr v8, v15

    long-to-int v8, v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 315
    goto/16 :goto_21

    .line 304
    :pswitch_2e
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    int-to-long v8, v8

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v10, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    int-to-long v12, v10

    add-long/2addr v12, v15

    and-long/2addr v8, v12

    and-long/2addr v8, v15

    long-to-int v8, v8

    invoke-direct {v0, v11, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 307
    goto/16 :goto_21

    .line 284
    :pswitch_2f
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 285
    .restart local v7    # "value1":I
    int-to-long v8, v7

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v10

    iget-object v12, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v10, v12, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    int-to-long v12, v10

    add-long/2addr v8, v12

    and-long/2addr v8, v15

    long-to-int v8, v8

    .line 287
    .restart local v8    # "result":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 288
    and-int/lit16 v8, v8, 0xff

    .line 289
    if-ge v8, v7, :cond_1a

    move v9, v11

    goto :goto_17

    :cond_1a
    if-nez v8, :cond_1b

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    :goto_15
    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    goto :goto_16

    :cond_1b
    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_1c

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    goto :goto_15

    :cond_1c
    move v9, v2

    :goto_16
    or-int/2addr v9, v2

    :goto_17
    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_1a

    .line 296
    :cond_1d
    if-ge v8, v7, :cond_1e

    move v9, v11

    goto :goto_19

    :cond_1e
    if-nez v8, :cond_1f

    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    goto :goto_18

    :cond_1f
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v9, v8

    :goto_18
    or-int/2addr v9, v2

    :goto_19
    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 299
    :goto_1a
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 301
    .end local v7    # "value1":I
    .end local v8    # "result":I
    goto/16 :goto_21

    .line 272
    :pswitch_30
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 273
    .restart local v7    # "value1":I
    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v8, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    sub-int v8, v7, v8

    .line 274
    .restart local v8    # "result":I
    if-nez v8, :cond_20

    .line 275
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_1c

    .line 277
    :cond_20
    if-le v8, v7, :cond_21

    move v9, v11

    goto :goto_1b

    :cond_21
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v9, v8

    or-int/2addr v9, v2

    :goto_1b
    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 281
    .end local v7    # "value1":I
    .end local v8    # "result":I
    :goto_1c
    goto/16 :goto_21

    .line 261
    :pswitch_31
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v7, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 262
    .restart local v7    # "value1":I
    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v8, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    sub-int v8, v7, v8

    .line 263
    .restart local v8    # "result":I
    if-nez v8, :cond_22

    .line 264
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_1e

    .line 266
    :cond_22
    if-le v8, v7, :cond_23

    move v9, v11

    goto :goto_1d

    :cond_23
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v9, v8

    or-int/2addr v9, v2

    :goto_1d
    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 270
    .end local v7    # "value1":I
    .end local v8    # "result":I
    :goto_1e
    goto :goto_21

    .line 248
    :pswitch_32
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v7, v8, v5}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v7

    .line 249
    .restart local v7    # "value1":I
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v8

    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v8, v9, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    sub-int v8, v7, v8

    .line 251
    .restart local v8    # "result":I
    if-nez v8, :cond_24

    .line 252
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    goto :goto_20

    .line 254
    :cond_24
    if-le v8, v7, :cond_25

    move v9, v11

    goto :goto_1f

    :cond_25
    sget-object v9, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v9}, Lcom/github/junrar/unpack/vm/VMFlags;->getFlag()I

    move-result v9

    and-int/2addr v9, v8

    or-int/2addr v9, v2

    :goto_1f
    iput v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 258
    .end local v7    # "value1":I
    .end local v8    # "result":I
    :goto_20
    goto :goto_21

    .line 244
    :pswitch_33
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v2, v7, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    invoke-direct {v0, v2, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 245
    goto :goto_21

    .line 241
    :pswitch_34
    iget-object v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v11, v7, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    invoke-direct {v0, v11, v7, v5, v8}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 242
    goto :goto_21

    .line 237
    :pswitch_35
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v7

    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v9

    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v9, v10, v6}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    invoke-direct {v0, v7, v8, v5, v9}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 239
    nop

    .line 629
    :cond_26
    :goto_21
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->IP:I

    add-int/2addr v7, v11

    iput v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->IP:I

    .line 630
    iget v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->maxOpCount:I

    sub-int/2addr v7, v11

    iput v7, v0, Lcom/github/junrar/unpack/vm/RarVM;->maxOpCount:I

    .line 631
    .end local v3    # "cmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    .end local v5    # "op1":I
    .end local v6    # "op2":I
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ExecuteStandardFilter(Lcom/github/junrar/unpack/vm/VMStandardFilters;)V
    .locals 44
    .param p1, "filterType"    # Lcom/github/junrar/unpack/vm/VMStandardFilters;

    .line 918
    move-object/from16 v0, p0

    sget-object v1, Lcom/github/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$github$junrar$unpack$vm$VMStandardFilters:[I

    invoke-virtual/range {p1 .. p1}, Lcom/github/junrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const v2, 0x3c000

    const v7, 0x1e000

    const v8, 0x3c020

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x1

    packed-switch v1, :pswitch_data_0

    move-object/from16 v7, p1

    goto/16 :goto_16

    .line 1157
    :pswitch_0
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v1, v1, v14

    .local v1, "dataSize":I
    const/4 v2, 0x0

    .local v2, "srcPos":I
    move v3, v1

    .line 1158
    .local v3, "destPos":I
    if-lt v1, v7, :cond_0

    .line 1159
    move-object/from16 v7, p1

    goto/16 :goto_16

    .line 1161
    :cond_0
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1163
    iget-object v4, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "srcPos":I
    .local v5, "srcPos":I
    aget-byte v2, v4, v2

    .line 1164
    .local v2, "curByte":B
    if-ne v2, v13, :cond_1

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "srcPos":I
    .local v6, "srcPos":I
    aget-byte v4, v4, v5

    move v2, v4

    if-eq v4, v13, :cond_2

    .line 1165
    add-int/lit8 v4, v2, -0x20

    int-to-byte v2, v4

    goto :goto_1

    .line 1164
    .end local v6    # "srcPos":I
    .restart local v5    # "srcPos":I
    :cond_1
    move v6, v5

    .line 1167
    .end local v5    # "srcPos":I
    .restart local v6    # "srcPos":I
    :cond_2
    :goto_1
    iget-object v4, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "destPos":I
    .local v5, "destPos":I
    aput-byte v2, v4, v3

    .line 1168
    .end local v2    # "curByte":B
    move v3, v5

    move v2, v6

    goto :goto_0

    .line 1169
    .end local v5    # "destPos":I
    .end local v6    # "srcPos":I
    .local v2, "srcPos":I
    .restart local v3    # "destPos":I
    :cond_3
    iget-object v4, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    const v5, 0x3c01c

    sub-int v6, v3, v1

    invoke-direct {v0, v15, v4, v5, v6}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 1170
    iget-object v4, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v15, v4, v8, v1}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    move-object/from16 v7, p1

    goto/16 :goto_16

    .line 1086
    .end local v1    # "dataSize":I
    .end local v2    # "srcPos":I
    .end local v3    # "destPos":I
    :pswitch_1
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    aget v2, v1, v14

    .local v2, "dataSize":I
    aget v1, v1, v15

    .line 1087
    .local v1, "channels":I
    const/16 v17, 0x0

    .line 1088
    .local v17, "srcPos":I
    move/from16 v18, v2

    .line 1090
    .local v18, "destDataPos":I
    iget-object v11, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v15, v11, v8, v2}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 1091
    if-lt v2, v7, :cond_4

    .line 1092
    move-object/from16 v7, p1

    goto/16 :goto_16

    .line 1094
    :cond_4
    const/4 v7, 0x0

    .local v7, "curChannel":I
    :goto_2
    if-ge v7, v1, :cond_9

    .line 1096
    const-wide/16 v20, 0x0

    .line 1097
    .local v20, "prevByte":J
    const-wide/16 v22, 0x0

    .line 1098
    .local v22, "prevDelta":J
    const/4 v8, 0x7

    new-array v8, v8, [J

    .line 1099
    .local v8, "Dif":[J
    const/4 v11, 0x0

    .local v11, "D1":I
    const/16 v24, 0x0

    .line 1100
    .local v24, "D2":I
    const/16 v25, 0x0

    .local v25, "K1":I
    const/16 v26, 0x0

    .local v26, "K2":I
    const/16 v27, 0x0

    .line 1102
    .local v27, "K3":I
    move/from16 v28, v7

    .local v28, "i":I
    const/16 v29, 0x0

    move-wide/from16 v9, v22

    move/from16 v4, v25

    move/from16 v3, v26

    move/from16 v14, v27

    move/from16 v13, v28

    .end local v22    # "prevDelta":J
    .end local v25    # "K1":I
    .end local v26    # "K2":I
    .end local v27    # "K3":I
    .end local v28    # "i":I
    .local v3, "K2":I
    .local v4, "K1":I
    .local v9, "prevDelta":J
    .local v13, "i":I
    .local v14, "K3":I
    .local v29, "byteCount":I
    :goto_3
    if-ge v13, v2, :cond_8

    .line 1104
    move/from16 v30, v24

    .line 1105
    .local v30, "D3":I
    long-to-int v15, v9

    sub-int v24, v15, v11

    .line 1106
    long-to-int v11, v9

    .line 1108
    const-wide/16 v31, 0x8

    mul-long v31, v31, v20

    mul-int v15, v4, v11

    int-to-long v5, v15

    add-long v31, v31, v5

    mul-int v5, v3, v24

    int-to-long v5, v5

    add-long v31, v31, v5

    mul-int v5, v14, v30

    int-to-long v5, v5

    add-long v31, v31, v5

    .line 1109
    .local v31, "predicted":J
    ushr-long v5, v31, v12

    const-wide/16 v33, 0xff

    and-long v5, v5, v33

    .line 1111
    .end local v31    # "predicted":J
    .local v5, "predicted":J
    iget-object v15, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v31, v17, 0x1

    .end local v17    # "srcPos":I
    .local v31, "srcPos":I
    aget-byte v12, v15, v17

    and-int/lit16 v12, v12, 0xff

    move-wide/from16 v35, v9

    .end local v9    # "prevDelta":J
    .local v35, "prevDelta":J
    int-to-long v9, v12

    .line 1113
    .local v9, "curByte":J
    sub-long v37, v5, v9

    const-wide/16 v39, -0x1

    and-long v5, v37, v39

    .line 1114
    add-int v12, v18, v13

    move/from16 v37, v2

    .end local v2    # "dataSize":I
    .local v37, "dataSize":I
    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v15, v12

    .line 1115
    move v2, v1

    .end local v1    # "channels":I
    .local v2, "channels":I
    sub-long v0, v5, v20

    long-to-int v0, v0

    int-to-byte v0, v0

    int-to-long v0, v0

    .line 1116
    .end local v35    # "prevDelta":J
    .local v0, "prevDelta":J
    move-wide/from16 v20, v5

    .line 1118
    long-to-int v12, v9

    int-to-byte v12, v12

    const/4 v15, 0x3

    shl-int/2addr v12, v15

    .line 1120
    .local v12, "D":I
    const/4 v15, 0x0

    aget-wide v35, v8, v15

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-wide/from16 v38, v0

    .end local v0    # "prevDelta":J
    .local v38, "prevDelta":J
    int-to-long v0, v15

    add-long v35, v35, v0

    const/4 v0, 0x0

    aput-wide v35, v8, v0

    .line 1121
    aget-wide v0, v8, v16

    sub-int v15, v12, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-wide/from16 v40, v5

    .end local v5    # "predicted":J
    .local v40, "predicted":J
    int-to-long v5, v15

    add-long/2addr v0, v5

    aput-wide v0, v8, v16

    .line 1122
    const/4 v0, 0x2

    aget-wide v5, v8, v0

    add-int v1, v12, v11

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-wide/from16 v42, v9

    .end local v9    # "curByte":J
    .local v42, "curByte":J
    int-to-long v9, v1

    add-long/2addr v5, v9

    aput-wide v5, v8, v0

    .line 1123
    const/4 v0, 0x3

    aget-wide v5, v8, v0

    sub-int v1, v12, v24

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v9, v1

    add-long/2addr v5, v9

    aput-wide v5, v8, v0

    .line 1124
    const/4 v0, 0x4

    aget-wide v5, v8, v0

    add-int v1, v12, v24

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v9, v1

    add-long/2addr v5, v9

    aput-wide v5, v8, v0

    .line 1125
    const/4 v0, 0x5

    aget-wide v5, v8, v0

    sub-int v1, v12, v30

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v9, v1

    add-long/2addr v5, v9

    aput-wide v5, v8, v0

    .line 1126
    const/4 v0, 0x6

    aget-wide v5, v8, v0

    add-int v1, v12, v30

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v9, v1

    add-long/2addr v5, v9

    aput-wide v5, v8, v0

    .line 1128
    and-int/lit8 v0, v29, 0x1f

    if-nez v0, :cond_7

    .line 1130
    const/4 v0, 0x0

    aget-wide v5, v8, v0

    .local v5, "minDif":J
    const-wide/16 v9, 0x0

    .line 1131
    .local v9, "numMinDif":J
    const-wide/16 v22, 0x0

    aput-wide v22, v8, v0

    .line 1132
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_4
    array-length v1, v8

    if-ge v0, v1, :cond_6

    .line 1134
    aget-wide v35, v8, v0

    cmp-long v1, v35, v5

    if-gez v1, :cond_5

    .line 1136
    aget-wide v5, v8, v0

    .line 1137
    int-to-long v9, v0

    .line 1139
    :cond_5
    const-wide/16 v22, 0x0

    aput-wide v22, v8, v0

    .line 1132
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1141
    .end local v0    # "j":I
    :cond_6
    long-to-int v0, v9

    const/16 v1, -0x10

    packed-switch v0, :pswitch_data_1

    goto :goto_5

    .line 1148
    :pswitch_2
    const/16 v0, 0x10

    if-ge v14, v0, :cond_7

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1147
    :pswitch_3
    if-lt v14, v1, :cond_7

    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 1146
    :pswitch_4
    const/16 v0, 0x10

    if-ge v3, v0, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1145
    :pswitch_5
    if-lt v3, v1, :cond_7

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 1144
    :pswitch_6
    const/16 v0, 0x10

    if-ge v4, v0, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1143
    :pswitch_7
    if-lt v4, v1, :cond_7

    add-int/lit8 v4, v4, -0x1

    .line 1102
    .end local v5    # "minDif":J
    .end local v9    # "numMinDif":J
    .end local v12    # "D":I
    .end local v40    # "predicted":J
    .end local v42    # "curByte":J
    :cond_7
    :goto_5
    add-int/2addr v13, v2

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p0

    move v1, v2

    move/from16 v17, v31

    move/from16 v2, v37

    move-wide/from16 v9, v38

    const/4 v12, 0x3

    const/4 v15, 0x0

    goto/16 :goto_3

    .end local v30    # "D3":I
    .end local v31    # "srcPos":I
    .end local v37    # "dataSize":I
    .end local v38    # "prevDelta":J
    .restart local v1    # "channels":I
    .local v2, "dataSize":I
    .local v9, "prevDelta":J
    .restart local v17    # "srcPos":I
    :cond_8
    move/from16 v37, v2

    move-wide/from16 v35, v9

    move v2, v1

    .line 1094
    .end local v1    # "channels":I
    .end local v3    # "K2":I
    .end local v4    # "K1":I
    .end local v8    # "Dif":[J
    .end local v9    # "prevDelta":J
    .end local v11    # "D1":I
    .end local v13    # "i":I
    .end local v14    # "K3":I
    .end local v20    # "prevByte":J
    .end local v24    # "D2":I
    .end local v29    # "byteCount":I
    .local v2, "channels":I
    .restart local v37    # "dataSize":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v37

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x4

    const/4 v15, 0x0

    goto/16 :goto_2

    .end local v37    # "dataSize":I
    .restart local v1    # "channels":I
    .local v2, "dataSize":I
    :cond_9
    move/from16 v37, v2

    move v2, v1

    .line 1154
    .end local v1    # "channels":I
    .end local v2    # "dataSize":I
    .end local v7    # "curChannel":I
    .end local v17    # "srcPos":I
    .end local v18    # "destDataPos":I
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    goto/16 :goto_16

    .line 1030
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v2, 0x4

    aget v2, v1, v2

    const/4 v3, 0x0

    .restart local v2    # "dataSize":I
    aget v4, v1, v3

    const/4 v5, 0x3

    sub-int/2addr v4, v5

    .local v4, "width":I
    aget v1, v1, v16

    .line 1031
    .local v1, "posR":I
    const/4 v5, 0x3

    .line 1032
    .local v5, "channels":I
    const/4 v6, 0x0

    .line 1033
    .restart local v6    # "srcPos":I
    move v9, v2

    .line 1034
    .local v9, "destDataPos":I
    iget-object v10, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v3, v10, v8, v2}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 1035
    if-ge v2, v7, :cond_11

    if-gez v1, :cond_a

    .line 1036
    move-object/from16 v7, p1

    goto/16 :goto_16

    .line 1038
    :cond_a
    const/4 v3, 0x0

    .local v3, "curChannel":I
    :goto_6
    if-ge v3, v5, :cond_f

    .line 1040
    const-wide/16 v7, 0x0

    .line 1042
    .local v7, "prevByte":J
    move v10, v3

    .local v10, "i":I
    :goto_7
    if-ge v10, v2, :cond_e

    .line 1045
    sub-int v11, v10, v4

    .line 1046
    .local v11, "upperPos":I
    const/4 v12, 0x3

    if-lt v11, v12, :cond_d

    .line 1048
    add-int v13, v9, v11

    .line 1049
    .local v13, "upperDataPos":I
    iget-object v14, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    aget-byte v15, v14, v13

    and-int/lit16 v15, v15, 0xff

    .line 1050
    .local v15, "upperByte":I
    add-int/lit8 v17, v13, -0x3

    aget-byte v14, v14, v17

    and-int/lit16 v14, v14, 0xff

    .line 1051
    .local v14, "upperLeftByte":I
    move/from16 v17, v13

    .end local v13    # "upperDataPos":I
    .local v17, "upperDataPos":I
    int-to-long v12, v15

    add-long/2addr v12, v7

    move/from16 v19, v1

    move/from16 v18, v2

    .end local v1    # "posR":I
    .end local v2    # "dataSize":I
    .local v18, "dataSize":I
    .local v19, "posR":I
    int-to-long v1, v14

    sub-long/2addr v12, v1

    .line 1052
    .local v12, "predicted":J
    sub-long v1, v12, v7

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1053
    .local v1, "pa":I
    move/from16 v20, v3

    .end local v3    # "curChannel":I
    .local v20, "curChannel":I
    int-to-long v2, v15

    sub-long v2, v12, v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1054
    .local v2, "pb":I
    move/from16 v21, v4

    .end local v4    # "width":I
    .local v21, "width":I
    int-to-long v3, v14

    sub-long v3, v12, v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1055
    .local v3, "pc":I
    if-gt v1, v2, :cond_b

    if-gt v1, v3, :cond_b

    .line 1056
    move-wide v12, v7

    goto :goto_8

    .line 1059
    :cond_b
    if-gt v2, v3, :cond_c

    .line 1060
    int-to-long v12, v15

    goto :goto_8

    .line 1063
    :cond_c
    int-to-long v12, v14

    .line 1066
    .end local v1    # "pa":I
    .end local v2    # "pb":I
    .end local v3    # "pc":I
    .end local v14    # "upperLeftByte":I
    .end local v15    # "upperByte":I
    .end local v17    # "upperDataPos":I
    :goto_8
    goto :goto_9

    .line 1068
    .end local v12    # "predicted":J
    .end local v18    # "dataSize":I
    .end local v19    # "posR":I
    .end local v20    # "curChannel":I
    .end local v21    # "width":I
    .local v1, "posR":I
    .local v2, "dataSize":I
    .local v3, "curChannel":I
    .restart local v4    # "width":I
    :cond_d
    move/from16 v19, v1

    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v4

    .end local v1    # "posR":I
    .end local v2    # "dataSize":I
    .end local v3    # "curChannel":I
    .end local v4    # "width":I
    .restart local v18    # "dataSize":I
    .restart local v19    # "posR":I
    .restart local v20    # "curChannel":I
    .restart local v21    # "width":I
    move-wide v12, v7

    .line 1071
    .restart local v12    # "predicted":J
    :goto_9
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v2, v6, 0x1

    .end local v6    # "srcPos":I
    .local v2, "srcPos":I
    aget-byte v3, v1, v6

    int-to-long v3, v3

    sub-long v3, v12, v3

    const-wide/16 v14, 0xff

    and-long/2addr v3, v14

    and-long v7, v3, v14

    .line 1072
    add-int v3, v9, v10

    move v4, v11

    move-wide/from16 v22, v12

    .end local v11    # "upperPos":I
    .end local v12    # "predicted":J
    .local v4, "upperPos":I
    .local v22, "predicted":J
    and-long v11, v7, v14

    long-to-int v6, v11

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 1042
    .end local v4    # "upperPos":I
    .end local v22    # "predicted":J
    add-int/2addr v10, v5

    move v6, v2

    move/from16 v2, v18

    move/from16 v1, v19

    move/from16 v3, v20

    move/from16 v4, v21

    goto :goto_7

    .end local v18    # "dataSize":I
    .end local v19    # "posR":I
    .end local v20    # "curChannel":I
    .end local v21    # "width":I
    .restart local v1    # "posR":I
    .local v2, "dataSize":I
    .restart local v3    # "curChannel":I
    .local v4, "width":I
    .restart local v6    # "srcPos":I
    :cond_e
    move/from16 v19, v1

    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v4

    const-wide/16 v14, 0xff

    .line 1038
    .end local v1    # "posR":I
    .end local v2    # "dataSize":I
    .end local v3    # "curChannel":I
    .end local v4    # "width":I
    .end local v7    # "prevByte":J
    .end local v10    # "i":I
    .restart local v18    # "dataSize":I
    .restart local v19    # "posR":I
    .restart local v20    # "curChannel":I
    .restart local v21    # "width":I
    add-int/lit8 v3, v20, 0x1

    .end local v20    # "curChannel":I
    .restart local v3    # "curChannel":I
    goto/16 :goto_6

    .end local v18    # "dataSize":I
    .end local v19    # "posR":I
    .end local v21    # "width":I
    .restart local v1    # "posR":I
    .restart local v2    # "dataSize":I
    .restart local v4    # "width":I
    :cond_f
    move/from16 v19, v1

    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v4

    .line 1076
    .end local v1    # "posR":I
    .end local v2    # "dataSize":I
    .end local v3    # "curChannel":I
    .end local v4    # "width":I
    .restart local v18    # "dataSize":I
    .restart local v19    # "posR":I
    .restart local v21    # "width":I
    nop

    .local v1, "i":I
    add-int/lit8 v2, v18, -0x2

    .local v2, "border":I
    :goto_a
    if-ge v1, v2, :cond_10

    .line 1078
    iget-object v3, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v4, v9, v1

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v3, v4

    .line 1079
    .local v4, "G":B
    add-int v7, v9, v1

    aget-byte v8, v3, v7

    add-int/2addr v8, v4

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 1080
    add-int v7, v9, v1

    const/4 v8, 0x2

    add-int/2addr v7, v8

    aget-byte v8, v3, v7

    add-int/2addr v8, v4

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 1076
    .end local v4    # "G":B
    add-int/lit8 v1, v1, 0x3

    goto :goto_a

    .line 1083
    .end local v1    # "i":I
    .end local v2    # "border":I
    .end local v5    # "channels":I
    .end local v6    # "srcPos":I
    .end local v9    # "destDataPos":I
    .end local v18    # "dataSize":I
    .end local v19    # "posR":I
    .end local v21    # "width":I
    :cond_10
    move-object/from16 v7, p1

    goto/16 :goto_16

    .line 1035
    .local v1, "posR":I
    .local v2, "dataSize":I
    .local v4, "width":I
    .restart local v5    # "channels":I
    .restart local v6    # "srcPos":I
    .restart local v9    # "destDataPos":I
    :cond_11
    move/from16 v19, v1

    move/from16 v18, v2

    move/from16 v21, v4

    .end local v1    # "posR":I
    .end local v2    # "dataSize":I
    .end local v4    # "width":I
    .restart local v18    # "dataSize":I
    .restart local v19    # "posR":I
    .restart local v21    # "width":I
    move-object/from16 v7, p1

    goto/16 :goto_16

    .line 1006
    .end local v5    # "channels":I
    .end local v6    # "srcPos":I
    .end local v9    # "destDataPos":I
    .end local v18    # "dataSize":I
    .end local v19    # "posR":I
    .end local v21    # "width":I
    :pswitch_9
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v2, 0x4

    aget v2, v1, v2

    and-int/lit8 v2, v2, -0x1

    .line 1007
    .restart local v2    # "dataSize":I
    const/4 v3, 0x0

    aget v1, v1, v3

    and-int/lit8 v1, v1, -0x1

    .line 1008
    .local v1, "channels":I
    const/4 v4, 0x0

    .line 1009
    .local v4, "srcPos":I
    mul-int/lit8 v5, v2, 0x2

    and-int/lit8 v5, v5, -0x1

    .line 1010
    .local v5, "border":I
    iget-object v6, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-direct {v0, v3, v6, v8, v2}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 1011
    if-lt v2, v7, :cond_12

    .line 1012
    move-object/from16 v7, p1

    goto/16 :goto_16

    .line 1017
    :cond_12
    const/4 v3, 0x0

    .restart local v3    # "curChannel":I
    :goto_b
    if-ge v3, v1, :cond_14

    .line 1019
    const/4 v6, 0x0

    .line 1020
    .local v6, "PrevByte":B
    add-int v7, v2, v3

    .local v7, "destPos":I
    :goto_c
    if-ge v7, v5, :cond_13

    .line 1021
    iget-object v8, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "srcPos":I
    .local v9, "srcPos":I
    aget-byte v4, v8, v4

    sub-int v4, v6, v4

    int-to-byte v4, v4

    move v6, v4

    aput-byte v4, v8, v7

    .line 1020
    add-int/2addr v7, v1

    move v4, v9

    goto :goto_c

    .line 1017
    .end local v6    # "PrevByte":B
    .end local v7    # "destPos":I
    .end local v9    # "srcPos":I
    .restart local v4    # "srcPos":I
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1026
    .end local v1    # "channels":I
    .end local v2    # "dataSize":I
    .end local v3    # "curChannel":I
    .end local v4    # "srcPos":I
    .end local v5    # "border":I
    :cond_14
    move-object/from16 v7, p1

    goto/16 :goto_16

    .line 969
    :pswitch_a
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v3, 0x4

    aget v4, v1, v3

    .line 970
    .local v4, "dataSize":I
    const/4 v3, 0x6

    aget v1, v1, v3

    and-int/lit8 v1, v1, -0x1

    int-to-long v5, v1

    .line 972
    .local v5, "fileOffset":J
    if-lt v4, v2, :cond_15

    .line 973
    move-object/from16 v7, p1

    goto/16 :goto_16

    .line 975
    :cond_15
    const/4 v1, 0x0

    .line 976
    .local v1, "curPos":I
    const/16 v2, 0x10

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    move-object v2, v3

    .line 977
    .local v2, "Masks":[B
    const/4 v3, 0x4

    ushr-long/2addr v5, v3

    .line 979
    :goto_d
    add-int/lit8 v3, v4, -0x15

    if-ge v1, v3, :cond_1b

    .line 981
    iget-object v3, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    aget-byte v3, v3, v1

    and-int/lit8 v3, v3, 0x1f

    const/16 v7, 0x10

    sub-int/2addr v3, v7

    .line 982
    .local v3, "Byte":I
    if-ltz v3, :cond_1a

    .line 985
    aget-byte v8, v2, v3

    .line 986
    .local v8, "cmdMask":B
    if-eqz v8, :cond_19

    .line 987
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_e
    const/4 v10, 0x2

    if-gt v9, v10, :cond_18

    .line 988
    shl-int v11, v16, v9

    and-int/2addr v11, v8

    if-eqz v11, :cond_17

    .line 990
    mul-int/lit8 v11, v9, 0x29

    const/4 v12, 0x5

    add-int/2addr v11, v12

    .line 991
    .local v11, "startPos":I
    add-int/lit8 v13, v11, 0x25

    const/4 v14, 0x4

    invoke-direct {v0, v1, v13, v14}, Lcom/github/junrar/unpack/vm/RarVM;->filterItanium_GetBits(III)I

    move-result v13

    .line 992
    .local v13, "opType":I
    if-ne v13, v12, :cond_16

    .line 994
    add-int/lit8 v14, v11, 0xd

    const/16 v15, 0x14

    invoke-direct {v0, v1, v14, v15}, Lcom/github/junrar/unpack/vm/RarVM;->filterItanium_GetBits(III)I

    move-result v14

    .line 995
    .local v14, "offset":I
    move/from16 v17, v8

    .end local v8    # "cmdMask":B
    .local v17, "cmdMask":B
    int-to-long v7, v14

    sub-long/2addr v7, v5

    long-to-int v7, v7

    const v8, 0xfffff

    and-int/2addr v7, v8

    add-int/lit8 v8, v11, 0xd

    invoke-direct {v0, v1, v7, v8, v15}, Lcom/github/junrar/unpack/vm/RarVM;->filterItanium_SetBits(IIII)V

    goto :goto_f

    .line 992
    .end local v14    # "offset":I
    .end local v17    # "cmdMask":B
    .restart local v8    # "cmdMask":B
    :cond_16
    move/from16 v17, v8

    .end local v8    # "cmdMask":B
    .restart local v17    # "cmdMask":B
    goto :goto_f

    .line 988
    .end local v11    # "startPos":I
    .end local v13    # "opType":I
    .end local v17    # "cmdMask":B
    .restart local v8    # "cmdMask":B
    :cond_17
    move/from16 v17, v8

    const/4 v12, 0x5

    .line 987
    .end local v8    # "cmdMask":B
    .restart local v17    # "cmdMask":B
    :goto_f
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v17

    const/16 v7, 0x10

    goto :goto_e

    .end local v17    # "cmdMask":B
    .restart local v8    # "cmdMask":B
    :cond_18
    move/from16 v17, v8

    const/4 v12, 0x5

    .end local v8    # "cmdMask":B
    .restart local v17    # "cmdMask":B
    goto :goto_10

    .line 986
    .end local v9    # "i":I
    .end local v17    # "cmdMask":B
    .restart local v8    # "cmdMask":B
    :cond_19
    move/from16 v17, v8

    const/4 v10, 0x2

    const/4 v12, 0x5

    .end local v8    # "cmdMask":B
    .restart local v17    # "cmdMask":B
    goto :goto_10

    .line 982
    .end local v17    # "cmdMask":B
    :cond_1a
    const/4 v10, 0x2

    const/4 v12, 0x5

    .line 999
    :goto_10
    add-int/lit8 v1, v1, 0x10

    .line 1000
    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 1001
    .end local v3    # "Byte":I
    goto :goto_d

    .line 1003
    .end local v1    # "curPos":I
    .end local v2    # "Masks":[B
    .end local v4    # "dataSize":I
    .end local v5    # "fileOffset":J
    :cond_1b
    move-object/from16 v7, p1

    goto/16 :goto_16

    .line 923
    :pswitch_b
    iget-object v1, v0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v3, 0x4

    aget v3, v1, v3

    .line 924
    .local v3, "dataSize":I
    const/4 v4, 0x6

    aget v1, v1, v4

    and-int/lit8 v1, v1, -0x1

    int-to-long v4, v1

    .line 926
    .local v4, "fileOffset":J
    if-lt v3, v2, :cond_1c

    .line 927
    move-object/from16 v7, p1

    goto/16 :goto_16

    .line 929
    :cond_1c
    const/high16 v1, 0x1000000

    .line 930
    .local v1, "fileSize":I
    sget-object v2, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v6, 0xe8

    move-object/from16 v7, p1

    if-ne v7, v2, :cond_1d

    const/16 v2, 0xe9

    goto :goto_11

    :cond_1d
    move v2, v6

    :goto_11
    int-to-byte v2, v2

    .line 931
    .local v2, "cmpByte2":B
    const/4 v8, 0x0

    .local v8, "curPos":I
    :goto_12
    add-int/lit8 v9, v3, -0x4

    if-ge v8, v9, :cond_23

    .line 933
    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v10, v8, 0x1

    .end local v8    # "curPos":I
    .local v10, "curPos":I
    aget-byte v8, v9, v8

    .line 934
    .local v8, "curByte":B
    if-eq v8, v6, :cond_1f

    if-ne v8, v2, :cond_1e

    goto :goto_13

    :cond_1e
    move v9, v2

    move v6, v3

    move-wide/from16 v18, v4

    move v8, v10

    const/4 v4, 0x0

    const-wide/16 v15, 0x0

    goto :goto_15

    .line 948
    :cond_1f
    :goto_13
    int-to-long v11, v10

    add-long/2addr v11, v4

    .line 949
    .local v11, "offset":J
    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    const/4 v13, 0x0

    invoke-direct {v0, v13, v9, v10}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    int-to-long v13, v9

    .line 950
    .local v13, "Addr":J
    const-wide/32 v15, -0x80000000

    and-long v17, v13, v15

    const-wide/16 v19, 0x0

    cmp-long v9, v17, v19

    if-eqz v9, :cond_21

    .line 952
    add-long v17, v13, v11

    and-long v15, v17, v15

    cmp-long v9, v15, v19

    if-nez v9, :cond_20

    .line 953
    iget-object v9, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    long-to-int v15, v13

    add-int/2addr v15, v1

    const/4 v6, 0x0

    invoke-direct {v0, v6, v9, v10, v15}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    move v9, v2

    move-wide/from16 v18, v4

    move v4, v6

    const-wide/16 v15, 0x0

    move v6, v3

    goto :goto_14

    .line 952
    :cond_20
    move v9, v2

    move v6, v3

    move-wide/from16 v18, v4

    const/4 v4, 0x0

    const-wide/16 v15, 0x0

    goto :goto_14

    .line 956
    :cond_21
    move v9, v2

    move v6, v3

    .end local v2    # "cmpByte2":B
    .end local v3    # "dataSize":I
    .local v6, "dataSize":I
    .local v9, "cmpByte2":B
    int-to-long v2, v1

    sub-long v2, v13, v2

    and-long/2addr v2, v15

    const-wide/16 v15, 0x0

    cmp-long v2, v2, v15

    if-eqz v2, :cond_22

    .line 957
    iget-object v2, v0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    move-wide/from16 v18, v4

    .end local v4    # "fileOffset":J
    .local v18, "fileOffset":J
    sub-long v3, v13, v11

    long-to-int v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v10, v3}, Lcom/github/junrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto :goto_14

    .line 956
    .end local v18    # "fileOffset":J
    .restart local v4    # "fileOffset":J
    :cond_22
    move-wide/from16 v18, v4

    const/4 v4, 0x0

    .line 961
    .end local v4    # "fileOffset":J
    .restart local v18    # "fileOffset":J
    :goto_14
    add-int/lit8 v10, v10, 0x4

    move v8, v10

    .line 963
    .end local v10    # "curPos":I
    .end local v11    # "offset":J
    .end local v13    # "Addr":J
    .local v8, "curPos":I
    :goto_15
    move v3, v6

    move v2, v9

    move-wide/from16 v4, v18

    const/16 v6, 0xe8

    goto :goto_12

    .line 931
    .end local v6    # "dataSize":I
    .end local v9    # "cmpByte2":B
    .end local v18    # "fileOffset":J
    .restart local v2    # "cmpByte2":B
    .restart local v3    # "dataSize":I
    .restart local v4    # "fileOffset":J
    :cond_23
    move v9, v2

    move v6, v3

    move-wide/from16 v18, v4

    .line 965
    .end local v1    # "fileSize":I
    .end local v2    # "cmpByte2":B
    .end local v3    # "dataSize":I
    .end local v4    # "fileOffset":J
    .end local v8    # "curPos":I
    nop

    .line 1175
    :goto_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 1
        0x4t
        0x4t
        0x6t
        0x6t
        0x0t
        0x0t
        0x7t
        0x7t
        0x4t
        0x4t
        0x0t
        0x0t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data
.end method

.method private IsStandardFilter([BI)Lcom/github/junrar/unpack/vm/VMStandardFilters;
    .locals 6
    .param p1, "code"    # [B
    .param p2, "codeSize"    # I

    .line 897
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v2, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v3, 0x35

    const v4, -0x52a89779

    invoke-direct {v1, v3, v4, v2}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v3, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v4, 0x39

    const v5, 0x3cd7e57e

    invoke-direct {v1, v4, v5, v3}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v3, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v4, 0x78

    const v5, 0x3769893f

    invoke-direct {v1, v4, v5, v3}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v3, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v4, 0x1d

    const v5, 0xe06077d

    invoke-direct {v1, v4, v5, v3}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v3, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v4, 0x95

    const v5, 0x1c2c5dc8

    invoke-direct {v1, v4, v5, v3}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v3, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v4, 0xd8

    const v5, -0x437a18ff

    invoke-direct {v1, v4, v5, v3}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;

    sget-object v3, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    const/16 v4, 0x28

    const v5, 0x46b9c560    # 23778.688f

    invoke-direct {v1, v4, v5, v3}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;-><init>(IILcom/github/junrar/unpack/vm/VMStandardFilters;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 906
    .local v0, "stdList":[Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;
    array-length v1, p1

    const/4 v3, -0x1

    invoke-static {v3, p1, v2, v1}, Lcom/github/junrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result v1

    not-int v1, v1

    .line 907
    .local v1, "CodeCRC":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 908
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;->getCRC()I

    move-result v3

    if-ne v3, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;->getLength()I

    move-result v3

    array-length v4, p1

    if-ne v3, v4, :cond_0

    .line 909
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMStandardFilterSignature;->getType()Lcom/github/junrar/unpack/vm/VMStandardFilters;

    move-result-object v3

    return-object v3

    .line 907
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 913
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    return-object v2
.end method

.method public static ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I
    .locals 5
    .param p0, "rarVM"    # Lcom/github/junrar/unpack/vm/BitInput;

    .line 867
    invoke-virtual {p0}, Lcom/github/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    .line 868
    .local v0, "data":I
    const v1, 0xc000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_1

    const v2, 0x8000

    const/4 v3, 0x2

    const/16 v4, 0x10

    if-eq v1, v2, :cond_0

    .line 887
    invoke-virtual {p0, v3}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 888
    invoke-virtual {p0}, Lcom/github/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    shl-int/lit8 v0, v1, 0x10

    .line 889
    invoke-virtual {p0, v4}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 890
    invoke-virtual {p0}, Lcom/github/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    or-int/2addr v0, v1

    .line 891
    invoke-virtual {p0, v4}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 892
    return v0

    .line 882
    :cond_0
    invoke-virtual {p0, v3}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 883
    invoke-virtual {p0}, Lcom/github/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    .line 884
    invoke-virtual {p0, v4}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 885
    return v0

    .line 873
    :cond_1
    and-int/lit16 v1, v0, 0x3c00

    if-nez v1, :cond_2

    .line 874
    shr-int/lit8 v1, v0, 0x2

    and-int/lit16 v1, v1, 0xff

    or-int/lit16 v0, v1, -0x100

    .line 875
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_0

    .line 877
    :cond_2
    shr-int/lit8 v1, v0, 0x6

    and-int/lit16 v0, v1, 0xff

    .line 878
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 880
    :goto_0
    return v0

    .line 870
    :cond_3
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 871
    shr-int/lit8 v1, v0, 0xa

    and-int/lit8 v1, v1, 0xf

    return v1
.end method

.method private decodeArg(Lcom/github/junrar/unpack/vm/VMPreparedOperand;Z)V
    .locals 5
    .param p1, "op"    # Lcom/github/junrar/unpack/vm/VMPreparedOperand;
    .param p2, "byteMode"    # Z

    .line 767
    invoke-virtual {p0}, Lcom/github/junrar/unpack/vm/RarVM;->fgetbits()I

    move-result v0

    .line 768
    .local v0, "data":I
    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x7

    if-eqz v1, :cond_0

    .line 769
    sget-object v1, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREG:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 770
    shr-int/lit8 v1, v0, 0xc

    and-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 771
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    .line 772
    invoke-virtual {p0, v2}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_1

    .line 774
    :cond_0
    const v1, 0xc000

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    .line 775
    sget-object v1, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 776
    if-eqz p2, :cond_1

    .line 777
    shr-int/lit8 v1, v0, 0x6

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 778
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_1

    .line 780
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    .line 781
    invoke-static {p0}, Lcom/github/junrar/unpack/vm/RarVM;->ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    goto :goto_1

    .line 784
    :cond_2
    sget-object v1, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 785
    and-int/lit16 v1, v0, 0x2000

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 786
    shr-int/lit8 v1, v0, 0xa

    and-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 787
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    .line 788
    invoke-virtual {p1, v4}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setBase(I)V

    .line 789
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_1

    .line 791
    :cond_3
    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_4

    .line 792
    shr-int/lit8 v1, v0, 0x9

    and-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 793
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    .line 794
    invoke-virtual {p0, v3}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_0

    .line 796
    :cond_4
    invoke-virtual {p1, v4}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 797
    invoke-virtual {p0, v2}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    .line 799
    :goto_0
    invoke-static {p0}, Lcom/github/junrar/unpack/vm/RarVM;->ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setBase(I)V

    .line 804
    :goto_1
    return-void
.end method

.method private filterItanium_GetBits(III)I
    .locals 5
    .param p1, "curPos"    # I
    .param p2, "bitPos"    # I
    .param p3, "bitCount"    # I

    .line 1196
    div-int/lit8 v0, p2, 0x8

    .line 1197
    .local v0, "inAddr":I
    and-int/lit8 v1, p2, 0x7

    .line 1198
    .local v1, "inBit":I
    iget-object v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "inAddr":I
    .local v3, "inAddr":I
    add-int/2addr v0, p1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 1199
    .local v0, "bitField":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "inAddr":I
    .local v4, "inAddr":I
    add-int/2addr v3, p1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    .line 1200
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inAddr":I
    .restart local v3    # "inAddr":I
    add-int/2addr v4, p1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    .line 1201
    add-int v4, p1, v3

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    .line 1202
    ushr-int/2addr v0, v1

    .line 1203
    rsub-int/lit8 v2, p3, 0x20

    const/4 v4, -0x1

    ushr-int v2, v4, v2

    and-int/2addr v2, v0

    return v2
.end method

.method private filterItanium_SetBits(IIII)V
    .locals 7
    .param p1, "curPos"    # I
    .param p2, "bitField"    # I
    .param p3, "bitPos"    # I
    .param p4, "bitCount"    # I

    .line 1178
    div-int/lit8 v0, p3, 0x8

    .line 1179
    .local v0, "inAddr":I
    and-int/lit8 v1, p3, 0x7

    .line 1180
    .local v1, "inBit":I
    rsub-int/lit8 v2, p4, 0x20

    const/4 v3, -0x1

    ushr-int v2, v3, v2

    .line 1181
    .local v2, "andMask":I
    shl-int v3, v2, v1

    not-int v2, v3

    .line 1183
    shl-int/2addr p2, v1

    .line 1185
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 1187
    iget-object v4, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v5, p1, v0

    add-int/2addr v5, v3

    aget-byte v6, v4, v5

    and-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1188
    add-int v5, p1, v0

    add-int/2addr v5, v3

    aget-byte v6, v4, v5

    or-int/2addr v6, p2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1189
    ushr-int/lit8 v4, v2, 0x8

    const/high16 v5, -0x1000000

    or-int v2, v4, v5

    .line 1190
    ushr-int/lit8 p2, p2, 0x8

    .line 1185
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1193
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method private getOperand(Lcom/github/junrar/unpack/vm/VMPreparedOperand;)I
    .locals 3
    .param p1, "cmdOp"    # Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "ret":I
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getType()Lcom/github/junrar/unpack/vm/VMOpType;

    move-result-object v1

    sget-object v2, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/github/junrar/unpack/vm/VMOpType;

    if-ne v1, v2, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getBase()I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x3ffff

    and-int/2addr v1, v2

    .line 136
    .local v1, "pos":I
    iget-object v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-static {v2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    .line 137
    .end local v1    # "pos":I
    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getOffset()I

    move-result v1

    .line 139
    .restart local v1    # "pos":I
    iget-object v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    invoke-static {v2, v1}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    .line 141
    .end local v1    # "pos":I
    :goto_0
    return v0
.end method

.method private getValue(Z[BI)I
    .locals 1
    .param p1, "byteMode"    # Z
    .param p2, "mem"    # [B
    .param p3, "offset"    # I

    .line 76
    if-eqz p1, :cond_1

    .line 77
    invoke-direct {p0, p2}, Lcom/github/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    aget-byte v0, p2, p3

    return v0

    .line 80
    :cond_0
    aget-byte v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 83
    :cond_1
    invoke-direct {p0, p2}, Lcom/github/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-static {p2, p3}, Lcom/github/junrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    return v0

    .line 88
    :cond_2
    invoke-static {p2, p3}, Lcom/github/junrar/io/Raw;->readIntBigEndian([BI)I

    move-result v0

    return v0
.end method

.method private isVMMem([B)Z
    .locals 1
    .param p1, "mem"    # [B

    .line 72
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private optimize(Lcom/github/junrar/unpack/vm/VMPreparedProgram;)V
    .locals 7
    .param p1, "prg"    # Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    .line 808
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v0

    .line 810
    .local v0, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/github/junrar/unpack/vm/VMPreparedCommand;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    .line 811
    .local v2, "cmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    sget-object v3, Lcom/github/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$github$junrar$unpack$vm$VMCommands:[I

    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/junrar/unpack/vm/VMCommands;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_11

    const/4 v5, 0x4

    if-eq v3, v5, :cond_f

    .line 821
    sget-object v3, Lcom/github/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v5

    aget-byte v3, v3, v5

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_0

    .line 822
    goto :goto_0

    .line 824
    :cond_0
    const/4 v3, 0x0

    .line 826
    .local v3, "flagsRequired":Z
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v5, v4

    .local v5, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_3

    .line 827
    sget-object v4, Lcom/github/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    invoke-virtual {v6}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v6

    aget-byte v4, v4, v6

    .line 829
    .local v4, "flags":I
    and-int/lit8 v6, v4, 0x38

    if-eqz v6, :cond_1

    .line 830
    const/4 v3, 0x1

    .line 831
    goto :goto_2

    .line 833
    :cond_1
    and-int/lit8 v6, v4, 0x40

    if-eqz v6, :cond_2

    .line 834
    goto :goto_2

    .line 826
    .end local v4    # "flags":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 837
    .end local v5    # "i":I
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 838
    goto :goto_0

    .line 840
    :cond_4
    sget-object v4, Lcom/github/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$github$junrar$unpack$vm$VMCommands:[I

    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/junrar/unpack/vm/VMCommands;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x7

    if-eq v4, v5, :cond_d

    const/16 v5, 0xa

    if-eq v4, v5, :cond_b

    const/16 v5, 0xf

    if-eq v4, v5, :cond_9

    const/16 v5, 0x12

    if-eq v4, v5, :cond_7

    const/16 v5, 0x27

    if-eq v4, v5, :cond_5

    .line 862
    .end local v2    # "cmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    .end local v3    # "flagsRequired":Z
    goto :goto_0

    .line 858
    .restart local v2    # "cmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    .restart local v3    # "flagsRequired":Z
    :cond_5
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_3

    :cond_6
    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_3
    invoke-virtual {v2, v4}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 860
    goto/16 :goto_0

    .line 854
    :cond_7
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_4

    :cond_8
    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_4
    invoke-virtual {v2, v4}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 856
    goto/16 :goto_0

    .line 850
    :cond_9
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_5

    :cond_a
    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_5
    invoke-virtual {v2, v4}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 852
    goto/16 :goto_0

    .line 846
    :cond_b
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_6

    :cond_c
    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_6
    invoke-virtual {v2, v4}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 848
    goto/16 :goto_0

    .line 842
    :cond_d
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_7

    :cond_e
    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_7
    invoke-virtual {v2, v4}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 844
    goto/16 :goto_0

    .line 817
    .end local v3    # "flagsRequired":Z
    :cond_f
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_8

    :cond_10
    sget-object v3, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_8
    invoke-virtual {v2, v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 819
    goto/16 :goto_0

    .line 813
    :cond_11
    invoke-virtual {v2}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/github/junrar/unpack/vm/VMCommands;

    goto :goto_9

    :cond_12
    sget-object v3, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/github/junrar/unpack/vm/VMCommands;

    :goto_9
    invoke-virtual {v2, v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 815
    goto/16 :goto_0

    .line 864
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "cmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    :cond_13
    return-void
.end method

.method private setIP(I)Z
    .locals 2
    .param p1, "ip"    # I

    .line 212
    iget v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->codeSize:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    .line 213
    return v1

    .line 216
    :cond_0
    iget v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->maxOpCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->maxOpCount:I

    if-gtz v0, :cond_1

    .line 217
    const/4 v0, 0x0

    return v0

    .line 220
    :cond_1
    iput p1, p0, Lcom/github/junrar/unpack/vm/RarVM;->IP:I

    .line 221
    return v1
.end method

.method private setValue(Z[BII)V
    .locals 2
    .param p1, "byteMode"    # Z
    .param p2, "mem"    # [B
    .param p3, "offset"    # I
    .param p4, "value"    # I

    .line 93
    if-eqz p1, :cond_1

    .line 94
    invoke-direct {p0, p2}, Lcom/github/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    int-to-byte v0, p4

    aput-byte v0, p2, p3

    goto :goto_0

    .line 97
    :cond_0
    aget-byte v0, p2, p3

    and-int/lit8 v0, v0, 0x0

    and-int/lit16 v1, p4, 0xff

    int-to-byte v1, v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    goto :goto_0

    .line 100
    :cond_1
    invoke-direct {p0, p2}, Lcom/github/junrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-static {p2, p3, p4}, Lcom/github/junrar/io/Raw;->writeIntLittleEndian([BII)V

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {p2, p3, p4}, Lcom/github/junrar/io/Raw;->writeIntBigEndian([BII)V

    .line 117
    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/github/junrar/unpack/vm/VMPreparedProgram;)V
    .locals 13
    .param p1, "prg"    # Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v2

    aget v2, v2, v0

    aput v2, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    .line 152
    .local v0, "globalSize":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const v5, 0x3c000

    if-eqz v4, :cond_1

    .line 153
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    int-to-long v6, v4

    cmp-long v6, v6, v0

    if-gez v6, :cond_1

    .line 155
    iget-object v6, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v7, v4, v5

    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v6, v7

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 159
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    int-to-long v6, v4

    const-wide/16 v8, 0x2000

    sub-long/2addr v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    and-long/2addr v6, v8

    .line 161
    .local v6, "staticSize":J
    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    .line 162
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    int-to-long v3, v2

    cmp-long v3, v3, v6

    if-gez v3, :cond_2

    .line 164
    iget-object v3, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    long-to-int v4, v0

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v3, v4

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 169
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->R:[I

    const/4 v3, 0x7

    const/high16 v4, 0x40000

    aput v4, v2, v3

    .line 170
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->flags:I

    .line 172
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getAltCmd()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getAltCmd()Ljava/util/List;

    move-result-object v3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v3

    .line 176
    .local v3, "preparedCode":Ljava/util/List;, "Ljava/util/List<Lcom/github/junrar/unpack/vm/VMPreparedCommand;>;"
    :goto_3
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v8

    invoke-direct {p0, v3, v8}, Lcom/github/junrar/unpack/vm/RarVM;->ExecuteCode(Ljava/util/List;I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 177
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    sget-object v9, Lcom/github/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v8, v9}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 179
    :cond_4
    iget-object v8, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    const v9, 0x3c020

    invoke-direct {p0, v2, v8, v9}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v8

    const v9, 0x3ffff

    and-int/2addr v8, v9

    .line 181
    .local v8, "newBlockPos":I
    iget-object v10, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    const v11, 0x3c01c

    invoke-direct {p0, v2, v10, v11}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v10

    and-int/2addr v9, v10

    .line 183
    .local v9, "newBlockSize":I
    add-int v10, v8, v9

    if-lt v10, v4, :cond_5

    .line 184
    const/4 v8, 0x0

    .line 185
    const/4 v9, 0x0

    .line 188
    :cond_5
    invoke-virtual {p1, v8}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setFilteredDataOffset(I)V

    .line 189
    invoke-virtual {p1, v9}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setFilteredDataSize(I)V

    .line 191
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 193
    iget-object v4, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    const v10, 0x3c030

    invoke-direct {p0, v2, v4, v10}, Lcom/github/junrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v2

    const/16 v4, 0x1fc0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 195
    .local v2, "dataSize":I
    if-eqz v2, :cond_6

    .line 196
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v4

    add-int/lit8 v10, v2, 0x40

    invoke-virtual {v4, v10}, Ljava/util/Vector;->setSize(I)V

    .line 199
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    add-int/lit8 v10, v2, 0x40

    if-ge v4, v10, :cond_6

    .line 201
    invoke-virtual {p1}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v10

    iget-object v11, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v12, v4, v5

    aget-byte v11, v11, v12

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 204
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method public getMem()[B
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    if-nez v0, :cond_0

    .line 67
    const v0, 0x40004

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    .line 69
    :cond_0
    return-void
.end method

.method public prepare([BILcom/github/junrar/unpack/vm/VMPreparedProgram;)V
    .locals 16
    .param p1, "code"    # [B
    .param p2, "codeSize"    # I
    .param p3, "prg"    # Lcom/github/junrar/unpack/vm/VMPreparedProgram;

    .line 635
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/vm/RarVM;->InitBitInput()V

    .line 636
    const v3, 0x8000

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 637
    .local v4, "cpLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 639
    iget-object v6, v0, Lcom/github/junrar/unpack/vm/RarVM;->inBuf:[B

    aget-byte v7, v6, v5

    aget-byte v8, p1, v5

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 637
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 642
    .end local v5    # "i":I
    :cond_0
    const/4 v5, 0x0

    .line 643
    .local v5, "xorSum":B
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_1

    .line 644
    aget-byte v7, p1, v6

    xor-int/2addr v7, v5

    int-to-byte v5, v7

    .line 643
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 647
    .end local v6    # "i":I
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    .line 649
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 650
    aget-byte v8, p1, v7

    const/4 v9, 0x1

    if-ne v5, v8, :cond_d

    .line 651
    invoke-direct/range {p0 .. p2}, Lcom/github/junrar/unpack/vm/RarVM;->IsStandardFilter([BI)Lcom/github/junrar/unpack/vm/VMStandardFilters;

    move-result-object v8

    .line 652
    .local v8, "filterType":Lcom/github/junrar/unpack/vm/VMStandardFilters;
    sget-object v10, Lcom/github/junrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lcom/github/junrar/unpack/vm/VMStandardFilters;

    if-eq v8, v10, :cond_2

    .line 654
    new-instance v10, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    invoke-direct {v10}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;-><init>()V

    .line 655
    .local v10, "curCmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    sget-object v11, Lcom/github/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v10, v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 656
    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v11

    invoke-virtual {v8}, Lcom/github/junrar/unpack/vm/VMStandardFilters;->getFilter()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 657
    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v11

    sget-object v12, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v11, v12}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 658
    invoke-virtual {v10}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v11

    sget-object v12, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v11, v12}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 659
    const/4 v1, 0x0

    .line 660
    .end local p2    # "codeSize":I
    .local v1, "codeSize":I
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {v2, v11}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 670
    .end local v10    # "curCmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/vm/RarVM;->fgetbits()I

    move-result v10

    .line 671
    .local v10, "dataFlag":I
    invoke-virtual {v0, v9}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    .line 677
    and-int v11, v10, v3

    if-eqz v11, :cond_3

    .line 678
    invoke-static/range {p0 .. p0}, Lcom/github/junrar/unpack/vm/RarVM;->ReadData(Lcom/github/junrar/unpack/vm/BitInput;)I

    move-result v11

    int-to-long v11, v11

    const-wide/16 v13, 0x0

    and-long/2addr v11, v13

    .line 679
    .local v11, "dataSize":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    iget v14, v0, Lcom/github/junrar/unpack/vm/RarVM;->inAddr:I

    if-ge v14, v1, :cond_3

    int-to-long v14, v13

    cmp-long v14, v14, v11

    if-gez v14, :cond_3

    .line 680
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/vm/RarVM;->fgetbits()I

    move-result v15

    shr-int/2addr v15, v6

    int-to-byte v15, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {v0, v6}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    .line 679
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 686
    .end local v11    # "dataSize":J
    .end local v13    # "i":I
    :cond_3
    :goto_3
    iget v11, v0, Lcom/github/junrar/unpack/vm/RarVM;->inAddr:I

    if-ge v11, v1, :cond_d

    .line 687
    new-instance v11, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    invoke-direct {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;-><init>()V

    .line 688
    .local v11, "curCmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/vm/RarVM;->fgetbits()I

    move-result v12

    .line 689
    .local v12, "data":I
    and-int v13, v12, v3

    const/4 v14, 0x4

    if-nez v13, :cond_4

    .line 690
    shr-int/lit8 v13, v12, 0xc

    invoke-static {v13}, Lcom/github/junrar/unpack/vm/VMCommands;->findVMCommand(I)Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 691
    invoke-virtual {v0, v14}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_4

    .line 693
    :cond_4
    shr-int/lit8 v13, v12, 0xa

    add-int/lit8 v13, v13, -0x18

    invoke-static {v13}, Lcom/github/junrar/unpack/vm/VMCommands;->findVMCommand(I)Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 695
    const/4 v13, 0x6

    invoke-virtual {v0, v13}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    .line 697
    :goto_4
    sget-object v13, Lcom/github/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v15

    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v15

    aget-byte v13, v13, v15

    and-int/2addr v13, v14

    if-eqz v13, :cond_6

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/github/junrar/unpack/vm/RarVM;->fgetbits()I

    move-result v13

    shr-int/lit8 v13, v13, 0xf

    if-ne v13, v9, :cond_5

    move v13, v9

    goto :goto_5

    :cond_5
    move v13, v7

    :goto_5
    invoke-virtual {v11, v13}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setByteMode(Z)V

    .line 699
    invoke-virtual {v0, v9}, Lcom/github/junrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_6

    .line 701
    :cond_6
    invoke-virtual {v11, v7}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setByteMode(Z)V

    .line 703
    :goto_6
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    sget-object v14, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v13, v14}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 704
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    sget-object v14, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v13, v14}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 706
    sget-object v13, Lcom/github/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v14

    aget-byte v13, v13, v14

    and-int/lit8 v13, v13, 0x3

    .line 709
    .local v13, "opNum":I
    if-lez v13, :cond_c

    .line 710
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v14

    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v15

    invoke-direct {v0, v14, v15}, Lcom/github/junrar/unpack/vm/RarVM;->decodeArg(Lcom/github/junrar/unpack/vm/VMPreparedOperand;Z)V

    .line 711
    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 712
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v14

    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v15

    invoke-direct {v0, v14, v15}, Lcom/github/junrar/unpack/vm/RarVM;->decodeArg(Lcom/github/junrar/unpack/vm/VMPreparedOperand;Z)V

    goto :goto_9

    .line 714
    :cond_7
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getType()Lcom/github/junrar/unpack/vm/VMOpType;

    move-result-object v14

    sget-object v15, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/github/junrar/unpack/vm/VMOpType;

    if-ne v14, v15, :cond_c

    sget-object v14, Lcom/github/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v15

    invoke-virtual {v15}, Lcom/github/junrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v15

    aget-byte v14, v14, v15

    and-int/lit8 v14, v14, 0x18

    if-eqz v14, :cond_c

    .line 717
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v14

    .line 718
    .local v14, "distance":I
    const/16 v15, 0x100

    if-lt v14, v15, :cond_8

    .line 719
    add-int/lit16 v14, v14, -0x100

    goto :goto_8

    .line 721
    :cond_8
    const/16 v15, 0x88

    if-lt v14, v15, :cond_9

    .line 722
    add-int/lit16 v14, v14, -0x108

    goto :goto_7

    .line 724
    :cond_9
    const/16 v15, 0x10

    if-lt v14, v15, :cond_a

    .line 725
    add-int/lit8 v14, v14, -0x8

    goto :goto_7

    .line 727
    :cond_a
    if-lt v14, v6, :cond_b

    .line 728
    add-int/lit8 v14, v14, -0x10

    .line 732
    :cond_b
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v15

    add-int/2addr v14, v15

    .line 734
    :goto_8
    invoke-virtual {v11}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 738
    .end local v14    # "distance":I
    :cond_c
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v14

    add-int/2addr v14, v9

    invoke-virtual {v2, v14}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 739
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    .end local v11    # "curCmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    .end local v12    # "data":I
    .end local v13    # "opNum":I
    goto/16 :goto_3

    .line 742
    .end local v8    # "filterType":Lcom/github/junrar/unpack/vm/VMStandardFilters;
    .end local v10    # "dataFlag":I
    :cond_d
    new-instance v3, Lcom/github/junrar/unpack/vm/VMPreparedCommand;

    invoke-direct {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;-><init>()V

    .line 743
    .local v3, "curCmd":Lcom/github/junrar/unpack/vm/VMPreparedCommand;
    sget-object v6, Lcom/github/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v3, v6}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V

    .line 746
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v6

    sget-object v7, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v6, v7}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 747
    invoke-virtual {v3}, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->getOp2()Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    move-result-object v6

    sget-object v7, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v6, v7}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;->setType(Lcom/github/junrar/unpack/vm/VMOpType;)V

    .line 758
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    invoke-virtual/range {p3 .. p3}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v6

    add-int/2addr v6, v9

    invoke-virtual {v2, v6}, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 761
    if-eqz v1, :cond_e

    .line 762
    invoke-direct {v0, v2}, Lcom/github/junrar/unpack/vm/RarVM;->optimize(Lcom/github/junrar/unpack/vm/VMPreparedProgram;)V

    .line 764
    :cond_e
    return-void
.end method

.method public setLowEndianValue(Ljava/util/Vector;II)V
    .locals 2
    .param p2, "offset"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;II)V"
        }
    .end annotation

    .line 127
    .local p1, "mem":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Byte;>;"
    add-int/lit8 v0, p2, 0x0

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 130
    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public setLowEndianValue([BII)V
    .locals 0
    .param p1, "mem"    # [B
    .param p2, "offset"    # I
    .param p3, "value"    # I

    .line 120
    invoke-static {p1, p2, p3}, Lcom/github/junrar/io/Raw;->writeIntLittleEndian([BII)V

    .line 125
    return-void
.end method

.method public setMemory(I[BII)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "dataSize"    # I

    .line 1209
    const/high16 v0, 0x40000

    if-ge p1, v0, :cond_1

    .line 1211
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    sub-int/2addr v2, p3

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1212
    sub-int v2, v0, p1

    if-ge v2, v1, :cond_0

    .line 1213
    goto :goto_1

    .line 1215
    :cond_0
    iget-object v2, p0, Lcom/github/junrar/unpack/vm/RarVM;->mem:[B

    add-int v3, p1, v1

    add-int v4, p3, v1

    aget-byte v4, p2, v4

    aput-byte v4, v2, v3

    .line 1211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1218
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method
