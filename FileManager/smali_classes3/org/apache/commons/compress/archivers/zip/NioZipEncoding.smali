.class Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;
.super Ljava/lang/Object;
.source "NioZipEncoding.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    .line 52
    return-void
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 61
    .local v0, "enc":Ljava/nio/charset/CharsetEncoder;
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 62
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 64
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public decode([B)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 75
    .local v0, "enc":Ljava/nio/charset/CharsetEncoder;
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 76
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 78
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 79
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 82
    .local v2, "out":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_5

    .line 83
    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 85
    .local v3, "res":Ljava/nio/charset/CoderResult;
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_3

    .line 102
    :cond_1
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 104
    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 105
    goto :goto_4

    .line 89
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 90
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 94
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 95
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v6

    invoke-static {v2, v6}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->appendSurrogate(Ljava/nio/ByteBuffer;C)V

    .line 94
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 108
    .end local v3    # "res":Ljava/nio/charset/CoderResult;
    .end local v5    # "i":I
    :cond_4
    :goto_3
    goto :goto_0

    .line 110
    :cond_5
    :goto_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 111
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 112
    return-object v2
.end method
