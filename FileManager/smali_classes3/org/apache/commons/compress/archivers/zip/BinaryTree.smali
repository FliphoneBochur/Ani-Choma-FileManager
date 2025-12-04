.class Lorg/apache/commons/compress/archivers/zip/BinaryTree;
.super Ljava/lang/Object;
.source "BinaryTree.java"


# static fields
.field private static final NODE:I = -0x2

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final tree:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "depth"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    .line 49
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 50
    return-void
.end method

.method static decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;
    .locals 19
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "totalNumberOfValues"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 113
    .local v1, "size":I
    if-eqz v1, :cond_a

    .line 117
    new-array v3, v1, [B

    .line 118
    .local v3, "encodedTree":[B
    new-instance v4, Ljava/io/DataInputStream;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 121
    const/4 v4, 0x0

    .line 123
    .local v4, "maxLength":I
    new-array v6, v0, [I

    .line 124
    .local v6, "originalBitLengths":[I
    const/4 v7, 0x0

    .line 125
    .local v7, "pos":I
    move-object v8, v3

    .local v8, "arr$":[B
    array-length v9, v8

    .local v9, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v9, :cond_1

    aget-byte v11, v8, v10

    .line 127
    .local v11, "b":B
    and-int/lit16 v12, v11, 0xf0

    shr-int/lit8 v12, v12, 0x4

    add-int/2addr v12, v2

    .line 128
    .local v12, "numberOfValues":I
    and-int/lit8 v13, v11, 0xf

    add-int/2addr v13, v2

    .line 130
    .local v13, "bitLength":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    if-ge v14, v12, :cond_0

    .line 131
    add-int/lit8 v15, v7, 0x1

    .end local v7    # "pos":I
    .local v15, "pos":I
    aput v13, v6, v7

    .line 130
    add-int/lit8 v14, v14, 0x1

    move v7, v15

    goto :goto_1

    .line 134
    .end local v14    # "j":I
    .end local v15    # "pos":I
    .restart local v7    # "pos":I
    :cond_0
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 125
    .end local v11    # "b":B
    .end local v12    # "numberOfValues":I
    .end local v13    # "bitLength":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 138
    .end local v8    # "arr$":[B
    .end local v9    # "len$":I
    .end local v10    # "i$":I
    :cond_1
    array-length v8, v6

    new-array v8, v8, [I

    .line 139
    .local v8, "permutation":[I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    array-length v10, v8

    if-ge v9, v10, :cond_2

    .line 140
    aput v9, v8, v9

    .line 139
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 143
    .end local v9    # "k":I
    :cond_2
    const/4 v9, 0x0

    .line 144
    .local v9, "c":I
    array-length v10, v6

    new-array v10, v10, [I

    .line 145
    .local v10, "sortedBitLengths":[I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_3
    array-length v12, v6

    if-ge v11, v12, :cond_5

    .line 147
    const/4 v12, 0x0

    .local v12, "l":I
    :goto_4
    array-length v13, v6

    if-ge v12, v13, :cond_4

    .line 149
    aget v13, v6, v12

    if-ne v13, v11, :cond_3

    .line 151
    aput v11, v10, v9

    .line 154
    aput v12, v8, v9

    .line 156
    add-int/lit8 v9, v9, 0x1

    .line 147
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 145
    .end local v12    # "l":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 162
    .end local v11    # "k":I
    :cond_5
    const/4 v11, 0x0

    .line 163
    .local v11, "code":I
    const/4 v12, 0x0

    .line 164
    .local v12, "codeIncrement":I
    const/4 v13, 0x0

    .line 166
    .local v13, "lastBitLength":I
    new-array v14, v0, [I

    .line 168
    .local v14, "codes":[I
    add-int/lit8 v15, v0, -0x1

    .local v15, "i":I
    :goto_5
    if-ltz v15, :cond_7

    .line 169
    add-int/2addr v11, v12

    .line 170
    aget v2, v10, v15

    if-eq v2, v13, :cond_6

    .line 171
    aget v2, v10, v15

    .line 172
    .end local v13    # "lastBitLength":I
    .local v2, "lastBitLength":I
    rsub-int/lit8 v13, v2, 0x10

    const/16 v16, 0x1

    shl-int v12, v16, v13

    move v13, v2

    goto :goto_6

    .line 170
    .end local v2    # "lastBitLength":I
    .restart local v13    # "lastBitLength":I
    :cond_6
    const/16 v16, 0x1

    .line 174
    :goto_6
    aget v2, v8, v15

    aput v11, v14, v2

    .line 168
    add-int/lit8 v15, v15, -0x1

    move/from16 v2, v16

    goto :goto_5

    .line 178
    .end local v15    # "i":I
    :cond_7
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    invoke-direct {v2, v4}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;-><init>(I)V

    .line 180
    .local v2, "tree":Lorg/apache/commons/compress/archivers/zip/BinaryTree;
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_7
    array-length v0, v14

    if-ge v15, v0, :cond_9

    .line 181
    aget v0, v6, v15

    .line 182
    .local v0, "bitLength":I
    if-lez v0, :cond_8

    .line 183
    move/from16 v16, v1

    .end local v1    # "size":I
    .local v16, "size":I
    const/4 v1, 0x0

    aget v17, v14, v15

    shl-int/lit8 v17, v17, 0x10

    move-object/from16 v18, v3

    .end local v3    # "encodedTree":[B
    .local v18, "encodedTree":[B
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->reverse(I)I

    move-result v3

    invoke-virtual {v2, v1, v3, v0, v15}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    goto :goto_8

    .line 182
    .end local v16    # "size":I
    .end local v18    # "encodedTree":[B
    .restart local v1    # "size":I
    .restart local v3    # "encodedTree":[B
    :cond_8
    move/from16 v16, v1

    move-object/from16 v18, v3

    .line 180
    .end local v0    # "bitLength":I
    .end local v1    # "size":I
    .end local v3    # "encodedTree":[B
    .restart local v16    # "size":I
    .restart local v18    # "encodedTree":[B
    :goto_8
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v3, v18

    goto :goto_7

    .line 187
    .end local v15    # "k":I
    .end local v16    # "size":I
    .end local v18    # "encodedTree":[B
    .restart local v1    # "size":I
    .restart local v3    # "encodedTree":[B
    :cond_9
    return-object v2

    .line 114
    .end local v2    # "tree":Lorg/apache/commons/compress/archivers/zip/BinaryTree;
    .end local v3    # "encodedTree":[B
    .end local v4    # "maxLength":I
    .end local v6    # "originalBitLengths":[I
    .end local v7    # "pos":I
    .end local v8    # "permutation":[I
    .end local v9    # "c":I
    .end local v10    # "sortedBitLengths":[I
    .end local v11    # "code":I
    .end local v12    # "codeIncrement":I
    .end local v13    # "lastBitLength":I
    .end local v14    # "codes":[I
    :cond_a
    move/from16 v16, v1

    .end local v1    # "size":I
    .restart local v16    # "size":I
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot read the size of the encoded tree, unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addLeaf(IIII)V
    .locals 3
    .param p1, "node"    # I
    .param p2, "path"    # I
    .param p3, "depth"    # I
    .param p4, "value"    # I

    .line 61
    if-nez p3, :cond_1

    .line 63
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 64
    aput p4, v0, p1

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tree value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has already been assigned ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    const/4 v1, -0x2

    aput v1, v0, p1

    .line 73
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    .line 74
    .local v0, "nextChild":I
    ushr-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v0, v1, v2, p4}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    .line 76
    .end local v0    # "nextChild":I
    :goto_0
    return-void
.end method

.method public read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I
    .locals 7
    .param p1, "stream"    # Lorg/apache/commons/compress/archivers/zip/BitStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    .line 88
    .local v0, "currentIndex":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBit()I

    move-result v1

    .line 89
    .local v1, "bit":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 90
    return v2

    .line 93
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    .line 94
    .local v3, "childIndex":I
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget v4, v4, v3

    .line 95
    .local v4, "value":I
    const/4 v5, -0x2

    if-ne v4, v5, :cond_1

    .line 97
    move v0, v3

    .line 103
    .end local v1    # "bit":I
    .end local v3    # "childIndex":I
    .end local v4    # "value":I
    goto :goto_0

    .line 98
    .restart local v1    # "bit":I
    .restart local v3    # "childIndex":I
    .restart local v4    # "value":I
    :cond_1
    if-eq v4, v2, :cond_2

    .line 99
    return v4

    .line 101
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The child "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " of node at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not defined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
