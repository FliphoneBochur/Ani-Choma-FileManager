.class public Lcom/github/junrar/rarfile/FileNameDecoder;
.super Ljava/lang/Object;
.source "FileNameDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI)Ljava/lang/String;
    .locals 11
    .param p0, "name"    # [B
    .param p1, "encPos"    # I

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "decPos":I
    const/4 v1, 0x0

    .line 29
    .local v1, "flags":I
    const/4 v2, 0x0

    .line 31
    .local v2, "flagBits":I
    const/4 v3, 0x0

    .line 32
    .local v3, "low":I
    const/4 v4, 0x0

    .line 33
    .local v4, "high":I
    add-int/lit8 v5, p1, 0x1

    .end local p1    # "encPos":I
    .local v5, "encPos":I
    invoke-static {p0, p1}, Lcom/github/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result p1

    .line 34
    .local p1, "highByte":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    .local v6, "buf":Ljava/lang/StringBuffer;
    :goto_0
    array-length v7, p0

    if-ge v5, v7, :cond_8

    .line 36
    if-nez v2, :cond_0

    .line 37
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "encPos":I
    .local v7, "encPos":I
    invoke-static {p0, v5}, Lcom/github/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v1

    .line 38
    const/16 v2, 0x8

    move v5, v7

    .line 40
    .end local v7    # "encPos":I
    .restart local v5    # "encPos":I
    :cond_0
    shr-int/lit8 v7, v1, 0x6

    if-eqz v7, :cond_7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    const/4 v9, 0x3

    if-eq v7, v9, :cond_1

    goto/16 :goto_3

    .line 57
    :cond_1
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "encPos":I
    .restart local v7    # "encPos":I
    invoke-static {p0, v5}, Lcom/github/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v5

    .line 58
    .local v5, "length":I
    and-int/lit16 v9, v5, 0x80

    if-eqz v9, :cond_3

    .line 59
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "encPos":I
    .local v9, "encPos":I
    invoke-static {p0, v7}, Lcom/github/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v7

    .line 60
    .local v7, "correction":I
    and-int/lit8 v10, v5, 0x7f

    add-int/2addr v10, v8

    .end local v5    # "length":I
    .local v10, "length":I
    :goto_1
    if-lez v10, :cond_2

    array-length v5, p0

    if-ge v0, v5, :cond_2

    .line 61
    invoke-static {p0, v0}, Lcom/github/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v5

    add-int/2addr v5, v7

    and-int/lit16 v3, v5, 0xff

    .line 62
    shl-int/lit8 v5, p1, 0x8

    add-int/2addr v5, v3

    int-to-char v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    .end local v7    # "correction":I
    :cond_2
    move v5, v9

    goto :goto_3

    .line 65
    .end local v9    # "encPos":I
    .end local v10    # "length":I
    .restart local v5    # "length":I
    .local v7, "encPos":I
    :cond_3
    add-int/lit8 v5, v5, 0x2

    :goto_2
    if-lez v5, :cond_4

    array-length v8, p0

    if-ge v0, v8, :cond_4

    .line 66
    invoke-static {p0, v0}, Lcom/github/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 71
    .end local v5    # "length":I
    :cond_4
    move v5, v7

    goto :goto_3

    .line 50
    .end local v7    # "encPos":I
    .local v5, "encPos":I
    :cond_5
    invoke-static {p0, v5}, Lcom/github/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v3

    .line 51
    add-int/lit8 v7, v5, 0x1

    invoke-static {p0, v7}, Lcom/github/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v4

    .line 52
    shl-int/lit8 v7, v4, 0x8

    add-int/2addr v7, v3

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    add-int/lit8 v5, v5, 0x2

    .line 55
    goto :goto_3

    .line 46
    :cond_6
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "encPos":I
    .restart local v7    # "encPos":I
    invoke-static {p0, v5}, Lcom/github/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v5

    shl-int/lit8 v8, p1, 0x8

    add-int/2addr v5, v8

    int-to-char v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    move v5, v7

    goto :goto_3

    .line 42
    .end local v7    # "encPos":I
    .restart local v5    # "encPos":I
    :cond_7
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "encPos":I
    .restart local v7    # "encPos":I
    invoke-static {p0, v5}, Lcom/github/junrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    move v5, v7

    .line 71
    .end local v7    # "encPos":I
    .restart local v5    # "encPos":I
    :goto_3
    shl-int/lit8 v7, v1, 0x2

    and-int/lit16 v1, v7, 0xff

    .line 72
    add-int/lit8 v2, v2, -0x2

    goto/16 :goto_0

    .line 74
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getChar([BI)I
    .locals 1
    .param p0, "name"    # [B
    .param p1, "pos"    # I

    .line 23
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
